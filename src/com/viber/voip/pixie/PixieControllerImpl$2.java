package com.viber.voip.pixie;

import com.viber.jni.PhoneControllerReadyListener;
import com.viber.jni.PhoneControllerWrapper;
import com.viber.jni.controller.PhoneController;
import com.viber.voip.ViberApplication;

class PixieControllerImpl$2
  implements PhoneControllerReadyListener
{
  PixieControllerImpl$2(PixieControllerImpl paramPixieControllerImpl) {}
  
  public void ready(PhoneController paramPhoneController)
  {
    ViberApplication.log(3, PixieControllerImpl.access$000(), "Pixie: phone controller ready calling native setPixieBundle()");
    PixieControllerImpl.access$200(this.this$0).setPixieBundle(PixieControllerImpl.access$400(this.this$0).getEdgeProxyBundle());
    PixieControllerImpl.access$200(this.this$0).removeReadyListener(this);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.pixie.PixieControllerImpl.2
 * JD-Core Version:    0.7.0.1
 */