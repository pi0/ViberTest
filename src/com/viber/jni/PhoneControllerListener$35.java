package com.viber.jni;

import com.viber.jni.controller.ControllerListener.ControllerListenerAction;

class PhoneControllerListener$35
  implements ControllerListener.ControllerListenerAction<PhoneControllerDelegate>
{
  PhoneControllerListener$35(PhoneControllerListener paramPhoneControllerListener, long paramLong1, long paramLong2, String paramString, long paramLong3) {}
  
  public void execute(PhoneControllerDelegate paramPhoneControllerDelegate)
  {
    paramPhoneControllerDelegate.onGroupMessageDelivered(this.val$groupId, this.val$msgToken, this.val$deliveredTo, this.val$timeDelivered);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.jni.PhoneControllerListener.35
 * JD-Core Version:    0.7.0.1
 */