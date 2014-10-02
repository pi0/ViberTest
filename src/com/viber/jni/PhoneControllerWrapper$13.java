package com.viber.jni;

import com.viber.jni.controller.PhoneController;
import com.viber.jni.controller.PhoneControllerCaller.MultiCallerCallback;

class PhoneControllerWrapper$13
  implements PhoneControllerCaller.MultiCallerCallback<PhoneController>
{
  PhoneControllerWrapper$13(PhoneControllerWrapper paramPhoneControllerWrapper, long paramLong1, long paramLong2, int paramInt) {}
  
  public boolean call(PhoneController paramPhoneController)
  {
    return paramPhoneController.handleSyncGroup(this.val$groupId, this.val$lastMessageToken, this.val$multDevState);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.jni.PhoneControllerWrapper.13
 * JD-Core Version:    0.7.0.1
 */