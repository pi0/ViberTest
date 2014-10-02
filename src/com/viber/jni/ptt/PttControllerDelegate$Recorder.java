package com.viber.jni.ptt;

public abstract interface PttControllerDelegate$Recorder
{
  public abstract void onPttRecordStopped(String paramString, int paramInt);
  
  public abstract void onStartPttIndicator();
  
  public abstract void onStartRecordPttReply(int paramInt1, String paramString, int paramInt2);
  
  public abstract void onStopPttIndicator();
  
  public abstract void onStopRecordPttReply(String paramString, int paramInt);
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.jni.ptt.PttControllerDelegate.Recorder
 * JD-Core Version:    0.7.0.1
 */