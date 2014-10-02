package com.viber.voip.sound.quirks;

import android.content.Context;
import com.viber.voip.sound.CommonAbstractSoundService;
import com.viber.voip.sound.SoundFactory;
import com.viber.voip.sound.SoundServiceCommonConfig.GalaxySConfig;

public class GalaxySFamilySoundService
  extends CommonAbstractSoundService
{
  private static final boolean enableVoiceChannelListenersUsage = false;
  
  static
  {
    if (isVoiceChannelStateReportingAccessible()) {}
  }
  
  public GalaxySFamilySoundService(Context paramContext)
  {
    super(paramContext);
  }
  
  protected void forceSpeakerphoneOn(boolean paramBoolean)
  {
    SoundFactory.log(3, TAG, "old SGS hack, updating mode for correct speaker control");
    if (paramBoolean) {
      setMode(0);
    }
    super.forceSpeakerphoneOn(paramBoolean);
    if (!paramBoolean) {
      setMode(2);
    }
  }
  
  public int getThreadPriority()
  {
    return -8;
  }
  
  public boolean isSpeakerphoneAllowed()
  {
    return true;
  }
  
  public int mode_InCall()
  {
    return 2;
  }
  
  public int mode_Ringtone()
  {
    return 0;
  }
  
  public int mode_Tone()
  {
    return mode_InCall();
  }
  
  public boolean shouldKillMediaManagerOnSuspend()
  {
    return true;
  }
  
  public boolean shouldUseSpeakers(boolean paramBoolean)
  {
    SoundFactory.log(3, TAG, "old SGS hack, preventing native speaker switch");
    return !paramBoolean;
  }
  
  public int stream_Voice()
  {
    return 0;
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
    return false;
  }
  
  public boolean useModeLocking()
  {
    return true;
  }
  
  public boolean useModeSwitchForSpeakerToggleWorkaround()
  {
    return true;
  }
  
  public boolean useNativeMuteControl()
  {
    return true;
  }
  
  public boolean useNativeResetOnSpeakerToggle()
  {
    return true;
  }
  
  public boolean useSpeakerResetForModeChangeWorkaround()
  {
    return false;
  }
  
  public boolean useThreadPriority()
  {
    return SoundServiceCommonConfig.GalaxySConfig.CTL_USE_MEDIA_THREAD_PRIORITY;
  }
  
  public boolean useVoiceChannelListeners()
  {
    return enableVoiceChannelListenersUsage;
  }
  
  public boolean useVolumeBoostForTonesInSpeakerMode()
  {
    return false;
  }
  
  public boolean useVolumeQuirks()
  {
    return true;
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.sound.quirks.GalaxySFamilySoundService
 * JD-Core Version:    0.7.0.1
 */