package com.viber.jni;

import com.viber.jni.controller.PhoneController;
import com.viber.jni.controller.PhoneControllerCaller.MultiCallerCallback;

class PhoneControllerWrapper$15
  implements PhoneControllerCaller.MultiCallerCallback<PhoneController>
{
  PhoneControllerWrapper$15(PhoneControllerWrapper paramPhoneControllerWrapper, ConversationToken[] paramArrayOfConversationToken, GroupToken[] paramArrayOfGroupToken, int paramInt) {}
  
  public boolean call(PhoneController paramPhoneController)
  {
    return paramPhoneController.handleSyncDeletedMessages(this.val$deletedConversationTokens, this.val$deletedGroupTokens, this.val$sequence);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.jni.PhoneControllerWrapper.15
 * JD-Core Version:    0.7.0.1
 */