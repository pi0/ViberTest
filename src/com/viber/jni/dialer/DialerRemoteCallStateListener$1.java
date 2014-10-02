package com.viber.jni.dialer;

import com.viber.jni.controller.ControllerListener.ControllerListenerAction;

class DialerRemoteCallStateListener$1
  implements ControllerListener.ControllerListenerAction<DialerControllerDelegate.DialerRemoteCallState>
{
  DialerRemoteCallStateListener$1(DialerRemoteCallStateListener paramDialerRemoteCallStateListener, String paramString) {}
  
  public void execute(DialerControllerDelegate.DialerRemoteCallState paramDialerRemoteCallState)
  {
    paramDialerRemoteCallState.onStartRingback(this.val$toNumber);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.jni.dialer.DialerRemoteCallStateListener.1
 * JD-Core Version:    0.7.0.1
 */