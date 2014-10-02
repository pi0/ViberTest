package com.viber.voip.pixie;

import com.viber.jni.PhoneControllerWrapper;
import com.viber.voip.ViberApplication;

class PixieControllerImpl$4
  implements PixieServices.PixieServicesCallback
{
  PixieControllerImpl$4(PixieControllerImpl paramPixieControllerImpl) {}
  
  public void onNewActivationFileLoaded()
  {
    ViberApplication.log(3, PixieControllerImpl.access$000(), "Pixie: Activation list refreshed.");
    PixieControllerImpl.access$1000(this.this$0, true);
  }
  
  public void onNewEdgeListLoaded()
  {
    ViberApplication.log(3, PixieControllerImpl.access$000(), "Pixie: Edge proxy list refreshed. Alerting native.");
    PixieControllerImpl.access$200(this.this$0).addReadyListener(PixieControllerImpl.access$900(this.this$0));
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.pixie.PixieControllerImpl.4
 * JD-Core Version:    0.7.0.1
 */