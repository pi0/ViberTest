package com.viber.voip.sound;

import com.viber.voip.sound.tonegen.TonePlayer;

class ToneGeneratorFactory$3$1
  extends ISoundService.ModeStateListener
{
  ToneGeneratorFactory$3$1(ToneGeneratorFactory.3 param3, TonePlayer paramTonePlayer) {}
  
  public void onModeStateChanged(int paramInt)
  {
    this.val$tonePlayer.getSoundService().stopAllTones();
    this.val$tonePlayer.getSoundService().setSpeakerphoneOn(false);
  }
  
  public void onModeStatePreChanged(int paramInt) {}
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.sound.ToneGeneratorFactory.3.1
 * JD-Core Version:    0.7.0.1
 */