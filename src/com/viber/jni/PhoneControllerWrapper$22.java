package com.viber.jni;

import com.viber.jni.controller.PhoneController;
import com.viber.jni.controller.PhoneControllerCaller.MultiCallerCallback;

class PhoneControllerWrapper$22
  implements PhoneControllerCaller.MultiCallerCallback<PhoneController>
{
  PhoneControllerWrapper$22(PhoneControllerWrapper paramPhoneControllerWrapper, long paramLong) {}
  
  public boolean call(PhoneController paramPhoneController)
  {
    return paramPhoneController.handleSendUpdateSelfUserDetailsAck(this.val$token);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.jni.PhoneControllerWrapper.22
 * JD-Core Version:    0.7.0.1
 */