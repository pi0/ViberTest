package com.viber.voip.sound;

import com.viber.voip.sound.tonegen.TonePlayer;
import com.viber.voip.sound.tonegen.TonePlayer.StateChangeListener;

final class ToneGeneratorFactory$3
  implements TonePlayer.StateChangeListener
{
  public void onPlayEnd(TonePlayer paramTonePlayer)
  {
    if (paramTonePlayer.getSoundService() == null) {
      return;
    }
    paramTonePlayer.getSoundService().setMode(paramTonePlayer.getSoundService().mode_Normal(), new ToneGeneratorFactory.3.1(this, paramTonePlayer));
    paramTonePlayer.getSoundService().unlockModeChange();
  }
  
  public void onPlayStart(TonePlayer paramTonePlayer) {}
  
  public void onPlayStop(TonePlayer paramTonePlayer) {}
  
  public void onSampleLoop(TonePlayer paramTonePlayer) {}
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.sound.ToneGeneratorFactory.3
 * JD-Core Version:    0.7.0.1
 */