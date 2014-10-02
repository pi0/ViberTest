package com.viber.voip.registration;

import com.viber.jni.PhoneControllerWrapper;
import com.viber.voip.ViberApplication;
import com.viber.voip.user.UserData;

class g
  implements Runnable
{
  g(ActivationController paramActivationController) {}
  
  public void run()
  {
    ActivationController.access$100("resumeActivation waitServiceConnectedTimeout");
    ActivationController.access$300(this.a).getPhoneController(false).removeDelegate(ActivationController.access$200(this.a));
    UserData.setNeedSyncUserInfo(true);
    this.a.setStep(8, true);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.registration.g
 * JD-Core Version:    0.7.0.1
 */