package com.viber.jni;

import com.viber.jni.controller.ControllerListener.ControllerListenerAction;

class PhoneControllerListener$34
  implements ControllerListener.ControllerListenerAction<PhoneControllerDelegate>
{
  PhoneControllerListener$34(PhoneControllerListener paramPhoneControllerListener, long paramLong1, String paramString1, long paramLong2, String paramString2, byte[] paramArrayOfByte, long paramLong3, int paramInt1, int paramInt2, LocationInfo paramLocationInfo, int paramInt3, String paramString3, String paramString4, String paramString5, String paramString6, int paramInt4) {}
  
  public void execute(PhoneControllerDelegate paramPhoneControllerDelegate)
  {
    paramPhoneControllerDelegate.onMediaReceivedFromGroup(this.val$groupId, this.val$groupName, this.val$msgToken, this.val$fromNumber, this.val$thumbnail, this.val$timeSent, this.val$flags, this.val$msgSeq, this.val$location, this.val$mediaType, this.val$bucketName, this.val$downloadId, this.val$clientName, this.val$description, this.val$messageId);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.jni.PhoneControllerListener.34
 * JD-Core Version:    0.7.0.1
 */