package com.viber.jni.dialer;

public abstract interface DialerControllerDelegate$DialerRemoteCallState
{
  public abstract void onPeerBusy();
  
  public abstract void onPeerCapabilities(int paramInt);
  
  public abstract void onPeerRinging();
  
  public abstract void onStartRingback(String paramString);
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.jni.dialer.DialerControllerDelegate.DialerRemoteCallState
 * JD-Core Version:    0.7.0.1
 */