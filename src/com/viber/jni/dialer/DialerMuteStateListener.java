package com.viber.jni.dialer;

import com.viber.jni.controller.ControllerListener;

public class DialerMuteStateListener
  extends ControllerListener<DialerControllerDelegate.DialerMuteState>
  implements DialerControllerDelegate.DialerMuteState
{
  public void mute()
  {
    notifyListeners(new DialerMuteStateListener.1(this));
  }
  
  public void unmute()
  {
    notifyListeners(new DialerMuteStateListener.2(this));
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.jni.dialer.DialerMuteStateListener
 * JD-Core Version:    0.7.0.1
 */