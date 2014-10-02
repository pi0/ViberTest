package com.viber.jni.dialer;

import com.viber.jni.controller.ControllerListener.ControllerListenerAction;

class DialerCallInterruptionListener$1
  implements ControllerListener.ControllerListenerAction<DialerControllerDelegate.DialerCallInterruption>
{
  DialerCallInterruptionListener$1(DialerCallInterruptionListener paramDialerCallInterruptionListener, boolean paramBoolean) {}
  
  public void execute(DialerControllerDelegate.DialerCallInterruption paramDialerCallInterruption)
  {
    paramDialerCallInterruption.onDataInterruption(this.val$state);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.jni.dialer.DialerCallInterruptionListener.1
 * JD-Core Version:    0.7.0.1
 */