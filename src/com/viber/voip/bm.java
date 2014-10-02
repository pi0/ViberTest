package com.viber.voip;

import com.viber.jni.DeviceFlags;
import com.viber.jni.PhoneControllerWrapper.InitializedListener;
import com.viber.jni.controller.PhoneController;
import com.viber.voip.sound.AbstractSoundService;

class bm
  implements PhoneControllerWrapper.InitializedListener
{
  bm(bh parambh, int paramInt) {}
  
  public void initialized(PhoneController paramPhoneController)
  {
    DeviceFlags._AECmode = this.a;
    AbstractSoundService.setSpeechEnhancementsModes(DeviceFlags._AECmode, DeviceFlags._AGCmode, DeviceFlags._NSmode, DeviceFlags._RxAGCmode, DeviceFlags._RxNSmode);
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.bm
 * JD-Core Version:    0.7.0.1
 */