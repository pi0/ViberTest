package com.viber.jni;

import com.viber.jni.controller.ControllerListener.ControllerListenerAction;

class PhoneControllerListener$65
  implements ControllerListener.ControllerListenerAction<PhoneControllerDelegate>
{
  PhoneControllerListener$65(PhoneControllerListener paramPhoneControllerListener, long paramLong1, String paramString1, long paramLong2, String paramString2, byte[] paramArrayOfByte, long paramLong3, int paramInt1, int paramInt2, LocationInfo paramLocationInfo, int paramInt3, String paramString3, String paramString4, String paramString5, String paramString6, int paramInt4) {}
  
  public void execute(PhoneControllerDelegate paramPhoneControllerDelegate)
  {
    paramPhoneControllerDelegate.onVideoReceivedFromGroup(this.val$groupId, this.val$groupName, this.val$messageToken, this.val$fromNumber, this.val$thumbnail, this.val$timeStamp, this.val$flags, this.val$messageSeq, this.val$location, this.val$duration, this.val$bucketName, this.val$downloadId, this.val$description, this.val$clientName, this.val$messageId);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.jni.PhoneControllerListener.65
 * JD-Core Version:    0.7.0.1
 */