package com.viber.voip.pixie;

import android.os.Handler;
import com.viber.jni.PhoneControllerReadyListener;
import com.viber.jni.controller.PhoneController;

class PixieControllerImpl$1
  implements PhoneControllerReadyListener
{
  PixieControllerImpl$1(PixieControllerImpl paramPixieControllerImpl) {}
  
  public void ready(PhoneController paramPhoneController)
  {
    PixieControllerImpl.access$800(this.this$0).post(new PixieControllerImpl.1.1(this));
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.pixie.PixieControllerImpl.1
 * JD-Core Version:    0.7.0.1
 */