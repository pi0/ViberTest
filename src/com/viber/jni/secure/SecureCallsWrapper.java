package com.viber.jni.secure;

public class SecureCallsWrapper
  implements SecureCallsController
{
  private static final String TAG = "SecureCallsWrapper";
  private SecureCallsController mWrappedController;
  
  public SecureCallsWrapper(SecureCallsController paramSecureCallsController)
  {
    this.mWrappedController = paramSecureCallsController;
  }
  
  public int handleClearSecureCallStorage()
  {
    return this.mWrappedController.handleClearSecureCallStorage();
  }
  
  public void handleSecureCallVerified(int paramInt, byte[] paramArrayOfByte)
  {
    this.mWrappedController.handleSecureCallVerified(paramInt, paramArrayOfByte);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.jni.secure.SecureCallsWrapper
 * JD-Core Version:    0.7.0.1
 */