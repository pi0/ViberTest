package org.webrtc.voiceengine;

import android.annotation.TargetApi;
import android.media.AudioRecord;
import android.media.audiofx.AudioEffect;

@TargetApi(16)
abstract interface AudioDeviceAndroid$EffectFactory
{
  public abstract AudioEffect create(AudioRecord paramAudioRecord);
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     org.webrtc.voiceengine.AudioDeviceAndroid.EffectFactory
 * JD-Core Version:    0.7.0.1
 */