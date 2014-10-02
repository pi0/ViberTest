package com.viber.jni;

import com.viber.jni.controller.PhoneController;
import com.viber.jni.controller.PhoneControllerCaller.MultiCallerCallback;

class PhoneControllerWrapper$4
  implements PhoneControllerCaller.MultiCallerCallback<PhoneController>
{
  PhoneControllerWrapper$4(PhoneControllerWrapper paramPhoneControllerWrapper, int paramInt, String[] paramArrayOfString, String paramString) {}
  
  public boolean call(PhoneController paramPhoneController)
  {
    return paramPhoneController.handleCreateGroup(this.val$context, this.val$members, this.val$groupName);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.jni.PhoneControllerWrapper.4
 * JD-Core Version:    0.7.0.1
 */