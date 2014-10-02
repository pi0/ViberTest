package com.viber.jni.dialer;

import com.viber.jni.controller.ControllerListener.ControllerListenerAction;

class DialerHoldStateListener$3
  implements ControllerListener.ControllerListenerAction<DialerControllerDelegate.DialerHoldState>
{
  DialerHoldStateListener$3(DialerHoldStateListener paramDialerHoldStateListener) {}
  
  public void execute(DialerControllerDelegate.DialerHoldState paramDialerHoldState)
  {
    paramDialerHoldState.peerHold();
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.jni.dialer.DialerHoldStateListener.3
 * JD-Core Version:    0.7.0.1
 */