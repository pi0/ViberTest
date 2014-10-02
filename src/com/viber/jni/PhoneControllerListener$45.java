package com.viber.jni;

import com.viber.jni.controller.ControllerListener.ControllerListenerAction;

class PhoneControllerListener$45
  implements ControllerListener.ControllerListenerAction<PhoneControllerDelegate>
{
  PhoneControllerListener$45(PhoneControllerListener paramPhoneControllerListener, String paramString, boolean paramBoolean1, boolean paramBoolean2) {}
  
  public void execute(PhoneControllerDelegate paramPhoneControllerDelegate)
  {
    paramPhoneControllerDelegate.onChangeConversationSettingsReply(this.val$PeerPhoneNum, this.val$SmartNotifications, this.val$IsOK);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.jni.PhoneControllerListener.45
 * JD-Core Version:    0.7.0.1
 */