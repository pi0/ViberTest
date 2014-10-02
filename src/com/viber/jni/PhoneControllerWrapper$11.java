package com.viber.jni;

import com.viber.jni.controller.PhoneController;
import com.viber.jni.controller.PhoneControllerCaller.MultiCallerCallback;

class PhoneControllerWrapper$11
  implements PhoneControllerCaller.MultiCallerCallback<PhoneController>
{
  PhoneControllerWrapper$11(PhoneControllerWrapper paramPhoneControllerWrapper, String paramString1, byte[] paramArrayOfByte1, byte[] paramArrayOfByte2, int paramInt1, int paramInt2, long paramLong, LocationInfo paramLocationInfo, String paramString2, int paramInt3, boolean paramBoolean, int paramInt4, String paramString3, String paramString4) {}
  
  public boolean call(PhoneController paramPhoneController)
  {
    return paramPhoneController.handleSendMedia(this.val$toNumber, this.val$thumbnail, this.val$largeThumbnail, this.val$mediaType, this.val$seq, this.val$objID, this.val$location, this.val$description, this.val$doodleFlag, this.val$resending, this.val$forwarded, this.val$downloadID, this.val$bucket);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.jni.PhoneControllerWrapper.11
 * JD-Core Version:    0.7.0.1
 */