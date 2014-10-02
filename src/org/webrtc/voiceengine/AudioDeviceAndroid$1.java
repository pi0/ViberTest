package org.webrtc.voiceengine;

import android.media.audiofx.AudioEffect;
import android.media.audiofx.AudioEffect.OnEnableStatusChangeListener;
import com.viber.voip.ViberApplication;

final class AudioDeviceAndroid$1
  implements AudioEffect.OnEnableStatusChangeListener
{
  public void onEnableStatusChange(AudioEffect paramAudioEffect, boolean paramBoolean)
  {
    String str1 = AudioDeviceAndroid.TAG;
    StringBuilder localStringBuilder = new StringBuilder().append("effect ").append(paramAudioEffect.toString()).append(" is ");
    if (paramBoolean) {}
    for (String str2 = "enabled";; str2 = "disabled")
    {
      ViberApplication.log(3, str1, str2);
      return;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     org.webrtc.voiceengine.AudioDeviceAndroid.1
 * JD-Core Version:    0.7.0.1
 */