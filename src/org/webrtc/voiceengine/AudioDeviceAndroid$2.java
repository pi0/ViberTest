package org.webrtc.voiceengine;

import android.media.audiofx.AudioEffect;
import android.media.audiofx.AudioEffect.OnControlStatusChangeListener;
import com.viber.voip.ViberApplication;

final class AudioDeviceAndroid$2
  implements AudioEffect.OnControlStatusChangeListener
{
  public void onControlStatusChange(AudioEffect paramAudioEffect, boolean paramBoolean)
  {
    String str1 = AudioDeviceAndroid.TAG;
    StringBuilder localStringBuilder = new StringBuilder().append("effect ").append(paramAudioEffect.toString()).append(" control is ");
    if (paramBoolean) {}
    for (String str2 = "granted";; str2 = "rejected")
    {
      ViberApplication.log(3, str1, str2);
      return;
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     org.webrtc.voiceengine.AudioDeviceAndroid.2
 * JD-Core Version:    0.7.0.1
 */