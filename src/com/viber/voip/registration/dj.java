package com.viber.voip.registration;

import android.content.Context;
import android.os.Build;
import android.os.Environment;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import com.viber.voip.ViberApplication;
import com.viber.voip.settings.l;
import com.viber.voip.util.aj;
import com.viber.voip.util.fq;
import com.viber.voip.w;
import java.io.File;
import java.io.FileInputStream;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.util.HashSet;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class dj
{
  private static final Set<String> a = new HashSet();
  private static Boolean b;
  
  static
  {
    f();
  }
  
  public static String a()
  {
    Object localObject2;
    String str1;
    l locall;
    boolean bool;
    String str2;
    label232:
    label370:
    do
    {
      try
      {
        b("GetDeviceUDID");
        localObject2 = "";
        str1 = "";
        locall = ViberApplication.preferences();
        bool = d();
        if ((locall.b("viber_udid")) && (!bool))
        {
          localObject2 = locall.b("viber_udid", "");
          b("UDID primary in preferences:" + (String)localObject2);
        }
        for (;;)
        {
          if (locall.b("device_hardware_key"))
          {
            str1 = locall.b("device_hardware_key", "");
            b("hardwareKey in preferences:" + str1);
          }
          if (!str1.equals("")) {
            break label450;
          }
          String str5 = a(dl.c);
          if (str5.equals("")) {
            break;
          }
          locall.a("device_hardware_key", str5);
          str2 = str5;
          if ((Build.MODEL + Build.DEVICE).equalsIgnoreCase(str2)) {
            break label370;
          }
          b("hardwareKey :" + str2 + " not equals model+device:" + Build.MODEL + Build.DEVICE);
          localObject2 = g();
          b("UDID is:" + (String)localObject2 + ", hardwareKey:" + str2);
          return localObject2;
          if ((locall.b("secondary_udid")) && (bool))
          {
            localObject2 = locall.b("secondary_udid", "");
            b("UDID secondary in preferences:" + (String)localObject2);
          }
        }
        str1 = Build.MODEL + Build.DEVICE;
      }
      finally {}
      locall.a("device_hardware_key", str1);
      a(dl.c, str1);
      break;
    } while (!((String)localObject2).equals(""));
    dl localdl;
    if (bool)
    {
      localdl = dl.e;
      label389:
      localObject2 = a(localdl);
      if (((String)localObject2).equals("")) {
        break label434;
      }
      if (!bool) {
        break label456;
      }
    }
    label434:
    label450:
    label456:
    for (String str3 = "secondary_udid";; str3 = "viber_udid")
    {
      locall.a(str3, (String)localObject2);
      break label232;
      localdl = dl.b;
      break label389;
      b("UDID not found in preferences, generate");
      String str4 = g();
      localObject2 = str4;
      break label232;
      str2 = str1;
      break;
    }
  }
  
  public static String a(dl paramdl)
  {
    String str1 = bk.a(paramdl);
    if (!str1.equals("")) {
      return str1;
    }
    File localFile;
    if (Environment.getExternalStorageState().equals("mounted"))
    {
      localFile = new File(b(paramdl));
      if (!localFile.exists()) {}
    }
    try
    {
      localFileInputStream = new FileInputStream(localFile);
      byte[] arrayOfByte1 = new byte[1024];
      int i = localFileInputStream.read(arrayOfByte1);
      arrayOfByte2 = new byte[i];
      System.arraycopy(arrayOfByte1, 0, arrayOfByte2, 0, i);
      if (paramdl.equals(dl.a)) {
        break label246;
      }
      boolean bool = paramdl.equals(dl.d);
      j = 0;
      if (!bool) {}
    }
    catch (Exception localException)
    {
      for (;;)
      {
        FileInputStream localFileInputStream;
        byte[] arrayOfByte2;
        StringBuilder localStringBuilder;
        Object localObject;
        String str2;
        localException.printStackTrace();
        continue;
        int j = 1;
      }
    }
    localStringBuilder = new StringBuilder().append("Viber");
    if (j != 0) {}
    for (localObject = "";; localObject = str2)
    {
      str1 = aj.c((String)localObject, new String(arrayOfByte2));
      localFileInputStream.close();
      b("getKeyChain type:" + paramdl + ",key=" + str1 + ",getExternalStorageState:" + Environment.getExternalStorageState() + ",path:" + b(paramdl));
      return str1;
      str2 = paramdl.name();
    }
  }
  
  public static void a(dl paramdl, String paramString)
  {
    bk.a(paramdl, paramString);
  }
  
  public static void a(String paramString)
  {
    b("setDeviceKey:" + paramString);
    boolean bool = d();
    l locall = ViberApplication.preferences();
    if (bool) {}
    for (String str = "secondary_device_key";; str = "device_key")
    {
      locall.a(str, paramString);
      return;
    }
  }
  
  public static void a(boolean paramBoolean)
  {
    l locall = ViberApplication.preferences();
    if (paramBoolean) {}
    for (String str = "secondary";; str = "primary")
    {
      locall.a("use_as_secondary", str);
      b = null;
      ViberApplication.getInstance().disableSyncAccountComponents(e());
      return;
    }
  }
  
  public static String b()
  {
    b("getDeviceKey");
    l locall = ViberApplication.preferences();
    boolean bool = d();
    String str2;
    if ((locall.b("device_key")) && (!bool))
    {
      str2 = locall.b("device_key", "");
      b("Device key primary: " + str2);
      if (!str2.equals("")) {}
    }
    String str1;
    do
    {
      return null;
      return str2;
      if ((!locall.b("secondary_device_key")) || (!bool)) {
        break;
      }
      str1 = locall.b("secondary_device_key", "");
      b("Device key secondary: " + str1);
    } while (str1.equals(""));
    return str1;
    return "";
  }
  
  private static String b(dl paramdl)
  {
    switch (dk.a[paramdl.ordinal()])
    {
    default: 
      return "";
    case 1: 
      return w.i;
    case 2: 
      return w.j;
    case 3: 
      return w.k;
    case 4: 
      return w.l;
    }
    return w.m;
  }
  
  private static void b(String paramString) {}
  
  public static boolean c()
  {
    return 81 == ViberApplication.getInstance().getRegistrationValues().b();
  }
  
  public static boolean d()
  {
    for (;;)
    {
      try
      {
        boolean bool2;
        l locall;
        if (b == null)
        {
          bool2 = ViberApplication.isTablet();
          locall = ViberApplication.preferences();
          if (!locall.b("use_as_secondary"))
          {
            if (ViberApplication.isActivated()) {
              locall.a("use_as_secondary", "primary");
            }
          }
          else
          {
            if (!bool2) {
              break label117;
            }
            b = Boolean.valueOf("secondary".equals(locall.b("use_as_secondary", "secondary")));
          }
        }
        else
        {
          boolean bool1 = b.booleanValue();
          return bool1;
        }
        if (bool2)
        {
          str = "secondary";
          locall.a("use_as_secondary", str);
          continue;
        }
        String str = "primary";
      }
      finally {}
      continue;
      label117:
      b = Boolean.valueOf(false);
    }
  }
  
  public static boolean e()
  {
    return !d();
  }
  
  private static void f()
  {
    a.add("351602000525820");
    a.add("012345678901234");
    a.add("000000011234564");
    a.add("351751045421180");
    a.add("000000000000000");
    a.add("357242042804044");
    a.add("356531044590531");
    a.add("004999010640000");
    a.add("350305260000001");
    a.add("357242041834521");
    a.add("358537040040544");
    a.add("351751044067398");
  }
  
  private static String g()
  {
    ViberApplication.getInstance();
    if (ViberApplication.isActivated()) {
      b("No udid in activated state (!)");
    }
    Context localContext = ViberApplication.getInstance().getApplicationContext();
    l locall = ViberApplication.preferences();
    ActivationController localActivationController = ViberApplication.getInstance().getActivationController();
    String str1 = localActivationController.getCountryCode();
    String str2 = localActivationController.getRegNumber();
    if ((str1.equals("0")) && (str2.equals("0"))) {
      return "viber";
    }
    String str3 = "" + str1 + str2;
    String str4 = ((TelephonyManager)localContext.getSystemService("phone")).getDeviceId();
    boolean bool = d();
    if ((TextUtils.isEmpty(str4)) || (a.contains(str4)))
    {
      SecureRandom localSecureRandom = new SecureRandom();
      str4 = "" + localSecureRandom.nextLong() + localSecureRandom.nextLong();
    }
    if (bool) {}
    String str6;
    for (String str5 = str3 + str4 + "SECONDARY";; str5 = str3 + str4) {
      try
      {
        str6 = aj.b(str5);
        if (fq.k.matcher(str6).matches()) {
          break;
        }
        throw new IllegalStateException("error generating UDID - pattern doesn't match!");
      }
      catch (NoSuchAlgorithmException localNoSuchAlgorithmException)
      {
        throw new IllegalStateException("error generating UDID");
      }
    }
    String str7;
    if (bool)
    {
      str7 = "secondary_udid";
      locall.a(str7, str6);
      if (!bool) {
        break label391;
      }
    }
    label391:
    for (dl localdl = dl.e;; localdl = dl.b)
    {
      a(localdl, str6);
      locall.a("device_hardware_key", Build.MODEL + Build.DEVICE);
      a(dl.c, Build.MODEL + Build.DEVICE);
      return str6;
      str7 = "viber_udid";
      break;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.registration.dj
 * JD-Core Version:    0.7.0.1
 */