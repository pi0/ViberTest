package com.viber.jni;

import com.viber.jni.controller.ControllerListener.ControllerListenerAction;

class PhoneControllerListener$24
  implements ControllerListener.ControllerListenerAction<PhoneControllerDelegate>
{
  PhoneControllerListener$24(PhoneControllerListener paramPhoneControllerListener, String paramString, boolean paramBoolean1, int paramInt, boolean paramBoolean2) {}
  
  public void execute(PhoneControllerDelegate paramPhoneControllerDelegate)
  {
    paramPhoneControllerDelegate.onUserIsTyping(this.val$fromNumber, this.val$startStopFlag, this.val$deviceId, this.val$isSecondaryDevice);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.jni.PhoneControllerListener.24
 * JD-Core Version:    0.7.0.1
 */