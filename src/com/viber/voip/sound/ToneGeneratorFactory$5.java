package com.viber.voip.sound;

import com.viber.voip.sound.tonegen.TonePlayer;
import com.viber.voip.sound.tonegen.TonePlayer.StateChangeListener;

final class ToneGeneratorFactory$5
  implements TonePlayer.StateChangeListener
{
  public void onPlayEnd(TonePlayer paramTonePlayer)
  {
    if (paramTonePlayer.getSoundService() == null) {}
  }
  
  public void onPlayStart(TonePlayer paramTonePlayer) {}
  
  public void onPlayStop(TonePlayer paramTonePlayer) {}
  
  public void onSampleLoop(TonePlayer paramTonePlayer) {}
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.sound.ToneGeneratorFactory.5
 * JD-Core Version:    0.7.0.1
 */