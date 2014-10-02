package com.viber.voip.registration;

import com.viber.jni.Version;

public abstract interface HardwareParameters
{
  public abstract Version getAppVersion();
  
  public abstract String getCC();
  
  public abstract String getDeviceType();
  
  public abstract String getFullAppVersion();
  
  public abstract String getIMEI();
  
  public abstract String getMCC();
  
  public abstract String getMNC();
  
  public abstract String getPushToken();
  
  public abstract String getSystemVersion();
  
  public abstract String getUdid();
  
  public abstract boolean isGsmSupported();
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.registration.HardwareParameters
 * JD-Core Version:    0.7.0.1
 */