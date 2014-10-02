package com.viber.voip;

import android.util.Log;
import com.viber.jni.PhoneControllerReadyListener;
import com.viber.jni.controller.PhoneController;

class ea
  implements PhoneControllerReadyListener
{
  ea(WelcomeActivity paramWelcomeActivity) {}
  
  public void ready(PhoneController paramPhoneController)
  {
    Log.i(WelcomeActivity.a(), "ViberApplication initialization Check Registration");
    WelcomeActivity.a(this.a);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.ea
 * JD-Core Version:    0.7.0.1
 */