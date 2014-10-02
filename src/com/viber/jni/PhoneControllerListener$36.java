package com.viber.jni;

import com.viber.jni.controller.ControllerListener.ControllerListenerAction;

class PhoneControllerListener$36
  implements ControllerListener.ControllerListenerAction<PhoneControllerDelegate>
{
  PhoneControllerListener$36(PhoneControllerListener paramPhoneControllerListener, long paramLong, String paramString, boolean paramBoolean1, int paramInt, boolean paramBoolean2) {}
  
  public void execute(PhoneControllerDelegate paramPhoneControllerDelegate)
  {
    paramPhoneControllerDelegate.onGroupUserIsTyping(this.val$groupId, this.val$fromNumber, this.val$active, this.val$deviceId, this.val$isSecondaryDevice);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.jni.PhoneControllerListener.36
 * JD-Core Version:    0.7.0.1
 */