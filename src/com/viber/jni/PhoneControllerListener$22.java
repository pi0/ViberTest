package com.viber.jni;

import com.viber.jni.controller.ControllerListener.ControllerListenerAction;

class PhoneControllerListener$22
  implements ControllerListener.ControllerListenerAction<PhoneControllerDelegate>
{
  PhoneControllerListener$22(PhoneControllerListener paramPhoneControllerListener, int paramInt1, long paramLong, int paramInt2, int paramInt3) {}
  
  public void execute(PhoneControllerDelegate paramPhoneControllerDelegate)
  {
    paramPhoneControllerDelegate.onSendMessageReply(this.val$seq, this.val$messageToken, this.val$status, this.val$messageId);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.jni.PhoneControllerListener.22
 * JD-Core Version:    0.7.0.1
 */