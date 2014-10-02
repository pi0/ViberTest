package com.viber.voip.sound;

import android.os.Build;
import android.util.Pair;
import java.util.ArrayList;
import java.util.List;

public abstract class SoundServiceCommonConfig
{
  public static final boolean AGGRESSIVE_AUDIOROUTE_RECOVERY = false;
  static final boolean CONTROL_MASTER_ITSELF = true;
  static final boolean CTL_BLUETOOTH_VIA_NATIVE = false;
  public static final boolean CTL_BT_CAPTURE_DEVICE_ON_CONNECT = true;
  public static final boolean CTL_BT_REJECT_MODE_CHANGE_WHILE_PAIRED = false;
  public static final boolean CTL_BT_REJECT_MODE_CHANGE_WHILE_VOICE_ACTIVE = false;
  public static final boolean CTL_GIPS = true;
  public static final boolean CTL_GIPS_NATIVE_LIKE = true;
  static final boolean CTL_MODE_REJECT_ACTIVE_STATE_POLICY = true;
  public static final boolean CTL_NATIVE_ON_GALAXY_S = false;
  static final boolean CTL_OVERRIDE_ALWAYS_USE_HIGHER_PRIORITY = true;
  static final boolean CTL_SETMODE_USE_LOCKING = true;
  static final boolean CTL_SOUNDSERVICE_OWNS_HANDLER = false;
  static final boolean CTL_SOUNDSERVICE_USE_SINGLETHREAD_WRAP = false;
  static final boolean CTL_SPEAKER_IF_HEADSET_PLUGGED = true;
  public static final boolean CTL_SPEAKER_REJECT_ACTIVE_STATE_POLICY = true;
  static final boolean CTL_SPEAKER_VIA_NATIVE = false;
  static final boolean CTL_SW_VOLUME_NATIVE = true;
  static final boolean CTL_SYSTEMPROPERTIES_HACK = false;
  public static final boolean CTL_TSM = true;
  public static final boolean CTL_USE_EXTRA_BT_CHECKS_FOR_MODE_CHANGE = true;
  public static final boolean CTL_USE_HTC_EXPERIMENTAL_HW_AEC_QUIRKS = true;
  public static final boolean CTL_USE_INCREDIBLE_RELATED_EXTRA_VOLUME_SYNC = true;
  static final boolean CTL_VOICECHANNEL_VOLUME_ONLY = true;
  static final int DEFERRED_VOLUME_CHECK_MAX_TRIES_COUNT = 5;
  static final int DEFERRED_VOLUME_REPOST_DELAY = 500;
  public static final String TAG = SoundServiceCommonConfig.class.getSimpleName();
  public static final boolean USE_AUDIOROUTE_API = false;
  public static final boolean USE_MEDIA_TONES = true;
  public static final boolean USE_POOLED_DTMF_TONES = true;
  public static final boolean USE_SEPARATE_STREAMS = false;
  public static final boolean USE_VOCODER_WATCHDOG = true;
  static final boolean USE_VOLUME_RESTORE;
  public static final boolean WEAK_DEVICE = weak_devices_list.contains(Build.DEVICE);
  static final List<Pair<String, String>> hack_PropertyBag = new ArrayList();
  public static final List<String> weak_devices_list;
  final int MIN_VOLUME_STEP = 0;
  
  static
  {
    hack_PropertyBag.add(new Pair("media.a1026.enableA1026", "1"));
    hack_PropertyBag.add(new Pair("media.a1026.nsForVoiceRec", "0"));
    hack_PropertyBag.add(new Pair("htc.audio.alt.enable", "1"));
    hack_PropertyBag.add(new Pair("htc.audio.hac.enable", "1"));
    weak_devices_list = new ArrayList();
    weak_devices_list.add("buzz");
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.sound.SoundServiceCommonConfig
 * JD-Core Version:    0.7.0.1
 */