package com.viber.jni.dialer;

import com.viber.jni.controller.ControllerListener.ControllerListenerAction;

class DialerVideoListener$3
  implements ControllerListener.ControllerListenerAction<DialerControllerDelegate.DialerVideo>
{
  DialerVideoListener$3(DialerVideoListener paramDialerVideoListener) {}
  
  public void execute(DialerControllerDelegate.DialerVideo paramDialerVideo)
  {
    paramDialerVideo.onPeerVideoEnded();
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.jni.dialer.DialerVideoListener.3
 * JD-Core Version:    0.7.0.1
 */