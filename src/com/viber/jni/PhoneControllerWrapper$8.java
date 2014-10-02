package com.viber.jni;

import com.viber.jni.controller.PhoneController;
import com.viber.jni.controller.PhoneControllerCaller.MultiCallerCallback;

class PhoneControllerWrapper$8
  implements PhoneControllerCaller.MultiCallerCallback<PhoneController>
{
  PhoneControllerWrapper$8(PhoneControllerWrapper paramPhoneControllerWrapper, String[] paramArrayOfString) {}
  
  public boolean call(PhoneController paramPhoneController)
  {
    return paramPhoneController.handleGetUsersDetail(this.val$UsersPhone);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.jni.PhoneControllerWrapper.8
 * JD-Core Version:    0.7.0.1
 */