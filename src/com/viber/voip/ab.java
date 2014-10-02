package com.viber.voip;

import android.content.Context;
import android.content.Intent;
import com.viber.jni.PhoneControllerWrapper.InitializedListener;
import com.viber.jni.controller.PhoneController;
import com.viber.voip.b.a;

class ab
  implements PhoneControllerWrapper.InitializedListener
{
  ab(GCMIntentService paramGCMIntentService, Context paramContext, Intent paramIntent) {}
  
  public void initialized(PhoneController paramPhoneController)
  {
    paramPhoneController.sendKA();
    a.a().a(this.a, this.b);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.ab
 * JD-Core Version:    0.7.0.1
 */