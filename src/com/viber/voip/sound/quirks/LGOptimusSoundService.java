package com.viber.voip.sound.quirks;

import android.content.Context;
import com.viber.voip.sound.GenericSoundService;

public class LGOptimusSoundService
  extends GenericSoundService
{
  public static final String TAG = LGOptimusSoundService.class.getSimpleName();
  
  public LGOptimusSoundService(Context paramContext)
  {
    super(paramContext);
  }
  
  public int mode_InCall()
  {
    return 2;
  }
  
  public int mode_Tone()
  {
    return 2;
  }
  
  public boolean useModeSwitchForSpeakerToggleWorkaround()
  {
    return true;
  }
  
  public boolean useNativeResetOnSpeakerToggle()
  {
    return false;
  }
  
  public boolean useVoiceChannelListeners()
  {
    return false;
  }
  
  public boolean useVolumeBoostForTonesInSpeakerMode()
  {
    return false;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.sound.quirks.LGOptimusSoundService
 * JD-Core Version:    0.7.0.1
 */