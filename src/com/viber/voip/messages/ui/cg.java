package com.viber.voip.messages.ui;

import com.viber.jni.PhoneControllerReadyListener;
import com.viber.jni.controller.PhoneController;
import com.viber.voip.ViberApplication;
import com.viber.voip.sound.ISoundService;

class cg
  implements PhoneControllerReadyListener
{
  cg(MessageComposerView paramMessageComposerView) {}
  
  public void ready(PhoneController paramPhoneController)
  {
    MessageComposerView.a(this.a, MessageComposerView.c(this.a).getSoundService());
    MessageComposerView.e(this.a).loadSamples(MessageComposerView.d(this.a));
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.messages.ui.cg
 * JD-Core Version:    0.7.0.1
 */