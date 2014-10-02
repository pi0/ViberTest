package com.viber.jni.dialer;

import com.viber.jni.controller.ControllerListener.ControllerListenerAction;

class DialerLocalCallStateListener$3
  implements ControllerListener.ControllerListenerAction<DialerControllerDelegate.DialerLocalCallState>
{
  DialerLocalCallStateListener$3(DialerLocalCallStateListener paramDialerLocalCallStateListener) {}
  
  public void execute(DialerControllerDelegate.DialerLocalCallState paramDialerLocalCallState)
  {
    paramDialerLocalCallState.onHangup();
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.jni.dialer.DialerLocalCallStateListener.3
 * JD-Core Version:    0.7.0.1
 */