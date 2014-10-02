package com.viber.jni;

import com.viber.jni.controller.ControllerListener.ControllerListenerAction;

class PhoneControllerListener$52
  implements ControllerListener.ControllerListenerAction<PhoneControllerDelegate>
{
  PhoneControllerListener$52(PhoneControllerListener paramPhoneControllerListener, long paramLong, boolean paramBoolean1, boolean paramBoolean2) {}
  
  public void execute(PhoneControllerDelegate paramPhoneControllerDelegate)
  {
    paramPhoneControllerDelegate.onChangeGroupSettingsReply(this.val$groupId, this.val$SmartNotifications, this.val$isOk);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.jni.PhoneControllerListener.52
 * JD-Core Version:    0.7.0.1
 */