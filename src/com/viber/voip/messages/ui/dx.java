package com.viber.voip.messages.ui;

import com.viber.jni.PhoneControllerWrapper;
import com.viber.jni.PhoneControllerWrapper.InitializedListener;
import com.viber.jni.controller.PhoneController;
import com.viber.voip.ViberApplication;

class dx
  implements PhoneControllerWrapper.InitializedListener
{
  dx(PttViewController paramPttViewController) {}
  
  public void initialized(PhoneController paramPhoneController)
  {
    PttViewController.a(this.a, ViberApplication.getInstance().getPhoneController(false).getPttController());
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.messages.ui.dx
 * JD-Core Version:    0.7.0.1
 */