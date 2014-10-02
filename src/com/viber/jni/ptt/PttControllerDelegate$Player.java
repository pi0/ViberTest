package com.viber.jni.ptt;

public abstract interface PttControllerDelegate$Player
{
  public abstract void onPttBufferingStarted(String paramString);
  
  public abstract void onPttBufferingStopped(String paramString);
  
  public abstract void onPttPlayStopped(String paramString, int paramInt);
  
  public abstract void onStartPlayPttReply(String paramString, int paramInt);
  
  public abstract void onStopPlayPttReply(String paramString, int paramInt);
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.jni.ptt.PttControllerDelegate.Player
 * JD-Core Version:    0.7.0.1
 */