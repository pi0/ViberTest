package com.viber.voip.registration;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.viber.jni.PhoneControllerWrapper;
import com.viber.voip.ViberApplication;

class ag
  implements DialogInterface.OnClickListener
{
  ag(BaseRegistrationActivity paramBaseRegistrationActivity) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface.cancel();
    ViberApplication localViberApplication = ViberApplication.getInstance();
    localViberApplication.getPhoneController(false).addInitializedListener(new ah(this, localViberApplication));
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.registration.ag
 * JD-Core Version:    0.7.0.1
 */