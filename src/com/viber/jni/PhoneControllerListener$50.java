package com.viber.jni;

import com.viber.jni.controller.ControllerListener.ControllerListenerAction;

class PhoneControllerListener$50
  implements ControllerListener.ControllerListenerAction<PhoneControllerDelegate>
{
  PhoneControllerListener$50(PhoneControllerListener paramPhoneControllerListener, String paramString, long paramLong, int paramInt) {}
  
  public void execute(PhoneControllerDelegate paramPhoneControllerDelegate)
  {
    paramPhoneControllerDelegate.onSyncConversationReply(this.val$peerNum, this.val$lastMessageToken, this.val$Status);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.jni.PhoneControllerListener.50
 * JD-Core Version:    0.7.0.1
 */