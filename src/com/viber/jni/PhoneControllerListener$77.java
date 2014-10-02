package com.viber.jni;

import com.viber.jni.controller.ControllerListener.ControllerListenerAction;

class PhoneControllerListener$77
  implements ControllerListener.ControllerListenerAction<PhoneControllerDelegate>
{
  PhoneControllerListener$77(PhoneControllerListener paramPhoneControllerListener, String paramString, int paramInt1, int paramInt2, int paramInt3) {}
  
  public void execute(PhoneControllerDelegate paramPhoneControllerDelegate)
  {
    paramPhoneControllerDelegate.onAuthenticateAppReply(this.val$token, this.val$status, this.val$appId, this.val$seq);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.jni.PhoneControllerListener.77
 * JD-Core Version:    0.7.0.1
 */