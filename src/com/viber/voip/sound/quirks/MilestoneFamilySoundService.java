package com.viber.voip.sound.quirks;

import android.content.Context;
import com.viber.voip.sound.GenericSoundService;

public class MilestoneFamilySoundService
  extends GenericSoundService
{
  public static final String TAG = MilestoneFamilySoundService.class.getSimpleName();
  
  public MilestoneFamilySoundService(Context paramContext)
  {
    super(paramContext);
  }
  
  public int mode_Dtmf()
  {
    return 0;
  }
  
  public int mode_InCall()
  {
    return 0;
  }
  
  public int mode_Tone()
  {
    return 0;
  }
  
  public int stream_Dtmf()
  {
    return 8;
  }
  
  public int stream_Tone()
  {
    return 0;
  }
  
  public boolean suspendNativeOnLocalHold()
  {
    return false;
  }
  
  public boolean suspendNativeOnParallelGSM()
  {
    return true;
  }
  
  public boolean suspendNativeOnPeerHold()
  {
    return false;
  }
  
  public boolean useNativeResetOnSpeakerToggle()
  {
    return true;
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
 * Qualified Name:     com.viber.voip.sound.quirks.MilestoneFamilySoundService
 * JD-Core Version:    0.7.0.1
 */