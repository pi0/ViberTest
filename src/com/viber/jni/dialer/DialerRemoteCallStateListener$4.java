package com.viber.jni.dialer;

import com.viber.jni.controller.ControllerListener.ControllerListenerAction;

class DialerRemoteCallStateListener$4
  implements ControllerListener.ControllerListenerAction<DialerControllerDelegate.DialerRemoteCallState>
{
  DialerRemoteCallStateListener$4(DialerRemoteCallStateListener paramDialerRemoteCallStateListener) {}
  
  public void execute(DialerControllerDelegate.DialerRemoteCallState paramDialerRemoteCallState)
  {
    paramDialerRemoteCallState.onPeerBusy();
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.jni.dialer.DialerRemoteCallStateListener.4
 * JD-Core Version:    0.7.0.1
 */