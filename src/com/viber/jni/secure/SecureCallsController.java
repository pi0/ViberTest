package com.viber.jni.secure;

public abstract interface SecureCallsController
{
  public abstract int handleClearSecureCallStorage();
  
  public abstract void handleSecureCallVerified(int paramInt, byte[] paramArrayOfByte);
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.jni.secure.SecureCallsController
 * JD-Core Version:    0.7.0.1
 */