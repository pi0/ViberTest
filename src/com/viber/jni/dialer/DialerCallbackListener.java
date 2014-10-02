package com.viber.jni.dialer;

import com.viber.jni.controller.ControllerListener;

public class DialerCallbackListener
  extends ControllerListener<DialerControllerDelegate.DialerCallback>
  implements DialerControllerDelegate.DialerCallback
{
  public void hideCallBack()
  {
    notifyListeners(new DialerCallbackListener.2(this));
  }
  
  public void showCallBack(int paramInt1, int paramInt2)
  {
    notifyListeners(new DialerCallbackListener.1(this, paramInt1, paramInt2));
  }
  
  public void showDialog(int paramInt, String paramString)
  {
    notifyListeners(new DialerCallbackListener.4(this, paramInt, paramString));
  }
  
  public void switchToGSM(String paramString)
  {
    notifyListeners(new DialerCallbackListener.3(this, paramString));
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.jni.dialer.DialerCallbackListener
 * JD-Core Version:    0.7.0.1
 */