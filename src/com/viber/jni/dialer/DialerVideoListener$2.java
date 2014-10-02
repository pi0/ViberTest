package com.viber.jni.dialer;

import com.viber.jni.controller.ControllerListener.ControllerListenerAction;

class DialerVideoListener$2
  implements ControllerListener.ControllerListenerAction<DialerControllerDelegate.DialerVideo>
{
  DialerVideoListener$2(DialerVideoListener paramDialerVideoListener) {}
  
  public void execute(DialerControllerDelegate.DialerVideo paramDialerVideo)
  {
    paramDialerVideo.onPeerVideoStartedAck();
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.jni.dialer.DialerVideoListener.2
 * JD-Core Version:    0.7.0.1
 */