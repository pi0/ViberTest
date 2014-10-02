package com.viber.jni.dialer;

import com.viber.jni.controller.ControllerListener.ControllerListenerAction;

class DialerOutgoingScreenListener$2
  implements ControllerListener.ControllerListenerAction<DialerControllerDelegate.DialerOutgoingScreen>
{
  DialerOutgoingScreenListener$2(DialerOutgoingScreenListener paramDialerOutgoingScreenListener, String paramString, boolean paramBoolean) {}
  
  public void execute(DialerControllerDelegate.DialerOutgoingScreen paramDialerOutgoingScreen)
  {
    paramDialerOutgoingScreen.hideCall(this.val$phoneNumber, this.val$isInitiator);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.jni.dialer.DialerOutgoingScreenListener.2
 * JD-Core Version:    0.7.0.1
 */