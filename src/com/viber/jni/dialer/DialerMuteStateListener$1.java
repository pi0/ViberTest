package com.viber.jni.dialer;

import com.viber.jni.controller.ControllerListener.ControllerListenerAction;

class DialerMuteStateListener$1
  implements ControllerListener.ControllerListenerAction<DialerControllerDelegate.DialerMuteState>
{
  DialerMuteStateListener$1(DialerMuteStateListener paramDialerMuteStateListener) {}
  
  public void execute(DialerControllerDelegate.DialerMuteState paramDialerMuteState)
  {
    paramDialerMuteState.mute();
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.jni.dialer.DialerMuteStateListener.1
 * JD-Core Version:    0.7.0.1
 */