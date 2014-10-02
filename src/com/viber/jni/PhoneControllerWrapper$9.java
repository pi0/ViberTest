package com.viber.jni;

import com.viber.jni.controller.PhoneController;
import com.viber.jni.controller.PhoneControllerCaller.MultiCallerCallback;

class PhoneControllerWrapper$9
  implements PhoneControllerCaller.MultiCallerCallback<PhoneController>
{
  PhoneControllerWrapper$9(PhoneControllerWrapper paramPhoneControllerWrapper, String paramString) {}
  
  public boolean call(PhoneController paramPhoneController)
  {
    return paramPhoneController.updateData(this.val$pushToken);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.jni.PhoneControllerWrapper.9
 * JD-Core Version:    0.7.0.1
 */