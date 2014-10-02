package org.webrtc.voiceengine;

import android.annotation.TargetApi;
import android.media.AudioRecord;
import android.media.audiofx.AudioEffect;
import android.media.audiofx.NoiseSuppressor;

@TargetApi(16)
class AudioDeviceAndroid$NSDefaultFactory
  implements AudioDeviceAndroid.EffectFactory
{
  AudioDeviceAndroid$NSDefaultFactory(AudioDeviceAndroid paramAudioDeviceAndroid) {}
  
  public AudioEffect create(AudioRecord paramAudioRecord)
  {
    return NoiseSuppressor.create(paramAudioRecord.getAudioSessionId());
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     org.webrtc.voiceengine.AudioDeviceAndroid.NSDefaultFactory
 * JD-Core Version:    0.7.0.1
 */