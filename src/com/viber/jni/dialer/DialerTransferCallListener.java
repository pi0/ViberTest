package com.viber.jni.dialer;

import com.viber.jni.controller.ControllerListener;

public class DialerTransferCallListener
  extends ControllerListener<DialerControllerDelegate.DialerTransferCall>
  implements DialerControllerDelegate.DialerTransferCall
{
  public void onTransferFailed(int paramInt)
  {
    notifyListeners(new DialerTransferCallListener.2(this, paramInt));
  }
  
  public void onTransferReplyOK(long paramLong)
  {
    notifyListeners(new DialerTransferCallListener.1(this, paramLong));
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.jni.dialer.DialerTransferCallListener
 * JD-Core Version:    0.7.0.1
 */