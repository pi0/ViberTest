package com.viber.voip.util;

import com.viber.jni.PhoneControllerWrapper.InitializedListener;
import com.viber.jni.controller.PhoneController;

final class hf
  implements PhoneControllerWrapper.InitializedListener
{
  hf(String paramString) {}
  
  public void initialized(PhoneController paramPhoneController)
  {
    paramPhoneController.isRegisteredNumber(this.a);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.util.hf
 * JD-Core Version:    0.7.0.1
 */