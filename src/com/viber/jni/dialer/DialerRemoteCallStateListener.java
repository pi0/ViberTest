package com.viber.jni.dialer;

import com.viber.jni.controller.ControllerListener;

public class DialerRemoteCallStateListener
  extends ControllerListener<DialerControllerDelegate.DialerRemoteCallState>
  implements DialerControllerDelegate.DialerRemoteCallState
{
  public void onPeerBusy()
  {
    notifyListeners(new DialerRemoteCallStateListener.4(this));
  }
  
  public void onPeerCapabilities(int paramInt)
  {
    notifyListeners(new DialerRemoteCallStateListener.3(this, paramInt));
  }
  
  public void onPeerRinging()
  {
    notifyListeners(new DialerRemoteCallStateListener.2(this));
  }
  
  public void onStartRingback(String paramString)
  {
    notifyListeners(new DialerRemoteCallStateListener.1(this, paramString));
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.jni.dialer.DialerRemoteCallStateListener
 * JD-Core Version:    0.7.0.1
 */