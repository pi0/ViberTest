package com.viber.service;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.telephony.PhoneNumberUtils;
import com.viber.jni.PhoneControllerWrapper;
import com.viber.jni.dialer.DialerController;
import com.viber.voip.ViberApplication;
import com.viber.voip.dc;
import com.viber.voip.dk;
import com.viber.voip.phone.aa;
import com.viber.voip.util.ft;
import com.viber.voip.util.hd;
import com.viber.voip.viberout.e;
import com.viber.voip.viberout.ui.ViberOutDialogs;

public class b
{
  public static void a(Context paramContext, Intent paramIntent)
  {
    long l = -1L;
    if (paramIntent == null) {
      return;
    }
    String str = aa.a(paramIntent, paramContext);
    e.c().b(str);
    Bundle localBundle = paramIntent.getExtras();
    boolean bool1 = false;
    if (localBundle != null)
    {
      boolean bool2 = paramIntent.getExtras().getBoolean("external_call", false);
      bool1 = false;
      if (bool2) {
        bool1 = true;
      }
    }
    if (paramIntent.getExtras() != null) {
      l = paramIntent.getExtras().getLong("contact_id", l);
    }
    dc.a(dk.g).post(new c(bool1, l, paramContext, paramIntent, str));
  }
  
  private static void b(Context paramContext, Intent paramIntent, String paramString)
  {
    String str = paramIntent.getAction();
    DialerController localDialerController = ViberApplication.getInstance().getPhoneController(true).getDialerController();
    if ((localDialerController.getPhoneState() == 2) || (ViberApplication.getInstance().getPhoneController(true).isGSMCallActive()))
    {
      d(paramContext, paramIntent, "com.viber.voip.action.GSM_CALL_IN_PROGRESS_DIALOG");
      return;
    }
    if ("com.viber.voip.action.REDIAL".equals(str))
    {
      localDialerController.handleRedial();
      return;
    }
    boolean bool = paramIntent.getBooleanExtra("viber_out", false);
    ViberOutDialogs.b(paramIntent.getBooleanExtra("from_dialpad", false));
    if (bool)
    {
      localDialerController.handleDialViberOut(PhoneNumberUtils.stripSeparators(paramString));
      return;
    }
    localDialerController.handleDial(PhoneNumberUtils.stripSeparators(paramString));
  }
  
  private static void b(Context paramContext, Intent paramIntent, String paramString1, int paramInt, String paramString2)
  {
    if (paramIntent.getBooleanExtra("viber_out", false))
    {
      if ((paramInt == 4) || (paramInt == 3) || (!ft.b(ViberApplication.getInstance())))
      {
        d(paramContext, paramIntent, "com.viber.voip.action.CONNECTION_PROBLEM");
        return;
      }
      if (paramInt == 2)
      {
        d(paramContext, paramIntent, "com.viber.voip.action.NO_SERVICE_DIALOG");
        return;
      }
      b(paramContext, paramIntent, paramString2);
      return;
    }
    switch (paramInt)
    {
    default: 
      return;
    case -1: 
      if (paramString2 != null)
      {
        d(paramContext, paramIntent, "com.viber.voip.action.CALL_DIALOG");
        return;
      }
    case 0: 
      b(paramContext, paramIntent, paramString2);
      return;
    case 1: 
      if (e.c().b())
      {
        paramIntent.putExtra("viber_out", true);
        b(paramContext, paramIntent, paramString2);
        return;
      }
      d(paramContext, paramIntent, "com.viber.voip.action.CALL_DIALOG");
      return;
      b(paramContext, paramIntent, paramString2);
      return;
    case 5: 
      if (PhoneNumberUtils.isEmergencyNumber(paramString1.replaceAll("[^*0-9]+", "")))
      {
        d(paramContext, paramIntent, "android.intent.action.DIAL");
        return;
      }
      d(paramContext, paramIntent, "android.intent.action.CALL");
      return;
    case 6: 
      d(paramContext, paramIntent, "com.viber.voip.action.SERVICE_NUMBER_DIALOG");
      return;
    case 2: 
      d(paramContext, paramIntent, "com.viber.voip.action.NO_SERVICE_DIALOG");
      return;
    case 4: 
      d(paramContext, paramIntent, "com.viber.voip.action.CONNECTION_PROBLEM");
      return;
    }
    d(paramContext, paramIntent, "com.viber.voip.action.SLOW_INTERNET_DIALOG");
  }
  
  private static void c(Context paramContext, Intent paramIntent, String paramString)
  {
    int i = paramIntent.getIntExtra("number_status", 2147483647);
    String str = paramIntent.getStringExtra("canonized_number");
    if ((i != 2147483647) && (str != null))
    {
      b(paramContext, paramIntent, paramString, i, str);
      return;
    }
    hd.a(ViberApplication.getInstance(), paramString, new d(paramContext, paramIntent, paramString));
  }
  
  private static void d(Context paramContext, Intent paramIntent, String paramString)
  {
    Uri localUri = paramIntent.getData();
    if ((paramString.equals("android.intent.action.CALL")) || (paramString.equals("com.viber.voip.action.SERVICE_NUMBER_DIALOG")) || (paramString.equals("com.viber.voip.action.NO_SERVICE_DIALOG")) || (paramString.equals("com.viber.voip.action.CONNECTION_PROBLEM")) || (paramString.equals("com.viber.voip.action.GSM_CALL_IN_PROGRESS_DIALOG")) || (paramString.equals("com.viber.voip.action.SLOW_INTERNET_DIALOG")) || (paramString.equals("com.viber.voip.action.PROBLEM_DEVICE_DIALOG")) || (paramString.equals("android.intent.action.DIAL")))
    {
      localIntent1 = new Intent(paramString);
      if ((localUri != null) && (!paramString.equals("com.viber.voip.action.GSM_CALL_IN_PROGRESS_DIALOG")) && (!paramString.equals("com.viber.voip.action.CONNECTION_PROBLEM"))) {
        localIntent1.setData(localUri);
      }
      localIntent1.setFlags(268435456);
      paramContext.startActivity(localIntent1);
    }
    while (!paramString.equals("com.viber.voip.action.CALL_DIALOG"))
    {
      Intent localIntent1;
      return;
    }
    Intent localIntent2 = new Intent(paramString, localUri);
    localIntent2.setFlags(268435456);
    localIntent2.putExtra("last_resolved", System.currentTimeMillis());
    if ((paramIntent.hasExtra("extra_was_viber")) && (paramIntent.getBooleanExtra("extra_was_viber", false))) {
      localIntent2.putExtra("extra_was_viber", true);
    }
    paramContext.startActivity(localIntent2);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.service.b
 * JD-Core Version:    0.7.0.1
 */