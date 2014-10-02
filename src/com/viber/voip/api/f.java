package com.viber.voip.api;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import com.viber.voip.ViberApplication;
import com.viber.voip.registration.ActivationController;

class f
  implements DialogInterface.OnClickListener
{
  f(ViberUrlHandlerActivity paramViberUrlHandlerActivity) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    if (ViberApplication.isActivated()) {
      this.a.startActivity(new Intent("com.viber.voip.action.MESSAGES"));
    }
    for (;;)
    {
      this.a.finish();
      return;
      ViberUrlHandlerActivity.a().resumeActivation();
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.api.f
 * JD-Core Version:    0.7.0.1
 */