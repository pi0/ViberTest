package com.viber.jni;

public class DeviceFlags$DeviceModes
{
  public int AEC_mode = 0;
  public int AGC_mode = 0;
  public int NS_mode = 0;
  public int RxAGC_mode = 0;
  public int RxNS_mode = 0;
  public int deviceFlags = 0;
  
  public DeviceFlags$DeviceModes(int paramInt)
  {
    this(1, 0, 0, 2, 0, paramInt);
  }
  
  public DeviceFlags$DeviceModes(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6)
  {
    this.AEC_mode = paramInt1;
    this.AGC_mode = paramInt2;
    this.NS_mode = paramInt3;
    this.RxAGC_mode = paramInt4;
    this.RxNS_mode = paramInt5;
    this.deviceFlags = paramInt6;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.jni.DeviceFlags.DeviceModes
 * JD-Core Version:    0.7.0.1
 */