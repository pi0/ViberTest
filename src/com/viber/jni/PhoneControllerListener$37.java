package com.viber.jni;

import com.viber.jni.controller.ControllerListener.ControllerListenerAction;

class PhoneControllerListener$37
  implements ControllerListener.ControllerListenerAction<PhoneControllerDelegate>
{
  PhoneControllerListener$37(PhoneControllerListener paramPhoneControllerListener, int paramInt1, long paramLong, String paramString, GroupUserInfo[] paramArrayOfGroupUserInfo, int paramInt2, int paramInt3) {}
  
  public void execute(PhoneControllerDelegate paramPhoneControllerDelegate)
  {
    paramPhoneControllerDelegate.onGroupInfo(this.val$seq, this.val$groupId, this.val$groupName, this.val$members, this.val$flags, this.val$status);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.jni.PhoneControllerListener.37
 * JD-Core Version:    0.7.0.1
 */