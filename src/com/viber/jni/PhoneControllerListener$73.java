package com.viber.jni;

import com.viber.jni.controller.ControllerListener.ControllerListenerAction;

class PhoneControllerListener$73
  implements ControllerListener.ControllerListenerAction<PhoneControllerDelegate>
{
  PhoneControllerListener$73(PhoneControllerListener paramPhoneControllerListener, long paramLong1, long paramLong2, int paramInt, boolean paramBoolean, long paramLong3) {}
  
  public void execute(PhoneControllerDelegate paramPhoneControllerDelegate)
  {
    paramPhoneControllerDelegate.onSyncMessageLike(this.val$groupID, this.val$messageToken, this.val$messageID, this.val$like, this.val$actionToken);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.jni.PhoneControllerListener.73
 * JD-Core Version:    0.7.0.1
 */