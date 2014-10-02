package com.viber.voip.sound.tonegen;

import com.viber.voip.sound.ISoundService.ModeStateListenerIntf;

public abstract interface IToneGenerator
  extends ISoundService.ModeStateListenerIntf
{
  public abstract void startTone(int paramInt);
  
  public abstract void startTone(int paramInt1, int paramInt2);
  
  public abstract void startTone(int paramInt1, int paramInt2, Runnable paramRunnable);
  
  public abstract void stopTone();
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.sound.tonegen.IToneGenerator
 * JD-Core Version:    0.7.0.1
 */