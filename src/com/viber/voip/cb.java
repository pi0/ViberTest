package com.viber.voip;

import com.viber.voip.registration.ActivationController;

class cb
  implements Runnable
{
  cb(SystemDialogActivity paramSystemDialogActivity) {}
  
  public void run()
  {
    ViberApplication.getInstance().setActivated(false);
    ViberApplication.getInstance().getActivationController().resumeActivation();
    this.a.finish();
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.cb
 * JD-Core Version:    0.7.0.1
 */