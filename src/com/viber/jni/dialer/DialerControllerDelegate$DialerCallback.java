package com.viber.jni.dialer;

public abstract interface DialerControllerDelegate$DialerCallback
{
  public abstract void hideCallBack();
  
  public abstract void showCallBack(int paramInt1, int paramInt2);
  
  public abstract void showDialog(int paramInt, String paramString);
  
  public abstract void switchToGSM(String paramString);
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.jni.dialer.DialerControllerDelegate.DialerCallback
 * JD-Core Version:    0.7.0.1
 */