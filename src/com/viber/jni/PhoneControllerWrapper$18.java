package com.viber.jni;

import com.viber.jni.controller.PhoneController;
import com.viber.jni.controller.PhoneControllerCaller.MultiCallerCallback;

class PhoneControllerWrapper$18
  implements PhoneControllerCaller.MultiCallerCallback<PhoneController>
{
  PhoneControllerWrapper$18(PhoneControllerWrapper paramPhoneControllerWrapper, String paramString, long paramLong, int paramInt) {}
  
  public boolean call(PhoneController paramPhoneController)
  {
    return paramPhoneController.handleSyncConversation(this.val$peerNum, this.val$lastMessageToken, this.val$multDevState);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.jni.PhoneControllerWrapper.18
 * JD-Core Version:    0.7.0.1
 */