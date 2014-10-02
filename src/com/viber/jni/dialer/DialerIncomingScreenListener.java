package com.viber.jni.dialer;

import com.viber.jni.controller.ControllerListener;

public class DialerIncomingScreenListener
  extends ControllerListener<DialerControllerDelegate.DialerIncomingScreen>
  implements DialerControllerDelegate.DialerIncomingScreen
{
  public void hideReception()
  {
    notifyListeners(new DialerIncomingScreenListener.2(this));
  }
  
  public void showReception(String paramString1, String paramString2, boolean paramBoolean, int paramInt)
  {
    notifyListeners(new DialerIncomingScreenListener.1(this, paramString1, paramString2, paramBoolean, paramInt));
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.jni.dialer.DialerIncomingScreenListener
 * JD-Core Version:    0.7.0.1
 */