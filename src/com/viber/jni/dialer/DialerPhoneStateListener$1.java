package com.viber.jni.dialer;

import com.viber.jni.controller.ControllerListener.ControllerListenerAction;

class DialerPhoneStateListener$1
  implements ControllerListener.ControllerListenerAction<DialerControllerDelegate.DialerPhoneState>
{
  DialerPhoneStateListener$1(DialerPhoneStateListener paramDialerPhoneStateListener, int paramInt) {}
  
  public void execute(DialerControllerDelegate.DialerPhoneState paramDialerPhoneState)
  {
    paramDialerPhoneState.onPhoneStateChanged(this.val$state_id);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.jni.dialer.DialerPhoneStateListener.1
 * JD-Core Version:    0.7.0.1
 */