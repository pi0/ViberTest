package com.viber.jni;

import com.viber.jni.controller.PhoneController;
import com.viber.jni.controller.PhoneControllerCaller.MultiCallerCallback;

class PhoneControllerWrapper$16
  implements PhoneControllerCaller.MultiCallerCallback<PhoneController>
{
  PhoneControllerWrapper$16(PhoneControllerWrapper paramPhoneControllerWrapper, long[] paramArrayOfLong1, long[] paramArrayOfLong2) {}
  
  public boolean call(PhoneController paramPhoneController)
  {
    return paramPhoneController.handleSendSyncMessagesAck(this.val$ackedReadTokens, this.val$ackedDeletedTokens);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.jni.PhoneControllerWrapper.16
 * JD-Core Version:    0.7.0.1
 */