package com.viber.jni;

import com.viber.jni.controller.ControllerListener.ControllerListenerAction;

class PhoneControllerListener$76
  implements ControllerListener.ControllerListenerAction<PhoneControllerDelegate>
{
  PhoneControllerListener$76(PhoneControllerListener paramPhoneControllerListener, PGLatestParams[] paramArrayOfPGLatestParams, long paramLong) {}
  
  public void execute(PhoneControllerDelegate paramPhoneControllerDelegate)
  {
    paramPhoneControllerDelegate.onPublicGroupsUpdated(this.val$groupInfo, this.val$token);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.jni.PhoneControllerListener.76
 * JD-Core Version:    0.7.0.1
 */