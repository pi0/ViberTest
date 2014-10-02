package com.viber.voip.app;

import android.os.Handler;
import com.viber.jni.PhoneControllerReadyListener;
import com.viber.jni.controller.PhoneController;
import com.viber.voip.dc;
import com.viber.voip.dk;

class a
  implements PhoneControllerReadyListener
{
  a(ViberFragmentActivity paramViberFragmentActivity) {}
  
  public void ready(PhoneController paramPhoneController)
  {
    dc.a(dk.h).post(new b(this));
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.app.a
 * JD-Core Version:    0.7.0.1
 */