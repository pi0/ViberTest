package com.viber.voip;

import com.viber.jni.PhoneControllerWrapper;
import com.viber.voip.sound.ISoundService.IAudioSettings.IAudioSettingsListener;

class bh
  implements ISoundService.IAudioSettings.IAudioSettingsListener
{
  bh(SoundSettingsActivity paramSoundSettingsActivity) {}
  
  public void onAECChange(int paramInt1, int paramInt2)
  {
    ViberApplication.getInstance().getPhoneController(false).addInitializedListener(new bm(this, paramInt2));
  }
  
  public void onAGCChange(int paramInt1, int paramInt2)
  {
    ViberApplication.getInstance().getPhoneController(false).addInitializedListener(new bl(this, paramInt2));
  }
  
  public void onNSChange(int paramInt1, int paramInt2)
  {
    ViberApplication.getInstance().getPhoneController(false).addInitializedListener(new bk(this, paramInt2));
  }
  
  public void onRxAGCChange(int paramInt1, int paramInt2)
  {
    ViberApplication.getInstance().getPhoneController(false).addInitializedListener(new bj(this, paramInt2));
  }
  
  public void onRxNSChange(int paramInt1, int paramInt2)
  {
    ViberApplication.getInstance().getPhoneController(false).addInitializedListener(new bi(this, paramInt2));
  }
  
  public void onVADChange(int paramInt1, int paramInt2) {}
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.bh
 * JD-Core Version:    0.7.0.1
 */