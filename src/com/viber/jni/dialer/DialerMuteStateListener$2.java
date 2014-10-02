package com.viber.jni.dialer;

import com.viber.jni.controller.ControllerListener.ControllerListenerAction;

class DialerMuteStateListener$2
  implements ControllerListener.ControllerListenerAction<DialerControllerDelegate.DialerMuteState>
{
  DialerMuteStateListener$2(DialerMuteStateListener paramDialerMuteStateListener) {}
  
  public void execute(DialerControllerDelegate.DialerMuteState paramDialerMuteState)
  {
    paramDialerMuteState.unmute();
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.jni.dialer.DialerMuteStateListener.2
 * JD-Core Version:    0.7.0.1
 */