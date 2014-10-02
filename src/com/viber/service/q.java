package com.viber.service;

import com.viber.jni.PhoneControllerWrapper.InitializedListener;
import com.viber.jni.controller.PhoneController;

class q
  implements PhoneControllerWrapper.InitializedListener
{
  q(p paramp) {}
  
  public void initialized(PhoneController paramPhoneController)
  {
    paramPhoneController.sendKA();
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.service.q
 * JD-Core Version:    0.7.0.1
 */