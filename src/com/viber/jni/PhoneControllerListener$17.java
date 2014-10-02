package com.viber.jni;

import com.viber.jni.controller.ControllerListener.ControllerListenerAction;

class PhoneControllerListener$17
  implements ControllerListener.ControllerListenerAction<PhoneControllerDelegate>
{
  PhoneControllerListener$17(PhoneControllerListener paramPhoneControllerListener, int paramInt, String paramString) {}
  
  public void execute(PhoneControllerDelegate paramPhoneControllerDelegate)
  {
    paramPhoneControllerDelegate.onGSMStateChange(this.val$gsmState, this.val$phoneNumber);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.jni.PhoneControllerListener.17
 * JD-Core Version:    0.7.0.1
 */