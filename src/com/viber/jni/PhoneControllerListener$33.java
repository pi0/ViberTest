package com.viber.jni;

import com.viber.jni.controller.ControllerListener.ControllerListenerAction;

class PhoneControllerListener$33
  implements ControllerListener.ControllerListenerAction<PhoneControllerDelegate>
{
  PhoneControllerListener$33(PhoneControllerListener paramPhoneControllerListener, long paramLong1, String paramString1, long paramLong2, String paramString2, String paramString3, long paramLong3, int paramInt1, int paramInt2, LocationInfo paramLocationInfo, String paramString4, int paramInt3) {}
  
  public void execute(PhoneControllerDelegate paramPhoneControllerDelegate)
  {
    paramPhoneControllerDelegate.onTextReceivedFromGroup(this.val$groupId, this.val$groupName, this.val$msgToken, this.val$fromNumber, this.val$text, this.val$timeSent, this.val$flags, this.val$msgSeq, this.val$location, this.val$clientName, this.val$messageId);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.jni.PhoneControllerListener.33
 * JD-Core Version:    0.7.0.1
 */