package com.viber.jni.dialer;

import com.viber.jni.controller.ControllerListener;

public class DialerCallInterruptionListener
  extends ControllerListener<DialerControllerDelegate.DialerCallInterruption>
  implements DialerControllerDelegate.DialerCallInterruption
{
  public void onDataInterruption(boolean paramBoolean)
  {
    notifyListeners(new DialerCallInterruptionListener.1(this, paramBoolean));
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.jni.dialer.DialerCallInterruptionListener
 * JD-Core Version:    0.7.0.1
 */