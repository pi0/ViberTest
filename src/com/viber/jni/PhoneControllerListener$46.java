package com.viber.jni;

import com.viber.jni.controller.ControllerListener.ControllerListenerAction;

class PhoneControllerListener$46
  implements ControllerListener.ControllerListenerAction<PhoneControllerDelegate>
{
  PhoneControllerListener$46(PhoneControllerListener paramPhoneControllerListener, long paramLong, boolean paramBoolean1, boolean paramBoolean2) {}
  
  public void execute(PhoneControllerDelegate paramPhoneControllerDelegate)
  {
    paramPhoneControllerDelegate.onMuteGroupReply(this.val$GroupID, this.val$Mute, this.val$IsOK);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.jni.PhoneControllerListener.46
 * JD-Core Version:    0.7.0.1
 */