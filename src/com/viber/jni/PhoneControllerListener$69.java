package com.viber.jni;

import com.viber.jni.controller.ControllerListener.ControllerListenerAction;
import java.util.Map;

class PhoneControllerListener$69
  implements ControllerListener.ControllerListenerAction<PhoneControllerDelegate>
{
  PhoneControllerListener$69(PhoneControllerListener paramPhoneControllerListener, long paramLong1, int paramInt1, long paramLong2, int paramInt2, String[] paramArrayOfString, Map paramMap, int paramInt3, int paramInt4) {}
  
  public void execute(PhoneControllerDelegate paramPhoneControllerDelegate)
  {
    paramPhoneControllerDelegate.onGroupAddMembers(this.val$groupId, this.val$seq, this.val$token, this.val$messageId, this.val$members, this.val$notAddedMembers, this.val$status, this.val$revision);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.jni.PhoneControllerListener.69
 * JD-Core Version:    0.7.0.1
 */