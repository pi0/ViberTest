package com.viber.jni;

import com.viber.jni.controller.ControllerListener.ControllerListenerAction;

class PhoneControllerListener$19
  implements ControllerListener.ControllerListenerAction<PhoneControllerDelegate>
{
  PhoneControllerListener$19(PhoneControllerListener paramPhoneControllerListener, int paramInt, boolean paramBoolean) {}
  
  public void execute(PhoneControllerDelegate paramPhoneControllerDelegate)
  {
    paramPhoneControllerDelegate.onGSMCallStateChanged(this.val$state, this.val$active_call);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.jni.PhoneControllerListener.19
 * JD-Core Version:    0.7.0.1
 */