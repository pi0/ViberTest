package org.webrtc.voiceengine;

final class AudioDeviceManager$1
  implements IAudioDevice
{
  public int CheckDeviceVoiceCommunicationAbility(int paramInt1, int paramInt2)
  {
    return -1;
  }
  
  public int GetAudioRoute()
  {
    return -1;
  }
  
  public int GetPlayoutVolume()
  {
    return 0;
  }
  
  public int ProbePlayback(int paramInt)
  {
    return 0;
  }
  
  public int ProbeRecording(int paramInt1, int paramInt2)
  {
    return 0;
  }
  
  public int SetAudioRoute(int paramInt)
  {
    return -1;
  }
  
  public int SetPlayoutSpeaker(boolean paramBoolean)
  {
    return 0;
  }
  
  public int SetPlayoutVolume(int paramInt)
  {
    return 0;
  }
  
  public int StartPlayback()
  {
    return 0;
  }
  
  public int StartRecording()
  {
    return 0;
  }
  
  public int StopPlayback()
  {
    return 0;
  }
  
  public int StopRecording()
  {
    return 0;
  }
  
  public void registerStateListener(IAudioDevice.AudioDeviceStateListener paramAudioDeviceStateListener) {}
  
  public void restartRecorder() {}
  
  public void waitForInitialize() {}
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     org.webrtc.voiceengine.AudioDeviceManager.1
 * JD-Core Version:    0.7.0.1
 */