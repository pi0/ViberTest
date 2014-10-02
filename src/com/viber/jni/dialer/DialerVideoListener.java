package com.viber.jni.dialer;

import com.viber.jni.controller.ControllerListener;

public class DialerVideoListener
  extends ControllerListener<DialerControllerDelegate.DialerVideo>
  implements DialerControllerDelegate.DialerVideo
{
  public int onPeerVideoEnded()
  {
    notifyListeners(new DialerVideoListener.3(this));
    return 0;
  }
  
  public int onPeerVideoEndedAck()
  {
    notifyListeners(new DialerVideoListener.4(this));
    return 0;
  }
  
  public int onPeerVideoStarted()
  {
    notifyListeners(new DialerVideoListener.1(this));
    return 0;
  }
  
  public int onPeerVideoStartedAck()
  {
    notifyListeners(new DialerVideoListener.2(this));
    return 0;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.jni.dialer.DialerVideoListener
 * JD-Core Version:    0.7.0.1
 */