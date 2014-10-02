package com.viber.voip.registration;

import android.os.Handler;
import com.viber.jni.PhoneControllerWrapper;
import com.viber.jni.PhoneControllerWrapper.InitializedListener;
import com.viber.jni.controller.PhoneController;
import com.viber.voip.ViberApplication;
import com.viber.voip.contacts.c.a;

class e
  implements PhoneControllerWrapper.InitializedListener
{
  e(ActivationController paramActivationController) {}
  
  public void initialized(PhoneController paramPhoneController)
  {
    if (paramPhoneController.isConnected())
    {
      a.a(new f(this));
      return;
    }
    ActivationController.access$300(this.a).getPhoneController(false).registerDelegate(ActivationController.access$200(this.a));
    ActivationController.access$500(this.a).postDelayed(ActivationController.access$400(this.a), 10000L);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.registration.e
 * JD-Core Version:    0.7.0.1
 */