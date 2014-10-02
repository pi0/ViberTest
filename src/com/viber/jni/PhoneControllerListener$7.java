package com.viber.jni;

import com.viber.jni.controller.ControllerListener.ControllerListenerAction;

class PhoneControllerListener$7
  implements ControllerListener.ControllerListenerAction<PhoneControllerDelegate>
{
  PhoneControllerListener$7(PhoneControllerListener paramPhoneControllerListener, boolean paramBoolean, int paramInt1, int paramInt2) {}
  
  public void execute(PhoneControllerDelegate paramPhoneControllerDelegate)
  {
    paramPhoneControllerDelegate.onShareAddressBookReply(this.val$isOk, this.val$seq, this.val$aBVersion);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.jni.PhoneControllerListener.7
 * JD-Core Version:    0.7.0.1
 */