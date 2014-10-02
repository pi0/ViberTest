package com.viber.jni;

import com.viber.jni.controller.PhoneController;
import com.viber.jni.controller.PhoneControllerCaller.MultiCallerCallback;

class PhoneControllerWrapper$12
  implements PhoneControllerCaller.MultiCallerCallback<PhoneController>
{
  PhoneControllerWrapper$12(PhoneControllerWrapper paramPhoneControllerWrapper, long paramLong1, byte[] paramArrayOfByte1, byte[] paramArrayOfByte2, int paramInt1, int paramInt2, long paramLong2, LocationInfo paramLocationInfo, String paramString1, int paramInt3, boolean paramBoolean, int paramInt4, String paramString2, String paramString3) {}
  
  public boolean call(PhoneController paramPhoneController)
  {
    return paramPhoneController.handleSendMediaToGroup(this.val$groupId, this.val$thumbnail, this.val$largeThumbnail, this.val$mediaType, this.val$msgSeq, this.val$objId, this.val$location, this.val$description, this.val$doodleFlag, this.val$resending, this.val$forwarded, this.val$downloadID, this.val$bucket);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.jni.PhoneControllerWrapper.12
 * JD-Core Version:    0.7.0.1
 */