package com.viber.jni.dialer;

import com.viber.jni.controller.ControllerListener.ControllerListenerAction;

class DialerTransferCallListener$1
  implements ControllerListener.ControllerListenerAction<DialerControllerDelegate.DialerTransferCall>
{
  DialerTransferCallListener$1(DialerTransferCallListener paramDialerTransferCallListener, long paramLong) {}
  
  public void execute(DialerControllerDelegate.DialerTransferCall paramDialerTransferCall)
  {
    paramDialerTransferCall.onTransferReplyOK(this.val$transferToken);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.jni.dialer.DialerTransferCallListener.1
 * JD-Core Version:    0.7.0.1
 */