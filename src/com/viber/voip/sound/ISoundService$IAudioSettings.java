package com.viber.voip.sound;

public abstract interface ISoundService$IAudioSettings
{
  public abstract void addListener(ISoundService.IAudioSettings.IAudioSettingsListener paramIAudioSettingsListener);
  
  public abstract int getAECMode();
  
  public abstract int getAGCMode();
  
  public abstract int getNSMode();
  
  public abstract int getRxAGCMode();
  
  public abstract int getRxNSMode();
  
  public abstract int getVADMode();
  
  public abstract void removeListener(ISoundService.IAudioSettings.IAudioSettingsListener paramIAudioSettingsListener);
  
  public abstract int setAECMode(int paramInt);
  
  public abstract int setAGCMode(int paramInt);
  
  public abstract int setNSMode(int paramInt);
  
  public abstract int setRxAGCMode(int paramInt);
  
  public abstract int setRxNSMode(int paramInt);
  
  public abstract int setVADMode(int paramInt);
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.sound.ISoundService.IAudioSettings
 * JD-Core Version:    0.7.0.1
 */