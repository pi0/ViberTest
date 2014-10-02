package com.viber.jni;

import com.viber.jni.controller.ControllerListener.ControllerListenerAction;

class PhoneControllerListener$47
  implements ControllerListener.ControllerListenerAction<PhoneControllerDelegate>
{
  PhoneControllerListener$47(PhoneControllerListener paramPhoneControllerListener, long paramLong, String paramString1, String paramString2) {}
  
  public void execute(PhoneControllerDelegate paramPhoneControllerDelegate)
  {
    paramPhoneControllerDelegate.onUserInfoChange(this.val$MessageToken, this.val$ClientName, this.val$PhotoDownloadID);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.jni.PhoneControllerListener.47
 * JD-Core Version:    0.7.0.1
 */