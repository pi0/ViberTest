package com.viber.jni.dialer;

import com.viber.jni.controller.ControllerListener.ControllerListenerAction;

class DialerVideoListener$1
  implements ControllerListener.ControllerListenerAction<DialerControllerDelegate.DialerVideo>
{
  DialerVideoListener$1(DialerVideoListener paramDialerVideoListener) {}
  
  public void execute(DialerControllerDelegate.DialerVideo paramDialerVideo)
  {
    paramDialerVideo.onPeerVideoStarted();
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.jni.dialer.DialerVideoListener.1
 * JD-Core Version:    0.7.0.1
 */