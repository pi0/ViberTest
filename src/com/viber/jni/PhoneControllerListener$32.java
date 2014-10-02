package com.viber.jni;

import com.viber.jni.controller.ControllerListener.ControllerListenerAction;
import java.util.Map;

class PhoneControllerListener$32
  implements ControllerListener.ControllerListenerAction<PhoneControllerDelegate>
{
  PhoneControllerListener$32(PhoneControllerListener paramPhoneControllerListener, int paramInt1, int paramInt2, long paramLong, Map paramMap) {}
  
  public void execute(PhoneControllerDelegate paramPhoneControllerDelegate)
  {
    paramPhoneControllerDelegate.onCreateGroupReply(this.val$status, this.val$context, this.val$groupId, this.val$notFoundMembers);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.jni.PhoneControllerListener.32
 * JD-Core Version:    0.7.0.1
 */