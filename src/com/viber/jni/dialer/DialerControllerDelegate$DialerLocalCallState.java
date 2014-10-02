package com.viber.jni.dialer;

public abstract interface DialerControllerDelegate$DialerLocalCallState
{
  public abstract void onCallEnded(long paramLong, boolean paramBoolean, String paramString, int paramInt1, int paramInt2);
  
  public abstract void onCallStarted(boolean paramBoolean);
  
  public abstract void onHangup();
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.jni.dialer.DialerControllerDelegate.DialerLocalCallState
 * JD-Core Version:    0.7.0.1
 */