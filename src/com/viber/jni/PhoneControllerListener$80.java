package com.viber.jni;

import com.viber.jni.controller.ControllerListener.ControllerListenerAction;

class PhoneControllerListener$80
  implements ControllerListener.ControllerListenerAction<PhoneControllerDelegate>
{
  PhoneControllerListener$80(PhoneControllerListener paramPhoneControllerListener, int paramInt1, PublicGroupInfo[] paramArrayOfPublicGroupInfo, int paramInt2) {}
  
  public void execute(PhoneControllerDelegate paramPhoneControllerDelegate)
  {
    paramPhoneControllerDelegate.onSearchPublicGroups(this.val$seq, this.val$publicGroupInfos, this.val$status);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.jni.PhoneControllerListener.80
 * JD-Core Version:    0.7.0.1
 */