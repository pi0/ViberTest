package com.viber.jni;

import com.viber.jni.controller.ControllerListener.ControllerListenerAction;

class PhoneControllerListener$57
  implements ControllerListener.ControllerListenerAction<PhoneControllerDelegate>
{
  PhoneControllerListener$57(PhoneControllerListener paramPhoneControllerListener, long[] paramArrayOfLong1, long[] paramArrayOfLong2) {}
  
  public void execute(PhoneControllerDelegate paramPhoneControllerDelegate)
  {
    paramPhoneControllerDelegate.onSyncMessages(this.val$readToken, this.val$deletedTokens);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.jni.PhoneControllerListener.57
 * JD-Core Version:    0.7.0.1
 */