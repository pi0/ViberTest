package com.viber.voip;

import com.viber.jni.PhoneControllerReadyListener;
import com.viber.jni.controller.PhoneController;
import com.viber.voip.util.b.w;

final class df
  implements PhoneControllerReadyListener
{
  public void ready(PhoneController paramPhoneController)
  {
    dc.a(dh.a);
    w.a(ViberApplication.getInstance()).a(false);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.df
 * JD-Core Version:    0.7.0.1
 */