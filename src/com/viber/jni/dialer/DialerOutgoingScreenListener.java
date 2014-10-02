package com.viber.jni.dialer;

import com.viber.jni.controller.ControllerListener;

public class DialerOutgoingScreenListener
  extends ControllerListener<DialerControllerDelegate.DialerOutgoingScreen>
  implements DialerControllerDelegate.DialerOutgoingScreen
{
  public void hideCall(String paramString, boolean paramBoolean)
  {
    notifyListeners(new DialerOutgoingScreenListener.2(this, paramString, paramBoolean));
  }
  
  public void showCall(String paramString, boolean paramBoolean1, boolean paramBoolean2)
  {
    notifyListeners(new DialerOutgoingScreenListener.1(this, paramString, paramBoolean1, paramBoolean2));
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.jni.dialer.DialerOutgoingScreenListener
 * JD-Core Version:    0.7.0.1
 */