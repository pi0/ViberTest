package com.viber.voip.sound.tonegen;

public abstract interface TonePlayer$StateChangeListener
{
  public abstract void onPlayEnd(TonePlayer paramTonePlayer);
  
  public abstract void onPlayStart(TonePlayer paramTonePlayer);
  
  public abstract void onPlayStop(TonePlayer paramTonePlayer);
  
  public abstract void onSampleLoop(TonePlayer paramTonePlayer);
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.sound.tonegen.TonePlayer.StateChangeListener
 * JD-Core Version:    0.7.0.1
 */