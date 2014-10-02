package org.webrtc.voiceengine;

import java.util.Set;

final class AudioDeviceManager$2
  implements IAudioDevice
{
  public int CheckDeviceVoiceCommunicationAbility(int paramInt1, int paramInt2)
  {
    synchronized ()
    {
      if (AudioDeviceManager.access$200() == null) {
        return -1;
      }
      int i = AudioDeviceManager.access$200().CheckDeviceVoiceCommunicationAbility(paramInt1, paramInt2);
      return i;
    }
  }
  
  public int GetAudioRoute()
  {
    synchronized ()
    {
      if (AudioDeviceManager.access$200() == null) {
        return -1;
      }
      int i = AudioDeviceManager.access$200().GetAudioRoute();
      return i;
    }
  }
  
  public int GetPlayoutVolume()
  {
    synchronized ()
    {
      if (AudioDeviceManager.access$200() == null) {
        return -1;
      }
      int i = AudioDeviceManager.access$200().GetPlayoutVolume();
      return i;
    }
  }
  
  public int ProbePlayback(int paramInt)
  {
    synchronized ()
    {
      if (AudioDeviceManager.access$200() == null) {
        return -1;
      }
      int i = AudioDeviceManager.access$200().ProbePlayback(paramInt);
      return i;
    }
  }
  
  public int ProbeRecording(int paramInt1, int paramInt2)
  {
    synchronized ()
    {
      if (AudioDeviceManager.access$200() == null) {
        return -1;
      }
      int i = AudioDeviceManager.access$200().ProbeRecording(paramInt1, paramInt2);
      return i;
    }
  }
  
  public int SetAudioRoute(int paramInt)
  {
    synchronized ()
    {
      if (AudioDeviceManager.access$200() == null) {
        return -1;
      }
      int i = AudioDeviceManager.access$200().SetAudioRoute(paramInt);
      return i;
    }
  }
  
  public int SetPlayoutSpeaker(boolean paramBoolean)
  {
    synchronized ()
    {
      if (AudioDeviceManager.access$200() == null) {
        return -1;
      }
      int i = AudioDeviceManager.access$200().SetPlayoutSpeaker(paramBoolean);
      return i;
    }
  }
  
  public int SetPlayoutVolume(int paramInt)
  {
    synchronized ()
    {
      if (AudioDeviceManager.access$200() == null) {
        return -1;
      }
      int i = AudioDeviceManager.access$200().SetPlayoutVolume(paramInt);
      return i;
    }
  }
  
  public int StartPlayback()
  {
    synchronized ()
    {
      if (AudioDeviceManager.access$200() == null) {
        return -1;
      }
      int i = AudioDeviceManager.access$200().StartPlayback();
      return i;
    }
  }
  
  public int StartRecording()
  {
    synchronized ()
    {
      if (AudioDeviceManager.access$200() == null) {
        return -1;
      }
      int i = AudioDeviceManager.access$200().StartRecording();
      return i;
    }
  }
  
  public int StopPlayback()
  {
    synchronized ()
    {
      if (AudioDeviceManager.access$200() == null) {
        return -1;
      }
      int i = AudioDeviceManager.access$200().StopPlayback();
      return i;
    }
  }
  
  public int StopRecording()
  {
    synchronized ()
    {
      if (AudioDeviceManager.access$200() == null) {
        return -1;
      }
      int i = AudioDeviceManager.access$200().StopRecording();
      return i;
    }
  }
  
  public void registerStateListener(IAudioDevice.AudioDeviceStateListener paramAudioDeviceStateListener)
  {
    synchronized ()
    {
      AudioDeviceManager.access$000().add(paramAudioDeviceStateListener);
    }
    synchronized (AudioDeviceManager.access$100())
    {
      if (AudioDeviceManager.access$200() == null)
      {
        return;
        localObject1 = finally;
        throw localObject1;
      }
      AudioDeviceManager.access$200().registerStateListener(paramAudioDeviceStateListener);
      return;
    }
  }
  
  public void restartRecorder()
  {
    synchronized ()
    {
      if (AudioDeviceManager.access$200() == null) {
        return;
      }
      AudioDeviceManager.access$200().restartRecorder();
      return;
    }
  }
  
  public void waitForInitialize()
  {
    synchronized ()
    {
      if (AudioDeviceManager.access$200() == null) {
        return;
      }
      AudioDeviceManager.access$200().waitForInitialize();
      return;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     org.webrtc.voiceengine.AudioDeviceManager.2
 * JD-Core Version:    0.7.0.1
 */