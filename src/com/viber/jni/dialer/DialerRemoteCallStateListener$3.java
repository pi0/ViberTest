package com.viber.jni.dialer;

import com.viber.jni.controller.ControllerListener.ControllerListenerAction;

class DialerRemoteCallStateListener$3
  implements ControllerListener.ControllerListenerAction<DialerControllerDelegate.DialerRemoteCallState>
{
  DialerRemoteCallStateListener$3(DialerRemoteCallStateListener paramDialerRemoteCallStateListener, int paramInt) {}
  
  public void execute(DialerControllerDelegate.DialerRemoteCallState paramDialerRemoteCallState)
  {
    paramDialerRemoteCallState.onPeerCapabilities(this.val$capabilities);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.jni.dialer.DialerRemoteCallStateListener.3
 * JD-Core Version:    0.7.0.1
 */