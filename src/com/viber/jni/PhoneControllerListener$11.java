package com.viber.jni;

import com.viber.jni.controller.ControllerListener.ControllerListenerAction;

class PhoneControllerListener$11
  implements ControllerListener.ControllerListenerAction<PhoneControllerDelegate>
{
  PhoneControllerListener$11(PhoneControllerListener paramPhoneControllerListener, CGetUserDetails[] paramArrayOfCGetUserDetails) {}
  
  public void execute(PhoneControllerDelegate paramPhoneControllerDelegate)
  {
    paramPhoneControllerDelegate.onGetUsersDetail(this.val$users);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.jni.PhoneControllerListener.11
 * JD-Core Version:    0.7.0.1
 */