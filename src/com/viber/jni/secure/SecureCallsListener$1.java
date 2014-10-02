package com.viber.jni.secure;

import com.viber.jni.controller.ControllerListener.ControllerListenerAction;

class SecureCallsListener$1
  implements ControllerListener.ControllerListenerAction<SecureCallsDelegate>
{
  SecureCallsListener$1(SecureCallsListener paramSecureCallsListener, long paramLong, int paramInt1, byte[] paramArrayOfByte, int paramInt2, String paramString) {}
  
  public void execute(SecureCallsDelegate paramSecureCallsDelegate)
  {
    paramSecureCallsDelegate.onSecureCallStateChange(this.val$ct, this.val$peerCID, this.val$sharedSecret, this.val$state, this.val$sharedSecretString);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.jni.secure.SecureCallsListener.1
 * JD-Core Version:    0.7.0.1
 */