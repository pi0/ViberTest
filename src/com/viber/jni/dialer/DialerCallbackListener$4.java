package com.viber.jni.dialer;

import com.viber.jni.controller.ControllerListener.ControllerListenerAction;

class DialerCallbackListener$4
  implements ControllerListener.ControllerListenerAction<DialerControllerDelegate.DialerCallback>
{
  DialerCallbackListener$4(DialerCallbackListener paramDialerCallbackListener, int paramInt, String paramString) {}
  
  public void execute(DialerControllerDelegate.DialerCallback paramDialerCallback)
  {
    paramDialerCallback.showDialog(this.val$netDefinesEDialogType, this.val$Ctx);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.jni.dialer.DialerCallbackListener.4
 * JD-Core Version:    0.7.0.1
 */