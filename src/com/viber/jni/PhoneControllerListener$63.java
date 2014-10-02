package com.viber.jni;

import com.viber.jni.controller.ControllerListener.ControllerListenerAction;

class PhoneControllerListener$63
  implements ControllerListener.ControllerListenerAction<PhoneControllerDelegate>
{
  PhoneControllerListener$63(PhoneControllerListener paramPhoneControllerListener, long paramLong1, String paramString1, long paramLong2, String paramString2, byte[] paramArrayOfByte, long paramLong3, int paramInt1, int paramInt2, LocationInfo paramLocationInfo, String paramString3, String paramString4, int paramInt3) {}
  
  public void execute(PhoneControllerDelegate paramPhoneControllerDelegate)
  {
    paramPhoneControllerDelegate.onAnimatedMessageReceivedFromGroup(this.val$groupId, this.val$groupName, this.val$messageToken, this.val$fromNumber, this.val$thumbnail, this.val$timeSent, this.val$flags, this.val$messageSeq, this.val$location, this.val$msgInfo, this.val$clientName, this.val$messageId);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.jni.PhoneControllerListener.63
 * JD-Core Version:    0.7.0.1
 */