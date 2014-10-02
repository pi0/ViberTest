package com.viber.jni;

import com.viber.jni.controller.PhoneController;
import com.viber.jni.controller.PhoneControllerCaller.MultiCallerCallback;

class PhoneControllerWrapper$6
  implements PhoneControllerCaller.MultiCallerCallback<PhoneController>
{
  PhoneControllerWrapper$6(PhoneControllerWrapper paramPhoneControllerWrapper, long paramLong) {}
  
  public boolean call(PhoneController paramPhoneController)
  {
    return paramPhoneController.handleUpdateUserPhoto(this.val$PhotoID);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.jni.PhoneControllerWrapper.6
 * JD-Core Version:    0.7.0.1
 */