package com.viber.jni.dialer;

import com.viber.jni.controller.ControllerListener.ControllerListenerAction;

class DialerRemoteCallStateListener$2
  implements ControllerListener.ControllerListenerAction<DialerControllerDelegate.DialerRemoteCallState>
{
  DialerRemoteCallStateListener$2(DialerRemoteCallStateListener paramDialerRemoteCallStateListener) {}
  
  public void execute(DialerControllerDelegate.DialerRemoteCallState paramDialerRemoteCallState)
  {
    paramDialerRemoteCallState.onPeerRinging();
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.jni.dialer.DialerRemoteCallStateListener.2
 * JD-Core Version:    0.7.0.1
 */