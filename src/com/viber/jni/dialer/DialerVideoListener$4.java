package com.viber.jni.dialer;

import com.viber.jni.controller.ControllerListener.ControllerListenerAction;

class DialerVideoListener$4
  implements ControllerListener.ControllerListenerAction<DialerControllerDelegate.DialerVideo>
{
  DialerVideoListener$4(DialerVideoListener paramDialerVideoListener) {}
  
  public void execute(DialerControllerDelegate.DialerVideo paramDialerVideo)
  {
    paramDialerVideo.onPeerVideoEndedAck();
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.jni.dialer.DialerVideoListener.4
 * JD-Core Version:    0.7.0.1
 */