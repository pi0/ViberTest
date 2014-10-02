package com.viber.voip.registration;

import com.viber.jni.PhoneControllerWrapper.InitializedListener;
import com.viber.jni.controller.PhoneController;
import com.viber.voip.ViberApplication;
import com.viber.voip.e.u;
import com.viber.voip.phone.v;

class ah
  implements PhoneControllerWrapper.InitializedListener
{
  ah(ag paramag, ViberApplication paramViberApplication) {}
  
  public void initialized(PhoneController paramPhoneController)
  {
    this.a.getPhoneApp().a().c();
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.registration.ah
 * JD-Core Version:    0.7.0.1
 */