package com.viber.jni;

import com.viber.jni.controller.PhoneController;
import com.viber.jni.controller.PhoneControllerCaller.MultiCallerCallback;

class PhoneControllerWrapper$20
  implements PhoneControllerCaller.MultiCallerCallback<PhoneController>
{
  PhoneControllerWrapper$20(PhoneControllerWrapper paramPhoneControllerWrapper, int paramInt, boolean paramBoolean) {}
  
  public boolean call(PhoneController paramPhoneController)
  {
    return paramPhoneController.handleSendRegisteredNumbersAck(this.val$ackSequence, this.val$joinMsg);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.jni.PhoneControllerWrapper.20
 * JD-Core Version:    0.7.0.1
 */