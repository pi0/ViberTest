package com.viber.voip.b;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import com.viber.jni.PhoneControllerWrapper;
import com.viber.jni.dialer.DialerController;
import com.viber.voip.ViberApplication;
import com.viber.voip.contacts.c.f.b.p;
import com.viber.voip.registration.cp;
import com.viber.voip.registration.dj;
import com.viber.voip.settings.j;
import com.viber.voip.settings.l;
import java.io.IOException;

public class a
{
  private static final String b = a.class.getSimpleName();
  private static a c = new a();
  final e a = new e(this);
  private com.viber.voip.d.b d = new com.viber.voip.d.b();
  private f e = new f(this, null);
  
  public static a a()
  {
    return c;
  }
  
  public static String a(String paramString)
  {
    return paramString.replaceFirst("bb-", "BB:");
  }
  
  private void a(long paramLong1, String paramString1, String paramString2, long paramLong2, String paramString3, long paramLong3, int paramInt1, int paramInt2)
  {
    this.a.a(paramLong1, paramString1, paramString2, paramLong2, paramString3, paramLong3, paramInt1, paramInt2);
    ViberApplication.getInstance().getPhoneController(false).registerDelegate(this.a);
    long l = ViberApplication.getInstance().getPhoneController(false).getServerDeltaTime();
    if ((!e.a(this.a)) && (l != 9223372036854775807L))
    {
      this.a.a(l);
      ViberApplication.getInstance().getPhoneController(false).removeDelegate(this.a);
    }
  }
  
  private void a(String paramString1, long paramLong, String paramString2, int paramInt)
  {
    long l = System.currentTimeMillis();
    String str1 = "?msgToken=" + paramString1 + "&smsInTime=" + paramLong + "&recieveTime=" + l + "&status=" + paramInt;
    String str2 = paramString2 + str1;
    ViberApplication.getInstance().showToast("sending ack to " + str2);
    this.d.a(str2, "", new d(this));
  }
  
  private void a(String paramString1, String paramString2, String paramString3, long paramLong1, long paramLong2, String paramString4, String paramString5, long paramLong3)
  {
    long l = ViberApplication.getInstance().getPhoneController(false).getServerDeltaTime();
    if (l == 9223372036854775807L)
    {
      PhoneControllerWrapper localPhoneControllerWrapper = ViberApplication.getInstance().getPhoneController(false);
      c localc = new c(this, paramString1, paramString2, paramString3, paramLong1, paramLong2, paramString4, paramString5, paramLong3, localPhoneControllerWrapper);
      localPhoneControllerWrapper.registerDelegate(localc);
      if (localPhoneControllerWrapper.getServerDeltaTime() != 9223372036854775807L)
      {
        localPhoneControllerWrapper.removeDelegate(localc);
        a(paramString1, paramString2, paramString3, paramLong1, paramLong2, paramString4, paramString5, paramLong3, localPhoneControllerWrapper.getServerDeltaTime());
      }
      return;
    }
    a(paramString1, paramString2, paramString3, paramLong1, paramLong2, paramString4, paramString5, paramLong3, l);
  }
  
  private void a(String paramString1, String paramString2, String paramString3, long paramLong1, long paramLong2, String paramString4, String paramString5, long paramLong3, long paramLong4)
  {
    if (!c()) {
      try
      {
        a(paramString1, paramLong2, paramString4, 15);
        return;
      }
      catch (IOException localIOException2)
      {
        localIOException2.printStackTrace();
        return;
      }
    }
    if (b(paramLong2 + paramLong3, paramLong4))
    {
      this.e.a(paramString1, paramString2, paramString5, paramLong2, paramString4);
      return;
    }
    try
    {
      a(paramString1, paramLong2, paramString4, 6);
      return;
    }
    catch (IOException localIOException1)
    {
      localIOException1.printStackTrace();
    }
  }
  
  private boolean a(long paramLong1, long paramLong2)
  {
    return Math.abs(System.currentTimeMillis() - paramLong2 - paramLong1) < 20000L;
  }
  
  private boolean b(long paramLong1, long paramLong2)
  {
    return paramLong1 > System.currentTimeMillis() - paramLong2;
  }
  
  public static boolean b(String paramString)
  {
    return (paramString.startsWith("bb-")) && (paramString.length() == 8 + "bb-".length());
  }
  
  private boolean c()
  {
    String str1 = ViberApplication.preferences().b("activated_sim_serial", "");
    if (TextUtils.isEmpty(str1)) {
      return true;
    }
    String str2 = ((TelephonyManager)ViberApplication.getInstance().getSystemService("phone")).getSimSerialNumber();
    if (TextUtils.isEmpty(str2)) {
      return true;
    }
    return TextUtils.equals(str1, str2);
  }
  
  private static void d(String paramString) {}
  
  public void a(Context paramContext, int paramInt)
  {
    ViberApplication.log(4, b, "Received deleted messages notification");
  }
  
  public void a(Context paramContext, Intent paramIntent)
  {
    Bundle localBundle = paramIntent.getExtras();
    d("onMessage intent:" + paramIntent + ", flags: " + paramIntent.getFlags() + " extras:" + localBundle);
    d("onMessage intent extras keys: " + localBundle.keySet());
    d("onMessage intent sound: " + localBundle.getString("sound"));
    localBundle.getString("message");
    int i = -1;
    try
    {
      int i1 = Integer.parseInt(localBundle.getString("op"));
      i = i1;
    }
    catch (NumberFormatException localNumberFormatException)
    {
      for (;;)
      {
        String str1;
        String str2;
        label172:
        String str8;
        label361:
        String str3;
        String str4;
        continue;
        if (str8 == null) {
          str8 = "";
        }
      }
    }
    str1 = localBundle.getString("dest_udid");
    if (ViberApplication.isActivated())
    {
      str2 = dj.a();
      if ((str2 != null) && (str2.equals(str1))) {
        break label172;
      }
    }
    do
    {
      return;
      str2 = "";
      break;
      switch (i)
      {
      default: 
        return;
      case 1: 
        try
        {
          l2 = Long.parseLong(localBundle.getString("ct"));
          str6 = localBundle.getString("fn");
          str7 = localBundle.getString("hs");
          l3 = 1000L * Long.parseLong(localBundle.getString("time"));
          str8 = localBundle.getString("clientName");
          l4 = Long.parseLong(localBundle.getString("transferToken"));
          m = Integer.parseInt(localBundle.getString("transferContext"));
          if (!localBundle.containsKey("flags")) {
            break label361;
          }
          n = Integer.valueOf(localBundle.getString("flags")).intValue();
        }
        catch (Exception localException)
        {
          long l2;
          String str6;
          String str7;
          long l3;
          long l4;
          int m;
          localException.printStackTrace();
          return;
        }
        a(l2, str6, str7, l3, str8, l4, m, n);
        return;
        int n = 0;
        break;
      case 4: 
        Long.parseLong(localBundle.getString("ct"));
        localBundle.getString("fn");
        return;
      case 3: 
        long l1 = Long.parseLong(localBundle.getString("ct"));
        String str5 = localBundle.getString("OriginPhoneNumber");
        int j = Integer.parseInt(localBundle.getString("numMissed"));
        int k = Integer.parseInt(localBundle.getString("numMissedOther"));
        ViberApplication.getInstance().getPhoneController(true).getDialerController().handleCallMissed(l1, str5, j, k, str5, true);
        return;
      case 5: 
        str3 = localBundle.getString("phone_number");
        str4 = localBundle.getString("device");
      }
    } while ((!ViberApplication.preferences().b(j.m(), j.n())) || (ViberApplication.getInstance().getRegistrationValues().f().equals(str3)));
    ViberApplication.getInstance().getContactManager().c().a(str3, "", str4);
    return;
    a(localBundle.getString("msgToken"), localBundle.getString("srcPhone"), localBundle.getString("dstPhone"), Long.parseLong(localBundle.getString("sentTime")), Long.parseLong(localBundle.getString("smsInTime")), localBundle.getString("ackUrl"), localBundle.getString("text"), Long.parseLong(localBundle.getString("expiryTime")));
  }
  
  public void a(Context paramContext, String paramString)
  {
    ViberApplication.log(4, b, "onError , errId = " + paramString);
  }
  
  public void a(Context paramContext, String paramString, boolean paramBoolean)
  {
    ViberApplication.getInstance().getPhoneController(false).addInitializedListener(new b(this, paramString, paramBoolean));
  }
  
  public boolean b(Context paramContext, String paramString)
  {
    ViberApplication.log(4, b, "Received recoverable error: " + paramString);
    return false;
  }
  
  public void c(Context paramContext, String paramString)
  {
    ViberApplication.log(4, b, "onUnregistered: " + paramString);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.b.a
 * JD-Core Version:    0.7.0.1
 */