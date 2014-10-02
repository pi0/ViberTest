package com.viber.voip.contacts.ui;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.app.ProgressDialog;
import android.content.ActivityNotFoundException;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.provider.ContactsContract.Contacts;
import android.widget.Toast;
import com.viber.jni.PhoneControllerDelegate.ViberConnectionState;
import com.viber.jni.PhoneControllerWrapper;
import com.viber.provider.contacts.d;
import com.viber.provider.contacts.f;
import com.viber.provider.contacts.g;
import com.viber.voip.ViberApplication;
import com.viber.voip.a.a;
import com.viber.voip.a.bc;
import com.viber.voip.a.u;
import com.viber.voip.block.i;
import com.viber.voip.contacts.c.f.b.p;
import com.viber.voip.messages.j;
import com.viber.voip.registration.HardwareParameters;
import com.viber.voip.sms.s;
import com.viber.voip.util.at;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class bp
{
  private Context a;
  
  public bp(Context paramContext)
  {
    this.a = paramContext;
  }
  
  public static void a(Activity paramActivity, long paramLong, String paramString1, String paramString2, Runnable paramRunnable)
  {
    bc localbc = bc.a();
    u localu = a.z;
    a.z.getClass();
    localbc.a(localu.b("336"));
    at.a(paramActivity, 0, paramActivity.getString(2131493670, new Object[] { paramString2, paramString2 }), new bq(paramLong, paramString1, paramRunnable), null, 2131493706, false);
  }
  
  public static void a(Activity paramActivity, String paramString, Map<String, Boolean> paramMap, boolean paramBoolean)
  {
    if (!paramMap.containsValue(Boolean.valueOf(false)))
    {
      i.a(paramActivity, paramString, paramMap.keySet());
      return;
    }
    if ((paramBoolean) && (paramMap.size() > 1))
    {
      String[] arrayOfString = new String[paramMap.size()];
      boolean[] arrayOfBoolean = new boolean[paramMap.size()];
      Iterator localIterator = paramMap.entrySet().iterator();
      for (int i = 0; localIterator.hasNext(); i++)
      {
        Map.Entry localEntry = (Map.Entry)localIterator.next();
        arrayOfString[i] = ((String)localEntry.getKey());
        arrayOfBoolean[i] = ((Boolean)localEntry.getValue()).booleanValue();
      }
      AlertDialog.Builder localBuilder = new AlertDialog.Builder(paramActivity);
      localBuilder.setMultiChoiceItems(arrayOfString, arrayOfBoolean, new bs(paramMap, arrayOfString));
      localBuilder.setTitle(2131494456);
      localBuilder.setNegativeButton(2131493558, null);
      localBuilder.setPositiveButton(2131494452, new bt(paramMap, paramActivity, paramString));
      localBuilder.create().show();
      return;
    }
    i.a(paramActivity, paramString, paramMap.keySet(), null, true);
  }
  
  public static void a(Context paramContext, String paramString)
  {
    Uri localUri = Uri.withAppendedPath(ContactsContract.Contacts.CONTENT_LOOKUP_URI, paramString);
    Intent localIntent = new Intent("android.intent.action.EDIT", ContactsContract.Contacts.lookupContact(paramContext.getContentResolver(), localUri));
    try
    {
      paramContext.startActivity(localIntent);
      return;
    }
    catch (ActivityNotFoundException localActivityNotFoundException)
    {
      Toast.makeText(paramContext, 2131494467, 1).show();
    }
  }
  
  public static void a(boolean paramBoolean, long paramLong1, long paramLong2, String paramString)
  {
    ViberApplication.getInstance().getContactManager().a(paramLong1, paramLong2, paramString, paramBoolean);
  }
  
  public static void b(Context paramContext, String paramString)
  {
    String str = s.b(paramContext);
    if (ViberApplication.getInstance().getHardwareParameters().isGsmSupported())
    {
      Intent localIntent1 = new Intent("android.intent.action.VIEW");
      localIntent1.putExtra("address", paramString);
      localIntent1.putExtra("sms_body", str);
      localIntent1.setData(Uri.parse("smsto:" + paramString));
      try
      {
        paramContext.startActivity(localIntent1);
        return;
      }
      catch (ActivityNotFoundException localActivityNotFoundException1)
      {
        Toast.makeText(paramContext, 2131494467, 1).show();
        return;
      }
    }
    Intent localIntent2 = new Intent("android.intent.action.SEND");
    localIntent2.setType("text/plain");
    localIntent2.putExtra("android.intent.extra.SUBJECT", 2131494123);
    localIntent2.putExtra("android.intent.extra.TEXT", str);
    try
    {
      paramContext.startActivity(Intent.createChooser(localIntent2, paramContext.getString(2131494833)));
      return;
    }
    catch (ActivityNotFoundException localActivityNotFoundException2)
    {
      Toast.makeText(paramContext, 2131494467, 1).show();
    }
  }
  
  public int a()
  {
    ViberApplication.getInstance().getContactManager().b();
    return ViberApplication.getInstance().getContactManager().c().b();
  }
  
  public void a(int paramInt1, bu parambu, int paramInt2, boolean paramBoolean)
  {
    parambu.a(paramInt2, paramBoolean);
  }
  
  public void a(long paramLong1, long paramLong2, String paramString1, String paramString2, Uri paramUri)
  {
    Intent localIntent = j.a(paramString1, paramLong1, paramLong2, paramString2, paramUri);
    localIntent.putExtra("send_1to1", true);
    this.a.startActivity(localIntent);
  }
  
  public void a(Context paramContext, com.viber.voip.contacts.b.e parame) {}
  
  public void a(String paramString)
  {
    Uri localUri = Uri.fromParts("tel", paramString, null);
    com.viber.service.b.a(this.a, new Intent("com.viber.voip.action.CALL", localUri));
  }
  
  public boolean a(boolean paramBoolean)
  {
    PhoneControllerWrapper localPhoneControllerWrapper = ViberApplication.getInstance().getPhoneController(false);
    String str;
    if (localPhoneControllerWrapper.getServiceState() == PhoneControllerDelegate.ViberConnectionState.NO_INTERNET) {
      str = "com.viber.voip.action.CONNECTION_PROBLEM";
    }
    for (;;)
    {
      if ((paramBoolean) && (str != null))
      {
        Intent localIntent = new Intent(str).setFlags(268435456);
        this.a.startActivity(localIntent);
      }
      boolean bool = false;
      if (str != null) {
        bool = true;
      }
      return bool;
      PhoneControllerDelegate.ViberConnectionState localViberConnectionState1 = localPhoneControllerWrapper.getServiceState();
      PhoneControllerDelegate.ViberConnectionState localViberConnectionState2 = PhoneControllerDelegate.ViberConnectionState.SERVICE_NOT_CONNECTED;
      str = null;
      if (localViberConnectionState1 == localViberConnectionState2) {
        str = "com.viber.voip.action.NO_SERVICE_DIALOG";
      }
    }
  }
  
  public void b()
  {
    if (a(true)) {
      a();
    }
  }
  
  public boolean c()
  {
    boolean bool1 = a(false);
    boolean bool2 = false;
    if (!bool1) {
      bool2 = true;
    }
    return bool2;
  }
  
  public void d()
  {
    ProgressDialog.show(this.a, null, "Resetting contacts and closing application...");
    new Thread(new br(this)).start();
  }
  
  public void e()
  {
    ContentResolver localContentResolver = this.a.getContentResolver();
    localContentResolver.delete(com.viber.provider.contacts.e.a, null, null);
    localContentResolver.delete(f.a, null, null);
    localContentResolver.delete(d.a, null, null);
    localContentResolver.delete(g.a, null, null);
  }
  
  public void f()
  {
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("viber", Boolean.valueOf(false));
    ContentResolver localContentResolver = this.a.getContentResolver();
    localContentResolver.delete(g.a, null, null);
    localContentResolver.update(d.a, localContentValues, null, null);
    ViberApplication.getInstance().getContactManager().c().c();
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.contacts.ui.bp
 * JD-Core Version:    0.7.0.1
 */