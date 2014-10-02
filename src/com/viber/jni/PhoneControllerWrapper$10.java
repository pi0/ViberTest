package com.viber.jni;

import com.viber.jni.controller.PhoneController;
import com.viber.jni.controller.PhoneControllerCaller.MultiCallerCallback;

class PhoneControllerWrapper$10
  implements PhoneControllerCaller.MultiCallerCallback<PhoneController>
{
  PhoneControllerWrapper$10(PhoneControllerWrapper paramPhoneControllerWrapper, String paramString1, String paramString2, int paramInt1, LocationInfo paramLocationInfo, boolean paramBoolean, int paramInt2) {}
  
  public boolean call(PhoneController paramPhoneController)
  {
    return paramPhoneController.handleSendText(this.val$toNumber, this.val$text, this.val$msgToken, this.val$locationInfo, this.val$resending, this.val$forwarded);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.jni.PhoneControllerWrapper.10
 * JD-Core Version:    0.7.0.1
 */