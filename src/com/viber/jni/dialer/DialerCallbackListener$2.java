package com.viber.jni.dialer;

import com.viber.jni.controller.ControllerListener.ControllerListenerAction;

class DialerCallbackListener$2
  implements ControllerListener.ControllerListenerAction<DialerControllerDelegate.DialerCallback>
{
  DialerCallbackListener$2(DialerCallbackListener paramDialerCallbackListener) {}
  
  public void execute(DialerControllerDelegate.DialerCallback paramDialerCallback)
  {
    paramDialerCallback.hideCallBack();
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.jni.dialer.DialerCallbackListener.2
 * JD-Core Version:    0.7.0.1
 */