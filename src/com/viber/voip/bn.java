package com.viber.voip;

import com.viber.jni.PhoneControllerWrapper.InitializedListener;
import com.viber.jni.controller.PhoneController;

class bn
  implements PhoneControllerWrapper.InitializedListener
{
  bn(SoundSettingsActivity paramSoundSettingsActivity, boolean paramBoolean) {}
  
  public void initialized(PhoneController paramPhoneController)
  {
    paramPhoneController.setEnableVideo(this.a);
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.bn
 * JD-Core Version:    0.7.0.1
 */