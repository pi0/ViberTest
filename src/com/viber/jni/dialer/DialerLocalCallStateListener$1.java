package com.viber.jni.dialer;

import com.viber.jni.controller.ControllerListener.ControllerListenerAction;

class DialerLocalCallStateListener$1
  implements ControllerListener.ControllerListenerAction<DialerControllerDelegate.DialerLocalCallState>
{
  DialerLocalCallStateListener$1(DialerLocalCallStateListener paramDialerLocalCallStateListener, boolean paramBoolean) {}
  
  public void execute(DialerControllerDelegate.DialerLocalCallState paramDialerLocalCallState)
  {
    paramDialerLocalCallState.onCallStarted(this.val$isInitiator);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.jni.dialer.DialerLocalCallStateListener.1
 * JD-Core Version:    0.7.0.1
 */