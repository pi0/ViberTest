package com.viber.jni.dialer;

import com.viber.jni.controller.ControllerListener.ControllerListenerAction;

class DialerCallbackListener$1
  implements ControllerListener.ControllerListenerAction<DialerControllerDelegate.DialerCallback>
{
  DialerCallbackListener$1(DialerCallbackListener paramDialerCallbackListener, int paramInt1, int paramInt2) {}
  
  public void execute(DialerControllerDelegate.DialerCallback paramDialerCallback)
  {
    paramDialerCallback.showCallBack(this.val$callbackType, this.val$dialType);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.jni.dialer.DialerCallbackListener.1
 * JD-Core Version:    0.7.0.1
 */