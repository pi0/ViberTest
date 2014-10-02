package com.viber.jni;

import com.viber.jni.controller.ControllerListener.ControllerListenerAction;

class PhoneControllerListener$48
  implements ControllerListener.ControllerListenerAction<PhoneControllerDelegate>
{
  PhoneControllerListener$48(PhoneControllerListener paramPhoneControllerListener, long paramLong, String paramString1, String paramString2, int paramInt) {}
  
  public void execute(PhoneControllerDelegate paramPhoneControllerDelegate)
  {
    paramPhoneControllerDelegate.onHandleSelfDetails(this.val$token, this.val$Name, this.val$DownloadId, this.val$Flags);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.jni.PhoneControllerListener.48
 * JD-Core Version:    0.7.0.1
 */