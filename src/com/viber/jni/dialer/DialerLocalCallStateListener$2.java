package com.viber.jni.dialer;

import com.viber.jni.controller.ControllerListener.ControllerListenerAction;

class DialerLocalCallStateListener$2
  implements ControllerListener.ControllerListenerAction<DialerControllerDelegate.DialerLocalCallState>
{
  DialerLocalCallStateListener$2(DialerLocalCallStateListener paramDialerLocalCallStateListener, long paramLong, boolean paramBoolean, String paramString, int paramInt1, int paramInt2) {}
  
  public void execute(DialerControllerDelegate.DialerLocalCallState paramDialerLocalCallState)
  {
    paramDialerLocalCallState.onCallEnded(this.val$callToken, this.val$isInitiator, this.val$originPhoneNumber, this.val$reason, this.val$dialType);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.jni.dialer.DialerLocalCallStateListener.2
 * JD-Core Version:    0.7.0.1
 */