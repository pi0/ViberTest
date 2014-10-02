package com.viber.jni;

import com.viber.jni.controller.PhoneController;
import com.viber.jni.controller.PhoneControllerCaller.MultiCallerCallback;

class PhoneControllerWrapper$7
  implements PhoneControllerCaller.MultiCallerCallback<PhoneController>
{
  PhoneControllerWrapper$7(PhoneControllerWrapper paramPhoneControllerWrapper, String paramString) {}
  
  public boolean call(PhoneController paramPhoneController)
  {
    return paramPhoneController.handleUpdateUserName(this.val$NewName);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.jni.PhoneControllerWrapper.7
 * JD-Core Version:    0.7.0.1
 */