package com.viber.jni;

import com.viber.jni.controller.PhoneController;
import com.viber.jni.controller.PhoneControllerCaller.MultiCallerCallback;

class PhoneControllerWrapper$5
  implements PhoneControllerCaller.MultiCallerCallback<PhoneController>
{
  PhoneControllerWrapper$5(PhoneControllerWrapper paramPhoneControllerWrapper, long paramLong) {}
  
  public boolean call(PhoneController paramPhoneController)
  {
    return paramPhoneController.handleGroupLeave(this.val$groupId);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.jni.PhoneControllerWrapper.5
 * JD-Core Version:    0.7.0.1
 */