package com.viber.jni.ptt;

import com.viber.jni.LocationInfo;

public abstract interface PttControllerDelegate$Receiver
{
  public abstract boolean onPttReceived(long paramLong1, String paramString1, long paramLong2, int paramInt1, int paramInt2, LocationInfo paramLocationInfo, String paramString2, int paramInt3, String paramString3);
  
  public abstract boolean onPttReceivedFromGroup(long paramLong1, String paramString1, long paramLong2, String paramString2, long paramLong3, int paramInt1, int paramInt2, LocationInfo paramLocationInfo, String paramString3, int paramInt3, String paramString4, int paramInt4);
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.jni.ptt.PttControllerDelegate.Receiver
 * JD-Core Version:    0.7.0.1
 */