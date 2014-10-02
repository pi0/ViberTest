package com.viber.jni.dialer;

import com.viber.jni.controller.ControllerListener;

public class DialerLocalCallStateListener
  extends ControllerListener<DialerControllerDelegate.DialerLocalCallState>
  implements DialerControllerDelegate.DialerLocalCallState
{
  public void onCallEnded(long paramLong, boolean paramBoolean, String paramString, int paramInt1, int paramInt2)
  {
    notifyListeners(new DialerLocalCallStateListener.2(this, paramLong, paramBoolean, paramString, paramInt1, paramInt2));
  }
  
  public void onCallStarted(boolean paramBoolean)
  {
    notifyListeners(new DialerLocalCallStateListener.1(this, paramBoolean));
  }
  
  public void onHangup()
  {
    notifyListeners(new DialerLocalCallStateListener.3(this));
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.jni.dialer.DialerLocalCallStateListener
 * JD-Core Version:    0.7.0.1
 */