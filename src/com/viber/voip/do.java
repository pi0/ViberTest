package com.viber.voip;

import com.viber.jni.DeviceFlags;
import com.viber.jni.PhoneControllerWrapper.InitializedListener;
import com.viber.jni.controller.PhoneController;
import com.viber.voip.settings.l;
import com.viber.voip.sound.AbstractSoundService;

class do
  implements PhoneControllerWrapper.InitializedListener
{
  do(ViberApplication paramViberApplication) {}
  
  public void initialized(PhoneController paramPhoneController)
  {
    boolean bool;
    if (!"0".equals(ViberApplication.preferences().b("sound_settings_video", "1")))
    {
      bool = true;
      if (!bool) {
        break label49;
      }
      AbstractSoundService.setDeviceFlags(0x40 | DeviceFlags.getFlagsForDeviceModel());
    }
    for (;;)
    {
      paramPhoneController.setEnableVideo(bool);
      return;
      bool = false;
      break;
      label49:
      AbstractSoundService.setDeviceFlags(0xFFFFFFBF & DeviceFlags.getFlagsForDeviceModel());
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.do
 * JD-Core Version:    0.7.0.1
 */