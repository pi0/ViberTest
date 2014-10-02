package com.viber.jni.dialer;

import com.viber.jni.controller.ControllerListener.ControllerListenerAction;

class DialerHoldStateListener$4
  implements ControllerListener.ControllerListenerAction<DialerControllerDelegate.DialerHoldState>
{
  DialerHoldStateListener$4(DialerHoldStateListener paramDialerHoldStateListener) {}
  
  public void execute(DialerControllerDelegate.DialerHoldState paramDialerHoldState)
  {
    paramDialerHoldState.peerUnhold();
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.jni.dialer.DialerHoldStateListener.4
 * JD-Core Version:    0.7.0.1
 */