package com.viber.voip;

import com.viber.voip.pixie.PixieController.PixieReadyListener;
import com.viber.voip.registration.ao;

class dm
  implements PixieController.PixieReadyListener
{
  dm(ViberApplication paramViberApplication) {}
  
  public void onReady()
  {
    ViberApplication.access$000(this.a).a();
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.dm
 * JD-Core Version:    0.7.0.1
 */