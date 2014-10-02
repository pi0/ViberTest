package com.viber.voip.sound.bluetooth;

import android.media.AudioManager;

public class AudioManagerWrapper
{
  private AudioManager mInstance;
  
  public AudioManagerWrapper(AudioManager paramAudioManager)
  {
    this.mInstance = paramAudioManager;
  }
  
  public AudioManager getAudioManager()
  {
    return this.mInstance;
  }
  
  public boolean isBluetoothScoAvailableOffCall()
  {
    try
    {
      boolean bool = this.mInstance.isBluetoothScoAvailableOffCall();
      return bool;
    }
    catch (Exception localException) {}
    return false;
  }
  
  public void startBluetoothSco()
  {
    if (isBluetoothScoAvailableOffCall()) {
      this.mInstance.startBluetoothSco();
    }
  }
  
  public void stopBluetoothSco()
  {
    if (isBluetoothScoAvailableOffCall()) {
      this.mInstance.stopBluetoothSco();
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.sound.bluetooth.AudioManagerWrapper
 * JD-Core Version:    0.7.0.1
 */