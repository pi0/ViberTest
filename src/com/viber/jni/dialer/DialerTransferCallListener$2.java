package com.viber.jni.dialer;

import com.viber.jni.controller.ControllerListener.ControllerListenerAction;

class DialerTransferCallListener$2
  implements ControllerListener.ControllerListenerAction<DialerControllerDelegate.DialerTransferCall>
{
  DialerTransferCallListener$2(DialerTransferCallListener paramDialerTransferCallListener, int paramInt) {}
  
  public void execute(DialerControllerDelegate.DialerTransferCall paramDialerTransferCall)
  {
    paramDialerTransferCall.onTransferFailed(this.val$reason);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.jni.dialer.DialerTransferCallListener.2
 * JD-Core Version:    0.7.0.1
 */