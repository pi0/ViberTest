package com.viber.voip.sms;

import com.viber.jni.PhoneControllerWrapper.InitializedListener;
import com.viber.jni.controller.PhoneController;

class u
  implements PhoneControllerWrapper.InitializedListener
{
  u(t paramt) {}
  
  public void initialized(PhoneController paramPhoneController)
  {
    paramPhoneController.handleIsOnline("NVGS" + this.a.a);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.sms.u
 * JD-Core Version:    0.7.0.1
 */