package com.viber.jni;

import com.viber.jni.controller.ControllerListener.ControllerListenerAction;

class PhoneControllerListener$39
  implements ControllerListener.ControllerListenerAction<PhoneControllerDelegate>
{
  PhoneControllerListener$39(PhoneControllerListener paramPhoneControllerListener, long paramLong1, String paramString1, String paramString2, long paramLong2, int paramInt1, long paramLong3, String paramString3, String paramString4, int paramInt2, GroupUserInfo[] paramArrayOfGroupUserInfo) {}
  
  public void execute(PhoneControllerDelegate paramPhoneControllerDelegate)
  {
    paramPhoneControllerDelegate.onGroupChanged(this.val$groupId, this.val$groupName, this.val$groupOldName, this.val$messageToken, this.val$flags, this.val$timeChanged, this.val$phoneNumber, this.val$clientName, this.val$messageType, this.val$addedMembers);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.jni.PhoneControllerListener.39
 * JD-Core Version:    0.7.0.1
 */