package com.viber.jni.secure;

import com.viber.jni.controller.ControllerListener;

public class SecureCallsListener
  extends ControllerListener<SecureCallsDelegate>
  implements SecureCallsDelegate
{
  public void onSecureCallStateChange(long paramLong, int paramInt1, byte[] paramArrayOfByte, int paramInt2, String paramString)
  {
    notifyListeners(new SecureCallsListener.1(this, paramLong, paramInt1, paramArrayOfByte, paramInt2, paramString));
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.jni.secure.SecureCallsListener
 * JD-Core Version:    0.7.0.1
 */