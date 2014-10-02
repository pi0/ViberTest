package com.viber.jni;

import com.viber.jni.controller.PhoneController;
import com.viber.jni.controller.PhoneControllerCaller.MultiCallerCallback;

class PhoneControllerWrapper$17
  implements PhoneControllerCaller.MultiCallerCallback<PhoneController>
{
  PhoneControllerWrapper$17(PhoneControllerWrapper paramPhoneControllerWrapper, long paramLong1, long paramLong2, int paramInt) {}
  
  public boolean call(PhoneController paramPhoneController)
  {
    return paramPhoneController.handleSendSyncGroupAck(this.val$groupId, this.val$lastMessageToken, this.val$multDevState);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.jni.PhoneControllerWrapper.17
 * JD-Core Version:    0.7.0.1
 */