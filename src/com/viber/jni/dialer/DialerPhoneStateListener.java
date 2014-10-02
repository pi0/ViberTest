package com.viber.jni.dialer;

import com.viber.jni.controller.ControllerListener;

public class DialerPhoneStateListener
  extends ControllerListener<DialerControllerDelegate.DialerPhoneState>
  implements DialerControllerDelegate.DialerPhoneState
{
  public void onPhoneStateChanged(int paramInt)
  {
    notifyListeners(new DialerPhoneStateListener.1(this, paramInt));
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.jni.dialer.DialerPhoneStateListener
 * JD-Core Version:    0.7.0.1
 */