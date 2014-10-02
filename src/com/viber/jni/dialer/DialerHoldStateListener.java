package com.viber.jni.dialer;

import com.viber.jni.controller.ControllerListener;

public class DialerHoldStateListener
  extends ControllerListener<DialerControllerDelegate.DialerHoldState>
  implements DialerControllerDelegate.DialerHoldState
{
  public void localHold()
  {
    notifyListeners(new DialerHoldStateListener.1(this));
  }
  
  public void localUnhold()
  {
    notifyListeners(new DialerHoldStateListener.2(this));
  }
  
  public void peerHold()
  {
    notifyListeners(new DialerHoldStateListener.3(this));
  }
  
  public void peerUnhold()
  {
    notifyListeners(new DialerHoldStateListener.4(this));
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.jni.dialer.DialerHoldStateListener
 * JD-Core Version:    0.7.0.1
 */