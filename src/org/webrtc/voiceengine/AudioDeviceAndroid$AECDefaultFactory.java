package org.webrtc.voiceengine;

import android.annotation.TargetApi;
import android.media.AudioRecord;
import android.media.audiofx.AcousticEchoCanceler;
import android.media.audiofx.AudioEffect;

@TargetApi(16)
class AudioDeviceAndroid$AECDefaultFactory
  implements AudioDeviceAndroid.EffectFactory
{
  AudioDeviceAndroid$AECDefaultFactory(AudioDeviceAndroid paramAudioDeviceAndroid) {}
  
  public AudioEffect create(AudioRecord paramAudioRecord)
  {
    return AcousticEchoCanceler.create(paramAudioRecord.getAudioSessionId());
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     org.webrtc.voiceengine.AudioDeviceAndroid.AECDefaultFactory
 * JD-Core Version:    0.7.0.1
 */