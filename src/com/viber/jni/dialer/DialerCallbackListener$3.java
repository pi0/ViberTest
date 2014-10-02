package com.viber.jni.dialer;

import com.viber.jni.controller.ControllerListener.ControllerListenerAction;

class DialerCallbackListener$3
  implements ControllerListener.ControllerListenerAction<DialerControllerDelegate.DialerCallback>
{
  DialerCallbackListener$3(DialerCallbackListener paramDialerCallbackListener, String paramString) {}
  
  public void execute(DialerControllerDelegate.DialerCallback paramDialerCallback)
  {
    paramDialerCallback.switchToGSM(this.val$number);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.jni.dialer.DialerCallbackListener.3
 * JD-Core Version:    0.7.0.1
 */