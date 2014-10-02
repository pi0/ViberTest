package com.viber.voip.sound;

public abstract interface ISoundService$ModeStateListenerIntf
{
  public abstract void onModeStateChangeDeferred(int paramInt1, int paramInt2, int paramInt3);
  
  public abstract void onModeStateChangeRejected(int paramInt1, int paramInt2, int paramInt3);
  
  public abstract void onModeStateChanged(int paramInt);
  
  public abstract void onModeStatePreChanged(int paramInt);
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.sound.ISoundService.ModeStateListenerIntf
 * JD-Core Version:    0.7.0.1
 */