package com.viber.jni;

import com.viber.jni.controller.PhoneController;
import com.viber.jni.controller.PhoneControllerCaller.MultiCallerCallback;

class PhoneControllerWrapper$19
  implements PhoneControllerCaller.MultiCallerCallback<PhoneController>
{
  PhoneControllerWrapper$19(PhoneControllerWrapper paramPhoneControllerWrapper, String paramString, long paramLong, int paramInt) {}
  
  public boolean call(PhoneController paramPhoneController)
  {
    return paramPhoneController.handleSendSyncConversationAck(this.val$peerNum, this.val$lastMessageToken, this.val$multDevState);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.jni.PhoneControllerWrapper.19
 * JD-Core Version:    0.7.0.1
 */