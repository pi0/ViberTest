package com.viber.jni;

import com.viber.jni.controller.ControllerListener.ControllerListenerAction;

class PhoneControllerListener$23
  implements ControllerListener.ControllerListenerAction<PhoneControllerDelegate>
{
  PhoneControllerListener$23(PhoneControllerListener paramPhoneControllerListener, long paramLong1, long paramLong2, int paramInt1, int paramInt2) {}
  
  public void execute(PhoneControllerDelegate paramPhoneControllerDelegate)
  {
    paramPhoneControllerDelegate.onMessageDelivered(this.val$messageToken, this.val$timeStamp, this.val$messageSeq, this.val$messageId);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.jni.PhoneControllerListener.23
 * JD-Core Version:    0.7.0.1
 */