package com.viber.voip.pixie;

import com.viber.jni.PhoneControllerWrapper;
import com.viber.jni.PhoneControllerWrapper.InitializedListener;
import com.viber.jni.controller.PhoneController;
import com.viber.voip.ViberApplication;

class PixieControllerImpl$3
  implements PhoneControllerWrapper.InitializedListener
{
  PixieControllerImpl$3(PixieControllerImpl paramPixieControllerImpl) {}
  
  public void initialized(PhoneController paramPhoneController)
  {
    int i = this.this$0.getPixieMode();
    ViberApplication.log(3, PixieControllerImpl.access$000(), "Pixie: phone controller initialized calling native setPixieMode( " + i + " )");
    PixieControllerImpl.access$200(this.this$0).setPixieMode(i);
    PixieControllerImpl.access$200(this.this$0).removeInitializedListener(this);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.pixie.PixieControllerImpl.3
 * JD-Core Version:    0.7.0.1
 */