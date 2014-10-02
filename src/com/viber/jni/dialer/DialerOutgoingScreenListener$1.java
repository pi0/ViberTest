package com.viber.jni.dialer;

import com.viber.jni.controller.ControllerListener.ControllerListenerAction;

class DialerOutgoingScreenListener$1
  implements ControllerListener.ControllerListenerAction<DialerControllerDelegate.DialerOutgoingScreen>
{
  DialerOutgoingScreenListener$1(DialerOutgoingScreenListener paramDialerOutgoingScreenListener, String paramString, boolean paramBoolean1, boolean paramBoolean2) {}
  
  public void execute(DialerControllerDelegate.DialerOutgoingScreen paramDialerOutgoingScreen)
  {
    paramDialerOutgoingScreen.showCall(this.val$phoneNumber, this.val$isInitiator, this.val$isTransfer);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.jni.dialer.DialerOutgoingScreenListener.1
 * JD-Core Version:    0.7.0.1
 */