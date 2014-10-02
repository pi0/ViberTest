package com.viber.voip.sound;

import android.app.Activity;
import android.content.Context;
import android.media.AudioManager;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.Handler;
import com.viber.jni.PhoneControllerDelegateAdapter;
import com.viber.voip.ViberApplication;

public abstract class AbstractSoundService
  extends PhoneControllerDelegateAdapter
  implements IRingtoneService, ISoundService
{
  public static final int ENGINE_STATUS_INCAPABLE = 0;
  public static final int ENGINE_STATUS_VIDEO_AVAILABLE = 2;
  public static final int ENGINE_STATUS_VOICE_AVAILABLE = 1;
  private static final String E_NOT_IMPLEMENTED = ": method not implemented";
  public static final int ROUTEMODE_CALL = 1;
  public static final int ROUTEMODE_DTMF = 4;
  public static final int ROUTEMODE_EXTERNAL_HEADSET = 32;
  public static final int ROUTEMODE_GSMCALL = 16;
  public static final int ROUTEMODE_NORMAL = 0;
  public static final int ROUTEMODE_RINGTONE = 8;
  public static final int ROUTEMODE_TONE = 2;
  public static final int ROUTEMODE_VOICEROUTE_LOSS = 512;
  private static final String TAG = AbstractSoundService.class.getSimpleName();
  
  public static native int addLocalVideoRenderer(long paramLong, Object paramObject);
  
  public static native int addRemoteVideoRenderer(long paramLong, Object paramObject);
  
  public static native int getCodecBitrate();
  
  protected static native int getCodecCtl(int paramInt1, int paramInt2);
  
  protected static native String getCodecName(int paramInt);
  
  public static native int getEngineStatus();
  
  protected static native int getSupportedCodecsCount();
  
  public static native boolean isNativeDtmfSupportBuiltin();
  
  public static native boolean isVideoSupportBuiltin();
  
  protected static native boolean isVoiceChannelStateReportingAccessible();
  
  public static native int removeLocalVideoRenderer(long paramLong, Object paramObject);
  
  public static native int removeRemoteVideoRenderer(long paramLong, Object paramObject);
  
  public static native int setCodecBitrate(int paramInt);
  
  protected static native int setCodecCtl(int paramInt1, int paramInt2, int paramInt3);
  
  public static native int setDeviceFlags(int paramInt);
  
  public static native int setSpeechEnhancementsModes(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5);
  
  public int clearRouteFlags(int paramInt)
  {
    throw new RuntimeException(TAG + ": method not implemented");
  }
  
  public ViberApplication getApplicationContext()
  {
    throw new RuntimeException(TAG + ": method not implemented");
  }
  
  public Context getContext()
  {
    throw new RuntimeException(TAG + ": method not implemented");
  }
  
  public Handler getHandler()
  {
    throw new RuntimeException(TAG + ": method not implemented");
  }
  
  public int getMode()
  {
    throw new RuntimeException(TAG + ": method not implemented");
  }
  
  public AudioManager getPlatformAudioManager()
  {
    throw new RuntimeException(TAG + ": method not implemented");
  }
  
  public int getRingerMode()
  {
    throw new RuntimeException(TAG + ": method not implemented");
  }
  
  public IRingtoneService.Ringtone getRingtone(int paramInt)
  {
    throw new RuntimeException(TAG + ": method not implemented");
  }
  
  public IRingtoneService.Ringtone getRingtone(int paramInt, boolean paramBoolean)
  {
    throw new RuntimeException(TAG + ": method not implemented");
  }
  
  public IRingtoneService.Ringtone getRingtone(Uri paramUri)
  {
    throw new RuntimeException(TAG + ": method not implemented");
  }
  
  public IRingtoneService.Ringtone getRingtone(Uri paramUri, boolean paramBoolean)
  {
    throw new RuntimeException(TAG + ": method not implemented");
  }
  
  public int getStreamMaxVolume(int paramInt)
  {
    throw new RuntimeException(TAG + ": method not implemented");
  }
  
  public int getStreamVolume(int paramInt)
  {
    throw new RuntimeException(TAG + ": method not implemented");
  }
  
  public abstract int getThreadPriority();
  
  public native float getVolumeBoostLevel();
  
  public native float getVolumeBoostMaxLevel();
  
  public native boolean havingValidVoiceChannel();
  
  public boolean isBluetoothScoOn()
  {
    throw new RuntimeException(TAG + ": method not implemented");
  }
  
  public boolean isHeadsetPluggedIn()
  {
    throw new RuntimeException(TAG + ": method not implemented");
  }
  
  public boolean isMediaPlayerPlaying()
  {
    throw new RuntimeException(TAG + ": method not implemented");
  }
  
  public boolean isMicrophoneMute()
  {
    throw new RuntimeException(TAG + ": method not implemented");
  }
  
  public boolean isRingtonePlaying()
  {
    throw new RuntimeException(TAG + ": method not implemented");
  }
  
  public boolean isSpeakerphoneAllowed()
  {
    throw new RuntimeException(TAG + ": method not implemented");
  }
  
  public boolean isSpeakerphoneOn()
  {
    throw new RuntimeException(TAG + ": method not implemented");
  }
  
  public void loadAudioResource(int paramInt)
  {
    throw new RuntimeException(TAG + ": method not implemented");
  }
  
  protected void lockModeChange()
  {
    throw new RuntimeException(TAG + ": method not implemented");
  }
  
  public abstract int mode_Dtmf();
  
  public abstract int mode_InCall();
  
  public abstract int mode_Mic_InCall();
  
  public abstract int mode_Normal();
  
  public abstract int mode_Ringtone();
  
  public abstract int mode_Tone();
  
  public void onHeadsetPlug()
  {
    throw new RuntimeException(TAG + ": method not implemented");
  }
  
  public void onHeadsetUnplug()
  {
    throw new RuntimeException(TAG + ": method not implemented");
  }
  
  public void playDTMFTone(int paramInt1, int paramInt2)
  {
    throw new RuntimeException(TAG + ": method not implemented");
  }
  
  public void playMessageNotification(IRingtoneService.Ringtone paramRingtone)
  {
    throw new RuntimeException(TAG + ": method not implemented");
  }
  
  public void playRingtone(Uri paramUri)
  {
    throw new RuntimeException(TAG + ": method not implemented");
  }
  
  public void playRingtone(IRingtoneService.Ringtone paramRingtone)
  {
    throw new RuntimeException(TAG + ": method not implemented");
  }
  
  public void playTone(ToneGeneratorFactory.ToneType paramToneType)
  {
    throw new RuntimeException(TAG + ": method not implemented");
  }
  
  public void registerModeStateListener(ISoundService.ModeStateListenerIntf paramModeStateListenerIntf)
  {
    throw new RuntimeException(TAG + ": method not implemented");
  }
  
  public void registerSpeakerStateListener(ISoundService.SpeakerStateListener paramSpeakerStateListener)
  {
    throw new RuntimeException(TAG + ": method not implemented");
  }
  
  public void registerVolumeChangeListener(ISoundService.VolumeChangeListenerIntf paramVolumeChangeListenerIntf)
  {
    throw new RuntimeException(TAG + ": method not implemented");
  }
  
  public abstract boolean rejectSpeakerActiveState();
  
  public void releaseMediaPlayer()
  {
    throw new RuntimeException(TAG + ": method not implemented");
  }
  
  protected native int resetVoice();
  
  protected native int resumeSound(boolean paramBoolean);
  
  protected native void sendDTMF(int paramInt);
  
  public void sendDTMFTone(int paramInt)
  {
    sendDTMF(paramInt);
  }
  
  protected native int setAECMode(int paramInt);
  
  public void setBluetoothScoOn(boolean paramBoolean)
  {
    throw new RuntimeException(TAG + ": method not implemented");
  }
  
  public MediaPlayer setMediaDataSource(IRingtoneService.Ringtone paramRingtone, int paramInt)
  {
    throw new RuntimeException(TAG + ": method not implemented");
  }
  
  public void setMicrophoneMute(boolean paramBoolean)
  {
    throw new RuntimeException(TAG + ": method not implemented");
  }
  
  public void setMode(int paramInt)
  {
    throw new RuntimeException(TAG + ": method not implemented");
  }
  
  public void setMode(int paramInt, ISoundService.ModeStateListenerIntf paramModeStateListenerIntf)
  {
    throw new RuntimeException(TAG + ": method not implemented");
  }
  
  public void setMode(int paramInt1, ISoundService.ModeStateListenerIntf paramModeStateListenerIntf, int paramInt2)
  {
    throw new RuntimeException(TAG + ": method not implemented");
  }
  
  public void setModeWithPriorityLock(int paramInt)
  {
    throw new RuntimeException(TAG + ": method not implemented");
  }
  
  public int setRouteFlags(int paramInt)
  {
    throw new RuntimeException(TAG + ": method not implemented");
  }
  
  public void setSpeakerphoneOn(boolean paramBoolean)
  {
    throw new RuntimeException(TAG + ": method not implemented");
  }
  
  public native boolean setVolumeBoostLevel(float paramFloat);
  
  public abstract boolean shouldKillMediaManagerOnSuspend();
  
  public native boolean shouldUseSpeakers(boolean paramBoolean);
  
  public boolean shouldVibrate(int paramInt)
  {
    throw new RuntimeException(TAG + ": method not implemented");
  }
  
  public void startMediaPlayer()
  {
    throw new RuntimeException(TAG + ": method not implemented");
  }
  
  public void stopAllTones()
  {
    throw new RuntimeException(TAG + ": method not implemented");
  }
  
  public void stopDTMFTone()
  {
    throw new RuntimeException(TAG + ": method not implemented");
  }
  
  public void stopMediaPlayer()
  {
    throw new RuntimeException(TAG + ": method not implemented");
  }
  
  public void stopRingtone(IRingtoneService.Ringtone paramRingtone)
  {
    throw new RuntimeException(TAG + ": method not implemented");
  }
  
  public boolean stopRingtone()
  {
    throw new RuntimeException(TAG + ": method not implemented");
  }
  
  public abstract int stream_Dtmf();
  
  public abstract int stream_Ring();
  
  public abstract int stream_Tone();
  
  public abstract int stream_Voice();
  
  public abstract boolean suspendNativeOnLocalHold();
  
  public abstract boolean suspendNativeOnParallelGSM();
  
  public abstract boolean suspendNativeOnPeerHold();
  
  protected native int suspendSound(boolean paramBoolean);
  
  public void trackActivity(Activity paramActivity)
  {
    throw new RuntimeException(TAG + ": method not implemented");
  }
  
  protected void unlockModeChange()
  {
    throw new RuntimeException(TAG + ": method not implemented");
  }
  
  public void unregisterModeStateListener(ISoundService.ModeStateListenerIntf paramModeStateListenerIntf)
  {
    throw new RuntimeException(TAG + ": method not implemented");
  }
  
  public void unregisterSpeakerStateListener(ISoundService.SpeakerStateListener paramSpeakerStateListener)
  {
    throw new RuntimeException(TAG + ": method not implemented");
  }
  
  public void unregisterVolumeChangeListener(ISoundService.VolumeChangeListenerIntf paramVolumeChangeListenerIntf)
  {
    throw new RuntimeException(TAG + ": method not implemented");
  }
  
  public void untrackActivity(Activity paramActivity)
  {
    throw new RuntimeException(TAG + ": method not implemented");
  }
  
  public abstract boolean useModeLocking();
  
  public abstract boolean useNativeResetOnSpeakerToggle();
  
  public abstract boolean useSpeakerResetForModeChangeWorkaround();
  
  protected native void useSpeakers(boolean paramBoolean);
  
  public abstract boolean useThreadPriority();
  
  public abstract boolean useVoiceChannelListeners();
  
  public abstract boolean useVolumeBoostForTonesInSpeakerMode();
  
  public abstract boolean useVolumeQuirks();
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.sound.AbstractSoundService
 * JD-Core Version:    0.7.0.1
 */