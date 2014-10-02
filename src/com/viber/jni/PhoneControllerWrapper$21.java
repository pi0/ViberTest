package com.viber.jni;

import com.viber.jni.controller.PhoneController;
import com.viber.jni.controller.PhoneControllerCaller.MultiCallerCallback;

class PhoneControllerWrapper$21
  implements PhoneControllerCaller.MultiCallerCallback<PhoneController>
{
  PhoneControllerWrapper$21(PhoneControllerWrapper paramPhoneControllerWrapper, long[] paramArrayOfLong) {}
  
  public boolean call(PhoneController paramPhoneController)
  {
    return paramPhoneController.handleSendMissedCallsAck(this.val$tokens);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.jni.PhoneControllerWrapper.21
 * JD-Core Version:    0.7.0.1
 */