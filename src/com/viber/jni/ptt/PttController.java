package com.viber.jni.ptt;

import com.viber.jni.LocationInfo;

public abstract interface PttController
{
  public abstract int handleDeletePtt(String paramString);
  
  public abstract void handleDownloadPtt(String paramString);
  
  public abstract int handleRestorePttDuration(String paramString);
  
  public abstract boolean handleSendPtt(String paramString1, int paramInt1, long paramLong, int paramInt2, LocationInfo paramLocationInfo, boolean paramBoolean, int paramInt3, String paramString2, String paramString3);
  
  public abstract boolean handleSendPttToGroup(long paramLong1, int paramInt1, long paramLong2, int paramInt2, LocationInfo paramLocationInfo, boolean paramBoolean, int paramInt3, String paramString1, String paramString2);
  
  public abstract void handleStartPlayPtt(String paramString);
  
  public abstract void handleStartRecordPtt(int paramInt);
  
  public abstract void handleStopPlayPtt(String paramString);
  
  public abstract void handleStopRecordPtt(String paramString);
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.jni.ptt.PttController
 * JD-Core Version:    0.7.0.1
 */