package com.viber.voip.sound;

import android.content.Context;

public class GenericSoundService
  extends CommonAbstractSoundService
{
  public static final String TAG = GenericSoundService.class.getSimpleName();
  
  protected GenericSoundService(Context paramContext)
  {
    super(paramContext);
  }
  
  public int getThreadPriority()
  {
    return -8;
  }
  
  public boolean isSpeakerphoneAllowed()
  {
    return true;
  }
  
  public boolean shouldKillMediaManagerOnSuspend()
  {
    return false;
  }
  
  public boolean suspendNativeOnLocalHold()
  {
    return true;
  }
  
  public boolean suspendNativeOnParallelGSM()
  {
    return true;
  }
  
  public boolean suspendNativeOnPeerHold()
  {
    return true;
  }
  
  public boolean useModeLocking()
  {
    return true;
  }
  
  public boolean useModeSwitchForSpeakerToggleWorkaround()
  {
    return false;
  }
  
  public boolean useNativeMuteControl()
  {
    return true;
  }
  
  public boolean useThreadPriority()
  {
    return SoundServiceCommonConfig.GenericConfig.CTL_USE_MEDIA_THREAD_PRIORITY;
  }
  
  public boolean useVoiceChannelListeners()
  {
    return false;
  }
  
  public boolean useVolumeBoostForTonesInSpeakerMode()
  {
    return true;
  }
  
  public boolean useVolumeQuirks()
  {
    return true;
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.sound.GenericSoundService
 * JD-Core Version:    0.7.0.1
 */