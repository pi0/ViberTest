package com.viber.jni;

import android.annotation.SuppressLint;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Build;
import android.os.Build.VERSION;
import com.viber.voip.ViberApplication;

public class SystemInfo
{
  @SuppressLint({"SdCardPath"})
  public static String getApplicationDataDir()
  {
    try
    {
      String str = ViberApplication.getInstance().getPackageManager().getPackageInfo(ViberApplication.getInstance().getPackageName(), 0).applicationInfo.dataDir;
      return str;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      localNameNotFoundException.printStackTrace();
    }
    return "/data/data/" + ViberApplication.getInstance().getPackageName();
  }
  
  public static String getDeviceType()
  {
    return Build.DEVICE;
  }
  
  public static String getOSName()
  {
    return "Android";
  }
  
  public static String getOSVersion()
  {
    return Build.VERSION.RELEASE;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.jni.SystemInfo
 * JD-Core Version:    0.7.0.1
 */