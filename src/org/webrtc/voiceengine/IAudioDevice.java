package org.webrtc.voiceengine;

public abstract interface IAudioDevice
{
  public static final int AUDIOROUTE_PLAYBACK = 1;
  public static final int AUDIOROUTE_PLAYBACK_AND_RECORDING = 3;
  public static final int AUDIOROUTE_RECORDING = 2;
  public static final int AUDIOROUTE_VOIP;
  
  public abstract int CheckDeviceVoiceCommunicationAbility(int paramInt1, int paramInt2);
  
  public abstract int GetAudioRoute();
  
  public abstract int GetPlayoutVolume();
  
  public abstract int ProbePlayback(int paramInt);
  
  public abstract int ProbeRecording(int paramInt1, int paramInt2);
  
  public abstract int SetAudioRoute(int paramInt);
  
  public abstract int SetPlayoutSpeaker(boolean paramBoolean);
  
  public abstract int SetPlayoutVolume(int paramInt);
  
  public abstract int StartPlayback();
  
  public abstract int StartRecording();
  
  public abstract int StopPlayback();
  
  public abstract int StopRecording();
  
  public abstract void registerStateListener(IAudioDevice.AudioDeviceStateListener paramAudioDeviceStateListener);
  
  public abstract void restartRecorder();
  
  public abstract void waitForInitialize();
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     org.webrtc.voiceengine.IAudioDevice
 * JD-Core Version:    0.7.0.1
 */