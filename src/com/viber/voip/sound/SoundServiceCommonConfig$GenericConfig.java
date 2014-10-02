package com.viber.voip.sound;

public abstract interface SoundServiceCommonConfig$GenericConfig
{
  public static final boolean CTL_MUTE_VIA_NATIVE = true;
  public static final boolean CTL_REJECT_SPEAKER_STATE_CHANGE_WITH_HEADSET = false;
  public static final boolean CTL_RESET_VOICHANNEL_ON_CALL_START = false;
  public static final boolean CTL_RESTORE_SPEAKER_STATE_AFTER_MODE_RESET = false;
  public static final boolean CTL_SPEAKER_WITH_NATIVE_RESET = false;
  public static final boolean CTL_USE_MEDIA_THREAD_PRIORITY = true | SoundServiceCommonConfig.WEAK_DEVICE;
  public static final boolean CTL_USE_UI_THREAD_PRIORITY = true | SoundServiceCommonConfig.WEAK_DEVICE;
  public static final boolean CTL_USE_VOLUME_BOOST = false;
  public static final float CTL_VOLUME_BOOST_FACTOR = 0.0F;
  public static final boolean CTL_VOLUME_BOOST_FOR_TONES_WHEN_SPEAKER_ACTIVE = true;
  public static final boolean KILL_NATIVE_ON_SUSPEND = false;
  public static final int MEDIA_THREAD_PRIORITY = -8;
  public static final boolean RESET_AUDIORECORDER_ON_SPEAKER_EVENT = false;
  public static final boolean RESET_AUDIOTRACK_ON_SPEAKER_EVENT = false;
  public static final boolean SPEAKERPHONE_ALLOWED = true;
  public static final boolean SUSPEND_NATIVE_ON_LOCAL_HOLD = true;
  public static final boolean SUSPEND_NATIVE_ON_PARALLEL_GSM = true;
  public static final boolean SUSPEND_NATIVE_ON_PEER_HOLD = true;
  public static final boolean SYNC_RECORDING_TO_VOICECHANNEL_STATE = false;
  public static final int UI_THREAD_PRIORITY = -19;
  public static final boolean USE_DEFERRED_VOLUME_RESTORE_IN_CALL_MODE = false;
  public static final boolean USE_MODE_SWITCH_FOR_SPEAKER_TOGGLE_WORKAROUND = false;
  public static final boolean USE_NATIVE_PASSTHROUGH_VOLUME_REGULATOR = false;
  public static final boolean USE_VOLUME_LOCKING = true;
  public static final boolean USE_VOLUME_QUIRKS = true;
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.sound.SoundServiceCommonConfig.GenericConfig
 * JD-Core Version:    0.7.0.1
 */