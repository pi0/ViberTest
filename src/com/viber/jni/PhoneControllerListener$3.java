package com.viber.jni;

import com.viber.jni.controller.ControllerListener.ControllerListenerAction;

class PhoneControllerListener$3
  implements ControllerListener.ControllerListenerAction<PhoneControllerDelegate>
{
  PhoneControllerListener$3(PhoneControllerListener paramPhoneControllerListener, long paramLong, String paramString1, int paramInt1, int paramInt2, String paramString2) {}
  
  public void execute(PhoneControllerDelegate paramPhoneControllerDelegate)
  {
    paramPhoneControllerDelegate.onCallMissed(this.val$callToken, this.val$originPhoneNumber, this.val$numMissed, this.val$numMissedOther, this.val$clientName);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.jni.PhoneControllerListener.3
 * JD-Core Version:    0.7.0.1
 */