package com.viber.jni.dialer;

import com.viber.jni.controller.ControllerListener;

public class DialerEndScreenListener
  extends ControllerListener<DialerControllerDelegate.DialerEndScreen>
  implements DialerControllerDelegate.DialerEndScreen
{
  public void hideEndCall()
  {
    notifyListeners(new DialerEndScreenListener.2(this));
  }
  
  public void showEndCall()
  {
    notifyListeners(new DialerEndScreenListener.1(this));
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.jni.dialer.DialerEndScreenListener
 * JD-Core Version:    0.7.0.1
 */