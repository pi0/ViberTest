package com.viber.jni;

import com.viber.jni.controller.ControllerListener.ControllerListenerAction;

class PhoneControllerListener$75
  implements ControllerListener.ControllerListenerAction<PhoneControllerDelegate>
{
  PhoneControllerListener$75(PhoneControllerListener paramPhoneControllerListener, long paramLong, int paramInt1, int paramInt2, int paramInt3) {}
  
  public void execute(PhoneControllerDelegate paramPhoneControllerDelegate)
  {
    paramPhoneControllerDelegate.onSecondaryRegistered(this.val$messageToken, this.val$activationCode, this.val$deviceID, this.val$flags);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.jni.PhoneControllerListener.75
 * JD-Core Version:    0.7.0.1
 */