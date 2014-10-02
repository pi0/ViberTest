package com.viber.voip.sound;

import android.bluetooth.BluetoothDevice;
import android.media.AudioManager;
import android.media.MediaPlayer;
import android.net.Uri;
import com.viber.voip.ViberApplication;
import com.viber.voip.sound.bluetooth.BTControl;

public class AudioDeviceSoundServiceDelegate
  extends AbstractSoundService
{
  private final ISoundService parentSoundService;
  
  protected AudioDeviceSoundServiceDelegate(ISoundService paramISoundService)
  {
    this.parentSoundService = paramISoundService;
  }
  
  public ViberApplication getApplicationContext()
  {
    return this.parentSoundService.getApplicationContext();
  }
  
  public int getAudioCtl(int paramInt1, int paramInt2, int paramInt3)
  {
    return this.parentSoundService.getAudioCtl(paramInt1, paramInt2, paramInt3);
  }
  
  public ISoundService.IAudioSettings getAudioSettings(ISoundService.AudioModeCtl paramAudioModeCtl)
  {
    return this.parentSoundService.getAudioSettings(paramAudioModeCtl);
  }
  
  public BTControl getBluetoothCtl()
  {
    return this.parentSoundService.getBluetoothCtl();
  }
  
  public MediaPlayer getMediaPlayer()
  {
    return this.parentSoundService.getMediaPlayer();
  }
  
  public int getMode()
  {
    return this.parentSoundService.getMode();
  }
  
  public AudioManager getPlatformAudioManager()
  {
    return this.parentSoundService.getPlatformAudioManager();
  }
  
  public IRingtoneService.Ringtone getRingtone(int paramInt, boolean paramBoolean1, boolean paramBoolean2)
  {
    return this.parentSoundService.getRingtone(paramInt, paramBoolean1, paramBoolean2);
  }
  
  public IRingtoneService.Ringtone getRingtone(Uri paramUri, boolean paramBoolean1, boolean paramBoolean2)
  {
    return this.parentSoundService.getRingtone(paramUri, paramBoolean1, paramBoolean2);
  }
  
  public IRingtoneService getRingtoneService()
  {
    return this.parentSoundService.getRingtoneService();
  }
  
  public int getStreamMaxVolume(int paramInt)
  {
    return this.parentSoundService.getStreamMaxVolume(paramInt);
  }
  
  public int getStreamVolume(int paramInt)
  {
    return this.parentSoundService.getStreamVolume(paramInt);
  }
  
  public int getThreadPriority()
  {
    return this.parentSoundService.getThreadPriority();
  }
  
  public IVibratorService getVibratorService()
  {
    return this.parentSoundService.getVibratorService();
  }
  
  public int getVocoderCtl(ISoundService.VocoderCtl paramVocoderCtl, int paramInt1, int paramInt2)
  {
    return this.parentSoundService.getVocoderCtl(paramVocoderCtl, paramInt1, paramInt2);
  }
  
  public ISoundService.IVocoderSettings getVocoderSettings()
  {
    return this.parentSoundService.getVocoderSettings();
  }
  
  public boolean isOnHold()
  {
    return this.parentSoundService.isOnHold();
  }
  
  public boolean isPeerOnHold()
  {
    return this.parentSoundService.isPeerOnHold();
  }
  
  public boolean isRouteActive(int paramInt)
  {
    return this.parentSoundService.isRouteActive(paramInt);
  }
  
  public boolean isSpeakerphoneAllowed()
  {
    return this.parentSoundService.isSpeakerphoneAllowed();
  }
  
  public boolean isSpeakerphoneOn()
  {
    return this.parentSoundService.isSpeakerphoneOn();
  }
  
  public void loadSample(int paramInt1, int paramInt2)
  {
    this.parentSoundService.loadSample(paramInt1, paramInt2);
  }
  
  public void loadSamples(int[] paramArrayOfInt)
  {
    this.parentSoundService.loadSamples(paramArrayOfInt);
  }
  
  public void localHold()
  {
    this.parentSoundService.localHold();
  }
  
  public void localUnhold()
  {
    this.parentSoundService.localUnhold();
  }
  
  public int mode_Dtmf()
  {
    return this.parentSoundService.mode_Dtmf();
  }
  
  public int mode_InCall()
  {
    return this.parentSoundService.mode_InCall();
  }
  
  public int mode_Mic_InCall()
  {
    return this.parentSoundService.mode_Mic_InCall();
  }
  
  public int mode_Normal()
  {
    return this.parentSoundService.mode_Normal();
  }
  
  public int mode_Ringtone()
  {
    return this.parentSoundService.mode_Ringtone();
  }
  
  public int mode_Tone()
  {
    return this.parentSoundService.mode_Tone();
  }
  
  public void onAnswerButtonClick()
  {
    this.parentSoundService.onAnswerButtonClick();
  }
  
  public void onCallEnded(long paramLong, boolean paramBoolean, String paramString, int paramInt1, int paramInt2)
  {
    this.parentSoundService.onCallEnded(paramLong, paramBoolean, paramString, paramInt1, paramInt2);
  }
  
  public void onCallStarted(boolean paramBoolean)
  {
    this.parentSoundService.onCallStarted(paramBoolean);
  }
  
  public void onDeviceConnected(BluetoothDevice paramBluetoothDevice)
  {
    this.parentSoundService.onDeviceConnected(paramBluetoothDevice);
  }
  
  public void onDeviceDisconnected(BluetoothDevice paramBluetoothDevice)
  {
    this.parentSoundService.onDeviceDisconnected(paramBluetoothDevice);
  }
  
  public void onError(BluetoothDevice paramBluetoothDevice)
  {
    this.parentSoundService.onError(paramBluetoothDevice);
  }
  
  public boolean onHandsetOffCallDisabled()
  {
    return this.parentSoundService.onHandsetOffCallDisabled();
  }
  
  public boolean onHandsetOffCallEnabled()
  {
    return this.parentSoundService.onHandsetOffCallEnabled();
  }
  
  public void onHangup()
  {
    this.parentSoundService.onHangup();
  }
  
  public void onPhoneStateChanged(int paramInt)
  {
    this.parentSoundService.onPhoneStateChanged(paramInt);
  }
  
  public void peerHold()
  {
    this.parentSoundService.peerHold();
  }
  
  public void peerUnhold()
  {
    this.parentSoundService.peerUnhold();
  }
  
  public void playSample(int paramInt1, float paramFloat1, float paramFloat2, int paramInt2, int paramInt3, float paramFloat3)
  {
    this.parentSoundService.playSample(paramInt1, paramFloat1, paramFloat2, paramInt2, paramInt3, paramFloat3);
  }
  
  public void registerVoiceStateListener(VoiceStateListener paramVoiceStateListener)
  {
    this.parentSoundService.registerVoiceStateListener(paramVoiceStateListener);
  }
  
  public boolean rejectSpeakerActiveState()
  {
    return this.parentSoundService.rejectSpeakerActiveState();
  }
  
  public boolean rejectSpeakerStateChangeWithHeadset()
  {
    return this.parentSoundService.rejectSpeakerStateChangeWithHeadset();
  }
  
  public int setAudioCtl(int paramInt1, int paramInt2, int paramInt3)
  {
    return this.parentSoundService.setAudioCtl(paramInt1, paramInt2, paramInt3);
  }
  
  public void setMode(int paramInt)
  {
    this.parentSoundService.setMode(paramInt);
  }
  
  public void setModeWithPriorityLock(int paramInt)
  {
    this.parentSoundService.setModeWithPriorityLock(paramInt);
  }
  
  public void setSpeakerphoneOn(boolean paramBoolean)
  {
    this.parentSoundService.setSpeakerphoneOn(paramBoolean);
  }
  
  public int setVocoderCtl(ISoundService.VocoderCtl paramVocoderCtl, int paramInt1, int paramInt2)
  {
    return this.parentSoundService.setVocoderCtl(paramVocoderCtl, paramInt1, paramInt2);
  }
  
  public boolean shouldKillMediaManagerOnSuspend()
  {
    return this.parentSoundService.shouldKillMediaManagerOnSuspend();
  }
  
  public int stream_Dtmf()
  {
    return this.parentSoundService.stream_Dtmf();
  }
  
  public int stream_Notification()
  {
    return this.parentSoundService.stream_Notification();
  }
  
  public int stream_Ring()
  {
    return this.parentSoundService.stream_Ring();
  }
  
  public int stream_Tone()
  {
    return this.parentSoundService.stream_Tone();
  }
  
  public int stream_Voice()
  {
    return this.parentSoundService.stream_Voice();
  }
  
  public boolean suspendNativeOnLocalHold()
  {
    return this.parentSoundService.suspendNativeOnLocalHold();
  }
  
  public boolean suspendNativeOnParallelGSM()
  {
    return this.parentSoundService.suspendNativeOnParallelGSM();
  }
  
  public boolean suspendNativeOnPeerHold()
  {
    return this.parentSoundService.suspendNativeOnPeerHold();
  }
  
  public void syncSpeakerState()
  {
    this.parentSoundService.syncSpeakerState();
  }
  
  public void unregisterVoiceStateListener(VoiceStateListener paramVoiceStateListener)
  {
    this.parentSoundService.unregisterVoiceStateListener(paramVoiceStateListener);
  }
  
  public boolean useExtraBtChecksForModeChangeWorkaround()
  {
    return this.parentSoundService.useExtraBtChecksForModeChangeWorkaround();
  }
  
  public boolean useModeLocking()
  {
    return this.parentSoundService.useModeLocking();
  }
  
  public boolean useModeSwitchForSpeakerToggleWorkaround()
  {
    return this.parentSoundService.useModeSwitchForSpeakerToggleWorkaround();
  }
  
  public boolean useNativeMuteControl()
  {
    return this.parentSoundService.useNativeMuteControl();
  }
  
  public boolean useNativeResetOnSpeakerToggle()
  {
    return this.parentSoundService.useNativeResetOnSpeakerToggle();
  }
  
  public boolean useNativeSoundLibSpeakerControl()
  {
    return this.parentSoundService.useNativeSoundLibSpeakerControl();
  }
  
  public boolean useSpeakerResetForModeChangeWorkaround()
  {
    return this.parentSoundService.useSpeakerResetForModeChangeWorkaround();
  }
  
  public boolean useThreadPriority()
  {
    return this.parentSoundService.useThreadPriority();
  }
  
  public boolean useVoiceChannelListeners()
  {
    return this.parentSoundService.useVoiceChannelListeners();
  }
  
  public boolean useVolumeBoostForTonesInSpeakerMode()
  {
    return this.parentSoundService.useVolumeBoostForTonesInSpeakerMode();
  }
  
  public boolean useVolumeQuirks()
  {
    return this.parentSoundService.useVolumeQuirks();
  }
}


/* Location:           C:\Users\pooya\Desktop\bc.jar
 * Qualified Name:     com.viber.voip.sound.AudioDeviceSoundServiceDelegate
 * JD-Core Version:    0.7.0.1
 */