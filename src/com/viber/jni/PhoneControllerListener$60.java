package com.viber.jni;

import com.viber.jni.controller.ControllerListener.ControllerListenerAction;

class PhoneControllerListener$60
  implements ControllerListener.ControllerListenerAction<PhoneControllerDelegate>
{
  PhoneControllerListener$60(PhoneControllerListener paramPhoneControllerListener, RecoveryGroupInfo[] paramArrayOfRecoveryGroupInfo, PublicGroupInfo[] paramArrayOfPublicGroupInfo, String paramString, int paramInt1, int paramInt2, boolean paramBoolean) {}
  
  public void execute(PhoneControllerDelegate paramPhoneControllerDelegate)
  {
    paramPhoneControllerDelegate.onRecoverGroups(this.val$recoveryGroupInfo, this.val$publicGroupInfo, this.val$myEncryptedNumber, this.val$status, this.val$chunkSeq, this.val$lastChunk);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.jni.PhoneControllerListener.60
 * JD-Core Version:    0.7.0.1
 */