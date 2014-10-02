package com.viber.jni.dialer;

import com.viber.jni.controller.ControllerListener.ControllerListenerAction;

class DialerHoldStateListener$1
  implements ControllerListener.ControllerListenerAction<DialerControllerDelegate.DialerHoldState>
{
  DialerHoldStateListener$1(DialerHoldStateListener paramDialerHoldStateListener) {}
  
  public void execute(DialerControllerDelegate.DialerHoldState paramDialerHoldState)
  {
    paramDialerHoldState.localHold();
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.jni.dialer.DialerHoldStateListener.1
 * JD-Core Version:    0.7.0.1
 */