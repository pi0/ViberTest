package com.viber.voip.sound.tonegen;

import com.viber.voip.sound.ISoundService;
import com.viber.voip.sound.SoundFactory;

class DtmfToneGenerator$ModeReverter
  implements Runnable
{
  volatile ISoundService soundService;
  volatile int targetMode;
  volatile int targetVolume = -1;
  
  public ModeReverter revertTo(ISoundService paramISoundService, int paramInt)
  {
    this.targetMode = paramInt;
    this.soundService = paramISoundService;
    if (-1 == this.targetVolume) {
      this.targetVolume = paramISoundService.getStreamVolume(paramISoundService.stream_Dtmf());
    }
    return this;
  }
  
  public void run()
  {
    SoundFactory.log(3, DtmfToneGenerator.TAG, "DTMF callback: reverting mode and volume to previously settled");
    this.soundService.setMode(this.targetMode, null, 1);
    this.targetVolume = -1;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.sound.tonegen.DtmfToneGenerator.ModeReverter
 * JD-Core Version:    0.7.0.1
 */