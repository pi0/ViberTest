package com.viber.voip.settings.ui;

import com.viber.jni.PhoneControllerWrapper.InitializedListener;
import com.viber.jni.controller.PhoneController;

class h
  implements PhoneControllerWrapper.InitializedListener
{
  h(a parama, boolean paramBoolean) {}
  
  public void initialized(PhoneController paramPhoneController)
  {
    paramPhoneController.setEnableVideo(this.a);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.settings.ui.h
 * JD-Core Version:    0.7.0.1
 */