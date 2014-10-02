package com.viber.voip.registration;

import android.app.Application;
import android.content.Context;
import android.os.Build;
import android.os.Build.VERSION;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import com.viber.jni.Version;
import com.viber.voip.w;

public class HardwareParametersImpl
  implements HardwareParameters
{
  public static final String TAG = "HardwareParametersImpl";
  private final String UNKNOWN_IMEI = "unknown";
  private final Version appVersion;
  private final Context ctx;
  private final String deviceType = Build.DEVICE;
  private final String fullAppVersion;
  private final String phoneIMEI;
  private final int phoneType;
  private final String simCC;
  private final String simMCC;
  private final String simMNC;
  private final String sysVersion = Build.VERSION.RELEASE;
  
  public HardwareParametersImpl(Application paramApplication)
  {
    TelephonyManager localTelephonyManager = (TelephonyManager)paramApplication.getSystemService("phone");
    String str1 = localTelephonyManager.getNetworkOperator();
    String str2;
    if ((str1 != null) && (str1.length() > 3))
    {
      this.simMCC = str1.substring(0, 3);
      this.simMNC = str1.substring(3);
      this.simCC = localTelephonyManager.getNetworkCountryIso();
      this.phoneType = localTelephonyManager.getPhoneType();
      this.fullAppVersion = w.b();
      this.appVersion = Version.parseVersionString(this.fullAppVersion);
      str2 = localTelephonyManager.getDeviceId();
      if (str2 == null) {
        break label142;
      }
    }
    for (;;)
    {
      this.phoneIMEI = str2;
      this.ctx = paramApplication;
      return;
      this.simMNC = "";
      this.simMCC = "";
      break;
      label142:
      str2 = "unknown";
    }
  }
  
  private void log(String paramString) {}
  
  public Version getAppVersion()
  {
    return this.appVersion;
  }
  
  public String getCC()
  {
    return this.simCC;
  }
  
  public String getDeviceType()
  {
    return this.deviceType;
  }
  
  public String getFullAppVersion()
  {
    return this.fullAppVersion;
  }
  
  public String getIMEI()
  {
    return this.phoneIMEI;
  }
  
  public String getMCC()
  {
    return this.simMCC;
  }
  
  public String getMNC()
  {
    return this.simMNC;
  }
  
  public String getPushToken()
  {
    String str = com.google.android.gcm.a.d(this.ctx);
    if (!TextUtils.isEmpty(str))
    {
      if (com.viber.voip.b.a.b(str)) {
        str = com.viber.voip.b.a.a(str);
      }
    }
    else {
      return str;
    }
    return "GCM:" + str;
  }
  
  public String getSystemVersion()
  {
    return this.sysVersion;
  }
  
  public String getUdid()
  {
    try
    {
      log("GetDeviceUDID");
      String str = dj.a();
      return str;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public boolean isGsmSupported()
  {
    return (this.phoneType == 2) || (this.phoneType == 1);
  }
  
  public String toString()
  {
    return "HardwareParametersImpl{androidId='" + getUdid() + '\'' + ", deviceType='" + this.deviceType + '\'' + ", sysVersion='" + this.sysVersion + '\'' + ", pushToken='" + getPushToken() + '\'' + ", GsmSupported='" + isGsmSupported() + '\'' + '}';
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.registration.HardwareParametersImpl
 * JD-Core Version:    0.7.0.1
 */