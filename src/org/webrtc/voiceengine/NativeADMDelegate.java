package org.webrtc.voiceengine;

import android.annotation.TargetApi;
import android.media.AudioManager;
import android.media.audiofx.AcousticEchoCanceler;
import android.media.audiofx.NoiseSuppressor;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.Handler;
import android.os.Process;
import com.viber.voip.ViberApplication;
import com.viber.voip.sound.CommonAbstractSoundService;
import com.viber.voip.sound.ISoundService;
import com.viber.voip.sound.SoundFactory;
import com.viber.voip.sound.SoundServiceCommonConfig.GenericConfig;
import com.viber.voip.sound.bluetooth.BTControl;
import java.util.HashSet;
import java.util.Set;
import org.webrtc.videoengine.ViEOMXHelper.Native;

public class NativeADMDelegate
{
  static final int AUDIOROUTE_PLAYBACK = 1;
  static final int AUDIOROUTE_PLAYBACK_AND_RECORDING = 3;
  static final int AUDIOROUTE_RECORDING = 2;
  static final int AUDIOROUTE_VOIP = 0;
  static final int DELEGATE_FAIL = -1;
  static final int DELEGATE_INTERCEPT = 1;
  static final int DELEGATE_OK = 0;
  private static final int PLAYBACK_THREAD_PRIORITY = -8;
  private static final int RECORDER_THREAD_PRIORITY = -8;
  private static final String TAG = NativeADMDelegate.class.getSimpleName();
  private static final boolean USE_AUDIOROUTING_API = false;
  private static final boolean USE_PRIORITY_BOOST = true;
  private static final boolean USE_RS_VOICE_COMMUNICATION_ROUTE_WHITELIST = true;
  private static Set<String> recordBugDeviceBlacklist = new HashSet();
  private static Set<String> voiceCommunicationRouteDeviceWhitelist = new HashSet();
  private static Set<String> voiceCommunicationRouteVendorWhitelist = new HashSet();
  private volatile int _audioRoute = 0;
  
  static
  {
    recordBugDeviceBlacklist.add("golfu");
    recordBugDeviceBlacklist.add("vision");
    recordBugDeviceBlacklist.add("GT-I9000");
    recordBugDeviceBlacklist.add("GT-S5570");
    recordBugDeviceBlacklist.add("GT-S5300");
    recordBugDeviceBlacklist.add("vee3e");
    recordBugDeviceBlacklist.add("jflte");
    voiceCommunicationRouteVendorWhitelist.add("htc");
    voiceCommunicationRouteVendorWhitelist.add("samsung");
    voiceCommunicationRouteVendorWhitelist.add("sony ericsson");
    voiceCommunicationRouteDeviceWhitelist.add("lt26i");
    voiceCommunicationRouteVendorWhitelist.add("asus");
    voiceCommunicationRouteDeviceWhitelist.add("grouper");
  }
  
  @TargetApi(16)
  private static boolean isPlatformAECAvailable_JBAndUpper()
  {
    return AcousticEchoCanceler.isAvailable();
  }
  
  @TargetApi(16)
  private static boolean isPlatformNSAvailable_JBAndUpper()
  {
    return NoiseSuppressor.isAvailable();
  }
  
  static boolean isPlatformWideAECEffectAvailable()
  {
    if (16 > Build.VERSION.SDK_INT) {
      return false;
    }
    try
    {
      boolean bool = isPlatformAECAvailable_JBAndUpper();
      return bool;
    }
    catch (Throwable localThrowable) {}
    return false;
  }
  
  public static boolean isPlatformWideNSEffectAvailable()
  {
    if (16 > Build.VERSION.SDK_INT) {
      return false;
    }
    try
    {
      boolean bool = isPlatformNSAvailable_JBAndUpper();
      return bool;
    }
    catch (Throwable localThrowable) {}
    return false;
  }
  
  static int isVoiceCommRouteAvailable(int paramInt1, int paramInt2)
  {
    if ((voiceCommunicationRouteVendorWhitelist.contains(Build.MANUFACTURER.toLowerCase())) && (voiceCommunicationRouteDeviceWhitelist.contains(Build.DEVICE))) {
      return 0;
    }
    return 1;
  }
  
  @ViEOMXHelper.Native
  int CheckDeviceVoiceCommunicationAbility(int paramInt1, int paramInt2)
  {
    return isVoiceCommRouteAvailable(paramInt1, paramInt2);
  }
  
  int GetStreamMaxVolume(int paramInt)
  {
    SoundFactory.log(3, TAG, "GetStreamMaxVolume: #" + paramInt);
    int i = SoundFactory.getSoundService(ViberApplication.getInstance()).getStreamMaxVolume(paramInt);
    if (-1 == i) {
      return -1;
    }
    return i;
  }
  
  int OnAGC()
  {
    SoundFactory.log(3, TAG, "OnAGC");
    return -1;
  }
  
  int OnCreate()
  {
    return OnCreate(0);
  }
  
  int OnCreate(int paramInt)
  {
    SoundFactory.log(3, TAG, "OnCreate #" + paramInt);
    this._audioRoute = paramInt;
    if (((2 == this._audioRoute) || (3 == this._audioRoute)) && (recordBugDeviceBlacklist.contains(Build.DEVICE))) {
      return -1;
    }
    ISoundService localISoundService = SoundFactory.getSoundService(ViberApplication.getInstance());
    if ((this._audioRoute == 0) || (2 == this._audioRoute)) {
      ((CommonAbstractSoundService)localISoundService).startAudioRecord(false);
    }
    return 0;
  }
  
  int OnDestroy()
  {
    SoundFactory.log(3, TAG, "OnDestroy");
    if ((this._audioRoute == 0) || (2 == this._audioRoute))
    {
      ISoundService localISoundService = SoundFactory.getSoundService(ViberApplication.getInstance());
      ((CommonAbstractSoundService)localISoundService).stopAudioRecord(false);
      ((CommonAbstractSoundService)localISoundService).processAudioDevStopSignalOnce();
    }
    return 0;
  }
  
  int OnGetMicrophoneMute()
  {
    SoundFactory.log(3, TAG, "OnGetMicrophoneMute");
    return -1;
  }
  
  int OnGetSpeakerMute()
  {
    SoundFactory.log(3, TAG, "OnGetSpeakerMute");
    return -1;
  }
  
  int OnGetSpeakerVolume()
  {
    SoundFactory.log(3, TAG, "OnGetSpeakerVolume");
    return -1;
  }
  
  int OnInitPlayback(int paramInt1, int paramInt2)
  {
    SoundFactory.log(3, TAG, "OnInitPlayback: sampleRate:" + paramInt1 + ", streamType:" + paramInt2);
    return 0;
  }
  
  int OnInitRecording(int paramInt1, int paramInt2)
  {
    SoundFactory.log(3, TAG, "OnInitRecording: audioSource:" + paramInt1 + ", sampleRate:" + paramInt2);
    return 0;
  }
  
  int OnProbePlayback(int paramInt1, int paramInt2)
  {
    SoundFactory.log(3, TAG, "OnProbePlayback: sampleRate:" + paramInt1 + ", streamType:" + paramInt2);
    return 0;
  }
  
  int OnProbeRecording(int paramInt1, int paramInt2)
  {
    SoundFactory.log(3, TAG, "OnProbeRecording: audioSource:" + paramInt1 + ", sampleRate:" + paramInt2);
    return 0;
  }
  
  int OnSetAGC(boolean paramBoolean)
  {
    SoundFactory.log(3, TAG, "OnSetAGC");
    return 0;
  }
  
  int OnSetLoudspeakerState(boolean paramBoolean)
  {
    ISoundService localISoundService = SoundFactory.getSoundService(ViberApplication.getInstance());
    AudioManager localAudioManager = localISoundService.getPlatformAudioManager();
    BTControl localBTControl = localISoundService.getBluetoothCtl();
    SoundFactory.log(3, TAG, "OnSetLoudspeakerState: " + paramBoolean);
    if ((this._audioRoute != 0) && ((localISoundService.isHeadsetPluggedIn()) || (localAudioManager.isBluetoothA2dpOn()))) {}
    do
    {
      do
      {
        return 0;
        if ((this._audioRoute != 0) && (localBTControl.isHeadsetConnected()))
        {
          if (paramBoolean)
          {
            SoundFactory.log(3, TAG, "looks like we're playing ptt, and bt or headset is connected, so no speakerphone");
            localBTControl.enableBluetoothRoute();
            localAudioManager.setMode(ISoundService.MODE_FOR_BLUETOOTH);
            return 0;
          }
          SoundFactory.log(3, TAG, "looks like we're stopped playing ptt, putting everything bt related back (not touching speakerphone)");
          localAudioManager.setMode(0);
          localBTControl.disableBluetoothRoute();
          localBTControl.stopBluetooth();
          return 0;
        }
      } while (localAudioManager.isSpeakerphoneOn() == paramBoolean);
      if ((BTControl.isAvailable()) && (paramBoolean)) {
        localBTControl.disableBluetoothRoute();
      }
      localAudioManager.setSpeakerphoneOn(paramBoolean);
      localISoundService.syncSpeakerState();
      SoundFactory.log(3, TAG, "setting speaker state to: " + paramBoolean);
    } while ((!BTControl.isAvailable()) || (paramBoolean));
    localBTControl.enableBluetoothRoute();
    return 0;
  }
  
  int OnSetMicrophoneMute(boolean paramBoolean)
  {
    SoundFactory.log(3, TAG, "OnSetMicrophoneMute");
    return 0;
  }
  
  int OnSetSpeakerMute(boolean paramBoolean)
  {
    SoundFactory.log(3, TAG, "OnSetSpeakerMute");
    return 0;
  }
  
  int OnSetSpeakerVolume(int paramInt)
  {
    SoundFactory.log(3, TAG, "OnSetSpeakerVolume");
    return 0;
  }
  
  int OnStartPlayback()
  {
    SoundFactory.log(3, TAG, "OnStartPlayback");
    if (SoundServiceCommonConfig.GenericConfig.CTL_USE_MEDIA_THREAD_PRIORITY) {
      setCurrentThreadPriority(-8);
    }
    return 0;
  }
  
  int OnStartRecording()
  {
    SoundFactory.log(3, TAG, "OnStartRecording");
    if (SoundServiceCommonConfig.GenericConfig.CTL_USE_MEDIA_THREAD_PRIORITY) {
      setCurrentThreadPriority(-8);
    }
    ISoundService localISoundService = SoundFactory.getSoundService(ViberApplication.getInstance());
    localISoundService.getHandler().post(new NativeADMDelegate.1(this, localISoundService));
    return 0;
  }
  
  int OnStopPlayback()
  {
    SoundFactory.log(3, TAG, "OnStopPlayback");
    if (SoundServiceCommonConfig.GenericConfig.CTL_USE_MEDIA_THREAD_PRIORITY) {
      setCurrentThreadPriority(-19);
    }
    return 0;
  }
  
  int OnStopRecording()
  {
    SoundFactory.log(3, TAG, "OnStopRecording");
    if (SoundServiceCommonConfig.GenericConfig.CTL_USE_MEDIA_THREAD_PRIORITY) {
      setCurrentThreadPriority(-19);
    }
    ISoundService localISoundService = SoundFactory.getSoundService(ViberApplication.getInstance());
    localISoundService.getHandler().post(new NativeADMDelegate.2(this, localISoundService));
    return 0;
  }
  
  int PlaybackWarning(int paramInt1, int paramInt2)
  {
    SoundFactory.log(3, TAG, "PlaybackWarning");
    return 0;
  }
  
  int RecordWarning(int paramInt1, int paramInt2)
  {
    SoundFactory.log(3, TAG, "RecordWarning");
    return 0;
  }
  
  void setCurrentThreadPriority(int paramInt)
  {
    try
    {
      Process.setThreadPriority(paramInt);
      SoundFactory.log(3, TAG, "thread " + Thread.currentThread() + " priority is " + paramInt + " now");
      return;
    }
    catch (Exception localException)
    {
      SoundFactory.log(3, TAG, "thread " + Thread.currentThread() + " priority failed: " + localException.getMessage());
    }
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     org.webrtc.voiceengine.NativeADMDelegate
 * JD-Core Version:    0.7.0.1
 */