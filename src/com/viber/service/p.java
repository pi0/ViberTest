package com.viber.service;

import android.content.Intent;
import com.viber.jni.PhoneControllerWrapper;
import com.viber.voip.ViberApplication;

class p
  implements Runnable
{
  p(n paramn) {}
  
  public void run()
  {
    VoipConnectorService.a(this.a.a, "KeepAlive received , sendind KA");
    this.a.a.startService(new Intent("com.viber.voip.action.VIBER_SERVICE"));
    ViberApplication.getInstance().getPhoneController(false).addInitializedListener(new q(this));
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.service.p
 * JD-Core Version:    0.7.0.1
 */