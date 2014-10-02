package com.viber.jni;

import com.viber.jni.controller.ControllerListener.ControllerListenerAction;
import java.util.Map;

class PhoneControllerListener$6
  implements ControllerListener.ControllerListenerAction<PhoneControllerDelegate>
{
  PhoneControllerListener$6(PhoneControllerListener paramPhoneControllerListener, boolean paramBoolean1, boolean paramBoolean2, Map paramMap, int paramInt1, boolean paramBoolean3, String paramString1, String paramString2, int paramInt2, int paramInt3) {}
  
  public void execute(PhoneControllerDelegate paramPhoneControllerDelegate)
  {
    paramPhoneControllerDelegate.onRegisteredNumbers(this.val$clearAll, this.val$lastPortion, this.val$registeredNumbers, this.val$seq, this.val$isJoin, this.val$joinedName, this.val$joinedSystem, this.val$ackSequence, this.val$aBVersion);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.jni.PhoneControllerListener.6
 * JD-Core Version:    0.7.0.1
 */