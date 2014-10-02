package com.viber.jni.dialer;

import com.viber.jni.controller.ControllerListener.ControllerListenerAction;

class DialerIncomingScreenListener$1
  implements ControllerListener.ControllerListenerAction<DialerControllerDelegate.DialerIncomingScreen>
{
  DialerIncomingScreenListener$1(DialerIncomingScreenListener paramDialerIncomingScreenListener, String paramString1, String paramString2, boolean paramBoolean, int paramInt) {}
  
  public void execute(DialerControllerDelegate.DialerIncomingScreen paramDialerIncomingScreen)
  {
    paramDialerIncomingScreen.showReception(this.val$originPhoneNumber, this.val$clientName, this.val$isTransfer, this.val$callType);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.jni.dialer.DialerIncomingScreenListener.1
 * JD-Core Version:    0.7.0.1
 */