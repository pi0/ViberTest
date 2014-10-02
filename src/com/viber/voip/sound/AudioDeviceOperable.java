package com.viber.voip.sound;

import org.webrtc.voiceengine.IAudioDevice;

abstract interface AudioDeviceOperable
{
  public abstract IAudioDevice getAudioDeviceCtl();
  
  public abstract void registerAudioDevice(IAudioDevice paramIAudioDevice);
  
  public abstract void startAudioRecord(boolean paramBoolean);
  
  public abstract void stopAudioRecord(boolean paramBoolean);
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.sound.AudioDeviceOperable
 * JD-Core Version:    0.7.0.1
 */