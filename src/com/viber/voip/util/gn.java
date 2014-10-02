package com.viber.voip.util;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import android.widget.Toast;
import com.viber.dexshared.GMaps.Factory;
import com.viber.dexshared.GMaps.NotAvailableException;
import com.viber.jni.PhoneControllerWrapper;
import com.viber.service.b;
import com.viber.voip.ViberApplication;
import com.viber.voip.ViberEnv;
import com.viber.voip.a.bc;
import com.viber.voip.a.u;
import com.viber.voip.billing.ae;
import com.viber.voip.calls.entities.CallEntity;
import com.viber.voip.market.MarketActivity;
import com.viber.voip.messages.ui.media.GoogleApiMapPreViewActivity;
import com.viber.voip.messages.ui.media.GoogleApiMapPreviewActivityV2;
import com.viber.voip.messages.ui.media.LocationMessageActivity;
import com.viber.voip.messages.ui.media.LocationMessageActivityV2;
import com.viber.voip.messages.ui.media.WebMapPreViewActivity;
import com.viber.voip.registration.HardwareParameters;
import com.viber.voip.viberout.e;
import com.viber.voip.viberout.ui.ViberOutDialogs;

public class gn
{
  public static Intent a(long paramLong1, long paramLong2, String paramString1, String paramString2)
  {
    Intent localIntent = new Intent("com.viber.voip.action.VIEW_MEDIA");
    localIntent.putExtra("thread_id", paramLong1);
    localIntent.putExtra("msg_id", paramLong2);
    localIntent.putExtra("screen_title", paramString1);
    localIntent.putExtra("prev_action", paramString2);
    return localIntent;
  }
  
  public static Intent a(long paramLong1, long paramLong2, String paramString1, String paramString2, Uri paramUri, String paramString3, String paramString4)
  {
    return a(false, paramLong1, paramLong2, paramString1, paramString2, paramUri, paramString3, null, paramString4);
  }
  
  public static Intent a(long paramLong1, long paramLong2, String paramString1, String paramString2, String paramString3, String paramString4, Uri paramUri, boolean paramBoolean, CallEntity... paramVarArgs)
  {
    return b(paramLong1, paramLong2, paramString1, paramString2, paramString3, paramString4, paramUri, paramBoolean, paramVarArgs);
  }
  
  public static Intent a(String paramString1, String paramString2)
  {
    return a(-1L, -1L, null, null, null, paramString1, paramString2);
  }
  
  public static Intent a(String paramString, boolean paramBoolean, CallEntity... paramVarArgs)
  {
    return b(paramString, paramBoolean, paramVarArgs);
  }
  
  public static Intent a(boolean paramBoolean, long paramLong1, long paramLong2, String paramString1, String paramString2, Uri paramUri, String paramString3, String paramString4)
  {
    return a(paramBoolean, paramLong1, paramLong2, paramString1, paramString2, paramUri, paramString3, null, paramString4);
  }
  
  public static Intent a(boolean paramBoolean, long paramLong1, long paramLong2, String paramString1, String paramString2, Uri paramUri, String paramString3, String paramString4, String paramString5)
  {
    Intent localIntent = new Intent();
    if (paramBoolean) {}
    for (String str = "com.viber.voip.action.VIEW_CONTACT_DIALOG";; str = "com.viber.voip.action.VIEW_CONTACT")
    {
      localIntent.setAction(str);
      localIntent.putExtra("contact_id", paramLong1);
      localIntent.putExtra("native_contact_id", paramLong2);
      localIntent.putExtra("lookup_key", paramString2);
      localIntent.putExtra("name", paramString1);
      localIntent.putExtra("photo_uri", paramUri);
      localIntent.putExtra("con_number", paramString3);
      localIntent.putExtra("viber_number", paramString4);
      localIntent.putExtra("prev_action", paramString5);
      return localIntent;
    }
  }
  
  public static Intent a(boolean paramBoolean1, String paramString1, String paramString2, Uri paramUri, boolean paramBoolean2, String paramString3)
  {
    Intent localIntent = new Intent();
    if (paramBoolean1) {}
    for (String str = "com.viber.voip.action.VIEW_CONTACT_DIALOG";; str = "com.viber.voip.action.VIEW_CONTACT")
    {
      localIntent.setAction(str);
      localIntent.putExtra("con_number", paramString1);
      localIntent.putExtra("is_viber", paramBoolean2);
      localIntent.putExtra("photo_uri", paramUri);
      localIntent.putExtra("name", paramString2);
      localIntent.putExtra("prev_action", paramString3);
      return localIntent;
    }
  }
  
  private static void a(int paramInt, Activity paramActivity)
  {
    paramActivity.runOnUiThread(new gt(paramActivity, paramInt));
  }
  
  public static void a(Activity paramActivity, String paramString1, long paramLong1, long paramLong2, String paramString2, Uri paramUri)
  {
    Intent localIntent = com.viber.voip.messages.j.a(paramString1, paramLong1, paramLong2, paramString2, paramUri);
    localIntent.putExtra("send_1to1", true);
    paramActivity.startActivity(localIntent);
  }
  
  public static void a(Context paramContext, long paramLong)
  {
    a(paramContext, paramLong, false, false);
  }
  
  public static void a(Context paramContext, long paramLong1, int paramInt1, int paramInt2, long paramLong2, String paramString1, String paramString2, String paramString3, boolean paramBoolean)
  {
    int i;
    if (!ViberApplication.preferences().b(com.viber.voip.settings.j.aj(), com.viber.voip.settings.j.ak()))
    {
      i = 1;
      if (i == 0) {
        break label134;
      }
    }
    for (;;)
    {
      try
      {
        ViberEnv.getGMapsFactory().initialize(ViberApplication.getInstance().getApplicationContext());
        a(GoogleApiMapPreviewActivityV2.class, paramContext, paramLong1, paramInt1, paramInt2, paramLong2, paramString1, paramString2, paramString3, paramBoolean);
        j = i;
      }
      catch (GMaps.NotAvailableException localNotAvailableException)
      {
        j = 0;
        continue;
      }
      catch (NoClassDefFoundError localNoClassDefFoundError2)
      {
        j = 0;
        continue;
      }
      if (j == 0) {}
      try
      {
        a(GoogleApiMapPreViewActivity.class, paramContext, paramLong1, paramInt1, paramInt2, paramLong2, paramString1, paramString2, paramString3, paramBoolean);
        return;
      }
      catch (NoClassDefFoundError localNoClassDefFoundError1)
      {
        a(WebMapPreViewActivity.class, paramContext, paramLong1, paramInt1, paramInt2, paramLong2, paramString1, paramString2, paramString3, paramBoolean);
        return;
      }
      i = 0;
      break;
      label134:
      int j = i;
    }
  }
  
  public static void a(Context paramContext, long paramLong1, long paramLong2, String paramString1, String paramString2)
  {
    Intent localIntent = a(paramLong1, paramLong2, paramString1, paramString2);
    if (!(paramContext instanceof Activity)) {
      localIntent.addFlags(268435456);
    }
    paramContext.startActivity(localIntent);
  }
  
  public static void a(Context paramContext, long paramLong1, long paramLong2, String paramString1, String paramString2, Uri paramUri, String paramString3)
  {
    paramContext.startActivity(a(false, paramLong1, paramLong2, paramString1, paramString2, paramUri, null, paramString3));
  }
  
  public static void a(Context paramContext, long paramLong, boolean paramBoolean)
  {
    a(paramContext, paramLong, false, true);
  }
  
  private static void a(Context paramContext, long paramLong, boolean paramBoolean1, boolean paramBoolean2)
  {
    Intent localIntent = new Intent("com.viber.voip.action.MESSAGE_CHAT_HEADS");
    localIntent.setFlags(268435456);
    localIntent.putExtra("conversation", paramLong);
    localIntent.putExtra("pop_to_chat_head", paramBoolean1);
    localIntent.putExtra("from_message_fragment", paramBoolean2);
    paramContext.sendBroadcast(localIntent);
  }
  
  public static void a(Context paramContext, Intent paramIntent, com.viber.voip.a.k paramk)
  {
    if (!ViberApplication.preferences().b("NeverShowAgainGSM", false))
    {
      View localView = LayoutInflater.from(paramContext).inflate(2130903183, null);
      AlertDialog localAlertDialog = new AlertDialog.Builder(paramContext).setView(localView).create();
      gs localgs = new gs(localAlertDialog, paramContext, paramIntent, paramk);
      Button localButton1 = (Button)localView.findViewById(2131165756);
      localButton1.setOnClickListener(localgs);
      localButton1.setText(2131493558);
      Button localButton2 = (Button)localView.findViewById(2131165757);
      localButton2.setOnClickListener(localgs);
      localButton2.setText(2131493550);
      Button localButton3 = (Button)localView.findViewById(2131165758);
      localButton3.setOnClickListener(localgs);
      localButton3.setText(2131493753);
      ((TextView)localView.findViewById(2131165474)).setText(2131493752);
      localAlertDialog.requestWindowFeature(1);
      localAlertDialog.show();
    }
    do
    {
      return;
      paramContext.startActivity(paramIntent);
    } while (paramk == null);
    bc.a().a(paramk.c());
  }
  
  public static void a(Context paramContext, Intent paramIntent, boolean paramBoolean, com.viber.voip.a.k paramk)
  {
    if (("com.viber.voip.action.CALL".equals(paramIntent.getAction())) && (!a(paramContext))) {}
    do
    {
      return;
      if (paramIntent == null)
      {
        e();
        return;
      }
      try
      {
        if ((!ViberApplication.getInstance().getHardwareParameters().isGsmSupported()) && (("android.intent.action.CALL".equals(paramIntent.getAction())) || ("android.intent.action.SENDTO".equals(paramIntent.getAction())) || ("android.intent.action.VIEW".equals(paramIntent.getAction()))))
        {
          at.a(paramContext, 2131493789, 2131493790, null);
          return;
        }
      }
      catch (ActivityNotFoundException localActivityNotFoundException)
      {
        ViberApplication.log(6, "ViberActionRunner", "No activity found for intent: " + paramIntent, localActivityNotFoundException);
        e();
        return;
      }
      if ("android.intent.action.CALL".equals(paramIntent.getAction()))
      {
        Uri localUri = paramIntent.getData();
        if (e.c().b())
        {
          ViberOutDialogs.a(new ae(localUri.getSchemeSpecificPart()), paramBoolean);
          return;
        }
        go localgo = new go(paramContext, paramIntent, paramk);
        if (paramBoolean)
        {
          a(paramContext, paramIntent, paramk);
          return;
        }
        if (!a())
        {
          at.a(paramContext, -1, 2131493760, new gp(localgo), null, 2131493550, true);
          return;
        }
        localgo.run();
        return;
      }
      if ((("android.intent.action.SENDTO".equals(paramIntent.getAction())) || ("android.intent.action.VIEW".equals(paramIntent.getAction()))) && (paramBoolean) && ("smsto".equals(paramIntent.getScheme())))
      {
        bc localbc = bc.a();
        u localu = com.viber.voip.a.a.z;
        com.viber.voip.a.a.z.getClass();
        localbc.a(localu.b("327"));
        at.a(paramContext, -1, 2131493765, new gq(paramContext, paramIntent, paramk), null, 2131493550, false);
        return;
      }
      if (((!"android.intent.action.SENDTO".equals(paramIntent.getAction())) && (!"android.intent.action.VIEW".equals(paramIntent.getAction()))) || (paramBoolean) || (!"smsto".equals(paramIntent.getScheme()))) {
        break;
      }
      if (!c())
      {
        at.a(paramContext, -1, 2131493768, new gr(paramContext, paramIntent, paramk), null, 2131493550, true);
        return;
      }
      paramContext.startActivity(paramIntent);
    } while (paramk == null);
    bc.a().a(paramk.d());
    return;
    if (("com.viber.voip.action.CALL".equals(paramIntent.getAction())) || ("com.viber.voip.action.REDIAL".equals(paramIntent.getAction())))
    {
      b.a(paramContext, paramIntent);
      return;
    }
    paramContext.startActivity(paramIntent);
    bc.a().a(new com.viber.voip.a.k().e());
  }
  
  public static void a(Context paramContext, com.viber.voip.messages.conversation.a.a.a parama, boolean paramBoolean1, String paramString, boolean paramBoolean2)
  {
    int i = parama.f();
    int j = parama.g();
    long l1 = parama.Z();
    String str1 = parama.D();
    if ((parama.e().equals("image")) || (parama.e().equals("video"))) {
      str1 = null;
    }
    long l2 = parama.a();
    int k;
    String str2;
    if (parama.e().equals("location")) {
      if (parama.p())
      {
        k = 2131494202;
        str2 = paramContext.getString(k);
      }
    }
    for (;;)
    {
      a(paramContext, l2, i, j, l1, str2, str1, paramString, paramBoolean2);
      return;
      k = 2131494203;
      break;
      if (parama.q())
      {
        str2 = paramContext.getString(2131493937);
      }
      else
      {
        l locall = ViberApplication.getInstance().getBiDiAwareFormatter();
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = parama.W();
        str2 = locall.a(paramContext.getString(2131494176, arrayOfObject));
      }
    }
  }
  
  public static void a(Context paramContext, String paramString)
  {
    paramContext.startActivity(MarketActivity.a(paramString));
  }
  
  public static void a(Context paramContext, String paramString1, long paramLong1, long paramLong2, String paramString2, Uri paramUri)
  {
    Intent localIntent = com.viber.voip.messages.j.a(paramString1, paramLong1, paramLong2, paramString2, paramUri);
    localIntent.putExtra("send_1to1", true);
    localIntent.addFlags(268435456);
    paramContext.startActivity(localIntent);
  }
  
  public static void a(Context paramContext, String paramString1, String paramString2, Uri paramUri, boolean paramBoolean, String paramString3)
  {
    paramContext.startActivity(a(false, paramString1, paramString2, paramUri, paramBoolean, paramString3));
  }
  
  public static void a(Context paramContext, boolean paramBoolean, long paramLong1, long paramLong2, String paramString1, String paramString2, Uri paramUri, String paramString3)
  {
    if ((paramContext instanceof Activity))
    {
      paramContext.startActivity(a(paramBoolean, paramLong1, paramLong2, paramString1, paramString2, paramUri, null, paramString3));
      return;
    }
    Intent localIntent = a(paramBoolean, paramLong1, paramLong2, paramString1, paramString2, paramUri, null, paramString3);
    localIntent.addFlags(268435456);
    paramContext.sendBroadcast(new Intent("com.viber.voip.action.CLOSE_POPUP"));
    paramContext.startActivity(localIntent);
  }
  
  public static void a(Context paramContext, boolean paramBoolean1, String paramString1, String paramString2, Uri paramUri, boolean paramBoolean2, String paramString3)
  {
    Intent localIntent = a(paramBoolean1, paramString1, paramString2, paramUri, paramBoolean2, paramString3);
    if (!(paramContext instanceof Activity))
    {
      localIntent.addFlags(268435456);
      paramContext.sendBroadcast(new Intent("com.viber.voip.action.CLOSE_POPUP"));
    }
    paramContext.startActivity(localIntent);
  }
  
  public static void a(Fragment paramFragment, boolean paramBoolean, Uri paramUri, String paramString1, String paramString2, int paramInt)
  {
    Intent localIntent = new Intent("com.viber.voip.action.SEND_MEDIA");
    localIntent.putExtra("media_uri", paramUri.toString());
    localIntent.putExtra("prev_action", paramString2);
    localIntent.putExtra("camera_image", paramString1);
    if (paramBoolean) {
      localIntent.putExtra("is_public_group", true);
    }
    paramFragment.startActivityForResult(localIntent, paramInt);
  }
  
  private static void a(Class<?> paramClass, Context paramContext, long paramLong1, int paramInt1, int paramInt2, long paramLong2, String paramString1, String paramString2, String paramString3, boolean paramBoolean)
  {
    Intent localIntent = new Intent(paramContext, paramClass);
    localIntent.putExtra("message_id", paramLong1);
    localIntent.putExtra("user_lat", paramInt1);
    localIntent.putExtra("user_lng", paramInt2);
    localIntent.putExtra("location_date", paramLong2);
    localIntent.putExtra("user_name", paramString1);
    localIntent.putExtra("bucket_text", paramString2);
    localIntent.putExtra("show_bucket", paramBoolean);
    localIntent.putExtra("prev_action", paramString3);
    if (!(paramContext instanceof Activity)) {
      localIntent.addFlags(268435456);
    }
    hy.a(localIntent);
    paramContext.startActivity(localIntent);
  }
  
  public static boolean a()
  {
    return ViberApplication.preferences().b("NeverShowAgain", false);
  }
  
  public static boolean a(Activity paramActivity)
  {
    com.viber.voip.phone.call.k localk = ViberApplication.getInstance().getPhoneController(false).getCurrentCall();
    if ((localk != null) && (localk.g())) {}
    for (int i = 1;; i = 0)
    {
      if (i != 0) {
        a(2131493762, paramActivity);
      }
      if (i != 0) {
        break;
      }
      return true;
    }
    return false;
  }
  
  public static boolean a(Context paramContext)
  {
    com.viber.voip.phone.call.k localk = ViberApplication.getInstance().getPhoneController(false).getCurrentCall();
    if ((localk != null) && (localk.g())) {}
    for (int i = 1;; i = 0)
    {
      if (i != 0) {
        Toast.makeText(paramContext, 2131493762, 0).show();
      }
      if (i != 0) {
        break;
      }
      return true;
    }
    return false;
  }
  
  public static Intent b(long paramLong1, long paramLong2, String paramString1, String paramString2, String paramString3, String paramString4, Uri paramUri, boolean paramBoolean, CallEntity... paramVarArgs)
  {
    Intent localIntent = new Intent("com.viber.voip.action.VIEW_CALL_LOG");
    localIntent.putExtra("con_number", paramString2);
    localIntent.putExtra("is_viber", paramBoolean);
    localIntent.putExtra("photo_uri", paramUri);
    localIntent.putExtra("name", paramString4);
    localIntent.putExtra("contact_id", paramLong1);
    localIntent.putExtra("native_contact_id", paramLong2);
    localIntent.putExtra("lookup_key", paramString1);
    localIntent.putExtra("viber_number", paramString3);
    localIntent.putExtra("prev_action", com.viber.voip.a.a.s.c.a());
    if ((paramVarArgs != null) && (paramVarArgs.length > 0)) {
      localIntent.putExtra("call_entities", paramVarArgs);
    }
    return localIntent;
  }
  
  public static Intent b(Context paramContext)
  {
    if (!ViberApplication.preferences().b(com.viber.voip.settings.j.aj(), com.viber.voip.settings.j.ak())) {}
    for (i = 1; i != 0; i = 0) {
      try
      {
        ViberEnv.getGMapsFactory().initialize(ViberApplication.getInstance().getApplicationContext());
        Intent localIntent2 = new Intent(paramContext, LocationMessageActivityV2.class);
        return localIntent2;
      }
      catch (GMaps.NotAvailableException localNotAvailableException)
      {
        i = 0;
        if (i != 0) {
          break label81;
        }
        try
        {
          Intent localIntent1 = new Intent(paramContext, LocationMessageActivity.class);
          return localIntent1;
        }
        catch (NoClassDefFoundError localNoClassDefFoundError1) {}
        return null;
      }
      catch (NoClassDefFoundError localNoClassDefFoundError2)
      {
        for (;;)
        {
          i = 0;
        }
      }
    }
  }
  
  public static Intent b(String paramString, boolean paramBoolean, CallEntity... paramVarArgs)
  {
    Intent localIntent = new Intent("com.viber.voip.action.VIEW_CALL_LOG");
    localIntent.putExtra("con_number", paramString);
    localIntent.putExtra("is_viber", paramBoolean);
    localIntent.putExtra("unknown", true);
    if ((paramVarArgs != null) && (paramVarArgs.length > 0)) {
      localIntent.putExtra("call_entities", paramVarArgs);
    }
    localIntent.putExtra("prev_action", com.viber.voip.a.a.s.c.a());
    return localIntent;
  }
  
  public static void b()
  {
    ViberApplication.preferences().a("NeverShowAgain", true);
  }
  
  public static void b(Context paramContext, long paramLong)
  {
    a(paramContext, paramLong, true, false);
  }
  
  public static boolean c()
  {
    return ViberApplication.preferences().b("NeverShowAgainSms", false);
  }
  
  public static void d()
  {
    ViberApplication.preferences().a("NeverShowAgainSms", true);
  }
  
  private static void e() {}
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.util.gn
 * JD-Core Version:    0.7.0.1
 */