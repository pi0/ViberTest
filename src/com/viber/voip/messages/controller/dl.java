package com.viber.voip.messages.controller;

import com.viber.jni.PhoneControllerReadyListener;
import com.viber.jni.controller.PhoneController;
import com.viber.voip.ViberApplication;
import com.viber.voip.sound.ISoundService;

class dl
  implements PhoneControllerReadyListener
{
  dl(dk paramdk) {}
  
  public void ready(PhoneController paramPhoneController)
  {
    dk.a(this.a, ViberApplication.getInstance().getSoundService());
    dk.a(this.a).loadSamples(dk.b());
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.controller.dl
 * JD-Core Version:    0.7.0.1
 */