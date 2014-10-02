package com.viber.voip.sound;

import android.app.Activity;
import android.content.Context;
import android.media.AudioManager;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Handler;
import com.viber.jni.PhoneControllerDelegate;
import com.viber.jni.dialer.DialerControllerDelegate.DialerHoldState;
import com.viber.jni.dialer.DialerControllerDelegate.DialerLocalCallState;
import com.viber.jni.dialer.DialerControllerDelegate.DialerPhoneState;
import com.viber.voip.ViberApplication;
import com.viber.voip.sound.bluetooth.BTControl;
import com.viber.voip.sound.bluetooth.BTControl.IBluetoothDeviceListener;

public abstract interface ISoundService
  extends PhoneControllerDelegate, DialerControllerDelegate.DialerHoldState, DialerControllerDelegate.DialerLocalCallState, DialerControllerDelegate.DialerPhoneState, BTControl.IBluetoothDeviceListener
{
  public static final String CHANNEL_TAG_DTMF = "-dtmf";
  public static final String CHANNEL_TAG_INCALL = "-incall";
  public static final String CHANNEL_TAG_RINGER = "-ringer";
  public static final String CHANNEL_TAG_TONE = "-tone";
  public static final int MAX_STREAMS_NUM = 9;
  public static final int MODE_CURRENT = -1;
  public static final int MODE_FOR_BLUETOOTH = 0;
  public static final int MODE_INVALID = -2;
  public static final int MODE_IN_CALL = 2;
  public static final int MODE_IN_COMMUNICATION = 0;
  public static final int MODE_NORMAL = 0;
  public static final int MODE_RINGTONE = 1;
  public static final int RINGER_MODE_NORMAL = 2;
  public static final int RINGER_MODE_SILENT = 0;
  public static final int RINGER_MODE_VIBRATE = 1;
  public static final int SETMODE_FORCED = 2;
  public static final int SETMODE_NODEFER = 1;
  public static final int SETMODE_NORMAL = 0;
  public static final int STREAM_ALARM = 4;
  public static final int STREAM_DTMF = 8;
  public static final int STREAM_MUSIC = 3;
  public static final int STREAM_NOTIFICATION = 5;
  public static final int STREAM_RING = 2;
  public static final int STREAM_SYSTEM = 1;
  public static final int STREAM_VOICE_CALL = 0;
  public static final int USE_DEFAULT_STREAM_TYPE = -2147483648;
  public static final int VIBRATE_TYPE_NOTIFICATION = 1;
  public static final int VIBRATE_TYPE_RINGER;
  
  static
  {
    int i = 3;
    int j;
    if (Build.VERSION.SDK_INT >= 11)
    {
      j = i;
      MODE_IN_COMMUNICATION = j;
      if (Build.VERSION.SDK_INT < 11) {
        break label34;
      }
    }
    for (;;)
    {
      MODE_FOR_BLUETOOTH = i;
      return;
      j = 0;
      break;
      label34:
      i = 2;
    }
  }
  
  public abstract ViberApplication getApplicationContext();
  
  public abstract int getAudioCtl(int paramInt1, int paramInt2, int paramInt3);
  
  public abstract ISoundService.IAudioSettings getAudioSettings(ISoundService.AudioModeCtl paramAudioModeCtl);
  
  public abstract BTControl getBluetoothCtl();
  
  public abstract Context getContext();
  
  public abstract Handler getHandler();
  
  public abstract MediaPlayer getMediaPlayer();
  
  public abstract int getMode();
  
  public abstract AudioManager getPlatformAudioManager();
  
  public abstract int getRingerMode();
  
  public abstract IRingtoneService.Ringtone getRingtone(int paramInt);
  
  public abstract IRingtoneService.Ringtone getRingtone(int paramInt, boolean paramBoolean1, boolean paramBoolean2);
  
  public abstract IRingtoneService.Ringtone getRingtone(Uri paramUri);
  
  public abstract IRingtoneService.Ringtone getRingtone(Uri paramUri, boolean paramBoolean);
  
  public abstract IRingtoneService.Ringtone getRingtone(Uri paramUri, boolean paramBoolean1, boolean paramBoolean2);
  
  public abstract IRingtoneService getRingtoneService();
  
  public abstract int getStreamMaxVolume(int paramInt);
  
  public abstract int getStreamVolume(int paramInt);
  
  public abstract int getThreadPriority();
  
  public abstract IVibratorService getVibratorService();
  
  public abstract int getVocoderCtl(ISoundService.VocoderCtl paramVocoderCtl, int paramInt1, int paramInt2);
  
  public abstract ISoundService.IVocoderSettings getVocoderSettings();
  
  public abstract float getVolumeBoostLevel();
  
  public abstract float getVolumeBoostMaxLevel();
  
  public abstract boolean isBluetoothScoOn();
  
  public abstract boolean isHeadsetPluggedIn();
  
  public abstract boolean isMediaPlayerPlaying();
  
  public abstract boolean isMicrophoneMute();
  
  public abstract boolean isOnHold();
  
  public abstract boolean isPeerOnHold();
  
  public abstract boolean isRingtonePlaying();
  
  public abstract boolean isRouteActive(int paramInt);
  
  public abstract boolean isSpeakerphoneAllowed();
  
  public abstract boolean isSpeakerphoneOn();
  
  public abstract void loadAudioResource(int paramInt);
  
  public abstract void loadSample(int paramInt1, int paramInt2);
  
  public abstract void loadSamples(int[] paramArrayOfInt);
  
  public abstract int mode_Dtmf();
  
  public abstract int mode_InCall();
  
  public abstract int mode_Mic_InCall();
  
  public abstract int mode_Normal();
  
  public abstract int mode_Ringtone();
  
  public abstract int mode_Tone();
  
  public abstract void onHeadsetPlug();
  
  public abstract void onHeadsetUnplug();
  
  public abstract void playDTMFTone(int paramInt1, int paramInt2);
  
  public abstract void playMessageNotification(IRingtoneService.Ringtone paramRingtone);
  
  public abstract void playRingtone(IRingtoneService.Ringtone paramRingtone);
  
  public abstract void playSample(int paramInt1, float paramFloat1, float paramFloat2, int paramInt2, int paramInt3, float paramFloat3);
  
  public abstract void playTone(int paramInt);
  
  public abstract void playTone(ToneGeneratorFactory.ToneType paramToneType);
  
  public abstract void registerModeStateListener(ISoundService.ModeStateListenerIntf paramModeStateListenerIntf);
  
  public abstract void registerSpeakerStateListener(ISoundService.SpeakerStateListener paramSpeakerStateListener);
  
  public abstract void registerVoiceStateListener(VoiceStateListener paramVoiceStateListener);
  
  public abstract boolean rejectSpeakerActiveState();
  
  public abstract boolean rejectSpeakerStateChangeWithHeadset();
  
  public abstract void sendDTMFTone(int paramInt);
  
  public abstract int setAudioCtl(int paramInt1, int paramInt2, int paramInt3);
  
  public abstract void setBluetoothScoOn(boolean paramBoolean);
  
  public abstract void setMicrophoneMute(boolean paramBoolean);
  
  public abstract void setMode(int paramInt);
  
  public abstract void setMode(int paramInt, ISoundService.ModeStateListenerIntf paramModeStateListenerIntf);
  
  public abstract void setMode(int paramInt1, ISoundService.ModeStateListenerIntf paramModeStateListenerIntf, int paramInt2);
  
  public abstract void setModeWithPriorityLock(int paramInt);
  
  public abstract void setSpeakerphoneOn(boolean paramBoolean);
  
  public abstract int setVocoderCtl(ISoundService.VocoderCtl paramVocoderCtl, int paramInt1, int paramInt2);
  
  public abstract boolean setVolumeBoostLevel(float paramFloat);
  
  public abstract boolean shouldKillMediaManagerOnSuspend();
  
  public abstract boolean shouldVibrate(int paramInt);
  
  public abstract void startMediaPlayer();
  
  public abstract void stopAllTones();
  
  public abstract void stopDTMFTone();
  
  public abstract void stopMediaPlayer();
  
  public abstract void stopRingtone(IRingtoneService.Ringtone paramRingtone);
  
  public abstract boolean stopRingtone();
  
  public abstract void stopTone();
  
  public abstract int stream_Dtmf();
  
  public abstract int stream_Notification();
  
  public abstract int stream_Ring();
  
  public abstract int stream_Tone();
  
  public abstract int stream_Voice();
  
  public abstract boolean suspendNativeOnLocalHold();
  
  public abstract boolean suspendNativeOnParallelGSM();
  
  public abstract boolean suspendNativeOnPeerHold();
  
  public abstract void syncSpeakerState();
  
  public abstract void trackActivity(Activity paramActivity);
  
  public abstract void unregisterModeStateListener(ISoundService.ModeStateListenerIntf paramModeStateListenerIntf);
  
  public abstract void unregisterSpeakerStateListener(ISoundService.SpeakerStateListener paramSpeakerStateListener);
  
  public abstract void unregisterVoiceStateListener(VoiceStateListener paramVoiceStateListener);
  
  public abstract void untrackActivity(Activity paramActivity);
  
  public abstract boolean useExtraBtChecksForModeChangeWorkaround();
  
  public abstract boolean useModeLocking();
  
  public abstract boolean useModeSwitchForSpeakerToggleWorkaround();
  
  public abstract boolean useNativeMuteControl();
  
  public abstract boolean useNativeResetOnSpeakerToggle();
  
  public abstract boolean useNativeSoundLibSpeakerControl();
  
  public abstract boolean useSpeakerResetForModeChangeWorkaround();
  
  public abstract boolean useThreadPriority();
  
  public abstract boolean useVoiceChannelListeners();
  
  public abstract boolean useVolumeBoostForTonesInSpeakerMode();
  
  public abstract boolean useVolumeQuirks();
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.sound.ISoundService
 * JD-Core Version:    0.7.0.1
 */