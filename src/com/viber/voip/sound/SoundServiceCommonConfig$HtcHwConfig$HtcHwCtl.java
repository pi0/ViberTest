package com.viber.voip.sound;

import android.content.Context;
import android.media.AudioManager;
import com.viber.voip.ViberApplication;
import com.viber.voip.settings.l;

public class SoundServiceCommonConfig$HtcHwConfig$HtcHwCtl
{
  private static volatile byte _available = -1;
  private static volatile boolean _on = false;
  
  public static final void ctlHwAec(Context paramContext, AudioManager paramAudioManager, boolean paramBoolean)
  {
    try
    {
      boolean bool = ctlHwAecSupported();
      if (!bool) {}
      for (;;)
      {
        return;
        if (_on != paramBoolean)
        {
          if (!"0".equals(ViberApplication.preferences().b("sound_settings_htc_hwaec", "0"))) {
            break;
          }
          SoundFactory.log(3, SoundServiceCommonConfig.TAG, "HTC hwAEC is disabled by preferences, wouldn't set");
        }
      }
      _on = paramBoolean;
    }
    finally {}
    if (paramBoolean) {}
    for (String str = "HTCHWAEC=ON";; str = "HTCHWAEC=OFF")
    {
      paramAudioManager.setParameters(str);
      SoundFactory.log(3, SoundServiceCommonConfig.TAG, "HTC hwAEC is set to " + _on);
      break;
    }
  }
  
  public static final boolean ctlHwAecSupported()
  {
    int i = 1;
    for (;;)
    {
      try
      {
        String str;
        if (_available == -1)
        {
          str = SoundServiceCommonConfig.SystemProperty.getProperty("persist.audio.SupportHTCHWAEC");
          if (str == null) {
            _available = 0;
          }
        }
        try
        {
          _available = Byte.parseByte(str);
          int j = _available;
          if (j == i) {
            return i;
          }
        }
        catch (Exception localException)
        {
          _available = 0;
          continue;
        }
        i = 0;
      }
      finally {}
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.sound.SoundServiceCommonConfig.HtcHwConfig.HtcHwCtl
 * JD-Core Version:    0.7.0.1
 */