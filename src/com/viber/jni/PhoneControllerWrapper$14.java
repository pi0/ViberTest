package com.viber.jni;

import com.viber.jni.controller.PhoneController;
import com.viber.jni.controller.PhoneControllerCaller.MultiCallerCallback;

class PhoneControllerWrapper$14
  implements PhoneControllerCaller.MultiCallerCallback<PhoneController>
{
  PhoneControllerWrapper$14(PhoneControllerWrapper paramPhoneControllerWrapper) {}
  
  public boolean call(PhoneController paramPhoneController)
  {
    return paramPhoneController.handleRecoverGroups();
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.jni.PhoneControllerWrapper.14
 * JD-Core Version:    0.7.0.1
 */