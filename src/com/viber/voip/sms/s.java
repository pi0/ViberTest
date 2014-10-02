package com.viber.voip.sms;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Build.VERSION;
import android.os.Handler;
import android.telephony.TelephonyManager;
import com.viber.jni.PhoneControllerWrapper;
import com.viber.voip.ViberApplication;
import com.viber.voip.a.aa;
import com.viber.voip.a.af;
import com.viber.voip.a.c;
import com.viber.voip.bd;
import com.viber.voip.dc;
import com.viber.voip.dk;
import com.viber.voip.messages.controller.ab;
import com.viber.voip.messages.controller.cq;
import com.viber.voip.messages.i;
import com.viber.voip.registration.bh;
import com.viber.voip.registration.dj;
import com.viber.voip.util.aj;
import com.viber.voip.util.hd;
import java.util.Locale;

public class s
{
  public static int a = 0;
  private static final String b = s.class.getSimpleName();
  
  private static void a(int paramInt)
  {
    ViberApplication.preferences().a("viber_first_sms", paramInt);
  }
  
  public static void a(Context paramContext)
  {
    c("needViberForSmsDialog SHOW! and set setViberUsedForSms to true!");
    a(true);
    f();
    paramContext.startActivity(new Intent("com.viber.voip.action.SMS_ACCEPTING_DIALOG"));
  }
  
  public static void a(Context paramContext, String paramString1, String paramString2, int paramInt)
  {
    c("processViberNumberForGrowSMS number: " + paramString1);
    int i = a;
    a = i + 1;
    switch (i)
    {
    default: 
      if (b())
      {
        if (paramInt < 1)
        {
          ViberApplication.getInstance().getSmsDbManager().a(paramString1, paramString2);
          cq.a().d();
        }
        c("processViberNumberForGrowSMS show popup and notification");
        a(paramString1, paramString2, paramInt, false, null);
      }
      break;
    }
    do
    {
      return;
      com.viber.voip.a.bc.a().a(com.viber.voip.a.a.x.a.a.a());
      break;
      com.viber.voip.a.bc.a().a(com.viber.voip.a.a.x.a.b.a());
      break;
      com.viber.voip.a.bc.a().a(com.viber.voip.a.a.x.a.c.a());
      break;
      if (d())
      {
        if (paramInt < 1) {
          ViberApplication.getInstance().getSmsDbManager().a(paramString1, paramString2);
        }
        if (j())
        {
          c("processViberNumberForGrowSMS start Sms reply activity!");
          if (paramInt < 1) {
            cq.a().d();
          }
          Intent localIntent = new Intent(paramContext, SmsReplyActivity.class).addFlags(268435456);
          localIntent.putExtra("number", paramString1);
          localIntent.putExtra("sms_body", paramString2);
          localIntent.putExtra("sms_id", paramInt);
          SmsReplyActivity.a = true;
          paramContext.startActivity(localIntent);
          return;
        }
        c("processViberNumberForGrowSMS in call");
        return;
      }
    } while (!e());
    c("Viber is not used for Sms (need to ask User after 7 incoming SMS)");
    g();
  }
  
  public static void a(String paramString)
  {
    dc.a(dk.h).post(new t(paramString));
  }
  
  public static void a(String paramString1, String paramString2, int paramInt, boolean paramBoolean, ab paramab)
  {
    c("notify SMS " + paramString1 + ", readed " + paramBoolean + ", smsId " + paramInt);
    a locala = ViberApplication.getInstance().getSmsDbManager();
    if (paramInt > 0) {
      locala.a(paramInt);
    }
    ViberApplication.getInstance().getMessagesManager().c().a(paramString1, paramString2, paramBoolean, paramab);
    locala.b(paramString1);
    if (paramString2 != null)
    {
      com.viber.voip.a.x localx = com.viber.voip.a.a.x.c();
      localx.a(Long.valueOf(paramString2.length()));
      com.viber.voip.a.bc.a().a(localx);
    }
  }
  
  public static void a(boolean paramBoolean)
  {
    a(paramBoolean, false);
  }
  
  public static void a(boolean paramBoolean1, boolean paramBoolean2)
  {
    c("setViberUsedForSms usedForSms = " + paramBoolean1 + " resetCancelCount " + paramBoolean2);
    ViberApplication.preferences().a("viber_sms", paramBoolean1);
    if ((!paramBoolean1) && (paramBoolean2)) {
      a(0);
    }
  }
  
  public static boolean a()
  {
    if (h())
    {
      ViberApplication.getInstance();
      if (ViberApplication.isActivated()) {}
    }
    else
    {
      return false;
    }
    boolean bool;
    if (!b())
    {
      int i = i();
      bool = false;
      if (i == -1) {}
    }
    else
    {
      bool = true;
    }
    c("isGrowMessagesEnabled " + bool + " isViberUsedForSms " + b() + " cancel count " + i());
    return bool;
  }
  
  public static boolean a(Context paramContext, String paramString1, String paramString2)
  {
    try
    {
      c("createFakeSms start service");
      Intent localIntent = new Intent();
      localIntent.setClassName(aj.c("Y29tLmFuZHJvaWQubW1z"), aj.c("Y29tLmFuZHJvaWQubW1zLnRyYW5zYWN0aW9uLlNtc1JlY2VpdmVyU2VydmljZQ=="));
      localIntent.setAction("android.provider.Telephony.SMS_RECEIVED");
      localIntent.putExtra("pdus", new com.viber.voip.sms.a.a(paramString1, paramString2).a());
      localIntent.putExtra("format", "3gpp");
      paramContext.startService(localIntent);
      return true;
    }
    catch (SecurityException localSecurityException)
    {
      c("createFakeSms SecurityException");
    }
    return false;
  }
  
  public static String b(Context paramContext)
  {
    com.viber.voip.rakuten.l locall = com.viber.voip.rakuten.l.a();
    boolean bool1 = dj.c();
    boolean bool2 = locall.c();
    String str1 = Locale.getDefault().getLanguage();
    c("generateInviteSmsText isRegisteredJapanese:" + bool1 + ", rakutenConnected: " + bool2 + ", phoneLang:" + str1);
    String str2;
    if (bool1)
    {
      str2 = com.viber.voip.bc.b().j + locall.k();
      if (!bool1) {
        break label172;
      }
    }
    label172:
    for (int i = 2131494798;; i = 2131493678)
    {
      String str3 = paramContext.getResources().getString(i, new Object[] { str2 });
      c("generateInviteSmsText text:" + str3 + ", url:" + str2);
      return str3;
      str2 = "www.viber.com/dl";
      break;
    }
  }
  
  public static void b(Context paramContext, String paramString1, String paramString2, int paramInt)
  {
    c("checkIsViberNumberForGrowSMS number: " + paramString1);
    hd.b(ViberApplication.getInstance(), paramString1, new v(paramContext, paramString1, paramString2, paramInt));
  }
  
  public static boolean b()
  {
    return ViberApplication.preferences().b("viber_sms", false);
  }
  
  private static void c(String paramString) {}
  
  public static boolean c()
  {
    return (Build.VERSION.SDK_INT < 19) && (ViberApplication.preferences().b("viber_hide_native_sms", true)) && (ViberApplication.getInstance().getDevicesManager().a());
  }
  
  public static boolean d()
  {
    if (b()) {}
    int i;
    do
    {
      return false;
      i = i();
    } while ((i != 0) && (3 != i) && (7 != i));
    return true;
  }
  
  public static boolean e()
  {
    return i() != -1;
  }
  
  public static void f()
  {
    c("neverShowReplyActivity");
    a(-1);
    ViberApplication.getInstance().getSmsDbManager().c();
  }
  
  public static void g()
  {
    int i = i();
    if (i < 0) {
      i = 0;
    }
    int j = i + 1;
    c("cancelShowReplyActivity cancelCount = " + j);
    if (j <= 7)
    {
      a(j);
      return;
    }
    a(false);
    f();
  }
  
  public static boolean h()
  {
    return false;
  }
  
  private static int i()
  {
    return ViberApplication.preferences().b("viber_first_sms", 0);
  }
  
  private static boolean j()
  {
    ViberApplication localViberApplication = ViberApplication.getInstance();
    return (((TelephonyManager)localViberApplication.getSystemService("phone")).getCallState() == 0) && (localViberApplication.getPhoneController(false).getCurrentCall() == null);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.sms.s
 * JD-Core Version:    0.7.0.1
 */