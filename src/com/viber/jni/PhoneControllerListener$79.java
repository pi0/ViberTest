package com.viber.jni;

import com.viber.jni.controller.ControllerListener.ControllerListenerAction;

class PhoneControllerListener$79
  implements ControllerListener.ControllerListenerAction<PhoneControllerDelegate>
{
  PhoneControllerListener$79(PhoneControllerListener paramPhoneControllerListener, long paramLong1, long paramLong2, int paramInt1, int paramInt2, int paramInt3, int paramInt4) {}
  
  public void execute(PhoneControllerDelegate paramPhoneControllerDelegate)
  {
    paramPhoneControllerDelegate.onChangeGroup(this.val$groupId, this.val$actionToken, this.val$seq, this.val$messageId, this.val$revision, this.val$status);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.jni.PhoneControllerListener.79
 * JD-Core Version:    0.7.0.1
 */