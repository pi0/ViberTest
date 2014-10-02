package com.viber.jni.dialer;

import com.viber.jni.controller.ControllerListener.ControllerListenerAction;

class DialerHoldStateListener$2
  implements ControllerListener.ControllerListenerAction<DialerControllerDelegate.DialerHoldState>
{
  DialerHoldStateListener$2(DialerHoldStateListener paramDialerHoldStateListener) {}
  
  public void execute(DialerControllerDelegate.DialerHoldState paramDialerHoldState)
  {
    paramDialerHoldState.localUnhold();
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.jni.dialer.DialerHoldStateListener.2
 * JD-Core Version:    0.7.0.1
 */