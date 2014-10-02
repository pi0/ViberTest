package com.viber.voip;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.Configuration;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.CheckBox;
import android.widget.Toast;
import com.viber.jni.PhoneControllerWrapper;
import com.viber.jni.dialer.DialerController;
import com.viber.logger.QaLogger;
import com.viber.logger.QaLogger.QaNotificationEvent;
import com.viber.voip.a.bc;
import com.viber.voip.a.u;
import com.viber.voip.app.ViberActivity;
import com.viber.voip.contacts.c.d.b;
import com.viber.voip.messages.controller.c.as;
import com.viber.voip.messages.controller.x;
import com.viber.voip.messages.i;
import com.viber.voip.messages.orm.entity.impl.MessageEntityImpl;
import com.viber.voip.registration.HardwareParameters;
import com.viber.voip.settings.j;
import com.viber.voip.settings.l;
import com.viber.voip.util.at;
import com.viber.voip.util.ft;
import com.viber.voip.util.gn;
import com.viber.voip.util.w;
import com.viber.voip.viberout.e;

public class SystemDialogActivity
  extends ViberActivity
{
  private static long a = -1L;
  private DialogInterface b;
  private String c;
  private db d = new db(this, null);
  
  private void a(int paramInt)
  {
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(this);
    localBuilder.setPositiveButton(2131493751, new co(this));
    localBuilder.setOnCancelListener(this.d);
    localBuilder.setMessage(paramInt);
    localBuilder.create().show();
  }
  
  private void a(int paramInt, String paramString)
  {
    if ((paramString != null) && (!TextUtils.isEmpty(paramString))) {
      ViberApplication.getInstance().getPhoneController(true).getDialerController().handleDialogReply(paramInt, paramString);
    }
  }
  
  private void a(Intent paramIntent)
  {
    int i = 2131493550;
    c("resolveIntent: " + paramIntent);
    if ("android.intent.action.VIEW".equals(paramIntent.getAction())) {
      b(paramIntent);
    }
    label563:
    label718:
    String str1;
    label676:
    do
    {
      Uri localUri3;
      do
      {
        return;
        if ("com.viber.voip.action.SMS_ACCEPTING_DIALOG".equals(paramIntent.getAction()))
        {
          new AlertDialog.Builder(this).setMessage(2131494228).setPositiveButton(2131493848, new bz(this)).setNegativeButton(2131493557, new bo(this)).setOnCancelListener(this.d).create().show();
          return;
        }
        if ("com.viber.voip.action.CONNECTION_PROBLEM".equals(paramIntent.getAction()))
        {
          boolean bool3 = ViberApplication.preferences().b("airplane_mode", false);
          int i2;
          int i3;
          if (bool3)
          {
            i2 = 2131493791;
            i3 = 2131493792;
            bc localbc8 = bc.a();
            u localu8 = com.viber.voip.a.a.z;
            com.viber.voip.a.a.z.getClass();
            localbc8.a(localu8.b("202"));
          }
          for (;;)
          {
            this.b = at.a(this, getString(i2), getString(i3), new cm(this, bool3), true);
            return;
            if (ft.d(this).booleanValue())
            {
              i2 = 2131493794;
              i3 = 2131493774;
              bc localbc7 = bc.a();
              u localu7 = com.viber.voip.a.a.z;
              com.viber.voip.a.a.z.getClass();
              localbc7.a(localu7.b("201"));
            }
            else
            {
              i2 = 2131493793;
              i3 = 2131493795;
              bc localbc6 = bc.a();
              u localu6 = com.viber.voip.a.a.z;
              com.viber.voip.a.a.z.getClass();
              localbc6.a(localu6.b("203"));
            }
          }
        }
        if ("com.viber.voip.action.PTT_LOW_STORAGE_DIALOG".equals(paramIntent.getAction()))
        {
          this.b = at.a(this, 2131493797, 2131493798, null);
          return;
        }
        if ("com.viber.voip.action.ACTION_CORRUPTED_FILE".equals(paramIntent.getAction()))
        {
          this.b = at.a(this, null, getString(2131494312), null);
          return;
        }
        if ("com.viber.voip.action.PTT_MEMORY_USAGE".equals(paramIntent.getAction()))
        {
          this.b = at.a(this, 2131493803, 2131493804, new cu(this), new cw(this), false);
          return;
        }
        if ("com.viber.voip.action.PTT_DOWNLOAD_FAILED".equals(paramIntent.getAction()))
        {
          this.b = at.a(this, 2131493805, 2131493806, null);
          return;
        }
        if ("com.viber.voip.action.PTT_UPLOAD_FAILED".equals(paramIntent.getAction()))
        {
          this.b = at.a(this, 2131493805, 2131493807, null);
          return;
        }
        if ("com.viber.voip.action.CALL_DIALOG".equals(paramIntent.getAction()))
        {
          long l = paramIntent.getLongExtra("last_resolved", -1L);
          boolean bool1;
          int n;
          int i1;
          cy localcy;
          cz localcz;
          if (a >= l)
          {
            bool1 = true;
            c("resolveIntent: resolved = " + bool1);
            if (bool1) {
              break label794;
            }
            Uri localUri9 = paramIntent.getData();
            paramIntent.putExtra("resolved", true);
            n = -1;
            if (!e.c().b()) {
              break label718;
            }
            n = 2131494278;
            if (!ViberApplication.getInstance().getHardwareParameters().isGsmSupported()) {
              break label676;
            }
            i1 = 2131494285;
            if (i1 != 0) {
              QaLogger.a(new QaLogger.QaNotificationEvent("", getString(i1)));
            }
            if ((i != 0) && (i1 != 0) && (i1 != 2131493760) && (!gn.a()))
            {
              localcy = new cy(this, i1, localUri9);
              localcz = new cz(this);
              if (i1 == 2131493760) {
                break label788;
              }
            }
          }
          for (boolean bool2 = false;; bool2 = true)
          {
            this.b = at.a(this, n, i1, localcy, localcz, i, bool2);
            a = l;
            return;
            bool1 = false;
            break;
            this.b = at.a(this, getString(2131494278), getString(2131494286), 2131494287, new cx(this), true);
            i1 = 0;
            i = 0;
            break label563;
            if ((paramIntent.hasExtra("extra_was_viber")) && (paramIntent.getBooleanExtra("extra_was_viber", false)))
            {
              i1 = 2131493989;
              i = 2131493751;
              break label563;
            }
            i1 = 2131493760;
            bc localbc5 = bc.a();
            u localu5 = com.viber.voip.a.a.z;
            com.viber.voip.a.a.z.getClass();
            localbc5.a(localu5.b("300"));
            break label563;
          }
          startActivity(new Intent("com.viber.voip.action.DEFAULT"));
          return;
        }
        if ("com.viber.voip.action.GSM_CALL_IN_PROGRESS_DIALOG".equals(paramIntent.getAction()))
        {
          bc localbc4 = bc.a();
          u localu4 = com.viber.voip.a.a.z;
          com.viber.voip.a.a.z.getClass();
          localbc4.a(localu4.b("302"));
          String str11 = getString(2131493754);
          QaLogger.a(new QaLogger.QaNotificationEvent("", str11));
          this.b = at.a(this, null, str11, new da(this), false);
          return;
        }
        if ("com.viber.voip.action.SERVICE_NUMBER_DIALOG".equals(paramIntent.getAction()))
        {
          Uri localUri8 = paramIntent.getData();
          com.viber.voip.a.a.z.getClass();
          a(localUri8, 2131493755, "300");
          return;
        }
        if ("com.viber.voip.action.NO_LONGER_VIBER_PROBLEM".equals(paramIntent.getAction()))
        {
          if (paramIntent.getExtras() != null)
          {
            a(paramIntent.getExtras().getString("sms_body"), paramIntent.getExtras().getString("address"));
            return;
          }
          a(2131493993);
          return;
        }
        if ("com.viber.voip.action.NO_LONGER_IN_GROUP_DIALOG".equals(paramIntent.getAction()))
        {
          a(2131493996);
          return;
        }
        if ("com.viber.voip.action.NO_INTERNET_DIALOG".equals(paramIntent.getAction()))
        {
          if (paramIntent.getData() == null)
          {
            Uri localUri7 = paramIntent.getData();
            com.viber.voip.a.a.z.getClass();
            a(localUri7, 2131493794, 2131493758, "201");
            return;
          }
          if (paramIntent.getData().toString().equals("tel:")) {}
          for (int m = 2131493758; paramIntent.getData().toString().startsWith("smsto:"); m = 2131493774)
          {
            a(paramIntent, 2131493908);
            return;
          }
          Uri localUri6 = paramIntent.getData();
          com.viber.voip.a.a.z.getClass();
          a(localUri6, 2131493794, m, "201");
          return;
        }
        if ("com.viber.voip.action.NO_SERVICE_DIALOG".equals(paramIntent.getAction()))
        {
          if (paramIntent.getData() == null)
          {
            Uri localUri5 = paramIntent.getData();
            com.viber.voip.a.a.z.getClass();
            a(localUri5, 2131493759, "204");
            return;
          }
          if (paramIntent.getData().toString().equals("tel:")) {}
          for (int k = 2131493759; paramIntent.getData().toString().startsWith("smsto:"); k = 2131493757)
          {
            a(paramIntent, 2131493909);
            return;
          }
          Uri localUri4 = paramIntent.getData();
          com.viber.voip.a.a.z.getClass();
          a(localUri4, k, "204");
          return;
        }
        if ("com.viber.voip.action.SWITCH_TO_GSM_DIALOG".equals(paramIntent.getAction()))
        {
          bc localbc3 = bc.a();
          u localu3 = com.viber.voip.a.a.z;
          com.viber.voip.a.a.z.getClass();
          localbc3.a(localu3.b("303"));
          if (paramIntent.hasExtra("phone_number")) {
            this.c = paramIntent.getStringExtra("phone_number");
          }
          String str9 = getString(2131493749);
          String str10 = getString(2131493750);
          QaLogger.a(new QaLogger.QaNotificationEvent(str9, str10));
          new AlertDialog.Builder(this).setTitle(str9).setMessage(str10).setPositiveButton(i, new bq(this)).setNegativeButton(2131493558, new bp(this)).setOnCancelListener(this.d).create().show();
          return;
        }
        if ("com.viber.voip.action.SLOW_INTERNET_DIALOG".equals(paramIntent.getAction()))
        {
          String str7 = getString(2131493732);
          String str8 = getString(2131493764);
          QaLogger.a(new QaLogger.QaNotificationEvent(str7, str8));
          at.a(this, str7, str8, new br(this), false);
          return;
        }
        if (!"android.intent.action.SENDTO".equals(paramIntent.getAction())) {
          break;
        }
        localUri3 = getIntent().getData();
      } while ((localUri3 == null) || ((!localUri3.getScheme().equals("smsto")) && (!localUri3.getScheme().equals("sms"))));
      String str6 = localUri3.getSchemeSpecificPart();
      ViberApplication.getInstance().getContactManager().a(str6, new bs(this, str6));
      return;
      if ("com.viber.voip.action.PROBLEM_DEVICE_DIALOG".equals(paramIntent.getAction()))
      {
        QaLogger.a(new QaLogger.QaNotificationEvent("", getString(2131493769)));
        AlertDialog localAlertDialog3 = new AlertDialog.Builder(this).setMessage(2131493769).setPositiveButton(i, new bt(this, paramIntent)).setNegativeButton(2131493558, this.d).setOnCancelListener(this.d).create();
        localAlertDialog3.requestWindowFeature(1);
        localAlertDialog3.show();
        return;
      }
      if ("com.viber.voip.action.DATA_ROAMING_DIALOG".equals(paramIntent.getAction()))
      {
        String str5 = getString(2131493770);
        QaLogger.a(new QaLogger.QaNotificationEvent("", str5));
        AlertDialog.Builder localBuilder2 = new AlertDialog.Builder(this);
        localBuilder2.setMessage(str5);
        CheckBox[] arrayOfCheckBox = new CheckBox[1];
        localBuilder2.setPositiveButton(2131493557, new bu(this, arrayOfCheckBox, paramIntent));
        localBuilder2.setNegativeButton(2131493558, new bv(this, paramIntent));
        localBuilder2.setOnCancelListener(this.d);
        AlertDialog localAlertDialog2 = localBuilder2.create();
        View localView2 = LayoutInflater.from(this).inflate(2130903186, null);
        arrayOfCheckBox[0] = ((CheckBox)localView2.findViewById(2131165764));
        localAlertDialog2.setView(localView2);
        localAlertDialog2.requestWindowFeature(1);
        localAlertDialog2.show();
        return;
      }
      if ("com.viber.voip.action.CHANGE_LOCATION_SETTINGS".equals(paramIntent.getAction()))
      {
        bc localbc2 = bc.a();
        u localu2 = com.viber.voip.a.a.z;
        com.viber.voip.a.a.z.getClass();
        localbc2.a(localu2.b("305c"));
        QaLogger.a(new QaLogger.QaNotificationEvent("", getString(2131493934)));
        AlertDialog.Builder localBuilder1 = new AlertDialog.Builder(this);
        localBuilder1.setMessage(2131493934);
        localBuilder1.setPositiveButton(2131493558, new bw(this, paramIntent));
        localBuilder1.setNegativeButton(i, new bx(this));
        localBuilder1.setOnCancelListener(new by(this));
        localBuilder1.create().show();
        return;
      }
      if ("com.viber.voip.action.SEND_NO_LOCATION_DIALOG".equals(paramIntent.getAction()))
      {
        String str4 = getString(2131493935);
        QaLogger.a(new QaLogger.QaNotificationEvent("", str4));
        at.a(this, null, str4, new ca(this), true);
        return;
      }
      if ("com.viber.voip.action.ACTION_GEN_DEV_KEY_FAILED".equals(paramIntent.getAction()))
      {
        String str3 = getString(2131493936);
        QaLogger.a(new QaLogger.QaNotificationEvent("", str3));
        at.a(this, null, str3, new cb(this), true);
        return;
      }
      if ("com.viber.voip.action.NO_INTERNET_CONNECTION_DOWNLOAD".equals(paramIntent.getAction()))
      {
        Uri localUri2 = Uri.parse("tel:");
        com.viber.voip.a.a.z.getClass();
        a(localUri2, 2131493794, 2131493774, "201");
        return;
      }
      if ("com.viber.voip.action.INVALID_NUMBER".equals(paramIntent.getAction()))
      {
        b();
        return;
      }
      if ("com.viber.voip.action.DOWNLOAD_FAIL_DIALOG".equals(paramIntent.getAction()))
      {
        switch (paramIntent.getExtras().getInt("EXTRA_ERROR_CODE", 0))
        {
        }
        for (int j = 2131493772;; j = 2131493773)
        {
          Uri localUri1 = Uri.parse("tel:");
          com.viber.voip.a.a.z.getClass();
          a(localUri1, j, "201");
          return;
        }
      }
      if ((!"com.viber.voip.action.TYPE_TEXT_ONLY_DIALOG".equals(paramIntent.getAction())) && (!"com.viber.voip.action.TYPE_NO_SPIRIT_DIALOG".equals(paramIntent.getAction()))) {
        break;
      }
      str1 = paramIntent.getStringExtra("dialog_context");
    } while ((str1 == null) || (TextUtils.isEmpty(str1)));
    label788:
    label794:
    String str2 = getString(2131493990);
    if ("com.viber.voip.action.TYPE_NO_SPIRIT_DIALOG".equals(paramIntent.getAction()))
    {
      w.a(str1, str1, new cc(this, str1));
      return;
    }
    QaLogger.a(new QaLogger.QaNotificationEvent("", str2));
    at.a(this, 0, str2, new cf(this, str1), new cg(this, str1), i, false);
    return;
    if ("com.viber.voip.action.NUMBER_NOT_VIBER_DIALOG".equals(paramIntent.getAction()))
    {
      com.viber.voip.a.a.z.getClass();
      a(null, 2131494186, 2131494185, "507");
      return;
    }
    if ("com.viber.voip.action.INVITE_NUMBER_NOT_VIBER_DIALOG".equals(paramIntent.getAction()))
    {
      a(paramIntent.getStringExtra("dialog_context"));
      return;
    }
    if ("com.viber.voip.action.RATE_POPUP".equals(paramIntent.getAction()))
    {
      bc localbc1 = bc.a();
      u localu1 = com.viber.voip.a.a.z;
      com.viber.voip.a.a.z.getClass();
      localbc1.a(localu1.b("405"));
      View localView1 = LayoutInflater.from(this).inflate(2130903184, null);
      AlertDialog localAlertDialog1 = new AlertDialog.Builder(this).setTitle(2131494172).setView(localView1).setOnCancelListener(new ch(this)).create();
      ci localci = new ci(this, localAlertDialog1);
      localView1.findViewById(2131165759).setOnClickListener(localci);
      localView1.findViewById(2131165760).setOnClickListener(localci);
      localView1.findViewById(2131165761).setOnClickListener(localci);
      localAlertDialog1.requestWindowFeature(1);
      localAlertDialog1.show();
      return;
    }
    if ("com.viber.voip.action.NO_MULTI_SYNC_ACCOUNTS_ALLOWED".equals(paramIntent.getAction()))
    {
      Toast.makeText(getApplicationContext(), 2131493783, 1).show();
      finish();
      return;
    }
    if ("com.viber.voip.action.SYNC_ACCOUNT_ENABLE".equals(paramIntent.getAction()))
    {
      com.viber.service.contacts.sync.a.a().a(true);
      finish();
      return;
    }
    if ("com.viber.voip.action.ACTION_LOW_STORAGE_SPACE".equals(paramIntent.getAction()))
    {
      com.viber.voip.a.a.z.getClass();
      a(null, 2131493787, 2131493788, "351");
      return;
    }
    if ("com.viber.voip.action.ACTION_SD_CARD_UNAVALIABLE".equals(paramIntent.getAction()))
    {
      com.viber.voip.a.a.z.getClass();
      a(null, 2131493984, 2131494025, "337");
      return;
    }
    if (("com.viber.voip.action.SETTINGS_CHANGE_DIALOG".equals(paramIntent.getAction())) || ("com.viber.voip.action.SETTINGS_CHANGE_CHECK".equals(paramIntent.getAction())))
    {
      e();
      return;
    }
    if ("com.viber.voip.action.CORRUPTED_UPGRADE_DIALOG".equals(paramIntent.getAction()))
    {
      d();
      return;
    }
    startActivity(new Intent("com.viber.voip.action.DEFAULT"));
  }
  
  private void a(Intent paramIntent, int paramInt)
  {
    String str1 = paramIntent.getData().getSchemeSpecificPart();
    String str2 = paramIntent.getExtras().getString("message_name");
    long l = paramIntent.getExtras().getLong("message_id");
    paramIntent.getExtras().getLong("message_thread_id");
    if (str2 == null) {
      str2 = w.a(getApplicationContext(), str1, str1);
    }
    MessageEntityImpl localMessageEntityImpl = as.a().m(l);
    if (localMessageEntityImpl == null) {
      finish();
    }
    try
    {
      bc localbc = bc.a();
      u localu = com.viber.voip.a.a.z;
      com.viber.voip.a.a.z.getClass();
      localbc.a(localu.b("311"));
      if (localMessageEntityImpl != null) {}
      for (int i = 2131493911;; i = 2131493910)
      {
        Object[] arrayOfObject = new Object[1];
        if (TextUtils.isEmpty(str2)) {
          str2 = str1;
        }
        arrayOfObject[0] = str2;
        String str3 = getString(i, arrayOfObject);
        QaLogger.a(new QaLogger.QaNotificationEvent("", str3));
        AlertDialog.Builder localBuilder = new AlertDialog.Builder(this);
        localBuilder.setPositiveButton(17039360, this.d).setNegativeButton(2131493912, new cs(this, l, localMessageEntityImpl));
        localBuilder.setOnCancelListener(this.d);
        localBuilder.setMessage(str3);
        localBuilder.create().show();
        return;
      }
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
  
  private void a(Uri paramUri, int paramInt1, int paramInt2, String paramString)
  {
    bc.a().a(com.viber.voip.a.a.z.b(paramString));
    QaLogger.a(new QaLogger.QaNotificationEvent("", getString(paramInt2)));
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(this);
    if ((paramUri == null) || ((paramUri != null) && (paramUri.toString().equals("tel:")))) {
      localBuilder.setPositiveButton(17039370, this.d);
    }
    for (;;)
    {
      localBuilder.setOnCancelListener(this.d);
      localBuilder.setMessage(paramInt2);
      if (paramInt1 != 0) {
        localBuilder.setTitle(paramInt1);
      }
      localBuilder.create().show();
      return;
      localBuilder.setPositiveButton(2131493751, new cq(this, paramString, paramUri)).setNegativeButton(17039360, this.d);
    }
  }
  
  private void a(Uri paramUri, int paramInt, String paramString)
  {
    a(paramUri, 0, paramInt, paramString);
  }
  
  private void a(Bundle paramBundle)
  {
    if (paramBundle != null) {
      ViberApplication.getInstance().getMessagesManager().a(paramBundle.getLong("message_id"));
    }
  }
  
  private void a(String paramString)
  {
    a(paramString, 2131494482, 2131494483, 2131494484, 2131494485, true);
  }
  
  /* Error */
  private void a(String paramString, int paramInt1, int paramInt2, int paramInt3, int paramInt4, boolean paramBoolean)
  {
    // Byte code:
    //   0: aload_1
    //   1: invokestatic 71	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   4: ifeq +8 -> 12
    //   7: aload_0
    //   8: invokevirtual 643	com/viber/voip/SystemDialogActivity:finish	()V
    //   11: return
    //   12: getstatic 759	android/provider/ContactsContract$PhoneLookup:CONTENT_FILTER_URI	Landroid/net/Uri;
    //   15: aload_1
    //   16: invokestatic 762	android/net/Uri:encode	(Ljava/lang/String;)Ljava/lang/String;
    //   19: invokestatic 766	android/net/Uri:withAppendedPath	(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
    //   22: astore 8
    //   24: aload_0
    //   25: invokevirtual 770	com/viber/voip/SystemDialogActivity:getContentResolver	()Landroid/content/ContentResolver;
    //   28: aload 8
    //   30: iconst_1
    //   31: anewarray 122	java/lang/String
    //   34: dup
    //   35: iconst_0
    //   36: ldc_w 772
    //   39: aastore
    //   40: aconst_null
    //   41: aconst_null
    //   42: aconst_null
    //   43: invokevirtual 778	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   46: astore 9
    //   48: new 780	java/util/HashSet
    //   51: dup
    //   52: invokespecial 781	java/util/HashSet:<init>	()V
    //   55: astore 10
    //   57: new 96	java/lang/StringBuilder
    //   60: dup
    //   61: invokespecial 97	java/lang/StringBuilder:<init>	()V
    //   64: astore 11
    //   66: aload 9
    //   68: ifnull +48 -> 116
    //   71: aload 9
    //   73: invokeinterface 786 1 0
    //   78: ifeq +38 -> 116
    //   81: aload 10
    //   83: aload 9
    //   85: aload 9
    //   87: ldc_w 772
    //   90: invokeinterface 790 2 0
    //   95: invokeinterface 791 2 0
    //   100: invokeinterface 796 2 0
    //   105: pop
    //   106: aload 9
    //   108: invokeinterface 799 1 0
    //   113: ifne -32 -> 81
    //   116: aload 10
    //   118: invokeinterface 803 1 0
    //   123: ifle +174 -> 297
    //   126: aload 10
    //   128: invokeinterface 807 1 0
    //   133: astore 17
    //   135: aload 17
    //   137: invokeinterface 812 1 0
    //   142: ifeq +64 -> 206
    //   145: aload 17
    //   147: invokeinterface 816 1 0
    //   152: checkcast 122	java/lang/String
    //   155: astore 19
    //   157: aload 11
    //   159: invokevirtual 819	java/lang/StringBuilder:length	()I
    //   162: ifle +16 -> 178
    //   165: aload 11
    //   167: bipush 44
    //   169: invokevirtual 822	java/lang/StringBuilder:append	(C)Ljava/lang/StringBuilder;
    //   172: bipush 32
    //   174: invokevirtual 822	java/lang/StringBuilder:append	(C)Ljava/lang/StringBuilder;
    //   177: pop
    //   178: aload 11
    //   180: aload 19
    //   182: invokevirtual 103	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   185: pop
    //   186: goto -51 -> 135
    //   189: astore 12
    //   191: aload 9
    //   193: invokestatic 827	com/viber/voip/util/al:a	(Landroid/database/Cursor;)V
    //   196: aload 12
    //   198: athrow
    //   199: astore 7
    //   201: aload_0
    //   202: invokevirtual 643	com/viber/voip/SystemDialogActivity:finish	()V
    //   205: return
    //   206: aload 11
    //   208: invokevirtual 110	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   211: astore 18
    //   213: aload 18
    //   215: astore 14
    //   217: aload 9
    //   219: invokestatic 827	com/viber/voip/util/al:a	(Landroid/database/Cursor;)V
    //   222: iload 6
    //   224: ifeq +50 -> 274
    //   227: aload_0
    //   228: iload_3
    //   229: iconst_1
    //   230: anewarray 170	java/lang/Object
    //   233: dup
    //   234: iconst_0
    //   235: aload 14
    //   237: aastore
    //   238: invokevirtual 706	com/viber/voip/SystemDialogActivity:getString	(I[Ljava/lang/Object;)Ljava/lang/String;
    //   241: astore 15
    //   243: aload_0
    //   244: iload_2
    //   245: aload 15
    //   247: new 829	com/viber/voip/cj
    //   250: dup
    //   251: aload_0
    //   252: aload_1
    //   253: invokespecial 830	com/viber/voip/cj:<init>	(Lcom/viber/voip/SystemDialogActivity;Ljava/lang/String;)V
    //   256: new 832	com/viber/voip/ck
    //   259: dup
    //   260: aload_0
    //   261: invokespecial 833	com/viber/voip/ck:<init>	(Lcom/viber/voip/SystemDialogActivity;)V
    //   264: iload 4
    //   266: iload 5
    //   268: iconst_0
    //   269: invokestatic 836	com/viber/voip/util/at:a	(Landroid/content/Context;ILjava/lang/CharSequence;Lcom/viber/voip/util/az;Ljava/lang/Runnable;IIZ)Landroid/content/DialogInterface;
    //   272: pop
    //   273: return
    //   274: aload_0
    //   275: iload_3
    //   276: iconst_2
    //   277: anewarray 170	java/lang/Object
    //   280: dup
    //   281: iconst_0
    //   282: aload_1
    //   283: aastore
    //   284: dup
    //   285: iconst_1
    //   286: aload 14
    //   288: aastore
    //   289: invokevirtual 706	com/viber/voip/SystemDialogActivity:getString	(I[Ljava/lang/Object;)Ljava/lang/String;
    //   292: astore 15
    //   294: goto -51 -> 243
    //   297: aload_1
    //   298: astore 14
    //   300: goto -83 -> 217
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	303	0	this	SystemDialogActivity
    //   0	303	1	paramString	String
    //   0	303	2	paramInt1	int
    //   0	303	3	paramInt2	int
    //   0	303	4	paramInt3	int
    //   0	303	5	paramInt4	int
    //   0	303	6	paramBoolean	boolean
    //   199	1	7	localIllegalArgumentException	java.lang.IllegalArgumentException
    //   22	7	8	localUri	Uri
    //   46	172	9	localCursor	android.database.Cursor
    //   55	72	10	localHashSet	java.util.HashSet
    //   64	143	11	localStringBuilder	java.lang.StringBuilder
    //   189	8	12	localObject	Object
    //   215	84	14	str1	String
    //   241	52	15	str2	String
    //   133	13	17	localIterator	java.util.Iterator
    //   211	3	18	str3	String
    //   155	26	19	str4	String
    // Exception table:
    //   from	to	target	type
    //   48	66	189	finally
    //   71	81	189	finally
    //   81	116	189	finally
    //   116	135	189	finally
    //   135	178	189	finally
    //   178	186	189	finally
    //   206	213	189	finally
    //   12	48	199	java/lang/IllegalArgumentException
  }
  
  private void a(String paramString1, String paramString2)
  {
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(this);
    localBuilder.setPositiveButton(2131493551, new cp(this, paramString2)).setNegativeButton(17039360, this.d);
    localBuilder.setOnCancelListener(this.d);
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = paramString2;
    if (TextUtils.isEmpty(paramString1)) {
      paramString1 = "";
    }
    arrayOfObject[1] = paramString1;
    localBuilder.setMessage(getString(2131493995, arrayOfObject));
    localBuilder.setTitle(2131493994);
    localBuilder.create().show();
  }
  
  private void b()
  {
    String str1 = getString(2131493775);
    String str2 = getString(2131493776);
    QaLogger.a(new QaLogger.QaNotificationEvent(str1, str2));
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(this);
    localBuilder.setTitle(str1);
    localBuilder.setMessage(str2);
    localBuilder.setPositiveButton(17039370, new cn(this));
    localBuilder.setOnCancelListener(this.d);
    localBuilder.create().show();
  }
  
  private void b(DialogInterface paramDialogInterface)
  {
    if ((paramDialogInterface != null) && ((!(paramDialogInterface instanceof Dialog)) || (((Dialog)paramDialogInterface).isShowing()))) {}
    try
    {
      paramDialogInterface.dismiss();
      return;
    }
    catch (Exception localException) {}
  }
  
  /* Error */
  private void b(Intent paramIntent)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: aload_0
    //   3: invokestatic 861	com/viber/voip/util/ft:b	(Landroid/content/Context;)Z
    //   6: ifne +17 -> 23
    //   9: aload_0
    //   10: new 117	android/content/Intent
    //   13: dup
    //   14: ldc 144
    //   16: invokespecial 343	android/content/Intent:<init>	(Ljava/lang/String;)V
    //   19: invokespecial 863	com/viber/voip/SystemDialogActivity:a	(Landroid/content/Intent;)V
    //   22: return
    //   23: aload_1
    //   24: invokevirtual 267	android/content/Intent:getData	()Landroid/net/Uri;
    //   27: ifnull +169 -> 196
    //   30: aload_0
    //   31: invokevirtual 770	com/viber/voip/SystemDialogActivity:getContentResolver	()Landroid/content/ContentResolver;
    //   34: aload_1
    //   35: invokevirtual 267	android/content/Intent:getData	()Landroid/net/Uri;
    //   38: iconst_3
    //   39: anewarray 122	java/lang/String
    //   42: dup
    //   43: iconst_0
    //   44: ldc_w 865
    //   47: aastore
    //   48: dup
    //   49: iconst_1
    //   50: ldc_w 867
    //   53: aastore
    //   54: dup
    //   55: iconst_2
    //   56: ldc_w 772
    //   59: aastore
    //   60: aconst_null
    //   61: aconst_null
    //   62: aconst_null
    //   63: invokevirtual 778	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   66: astore 7
    //   68: aload 7
    //   70: ifnull +113 -> 183
    //   73: aload 7
    //   75: invokeinterface 786 1 0
    //   80: ifeq +103 -> 183
    //   83: aload 7
    //   85: iconst_0
    //   86: invokeinterface 791 2 0
    //   91: astore 4
    //   93: aload 7
    //   95: iconst_1
    //   96: invokeinterface 791 2 0
    //   101: astore 5
    //   103: aload 7
    //   105: iconst_2
    //   106: invokeinterface 791 2 0
    //   111: astore 8
    //   113: aload 8
    //   115: astore_3
    //   116: aload 7
    //   118: invokestatic 827	com/viber/voip/util/al:a	(Landroid/database/Cursor;)V
    //   121: aload 4
    //   123: invokestatic 71	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   126: ifne +11 -> 137
    //   129: aload 5
    //   131: invokestatic 71	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   134: ifeq +17 -> 151
    //   137: aload_0
    //   138: invokevirtual 643	com/viber/voip/SystemDialogActivity:finish	()V
    //   141: return
    //   142: astore 6
    //   144: aload_2
    //   145: invokestatic 827	com/viber/voip/util/al:a	(Landroid/database/Cursor;)V
    //   148: aload 6
    //   150: athrow
    //   151: new 869	com/viber/service/f
    //   154: dup
    //   155: invokespecial 870	com/viber/service/f:<init>	()V
    //   158: new 872	com/viber/voip/cl
    //   161: dup
    //   162: aload_0
    //   163: aload 5
    //   165: aload 4
    //   167: aload_3
    //   168: invokespecial 875	com/viber/voip/cl:<init>	(Lcom/viber/voip/SystemDialogActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   171: invokevirtual 878	com/viber/service/f:a	(Lcom/viber/service/i;)V
    //   174: return
    //   175: astore 6
    //   177: aload 7
    //   179: astore_2
    //   180: goto -36 -> 144
    //   183: ldc_w 295
    //   186: astore_3
    //   187: aconst_null
    //   188: astore 4
    //   190: aconst_null
    //   191: astore 5
    //   193: goto -77 -> 116
    //   196: ldc_w 295
    //   199: astore_3
    //   200: aconst_null
    //   201: astore 4
    //   203: aconst_null
    //   204: astore 5
    //   206: goto -85 -> 121
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	209	0	this	SystemDialogActivity
    //   0	209	1	paramIntent	Intent
    //   1	179	2	localObject1	Object
    //   115	85	3	str1	String
    //   91	111	4	str2	String
    //   101	104	5	str3	String
    //   142	7	6	localObject2	Object
    //   175	1	6	localObject3	Object
    //   66	112	7	localCursor	android.database.Cursor
    //   111	3	8	str4	String
    // Exception table:
    //   from	to	target	type
    //   30	68	142	finally
    //   73	113	175	finally
  }
  
  private void b(Bundle paramBundle)
  {
    if (paramBundle != null)
    {
      i locali = ViberApplication.getInstance().getMessagesManager();
      long l = paramBundle.getLong("message_id");
      locali.c().d(l);
    }
  }
  
  private void b(String paramString)
  {
    a(paramString, 2131493766, 2131493767, 2131493551, 2131493558, false);
  }
  
  private void b(String paramString1, String paramString2)
  {
    Intent localIntent = new Intent("android.intent.action.VIEW");
    localIntent.putExtra("address", paramString1);
    localIntent.putExtra("sms_body", paramString2);
    localIntent.setData(Uri.parse("smsto:" + paramString1));
    startActivity(localIntent);
  }
  
  private void c()
  {
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(this);
    localBuilder.setPositiveButton(17039370, this.d);
    localBuilder.setOnCancelListener(this.d);
    localBuilder.setMessage(2131493790);
    localBuilder.setTitle(2131493789);
    localBuilder.create().show();
  }
  
  private void c(String paramString) {}
  
  private void d()
  {
    new AlertDialog.Builder(this).setTitle(2131493890).setMessage(2131493891).setPositiveButton(17039370, new cr(this)).create().show();
  }
  
  private void e()
  {
    boolean bool = ViberApplication.preferences().b(j.Y(), j.Z());
    c("settingChangeAction lastOnline:" + bool);
    ViberApplication.preferences().a("last_online_settings_enable_alarmed", false);
    AlertDialog.Builder localBuilder1 = new AlertDialog.Builder(this);
    int i;
    int j;
    label87:
    AlertDialog.Builder localBuilder3;
    if (bool)
    {
      i = 2131493884;
      AlertDialog.Builder localBuilder2 = localBuilder1.setTitle(i);
      if (!bool) {
        break label153;
      }
      j = 2131493885;
      localBuilder3 = localBuilder2.setMessage(j).setNegativeButton(2131493558, this.d).setOnCancelListener(this.d);
      if (!bool) {
        break label161;
      }
    }
    label153:
    label161:
    for (int k = 2131493886;; k = 2131493901)
    {
      localBuilder3.setPositiveButton(k, new ct(this, bool)).create().show();
      return;
      i = 2131493899;
      break;
      j = 2131493900;
      break label87;
    }
  }
  
  private void f()
  {
    ViberApplication.preferences().a("show_rate_dialog", false);
  }
  
  public void a()
  {
    ViberApplication.preferences().a("UseProblemDevice", true);
  }
  
  public void a(DialogInterface paramDialogInterface)
  {
    b(paramDialogInterface);
    finish();
  }
  
  public void finish()
  {
    super.finish();
  }
  
  public void onBackPressed()
  {
    finish();
    super.onBackPressed();
  }
  
  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    c("onConfigurationChanged newConfig.orientation:" + paramConfiguration.orientation);
    super.onConfigurationChanged(paramConfiguration);
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
  }
  
  protected void onDestroy()
  {
    b(this.b);
    this.c = null;
    super.onDestroy();
  }
  
  protected void onNewIntent(Intent paramIntent)
  {
    c("onNewIntent");
    a(paramIntent);
    super.onNewIntent(paramIntent);
  }
  
  protected void onPause()
  {
    c("onPause");
    super.onPause();
  }
  
  protected void onResume()
  {
    c("onResume");
    super.onResume();
  }
  
  protected void onStart()
  {
    c("onStart");
    super.onStart();
    a(getIntent());
  }
  
  protected void onStop()
  {
    c("onStop");
    super.onStop();
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.SystemDialogActivity
 * JD-Core Version:    0.7.0.1
 */