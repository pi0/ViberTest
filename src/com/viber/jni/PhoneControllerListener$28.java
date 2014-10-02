package com.viber.jni;

import com.viber.jni.controller.ControllerListener.ControllerListenerAction;

class PhoneControllerListener$28
  implements ControllerListener.ControllerListenerAction<PhoneControllerDelegate>
{
  PhoneControllerListener$28(PhoneControllerListener paramPhoneControllerListener, long paramLong1, String paramString1, byte[] paramArrayOfByte, long paramLong2, int paramInt1, int paramInt2, LocationInfo paramLocationInfo, int paramInt3, String paramString2, String paramString3, String paramString4, String paramString5) {}
  
  public void execute(PhoneControllerDelegate paramPhoneControllerDelegate)
  {
    paramPhoneControllerDelegate.onMediaReceived(this.val$messageToken, this.val$fromNumber, this.val$thumbnail, this.val$timeStamp, this.val$flags, this.val$messageSeq, this.val$location, this.val$mediaType, this.val$bucketName, this.val$downloadID, this.val$clientName, this.val$description);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.jni.PhoneControllerListener.28
 * JD-Core Version:    0.7.0.1
 */