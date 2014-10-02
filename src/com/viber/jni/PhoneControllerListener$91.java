package com.viber.jni;

import com.viber.jni.controller.ControllerListener.ControllerListenerAction;
import java.util.Map;

class PhoneControllerListener$91
  implements ControllerListener.ControllerListenerAction<PhoneControllerDelegate>
{
  PhoneControllerListener$91(PhoneControllerListener paramPhoneControllerListener, Map paramMap, int paramInt) {}
  
  public void execute(PhoneControllerDelegate paramPhoneControllerDelegate)
  {
    paramPhoneControllerDelegate.onGetUserActivity(this.val$contactsActivity, this.val$seq);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.jni.PhoneControllerListener.91
 * JD-Core Version:    0.7.0.1
 */