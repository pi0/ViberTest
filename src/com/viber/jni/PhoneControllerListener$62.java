package com.viber.jni;

import com.viber.jni.controller.ControllerListener.ControllerListenerAction;

class PhoneControllerListener$62
  implements ControllerListener.ControllerListenerAction<PhoneControllerDelegate>
{
  PhoneControllerListener$62(PhoneControllerListener paramPhoneControllerListener, long paramLong1, String paramString1, byte[] paramArrayOfByte, long paramLong2, int paramInt1, int paramInt2, LocationInfo paramLocationInfo, String paramString2, String paramString3) {}
  
  public void execute(PhoneControllerDelegate paramPhoneControllerDelegate)
  {
    paramPhoneControllerDelegate.onAnimatedMessageReceived(this.val$messageToken, this.val$fromNumber, this.val$thumbnail, this.val$timeSent, this.val$flags, this.val$messageSeq, this.val$location, this.val$msgInfo, this.val$clientName);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.jni.PhoneControllerListener.62
 * JD-Core Version:    0.7.0.1
 */