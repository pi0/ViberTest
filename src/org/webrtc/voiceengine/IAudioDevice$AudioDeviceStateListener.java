package org.webrtc.voiceengine;

public abstract interface IAudioDevice$AudioDeviceStateListener
{
  public abstract void onCapturePostStart();
  
  public abstract void onCaptureStart();
  
  public abstract void onCaptureStop();
  
  public abstract void onPlaybackPostStart();
  
  public abstract void onPlaybackPostStop();
  
  public abstract void onPlaybackPreStart();
  
  public abstract void onPlaybackPreStop();
  
  public abstract void onPlaybackReady();
  
  public abstract void onPlaybackShutdown();
  
  public abstract void onStart();
  
  public abstract void onStop();
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     org.webrtc.voiceengine.IAudioDevice.AudioDeviceStateListener
 * JD-Core Version:    0.7.0.1
 */