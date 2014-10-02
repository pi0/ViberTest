package com.viber.voip.sound;

import android.app.Activity;
import android.bluetooth.BluetoothDevice;
import android.content.Context;
import android.content.IntentFilter;
import android.content.res.AssetFileDescriptor;
import android.content.res.Resources;
import android.content.res.Resources.NotFoundException;
import android.media.AudioManager;
import android.media.MediaPlayer;
import android.media.SoundPool;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Process;
import android.telephony.TelephonyManager;
import android.util.Pair;
import com.viber.jni.DeviceFlags;
import com.viber.jni.DeviceFlags.DeviceModes;
import com.viber.jni.PhoneControllerWrapper;
import com.viber.jni.dialer.DialerController;
import com.viber.voip.ViberApplication;
import com.viber.voip.dx;
import com.viber.voip.phone.call.a;
import com.viber.voip.phone.call.k;
import com.viber.voip.phone.call.n;
import com.viber.voip.settings.j;
import com.viber.voip.settings.l;
import com.viber.voip.sound.bluetooth.BTControl;
import com.viber.voip.sound.tonegen.IToneGenerator;
import com.viber.voip.sound.tonegen.TonePlayer;
import java.io.FileDescriptor;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import org.webrtc.voiceengine.AudioDeviceManager;
import org.webrtc.voiceengine.IAudioDevice;
import org.webrtc.voiceengine.IAudioDevice.AudioDeviceStateListener;

public abstract class CommonAbstractSoundService
  extends AbstractSoundService
  implements AudioDeviceOperable
{
  public static final int FLAG_ALLOW_RINGER_MODES = 2;
  public static final int FLAG_DONT_BE_SELF_RECURSIVE = 256;
  public static final int FLAG_NATIVE_VOLUME = 512;
  public static final int FLAG_PLAY_SOUND = 4;
  public static final int FLAG_REMOVE_SOUND_AND_VIBRATE = 8;
  public static final int FLAG_SHOW_UI = 1;
  public static final int FLAG_VIBRATE = 16;
  private static final int GSM_CALL_END_HANDLING_DELAY = 2000;
  protected static final int NATIVE_VOICE_STATE_STARTED = 1;
  protected static final int NATIVE_VOICE_STATE_STOPPED = 0;
  private static final int SETMODE_RESTORE_FROM_DEFERRED = 256;
  public static final String TAG = CommonAbstractSoundService.class.getSimpleName();
  private static List<Pair<Integer, ISoundService.ModeStateListenerIntf>> _deferredModeChangeQueue;
  protected static volatile int _deviceFlags = DeviceFlags.getFlagsForDeviceModel();
  protected static volatile DeviceFlags.DeviceModes _deviceModes = DeviceFlags.getSpeechEnhancementsModeForDeviceModel();
  private static Handler _handler;
  private static HandlerThread _handlerThread;
  private static Map<Integer, Integer> _samplesMap = Collections.synchronizedMap(new HashMap());
  protected static CommonAbstractSoundService _svcInstance;
  protected static volatile boolean beforeHeadsetPluggedSpeakerStateWasOn;
  private static volatile boolean max_volumes_initialized = false;
  private static MediaPlayer mediaPlayer;
  private static volatile AtomicBoolean modeChangeAtomicLock = new AtomicBoolean(false);
  protected static volatile int native_state;
  private static volatile int routingFlags;
  private static volatile int[] stream_max_volume = new int[9];
  private CommonAbstractSoundService.AudioSettingsImpl[] _audioSettings;
  private final SoundPool _samplesPool;
  private CommonAbstractSoundService.VocoderSettingsImpl _vocoderSettings;
  private volatile VoiceStateListener.VoiceState _voiceState = VoiceStateListener.VoiceState.VS_RINGER;
  private final Set<VoiceStateListener> _voiceStateListeners = Collections.synchronizedSet(new HashSet());
  private IAudioDevice audioDeviceCtl = null;
  private IAudioDevice.AudioDeviceStateListener audioDeviceStateListener;
  private final AudioManager audioManager;
  private final Context ctx;
  private Map<ISoundService.ModeStateListenerIntf, Object> globalModeStateListeners = Collections.synchronizedMap(new HashMap());
  private Map<ISoundService.SpeakerStateListener, Object> globalSpeakerStateListeners = Collections.synchronizedMap(new HashMap());
  private volatile CommonAbstractSoundService.HeadphonePlugStateListener headsetPlugReceiver = new CommonAbstractSoundService.HeadphonePlugStateListener(this);
  protected volatile boolean isMicMuted = false;
  protected volatile boolean isSpeakerActive = false;
  private volatile boolean localHoldFlag = false;
  private final AudioFocusController mAudioFocusControl;
  private final BTControl mBtControl;
  private final MMControl mmControl;
  private final AbstractSoundService.SoundServiceParams myInitialParams;
  private volatile boolean peerHoldFlag = false;
  protected volatile int prevPhoneState = 0;
  private final IRingtoneService ringtoneService;
  private volatile boolean spirit_coldstart = true;
  private final VocoderWatchdog vocoderWatchdog;
  private final Map<ISoundService.VolumeChangeListenerIntf, Object> volumeChangeListeners = Collections.synchronizedMap(new HashMap());
  
  static
  {
    _deferredModeChangeQueue = Collections.synchronizedList(new ArrayList());
    mediaPlayer = null;
    native_state = 0;
    _handlerThread = new HandlerThread("SoundService");
    _handlerThread.setDaemon(true);
    _handlerThread.start();
    _handler = new Handler(_handlerThread.getLooper());
    _svcInstance = null;
    routingFlags = 0;
    beforeHeadsetPluggedSpeakerStateWasOn = false;
  }
  
  protected CommonAbstractSoundService(Context paramContext)
  {
    CommonAbstractSoundService.AudioSettingsImpl[] arrayOfAudioSettingsImpl = new CommonAbstractSoundService.AudioSettingsImpl[2];
    arrayOfAudioSettingsImpl[0] = new CommonAbstractSoundService.AudioSettingsImpl(this, (CommonAbstractSoundService.DbgAudioSettingsTracer)null);
    arrayOfAudioSettingsImpl[1] = new CommonAbstractSoundService.AudioSettingsImpl(this, (CommonAbstractSoundService.DbgAudioSettingsTracer)null);
    this._audioSettings = arrayOfAudioSettingsImpl;
    this._vocoderSettings = new CommonAbstractSoundService.VocoderSettingsImpl(this, null);
    this.audioDeviceStateListener = new CommonAbstractSoundService.1(this);
    SoundFactory.log(3, TAG, "GenericSoundService<ctor>@" + paramContext);
    if (SoundFactory.instance != null) {
      throw new RuntimeException("Can't create new instance of SoundService: singleton is already registered");
    }
    this.ctx = paramContext;
    this.audioManager = ((AudioManager)this.ctx.getSystemService("audio"));
    this.mBtControl = new BTControl(this);
    new AudioDeviceSoundServiceDelegate(this);
    registerAudioDevice(AudioDeviceManager.getAudioDeviceCtl());
    this.myInitialParams = new AbstractSoundService.SoundServiceParams(this, this);
    this.isSpeakerActive = isSpeakerphoneOn();
    this.ctx.registerReceiver(this.headsetPlugReceiver, new IntentFilter("android.intent.action.HEADSET_PLUG"));
    this.ringtoneService = RingtoneService.forSoundService(this);
    if ((this.ringtoneService instanceof ISoundService.ModeStateListener)) {
      registerModeStateListener((ISoundService.ModeStateListener)this.ringtoneService);
    }
    this.mmControl = ((MMControl)null);
    boolean bool = dx.a;
    AudioFocusController localAudioFocusController = null;
    if (bool) {
      localAudioFocusController = new AudioFocusController(this.audioManager);
    }
    this.mAudioFocusControl = localAudioFocusController;
    if (SoundServiceCommonConfig.GenericConfig.CTL_USE_UI_THREAD_PRIORITY) {
      Process.setThreadPriority(-19);
    }
    this.vocoderWatchdog = new VocoderWatchdog(this);
    getAudioDeviceCtl().registerStateListener(this.vocoderWatchdog);
    initMaxVolumeValuesForStreams();
    this._samplesPool = new SoundPool(1, stream_Notification(), 0);
  }
  
  private void _dumpStackTrace(String paramString, int paramInt) {}
  
  private String _getCallerMethodName()
  {
    StackTraceElement[] arrayOfStackTraceElement = Thread.currentThread().getStackTrace();
    if (arrayOfStackTraceElement.length < 5) {
      return "";
    }
    return arrayOfStackTraceElement[4].getClassName() + "." + arrayOfStackTraceElement[4].getMethodName();
  }
  
  private void _replayModeChange()
  {
    for (;;)
    {
      synchronized (_deferredModeChangeQueue)
      {
        if (_deferredModeChangeQueue.size() <= 0) {
          break label129;
        }
        localPair = (Pair)_deferredModeChangeQueue.get(-1 + _deferredModeChangeQueue.size());
        _deferredModeChangeQueue.clear();
        if (localPair == null) {
          return;
        }
      }
      SoundFactory.log(3, TAG, "setMode(" + getModeName(((Integer)localPair.first).intValue()) + "): restoring from deferred ");
      setMode(((Integer)localPair.first).intValue(), (ISoundService.ModeStateListenerIntf)localPair.second, 256);
      return;
      label129:
      Pair localPair = null;
    }
  }
  
  public static String getModeName(int paramInt)
  {
    if (-1 == paramInt) {
      return "MODE_CURRENT";
    }
    if (2 == paramInt) {
      return "MODE_IN_CALL";
    }
    if (-2 == paramInt) {
      return "MODE_INVALID";
    }
    if (paramInt == 0) {
      return "MODE_NORMAL";
    }
    if (1 == paramInt) {
      return "MODE_RINGTONE";
    }
    if (MODE_IN_COMMUNICATION == paramInt) {
      return "MODE_IN_COMMUNICATION";
    }
    return "unknown";
  }
  
  public static String getRingerModeName(int paramInt)
  {
    if (2 == paramInt) {
      return "RINGER_MODE_NORMAL";
    }
    if (paramInt == 0) {
      return "RINGER_MODE_SILENT";
    }
    if (1 == paramInt) {
      return "RINGER_MODE_VIBRATE";
    }
    return "unknown";
  }
  
  protected static String getRouteName(int paramInt)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    if (1 == (paramInt & 0x1)) {
      localStringBuilder.append("ROUTEMODE_CALL ");
    }
    if (4 == (paramInt & 0x4)) {
      localStringBuilder.append("ROUTEMODE_DTMF ");
    }
    if (32 == (paramInt & 0x20)) {
      localStringBuilder.append("ROUTEMODE_EXTERNAL_HEADSET ");
    }
    if (16 == (paramInt & 0x10)) {
      localStringBuilder.append("ROUTEMODE_GSMCALL ");
    }
    if (8 == (paramInt & 0x8)) {
      localStringBuilder.append("ROUTEMODE_RINGTONE ");
    }
    if (2 == (paramInt & 0x2)) {
      localStringBuilder.append("ROUTEMODE_TONE ");
    }
    if (paramInt == 0) {
      localStringBuilder.append("ROUTEMODE_NORMAL ");
    }
    return localStringBuilder.toString().trim();
  }
  
  public static String getStreamName(int paramInt)
  {
    if (4 == paramInt) {
      return "STREAM_ALARM";
    }
    if (8 == paramInt) {
      return "STREAM_DTMF";
    }
    if (3 == paramInt) {
      return "STREAM_MUSIC";
    }
    if (5 == paramInt) {
      return "STREAM_NOTIFICATION";
    }
    if (2 == paramInt) {
      return "STREAM_RING";
    }
    if (1 == paramInt) {
      return "STREAM_SYSTEM";
    }
    if (paramInt == 0) {
      return "STREAM_VOICE_CALL";
    }
    return "unknown";
  }
  
  private void initMaxVolumeValuesForStreams()
  {
    if (max_volumes_initialized) {
      return;
    }
    int[] arrayOfInt = stream_max_volume;
    int i = 0;
    for (;;)
    {
      try
      {
        if (i < stream_max_volume.length)
        {
          stream_max_volume[i] = this.audioManager.getStreamMaxVolume(i);
          boolean bool1 = max_volumes_initialized;
          if (stream_max_volume[i] != 0)
          {
            bool2 = true;
            max_volumes_initialized = bool2 | bool1;
            i++;
          }
        }
        else
        {
          return;
        }
      }
      finally {}
      boolean bool2 = false;
    }
  }
  
  private void logRouteState()
  {
    SoundFactory.log(3, TAG, "routing: bta2dp=" + this.audioManager.isBluetoothA2dpOn() + " btSco=" + this.audioManager.isBluetoothScoOn() + " speaker=" + this.audioManager.isSpeakerphoneOn());
  }
  
  private void notifyVoiceStateChange(VoiceStateListener.VoiceState paramVoiceState1, VoiceStateListener.VoiceState paramVoiceState2)
  {
    synchronized (this._voiceStateListeners)
    {
      HashSet localHashSet = new HashSet(this._voiceStateListeners);
      Iterator localIterator = localHashSet.iterator();
      if (localIterator.hasNext()) {
        ((VoiceStateListener)localIterator.next()).onVoiceStateChanged(this, paramVoiceState2);
      }
    }
  }
  
  private void pauseSoundPool()
  {
    if (Build.VERSION.SDK_INT >= 8) {
      this._samplesPool.autoPause();
    }
  }
  
  private void resumeSoundPool()
  {
    if (Build.VERSION.SDK_INT >= 8) {
      this._samplesPool.autoResume();
    }
  }
  
  protected void _notifySpeakerStateChange(boolean paramBoolean1, boolean paramBoolean2)
  {
    HashMap localHashMap;
    for (;;)
    {
      Map.Entry localEntry;
      synchronized (this.globalSpeakerStateListeners)
      {
        localHashMap = new HashMap(this.globalSpeakerStateListeners);
        Iterator localIterator = localHashMap.entrySet().iterator();
        if (!localIterator.hasNext()) {
          break;
        }
        localEntry = (Map.Entry)localIterator.next();
        if (paramBoolean2) {
          ((ISoundService.SpeakerStateListener)localEntry.getKey()).onSpeakerStatePreChanged(paramBoolean1);
        }
      }
      ((ISoundService.SpeakerStateListener)localEntry.getKey()).onSpeakerStateChanged(paramBoolean1);
    }
    localHashMap.clear();
  }
  
  protected void _notifySpeakerStatePostChange(boolean paramBoolean)
  {
    _notifySpeakerStateChange(paramBoolean, false);
  }
  
  protected void _notifySpeakerStatePreChange(boolean paramBoolean)
  {
    _notifySpeakerStateChange(paramBoolean, true);
  }
  
  protected boolean checkPeerHoldStatusAndPlayHoldToneIfNecessary()
  {
    k localk = getApplicationContext().getPhoneController(false).getCurrentCall();
    boolean bool1 = false;
    if (localk != null)
    {
      boolean bool2 = isPeerOnHold();
      bool1 = false;
      if (bool2)
      {
        stopAllTones();
        setModeWithPriorityLock(mode_Tone());
        playTone(ToneGeneratorFactory.ToneType.HOLD_TONE);
        bool1 = true;
      }
    }
    return bool1;
  }
  
  protected void checkVoiceStateForRouting(int paramInt)
  {
    for (;;)
    {
      synchronized (this._voiceState)
      {
        VoiceStateListener.VoiceState localVoiceState2 = this._voiceState;
        if (1 == (paramInt & 0x1))
        {
          this._voiceState = VoiceStateListener.VoiceState.VS_VOICE;
          if (localVoiceState2 != this._voiceState) {
            notifyVoiceStateChange(localVoiceState2, this._voiceState);
          }
          return;
        }
        if (16 == (paramInt & 0x10)) {
          this._voiceState = VoiceStateListener.VoiceState.VS_GSM;
        }
      }
      this._voiceState = VoiceStateListener.VoiceState.VS_RINGER;
    }
  }
  
  public int clearRouteFlags(int paramInt)
  {
    if ((paramInt & routingFlags) == 0) {
      return routingFlags;
    }
    SoundFactory.log(3, TAG, "<-- routing flags changed from " + routingFlags + " to " + (routingFlags & (paramInt ^ 0xFFFFFFFF)) + ": clearing route flag " + getRouteName(paramInt));
    routingFlags &= (paramInt ^ 0xFFFFFFFF);
    checkVoiceStateForRouting(routingFlags);
    SoundFactory.log(3, TAG, "<-- current routing is: [" + getRouteName(routingFlags) + "]");
    return routingFlags;
  }
  
  public void ensureStopTone(ToneGeneratorFactory.ToneType paramToneType)
  {
    ToneGeneratorFactory.ensureStopCommonTone(paramToneType);
  }
  
  protected void finalize()
  {
    this.ctx.unregisterReceiver(this.headsetPlugReceiver);
    stopMediaPlayer();
    releaseMediaPlayer();
    stopAllTones();
    super.finalize();
  }
  
  protected void forceSpeakerphoneOn(boolean paramBoolean)
  {
    if ((BTControl.isAvailable()) && (paramBoolean)) {
      this.mBtControl.disableBluetoothRoute();
    }
    SoundFactory.log(3, TAG, "forceSpeakerphone: setting to " + paramBoolean + ", mode=" + getModeName(getMode()));
    this.audioManager.setSpeakerphoneOn(paramBoolean);
    SoundFactory.log(3, TAG, "forceSpeakerphone: current is =" + this.audioManager.isSpeakerphoneOn());
    if ((BTControl.isAvailable()) && (!paramBoolean))
    {
      this.mBtControl.disableBluetoothRoute();
      this.mBtControl.enableBluetoothRoute();
    }
  }
  
  public final ViberApplication getApplicationContext()
  {
    return (ViberApplication)this.ctx.getApplicationContext();
  }
  
  public int getAudioCtl(int paramInt1, int paramInt2, int paramInt3)
  {
    ISoundService.IAudioSettings localIAudioSettings = getAudioSettings(paramInt2);
    if (localIAudioSettings == null) {}
    do
    {
      return paramInt3;
      if (ISoundService.AudioCtl.AUCTL_AEC_MODE.ordinal() == paramInt1) {
        return localIAudioSettings.getAECMode();
      }
      if (ISoundService.AudioCtl.AUCTL_AGC_MODE.ordinal() == paramInt1) {
        return localIAudioSettings.getAGCMode();
      }
      if (ISoundService.AudioCtl.AUCTL_NS_MODE.ordinal() == paramInt1) {
        return localIAudioSettings.getNSMode();
      }
      if (ISoundService.AudioCtl.AUCTL_RX_AGC_MODE.ordinal() == paramInt1) {
        return localIAudioSettings.getRxAGCMode();
      }
      if (ISoundService.AudioCtl.AUCTL_RX_NS_MODE.ordinal() == paramInt1) {
        return localIAudioSettings.getRxNSMode();
      }
    } while (ISoundService.AudioCtl.AUCTL_VAD_MODE.ordinal() != paramInt1);
    return localIAudioSettings.getVADMode();
  }
  
  public final IAudioDevice getAudioDeviceCtl()
  {
    return this.audioDeviceCtl;
  }
  
  public ISoundService.IAudioSettings getAudioSettings(int paramInt)
  {
    if (paramInt < this._audioSettings.length) {
      return this._audioSettings[paramInt];
    }
    return null;
  }
  
  public ISoundService.IAudioSettings getAudioSettings(ISoundService.AudioModeCtl paramAudioModeCtl)
  {
    return getAudioSettings(paramAudioModeCtl.ordinal());
  }
  
  public BTControl getBluetoothCtl()
  {
    return this.mBtControl;
  }
  
  public Context getContext()
  {
    return this.ctx;
  }
  
  public final Handler getHandler()
  {
    return _handler;
  }
  
  public AbstractSoundService.SoundServiceParams getInitialParams()
  {
    return this.myInitialParams;
  }
  
  public MediaPlayer getMediaPlayer()
  {
    synchronized (stream_max_volume)
    {
      if (mediaPlayer == null) {
        mediaPlayer = new MediaPlayer();
      }
      return mediaPlayer;
    }
  }
  
  public int getMode()
  {
    return this.audioManager.getMode();
  }
  
  public AudioManager getPlatformAudioManager()
  {
    return this.audioManager;
  }
  
  public int getRingerMode()
  {
    return this.audioManager.getRingerMode();
  }
  
  public IRingtoneService.Ringtone getRingtone(int paramInt)
  {
    return getRingtoneService().getRingtone(paramInt, false);
  }
  
  public IRingtoneService.Ringtone getRingtone(int paramInt, boolean paramBoolean)
  {
    return getRingtoneService().getRingtone(paramInt, paramBoolean);
  }
  
  public IRingtoneService.Ringtone getRingtone(int paramInt, boolean paramBoolean1, boolean paramBoolean2)
  {
    return getRingtoneService().getRingtone(paramInt, paramBoolean1, paramBoolean2);
  }
  
  public IRingtoneService.Ringtone getRingtone(Uri paramUri)
  {
    return getRingtoneService().getRingtone(paramUri);
  }
  
  public IRingtoneService.Ringtone getRingtone(Uri paramUri, boolean paramBoolean)
  {
    return getRingtoneService().getRingtone(paramUri, paramBoolean);
  }
  
  public IRingtoneService.Ringtone getRingtone(Uri paramUri, boolean paramBoolean1, boolean paramBoolean2)
  {
    return getRingtoneService().getRingtone(paramUri, paramBoolean1, paramBoolean2);
  }
  
  public final IRingtoneService getRingtoneService()
  {
    return this.ringtoneService;
  }
  
  public int getStreamMaxVolume(int paramInt)
  {
    if (!max_volumes_initialized)
    {
      initMaxVolumeValuesForStreams();
      if (max_volumes_initialized) {}
    }
    while ((paramInt < 0) || (paramInt >= stream_max_volume.length)) {
      return -1;
    }
    return stream_max_volume[paramInt];
  }
  
  public int getStreamVolume(int paramInt)
  {
    return this.audioManager.getStreamVolume(paramInt);
  }
  
  public final IVibratorService getVibratorService()
  {
    return (IVibratorService)this.ringtoneService;
  }
  
  public int getVocoderCtl(ISoundService.VocoderCtl paramVocoderCtl, int paramInt1, int paramInt2)
  {
    return this._vocoderSettings.getVocoderCtl(paramVocoderCtl, paramInt1, paramInt2);
  }
  
  public ISoundService.IVocoderSettings getVocoderSettings()
  {
    return this._vocoderSettings;
  }
  
  public boolean isBluetoothScoOn()
  {
    return (BTControl.isAvailable()) && (this.mBtControl.isScoOn());
  }
  
  public boolean isHeadsetPluggedIn()
  {
    return isRouteActive(32);
  }
  
  public boolean isMediaPlayerPlaying()
  {
    synchronized (stream_max_volume)
    {
      MediaPlayer localMediaPlayer = getMediaPlayer();
      try
      {
        boolean bool = localMediaPlayer.isPlaying();
        return bool;
      }
      catch (Exception localException)
      {
        return false;
      }
    }
  }
  
  public boolean isMicrophoneMute()
  {
    if (useNativeMuteControl()) {
      return this.isMicMuted;
    }
    return this.audioManager.isMicrophoneMute();
  }
  
  public final boolean isOnHold()
  {
    return this.localHoldFlag;
  }
  
  public final boolean isPeerOnHold()
  {
    return this.peerHoldFlag;
  }
  
  public boolean isRingtonePlaying()
  {
    return isMediaPlayerPlaying();
  }
  
  public final boolean isRouteActive(int paramInt)
  {
    return paramInt == (paramInt & routingFlags);
  }
  
  public abstract boolean isSpeakerphoneAllowed();
  
  public boolean isSpeakerphoneOn()
  {
    return isSpeakerphoneAllowed() & this.isSpeakerActive;
  }
  
  public void loadAudioResource(int paramInt)
  {
    try
    {
      localAssetFileDescriptor = this.ctx.getResources().openRawResourceFd(paramInt);
      if (localAssetFileDescriptor == null) {
        return;
      }
    }
    catch (Resources.NotFoundException localNotFoundException)
    {
      localNotFoundException.printStackTrace();
      return;
    }
    try
    {
      setMediaDataSource(localAssetFileDescriptor.getFileDescriptor(), localAssetFileDescriptor.getStartOffset(), localAssetFileDescriptor.getLength());
      try
      {
        localAssetFileDescriptor.close();
        return;
      }
      catch (IOException localIOException6)
      {
        localIOException6.printStackTrace();
        return;
      }
      try
      {
        localAssetFileDescriptor.close();
        throw localObject;
      }
      catch (IOException localIOException1)
      {
        for (;;)
        {
          localIOException1.printStackTrace();
        }
      }
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      localIllegalArgumentException = localIllegalArgumentException;
      localIllegalArgumentException.printStackTrace();
      try
      {
        localAssetFileDescriptor.close();
        return;
      }
      catch (IOException localIOException5)
      {
        localIOException5.printStackTrace();
        return;
      }
    }
    catch (IllegalStateException localIllegalStateException)
    {
      localIllegalStateException = localIllegalStateException;
      localIllegalStateException.printStackTrace();
      try
      {
        localAssetFileDescriptor.close();
        return;
      }
      catch (IOException localIOException4)
      {
        localIOException4.printStackTrace();
        return;
      }
    }
    catch (IOException localIOException2)
    {
      localIOException2 = localIOException2;
      localIOException2.printStackTrace();
      try
      {
        localAssetFileDescriptor.close();
        return;
      }
      catch (IOException localIOException3)
      {
        localIOException3.printStackTrace();
        return;
      }
    }
    finally {}
  }
  
  public void loadSample(int paramInt1, int paramInt2)
  {
    _samplesMap.put(Integer.valueOf(paramInt1), Integer.valueOf(this._samplesPool.load(this.ctx, paramInt1, paramInt2)));
  }
  
  public void loadSamples(int[] paramArrayOfInt)
  {
    int i = paramArrayOfInt.length;
    for (int j = 0; j < i; j++) {
      loadSample(paramArrayOfInt[j], 0);
    }
  }
  
  public void localHold()
  {
    this.localHoldFlag = true;
    stopAudioRecord(suspendNativeOnLocalHold());
    if (this.peerHoldFlag) {
      stopTone();
    }
  }
  
  public void localUnhold()
  {
    this.localHoldFlag = false;
    if ((!checkPeerHoldStatusAndPlayHoldToneIfNecessary()) && (!isPeerOnHold())) {
      startAudioRecord(suspendNativeOnLocalHold());
    }
  }
  
  protected void lockModeChange()
  {
    if ((!useModeLocking()) || (modeChangeAtomicLock.get())) {
      return;
    }
    SoundFactory.log(3, TAG, "setMode() lock acquired by thread " + Thread.currentThread());
    modeChangeAtomicLock.set(true);
  }
  
  protected boolean masterVolumeSet(int paramInt)
  {
    if (!useVolumeQuirks()) {}
    while ((ViberApplication)this.ctx != null) {
      return false;
    }
    return false;
  }
  
  public int mode_Dtmf()
  {
    return 0;
  }
  
  public int mode_InCall()
  {
    return MODE_IN_COMMUNICATION;
  }
  
  public int mode_Mic_InCall()
  {
    return mode_InCall();
  }
  
  public int mode_Normal()
  {
    return 0;
  }
  
  public int mode_Ringtone()
  {
    return 1;
  }
  
  public int mode_Tone()
  {
    return 0;
  }
  
  protected void notifyHeadphonesConnectionChange(boolean paramBoolean)
  {
    HashMap localHashMap;
    synchronized (this.globalSpeakerStateListeners)
    {
      localHashMap = new HashMap(this.globalSpeakerStateListeners);
      Iterator localIterator = localHashMap.entrySet().iterator();
      if (localIterator.hasNext()) {
        ((ISoundService.SpeakerStateListener)((Map.Entry)localIterator.next()).getKey()).onHeadphonesConnected(paramBoolean);
      }
    }
    localHashMap.clear();
  }
  
  public void onAnswerButtonClick()
  {
    SoundFactory.log(3, TAG, "bluetooth button is clicked");
    PhoneControllerWrapper localPhoneControllerWrapper = ViberApplication.getInstance().getPhoneController(true);
    if (isRingtonePlaying()) {
      localPhoneControllerWrapper.getDialerController().handleAnswer();
    }
    while ((isSpeakerphoneOn()) || (!isRouteActive(1)) || (isRouteActive(16))) {
      return;
    }
    localPhoneControllerWrapper.getCallHandler().a();
    localPhoneControllerWrapper.getDialerController().handleHangup();
  }
  
  public void onCallEnded(long paramLong, boolean paramBoolean, String paramString, int paramInt1, int paramInt2) {}
  
  public void onCallStarted(boolean paramBoolean) {}
  
  public void onDeviceConnected(BluetoothDevice paramBluetoothDevice)
  {
    SoundFactory.log(3, TAG, "got bonded bluetooth headset [" + paramBluetoothDevice.getAddress() + "]: " + paramBluetoothDevice.getName() + ", trying to route audio through it");
    clearRouteFlags(32);
    if (isRouteActive(1)) {
      this.mBtControl.enableBluetoothRoute();
    }
  }
  
  public void onDeviceDisconnected(BluetoothDevice paramBluetoothDevice)
  {
    this.mBtControl.disableBluetoothRoute();
    this.mBtControl.stopBluetooth();
  }
  
  public void onError(BluetoothDevice paramBluetoothDevice)
  {
    onDeviceDisconnected(paramBluetoothDevice);
  }
  
  public void onGSMStateChange(int paramInt, String paramString)
  {
    SoundFactory.log(3, TAG, "onGSMStateChange: gsmState=" + paramInt);
    k localk = ((ViberApplication)this.ctx).getPhoneController(false).getCurrentCall();
    switch (paramInt)
    {
    default: 
      return;
    case 1: 
    case 2: 
      if ((!isRouteActive(16)) && ((isRouteActive(4)) || (isRouteActive(2))) && (!checkPeerHoldStatusAndPlayHoldToneIfNecessary())) {
        stopAllTones();
      }
      setRouteFlags(16);
      return;
    }
    clearRouteFlags(16);
    if ((localk != null) && ((3 == localk.d().c()) || (2 == localk.d().c()))) {
      _handler.postDelayed(new CommonAbstractSoundService.3(this), 2000L);
    }
    for (;;)
    {
      setModeWithPriorityLock(mode_Normal());
      return;
      unlockModeChange();
    }
  }
  
  public boolean onHandsetOffCallDisabled()
  {
    SoundFactory.log(3, TAG, "bluetooth handset reported to be inactive, speaker state: " + isSpeakerphoneOn());
    return true;
  }
  
  public boolean onHandsetOffCallEnabled()
  {
    SoundFactory.log(3, TAG, "bluetooth handset reported to be active, speaker state: " + isSpeakerphoneOn());
    return true;
  }
  
  public void onHangup()
  {
    if ((isRouteActive(1)) && (this.audioDeviceCtl != null))
    {
      clearRouteFlags(1);
      this.audioDeviceCtl.StopRecording();
    }
  }
  
  public void onHeadsetPlug()
  {
    beforeHeadsetPluggedSpeakerStateWasOn = isSpeakerphoneOn();
    if (beforeHeadsetPluggedSpeakerStateWasOn)
    {
      SoundFactory.log(3, TAG, "Earphones plugged. disabling speaker");
      setSpeakerphoneOn(false);
    }
  }
  
  public void onHeadsetUnplug()
  {
    if (beforeHeadsetPluggedSpeakerStateWasOn)
    {
      SoundFactory.log(3, TAG, "Earphones unplugged. restoring speaker");
      setSpeakerphoneOn(beforeHeadsetPluggedSpeakerStateWasOn);
    }
    beforeHeadsetPluggedSpeakerStateWasOn = false;
  }
  
  public void onPhoneStateChanged(int paramInt)
  {
    int i = 1;
    SoundFactory.log(3, TAG, "onPhoneStateChanged: stateID=" + paramInt);
    if (this.mmControl != null) {
      this.mmControl.processPhoneStateChange(paramInt);
    }
    switch (paramInt)
    {
    }
    for (;;)
    {
      this.prevPhoneState = paramInt;
      return;
      if (BTControl.isAvailable()) {
        this.mBtControl.enableBluetoothRoute();
      }
      this.spirit_coldstart = i;
      if (this.mAudioFocusControl != null)
      {
        this.mAudioFocusControl.requestAudioFocus();
        continue;
        setRouteFlags(i);
        if (!isPeerOnHold())
        {
          stopAllTones();
          if (!isOnHold())
          {
            if (this.spirit_coldstart) {
              break label185;
            }
            label172:
            startAudioRecord(i);
          }
        }
        label185:
        int j;
        for (;;)
        {
          this.spirit_coldstart = false;
          break;
          j = 0;
          break label172;
          checkPeerHoldStatusAndPlayHoldToneIfNecessary();
        }
        stopAllTones();
        continue;
        ensureStopTone(ToneGeneratorFactory.ToneType.HOLD_TONE);
        ensureStopTone(ToneGeneratorFactory.ToneType.DATA_INTERRUPTION_TONE);
        clearRouteFlags(j);
        getAudioDeviceCtl().StopRecording();
        stopRingtone();
        stopAllTones();
        this.localHoldFlag = false;
        this.peerHoldFlag = false;
        this.spirit_coldstart = false;
        beforeHeadsetPluggedSpeakerStateWasOn = false;
        setRouteFlags(0);
        if (BTControl.isAvailable())
        {
          this.mBtControl.disableBluetoothRoute();
          this.mBtControl.stopBluetooth();
        }
        if (this.mAudioFocusControl != null) {
          this.mAudioFocusControl.abandonAudioFocus();
        }
        setSpeakerphoneOnFallback(false);
        setMicrophoneMute(false);
        if ((this.prevPhoneState == 6) || (this.prevPhoneState == 5))
        {
          setMode(mode_Normal());
          unlockModeChange();
        }
      }
    }
  }
  
  public void onVoiceChannelStateChange(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      setDeviceFlags(_deviceFlags);
      setSpeechEnhancementsModes(_deviceModes.AEC_mode, _deviceModes.AGC_mode, _deviceModes.NS_mode, _deviceModes.RxAGC_mode, _deviceModes.RxNS_mode);
    }
    if (!useVoiceChannelListeners()) {
      return;
    }
    if (paramBoolean)
    {
      SoundFactory.log(3, TAG, "starting native recorder since voice channel is reported as active");
      if (this.audioDeviceCtl != null) {
        this.audioDeviceCtl.StartRecording();
      }
    }
    for (;;)
    {
      super.onVoiceChannelStateChange(paramBoolean);
      return;
      SoundFactory.log(3, TAG, "stopping native recorder since voice channel is reported as non-active");
      if (this.audioDeviceCtl != null) {
        this.audioDeviceCtl.StopRecording();
      }
    }
  }
  
  public void peerHold()
  {
    this.peerHoldFlag = true;
    stopAudioRecord(suspendNativeOnPeerHold());
    setModeWithPriorityLock(mode_Tone());
  }
  
  public void peerUnhold()
  {
    this.peerHoldFlag = false;
    if (this.localHoldFlag) {
      return;
    }
    stopAllTones();
    startAudioRecord(suspendNativeOnPeerHold());
  }
  
  public void playDTMFTone(int paramInt1, int paramInt2)
  {
    IToneGenerator localIToneGenerator = ToneGeneratorFactory.newDTMFToneGenerator(this);
    setRouteFlags(4);
    localIToneGenerator.startTone(ToneGeneratorFactory.getDTMFToneId(paramInt1), paramInt2);
  }
  
  public void playMessageNotification(IRingtoneService.Ringtone paramRingtone)
  {
    paramRingtone.setStreamType(stream_Notification());
    getRingtoneService().playRingtone(paramRingtone);
  }
  
  public void playRingtone(Uri paramUri)
  {
    IRingtoneService.Ringtone localRingtone = getRingtone(paramUri);
    getRingtoneService().playRingtone(localRingtone);
  }
  
  public void playRingtone(IRingtoneService.Ringtone paramRingtone)
  {
    if ((BTControl.isAvailable()) && (this.mBtControl.isHeadsetConnected()))
    {
      paramRingtone.setStreamType(0);
      SoundFactory.log(3, TAG, "bt headset Connected! settting ringtone stream to voice");
    }
    getRingtoneService().playRingtone(paramRingtone);
  }
  
  public void playSample(int paramInt1, float paramFloat1, float paramFloat2, int paramInt2, int paramInt3, float paramFloat3)
  {
    if ((1 == native_state) || (havingValidVoiceChannel())) {
      ViberApplication.log(3, TAG, "dropping sample play request for resId#" + paramInt1 + ": native layer is started");
    }
    int i;
    for (;;)
    {
      return;
      if (isRouteActive(16))
      {
        ViberApplication.log(3, TAG, "playSample skipped due to GSM call");
        return;
      }
      if (getPlatformAudioManager().isMusicActive())
      {
        ViberApplication.log(3, TAG, "playSample for active music stream");
        IRingtoneService.Ringtone localRingtone = getRingtone(paramInt1);
        localRingtone.setStreamType(3);
        localRingtone.setAudioMode(0);
        playRingtone(localRingtone);
        return;
      }
      Integer localInteger1 = (Integer)_samplesMap.get(Integer.valueOf(paramInt1));
      i = 0;
      Object localObject = localInteger1;
      while (i < 2) {
        if (localObject == null)
        {
          ViberApplication.log(3, TAG, "[attempt:" + i + "] no preloaded sample for resId#" + paramInt1 + " found, trying to load on demand");
          loadSample(paramInt1, paramInt2);
          Integer localInteger3 = (Integer)_samplesMap.get(Integer.valueOf(paramInt1));
          i++;
          localObject = localInteger3;
        }
        else
        {
          if (this._samplesPool.play(((Integer)localObject).intValue(), paramFloat1, paramFloat2, paramInt2, paramInt3, paramFloat3) != 0) {
            break label328;
          }
          ViberApplication.log(3, TAG, "[attempt:" + i + "] failed to play sample for resId#" + paramInt1 + ", trying to reload it");
          loadSample(paramInt1, paramInt2);
          Integer localInteger2 = (Integer)_samplesMap.get(Integer.valueOf(paramInt1));
          i++;
          localObject = localInteger2;
        }
      }
    }
    label328:
    ViberApplication.log(3, TAG, "[attempt:" + i + "] done playing resId#" + paramInt1);
  }
  
  public void playTone(int paramInt)
  {
    playTone(ToneGeneratorFactory.convert(paramInt));
  }
  
  public void playTone(ToneGeneratorFactory.ToneType paramToneType)
  {
    if (ToneGeneratorFactory.ToneType.NO_TONE == paramToneType) {
      return;
    }
    TonePlayer localTonePlayer = ToneGeneratorFactory.getTonePlayer(paramToneType);
    setModeWithPriorityLock(mode_Tone());
    setRouteFlags(2);
    localTonePlayer.play(this);
  }
  
  protected void processAudioDevStartSignalOnce(boolean paramBoolean)
  {
    if (!paramBoolean) {
      return;
    }
    native_state = 1;
  }
  
  public void processAudioDevStopSignalOnce()
  {
    native_state = 0;
    unlockModeChange();
    voiceChannelPostStopAction();
  }
  
  public void registerAudioDevice(IAudioDevice paramIAudioDevice)
  {
    this.audioDeviceCtl = paramIAudioDevice;
    AudioDeviceManager.getJavaAutioDeviceCtl().registerStateListener(this.audioDeviceStateListener);
  }
  
  public void registerModeStateListener(ISoundService.ModeStateListenerIntf paramModeStateListenerIntf)
  {
    this.globalModeStateListeners.put(paramModeStateListenerIntf, null);
  }
  
  public void registerSpeakerStateListener(ISoundService.SpeakerStateListener paramSpeakerStateListener)
  {
    this.globalSpeakerStateListeners.put(paramSpeakerStateListener, null);
  }
  
  public void registerVoiceStateListener(VoiceStateListener paramVoiceStateListener)
  {
    synchronized (this._voiceStateListeners)
    {
      this._voiceStateListeners.add(paramVoiceStateListener);
      return;
    }
  }
  
  public void registerVolumeChangeListener(ISoundService.VolumeChangeListenerIntf paramVolumeChangeListenerIntf)
  {
    this.volumeChangeListeners.put(paramVolumeChangeListenerIntf, null);
  }
  
  public final boolean rejectSpeakerActiveState()
  {
    return true;
  }
  
  public boolean rejectSpeakerStateChangeWithHeadset()
  {
    return false;
  }
  
  public void releaseMediaPlayer()
  {
    SoundFactory.log(3, TAG, "releasing mediaplayer...");
    if (mediaPlayer == null) {
      return;
    }
    synchronized (stream_max_volume)
    {
      mediaPlayer.release();
      mediaPlayer = null;
      return;
    }
  }
  
  public int setAudioCtl(int paramInt1, int paramInt2, int paramInt3)
  {
    ISoundService.IAudioSettings localIAudioSettings = getAudioSettings(paramInt2);
    if (localIAudioSettings == null) {}
    do
    {
      return -1;
      if (ISoundService.AudioCtl.AUCTL_AEC_MODE.ordinal() == paramInt1) {
        return localIAudioSettings.setAECMode(paramInt3);
      }
      if (ISoundService.AudioCtl.AUCTL_AGC_MODE.ordinal() == paramInt1) {
        return localIAudioSettings.setAGCMode(paramInt3);
      }
      if (ISoundService.AudioCtl.AUCTL_NS_MODE.ordinal() == paramInt1) {
        return localIAudioSettings.setNSMode(paramInt3);
      }
      if (ISoundService.AudioCtl.AUCTL_RX_AGC_MODE.ordinal() == paramInt1) {
        return localIAudioSettings.setRxAGCMode(paramInt3);
      }
      if (ISoundService.AudioCtl.AUCTL_RX_NS_MODE.ordinal() == paramInt1) {
        return localIAudioSettings.setRxNSMode(paramInt3);
      }
    } while (ISoundService.AudioCtl.AUCTL_VAD_MODE.ordinal() != paramInt1);
    return localIAudioSettings.setVADMode(paramInt3);
  }
  
  public MediaPlayer setMediaDataSource(Uri paramUri, int paramInt)
  {
    SoundFactory.log(3, TAG, "setting mediaplayer parameters [" + paramUri + "]...");
    synchronized (stream_max_volume)
    {
      stopMediaPlayer();
      MediaPlayer localMediaPlayer = getMediaPlayer();
      localMediaPlayer.setDataSource(this.ctx, paramUri);
      localMediaPlayer.setAudioStreamType(paramInt);
      localMediaPlayer.prepare();
      return localMediaPlayer;
    }
  }
  
  public MediaPlayer setMediaDataSource(IRingtoneService.Ringtone paramRingtone, int paramInt)
  {
    return setMediaDataSource(paramRingtone.m_Uri, paramInt);
  }
  
  public MediaPlayer setMediaDataSource(FileDescriptor paramFileDescriptor, long paramLong1, long paramLong2)
  {
    SoundFactory.log(3, TAG, "setting mediaplayer with file descriptor...");
    synchronized (stream_max_volume)
    {
      stopMediaPlayer();
      MediaPlayer localMediaPlayer = getMediaPlayer();
      localMediaPlayer.setDataSource(paramFileDescriptor, paramLong1, paramLong2);
      localMediaPlayer.prepare();
      return localMediaPlayer;
    }
  }
  
  public void setMicrophoneMute(boolean paramBoolean)
  {
    ViberApplication localViberApplication;
    if (useNativeMuteControl())
    {
      localViberApplication = (ViberApplication)this.ctx;
      if (!paramBoolean) {
        break label38;
      }
      localViberApplication.getPhoneController(true).getDialerControllerNowrap().handleMute();
    }
    for (;;)
    {
      this.isMicMuted = paramBoolean;
      return;
      label38:
      localViberApplication.getPhoneController(true).getDialerControllerNowrap().handleUnmute();
    }
  }
  
  public void setMode(int paramInt)
  {
    setMode(paramInt, null);
  }
  
  public void setMode(int paramInt, ISoundService.ModeStateListenerIntf paramModeStateListenerIntf)
  {
    setMode(paramInt, paramModeStateListenerIntf, 0);
  }
  
  public void setMode(int paramInt1, ISoundService.ModeStateListenerIntf paramModeStateListenerIntf, int paramInt2)
  {
    int i = getMode();
    if ((2 != (paramInt2 & 0x2)) || (isRouteActive(16)))
    {
      if (1 == (0xFFFF & native_state)) {
        modeChangeAtomicLock.compareAndSet(false, havingValidVoiceChannel());
      }
      if (((modeChangeAtomicLock.get()) && (i != paramInt1)) || (isRouteActive(16)))
      {
        if (1 != (paramInt2 & 0x1)) {
          synchronized (_deferredModeChangeQueue)
          {
            SoundFactory.log(3, TAG, "deferring mode switching to [" + getModeName(paramInt1) + "] for state listener " + paramModeStateListenerIntf + " / current mode is: " + getModeName(i) + "; lock status: " + modeChangeAtomicLock);
            _deferredModeChangeQueue.add(new Pair(Integer.valueOf(paramInt1), paramModeStateListenerIntf));
            if (paramModeStateListenerIntf != null) {
              paramModeStateListenerIntf.onModeStateChangeDeferred(1, i, paramInt1);
            }
            return;
          }
        }
        SoundFactory.log(3, TAG, "SETMODE_NODEFER passed while switching acquired to [" + getModeName(paramInt1) + "] for state listener " + paramModeStateListenerIntf + " / current mode is: " + getModeName(i) + "; lock status: " + modeChangeAtomicLock);
        return;
      }
      if (256 != (paramInt2 & 0x100)) {
        _replayModeChange();
      }
    }
    boolean bool1 = isSpeakerphoneOn();
    SoundFactory.log(3, TAG, "setMode(" + getModeName(paramInt1) + ") from (" + getModeName(getMode()) + ")");
    if ((this.mBtControl.isHeadsetConnected()) && (((mode_InCall() == paramInt1) || (2 == (paramInt2 & 0x2))) || ((isRouteActive(1)) && (mode_InCall() != paramInt1) && (2 != (paramInt2 & 0x2))))) {}
    Map localMap2;
    synchronized (this.globalModeStateListeners)
    {
      localMap2 = Collections.unmodifiableMap(new HashMap(this.globalModeStateListeners));
      Iterator localIterator1 = localMap2.entrySet().iterator();
      for (;;)
      {
        if (localIterator1.hasNext())
        {
          Map.Entry localEntry2 = (Map.Entry)localIterator1.next();
          try
          {
            SoundFactory.log(3, TAG, "setMode(): notifying permanent listener " + localEntry2.getKey());
            ((ISoundService.ModeStateListenerIntf)localEntry2.getKey()).onModeStatePreChanged(paramInt1);
          }
          catch (Exception localException2) {}
        }
      }
    }
    if (paramModeStateListenerIntf != null)
    {
      SoundFactory.log(3, TAG, "setMode(): having immediate listener " + paramModeStateListenerIntf);
      paramModeStateListenerIntf.onModeStatePreChanged(paramInt1);
    }
    boolean bool2;
    if (paramInt1 != i) {
      if (SoundFactory.isHTCSense())
      {
        Context localContext = getContext();
        AudioManager localAudioManager = getPlatformAudioManager();
        if (paramInt1 == ISoundService.MODE_IN_COMMUNICATION)
        {
          bool2 = true;
          SoundServiceCommonConfig.HtcHwConfig.HtcHwCtl.ctlHwAec(localContext, localAudioManager, bool2);
        }
      }
      else
      {
        SoundFactory.log(3, TAG, "real setting Mode " + getModeName(paramInt1));
        this.audioManager.setMode(paramInt1);
        if (useSpeakerResetForModeChangeWorkaround()) {
          setSpeakerphoneOn(bool1);
        }
      }
    }
    for (;;)
    {
      Iterator localIterator2 = localMap2.entrySet().iterator();
      while (localIterator2.hasNext())
      {
        Map.Entry localEntry1 = (Map.Entry)localIterator2.next();
        try
        {
          ((ISoundService.ModeStateListenerIntf)localEntry1.getKey()).onModeStateChanged(paramInt1);
        }
        catch (Exception localException1) {}
      }
      bool2 = false;
      break;
      if ((2 == (paramInt2 & 0x2)) && (useSpeakerResetForModeChangeWorkaround())) {
        setSpeakerphoneOn(bool1);
      }
      if (paramModeStateListenerIntf != null) {
        paramModeStateListenerIntf.onModeStateChangeRejected(1, i, paramInt1);
      }
    }
    if (paramModeStateListenerIntf != null) {
      paramModeStateListenerIntf.onModeStateChanged(paramInt1);
    }
  }
  
  public void setModeWithPriorityLock(int paramInt)
  {
    setMode(paramInt, new CommonAbstractSoundService.4(this), 2);
  }
  
  public void setRingerMode(int paramInt)
  {
    SoundFactory.log(3, TAG, "setRingerMode(" + getRingerModeName(paramInt) + ") from (" + getRingerModeName(getRingerMode()) + ")");
    this.audioManager.setRingerMode(paramInt);
  }
  
  public int setRouteFlags(int paramInt)
  {
    if (paramInt == (paramInt & routingFlags)) {
      return routingFlags;
    }
    SoundFactory.log(3, TAG, "--> routing flags changed from " + routingFlags + " to " + (paramInt | routingFlags) + ": setting route flag " + getRouteName(paramInt));
    routingFlags = paramInt | routingFlags;
    checkVoiceStateForRouting(routingFlags);
    SoundFactory.log(3, TAG, "--> current routing is: [" + getRouteName(routingFlags) + "]");
    return routingFlags;
  }
  
  public void setSpeakerphoneOn(boolean paramBoolean)
  {
    SoundFactory.log(3, TAG, "setSpeakerphoneOn: " + paramBoolean + "; current mode: " + getMode() + "(" + getModeName(getMode()) + ")" + "; ringer mode: " + getRingerMode() + "(" + getRingerModeName(getRingerMode()) + ")");
    getMode();
    if (!isSpeakerphoneAllowed())
    {
      this.isSpeakerActive = paramBoolean;
      SoundFactory.log(3, TAG, "speakerphone is DISABLED, set to " + isSpeakerphoneOn() + " (input was " + paramBoolean + ")");
      return;
    }
    if (isRouteActive(16))
    {
      SoundFactory.log(3, TAG, "speaker state change rejected due to GSM call");
      return;
    }
    if ((isHeadsetPluggedIn()) && (rejectSpeakerStateChangeWithHeadset()))
    {
      SoundFactory.log(3, TAG, "speaker state change rejected because external headset is plugged in");
      return;
    }
    if ((isSpeakerphoneOn() == paramBoolean) && (getPlatformAudioManager().isSpeakerphoneOn() == paramBoolean) && (!isRouteActive(8)))
    {
      _notifySpeakerStatePreChange(paramBoolean);
      _notifySpeakerStatePostChange(paramBoolean);
      SoundFactory.log(3, TAG, "speaker state change rejected, its the same");
      return;
    }
    _notifySpeakerStatePreChange(paramBoolean);
    if ((useNativeResetOnSpeakerToggle()) && (isRouteActive(1))) {
      suspendSound(suspendNativeOnParallelGSM());
    }
    if (useNativeSoundLibSpeakerControl()) {}
    for (;;)
    {
      try
      {
        useSpeakers(paramBoolean);
        this.isSpeakerActive = paramBoolean;
        if ((useNativeResetOnSpeakerToggle()) && (isRouteActive(1))) {
          resumeSound(suspendNativeOnParallelGSM());
        }
        _notifySpeakerStatePostChange(isSpeakerphoneOn());
        SoundFactory.log(3, TAG, "speakerphone is set to " + isSpeakerphoneOn() + " (input was " + paramBoolean + ")");
        logRouteState();
        return;
      }
      catch (Exception localException3)
      {
        setSpeakerphoneOnFallback(paramBoolean);
        continue;
      }
      try
      {
        SoundFactory.log(3, TAG, "setSpeakerphoneOn: trying to switch speaker route via native ... (" + paramBoolean + ")");
        if (paramBoolean == shouldUseSpeakers(paramBoolean))
        {
          if (paramBoolean != getPlatformAudioManager().isSpeakerphoneOn())
          {
            SoundFactory.log(3, TAG, "setSpeakerphoneOn: local setting disagrees with settled by native: local=" + paramBoolean + "; real: " + getPlatformAudioManager().isSpeakerphoneOn());
            setSpeakerphoneOnFallback(paramBoolean);
          }
          for (;;)
          {
            for (;;)
            {
              if (!paramBoolean) {
                break label572;
              }
              i = 4;
              try
              {
                setAECMode(i);
              }
              catch (Exception localException2)
              {
                SoundFactory.log(3, TAG, "setSpeakerphoneOn: setAECMode exception. whatever...");
              }
            }
            break;
            this.isSpeakerActive = paramBoolean;
          }
        }
      }
      catch (Exception localException1)
      {
        for (;;)
        {
          SoundFactory.log(3, TAG, "setSpeakerphoneOn: exception! falling back");
          setSpeakerphoneOnFallback(paramBoolean);
          continue;
          SoundFactory.log(3, TAG, "setSpeakerphoneOn: native speaker ctl failed, falling back to platform");
          setSpeakerphoneOnFallback(paramBoolean);
          continue;
          label572:
          int i = 1;
        }
      }
    }
  }
  
  protected void setSpeakerphoneOnFallback(boolean paramBoolean)
  {
    SoundFactory.log(3, TAG, "setSpeakerphoneOnFallback, current state: " + this.audioManager.isSpeakerphoneOn() + "; mode=" + getModeName(getMode()) + " going to set to " + paramBoolean);
    if ((isSpeakerphoneOn() == paramBoolean) && (getPlatformAudioManager().isSpeakerphoneOn() == paramBoolean))
    {
      SoundFactory.log(3, TAG, "setSpeakerphoneOnFallback: rejecting speaker state change to the same");
      return;
    }
    forceSpeakerphoneOn(paramBoolean);
    this.isSpeakerActive = getPlatformAudioManager().isSpeakerphoneOn();
    SoundFactory.log(3, TAG, "setSpeakerphoneOnFallback: platform API says speaker state is " + this.isSpeakerActive + "; mode=" + getModeName(getMode()));
  }
  
  public int setVocoderCtl(ISoundService.VocoderCtl paramVocoderCtl, int paramInt1, int paramInt2)
  {
    return this._vocoderSettings.setVocoderCtl(paramVocoderCtl, paramInt1, paramInt2);
  }
  
  public boolean shouldVibrate(int paramInt)
  {
    int i = this.audioManager.getRingerMode();
    SoundFactory.log(3, TAG, "vibrate ringer mode is = " + i);
    k localk = getApplicationContext().getPhoneController(false).getCurrentCall();
    if (((TelephonyManager)getApplicationContext().getSystemService("phone")).getCallState() == 0) {}
    for (int j = 1; (j == 0) || ((localk != null) && ((3 == localk.d().c()) || (2 == localk.d().c()))); j = 0) {
      return false;
    }
    if (Build.VERSION.SDK_INT < 16)
    {
      boolean bool2 = this.audioManager.shouldVibrate(paramInt);
      SoundFactory.log(3, TAG, "should vibrate = " + bool2);
      return bool2;
    }
    boolean bool1 = ViberApplication.preferences().b(j.P(), j.Q());
    SoundFactory.log(3, TAG, "vibrate setting = " + bool1);
    switch (i)
    {
    default: 
      return bool1;
    case 0: 
      return false;
    }
    return true;
  }
  
  public void startAudioRecord(boolean paramBoolean)
  {
    if ((shouldKillMediaManagerOnSuspend()) && (!isRouteActive(16))) {
      setMicrophoneMute(this.isMicMuted);
    }
    if (this.audioDeviceCtl == null) {}
    do
    {
      return;
      pauseSoundPool();
    } while (useVoiceChannelListeners());
    try
    {
      if ((1 == native_state) && (havingValidVoiceChannel()))
      {
        SoundFactory.log(3, TAG, "avoiding native doublestart");
        resumeSound(false);
        return;
      }
    }
    finally {}
    native_state = 1;
    synchronized (_deferredModeChangeQueue)
    {
      _deferredModeChangeQueue.clear();
      setMode(mode_InCall(), new CommonAbstractSoundService.2(this, paramBoolean), 2);
      return;
    }
  }
  
  public void startMediaPlayer()
  {
    SoundFactory.log(3, TAG, "starting mediaplayer...");
    MediaPlayer localMediaPlayer = getMediaPlayer();
    synchronized (stream_max_volume)
    {
      localMediaPlayer.start();
      return;
    }
  }
  
  public void stopAllTones()
  {
    stopTone();
    stopDTMFTone();
  }
  
  /* Error */
  public void stopAudioRecord(boolean paramBoolean)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 203	com/viber/voip/sound/CommonAbstractSoundService:audioDeviceCtl	Lorg/webrtc/voiceengine/IAudioDevice;
    //   4: ifnonnull +4 -> 8
    //   7: return
    //   8: aload_0
    //   9: invokevirtual 1144	com/viber/voip/sound/CommonAbstractSoundService:useVoiceChannelListeners	()Z
    //   12: ifne -5 -> 7
    //   15: aload_0
    //   16: monitorenter
    //   17: iconst_1
    //   18: ldc_w 1331
    //   21: getstatic 138	com/viber/voip/sound/CommonAbstractSoundService:native_state	I
    //   24: iand
    //   25: if_icmpeq +10 -> 35
    //   28: aload_0
    //   29: invokevirtual 1193	com/viber/voip/sound/CommonAbstractSoundService:havingValidVoiceChannel	()Z
    //   32: ifeq +26 -> 58
    //   35: iconst_3
    //   36: getstatic 110	com/viber/voip/sound/CommonAbstractSoundService:TAG	Ljava/lang/String;
    //   39: ldc_w 1548
    //   42: invokestatic 280	com/viber/voip/sound/SoundFactory:log	(ILjava/lang/String;Ljava/lang/String;)V
    //   45: iload_1
    //   46: ifeq +12 -> 58
    //   49: aload_0
    //   50: aload_0
    //   51: invokevirtual 1530	com/viber/voip/sound/CommonAbstractSoundService:shouldKillMediaManagerOnSuspend	()Z
    //   54: invokevirtual 1447	com/viber/voip/sound/CommonAbstractSoundService:suspendSound	(Z)I
    //   57: pop
    //   58: iconst_0
    //   59: putstatic 138	com/viber/voip/sound/CommonAbstractSoundService:native_state	I
    //   62: aload_0
    //   63: invokevirtual 1252	com/viber/voip/sound/CommonAbstractSoundService:voiceChannelPostStopAction	()V
    //   66: aload_0
    //   67: monitorexit
    //   68: return
    //   69: astore_3
    //   70: aload_0
    //   71: monitorexit
    //   72: aload_3
    //   73: athrow
    //   74: astore_2
    //   75: iconst_0
    //   76: putstatic 138	com/viber/voip/sound/CommonAbstractSoundService:native_state	I
    //   79: aload_0
    //   80: invokevirtual 1252	com/viber/voip/sound/CommonAbstractSoundService:voiceChannelPostStopAction	()V
    //   83: aload_2
    //   84: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	85	0	this	CommonAbstractSoundService
    //   0	85	1	paramBoolean	boolean
    //   74	10	2	localObject1	Object
    //   69	4	3	localObject2	Object
    // Exception table:
    //   from	to	target	type
    //   58	68	69	finally
    //   70	72	69	finally
    //   75	85	69	finally
    //   17	35	74	finally
    //   35	45	74	finally
    //   49	58	74	finally
  }
  
  public void stopDTMFTone()
  {
    clearRouteFlags(4);
    ToneGeneratorFactory.releaseDtmfGenerator();
  }
  
  /* Error */
  public void stopMediaPlayer()
  {
    // Byte code:
    //   0: iconst_3
    //   1: getstatic 110	com/viber/voip/sound/CommonAbstractSoundService:TAG	Ljava/lang/String;
    //   4: ldc_w 1553
    //   7: invokestatic 280	com/viber/voip/sound/SoundFactory:log	(ILjava/lang/String;Ljava/lang/String;)V
    //   10: getstatic 136	com/viber/voip/sound/CommonAbstractSoundService:mediaPlayer	Landroid/media/MediaPlayer;
    //   13: ifnonnull +4 -> 17
    //   16: return
    //   17: getstatic 122	com/viber/voip/sound/CommonAbstractSoundService:stream_max_volume	[I
    //   20: astore_1
    //   21: aload_1
    //   22: monitorenter
    //   23: aload_0
    //   24: invokevirtual 873	com/viber/voip/sound/CommonAbstractSoundService:isMediaPlayerPlaying	()Z
    //   27: istore_3
    //   28: getstatic 136	com/viber/voip/sound/CommonAbstractSoundService:mediaPlayer	Landroid/media/MediaPlayer;
    //   31: invokevirtual 1556	android/media/MediaPlayer:stop	()V
    //   34: aload_0
    //   35: invokevirtual 711	com/viber/voip/sound/CommonAbstractSoundService:releaseMediaPlayer	()V
    //   38: aload_0
    //   39: invokevirtual 860	com/viber/voip/sound/CommonAbstractSoundService:getMediaPlayer	()Landroid/media/MediaPlayer;
    //   42: pop
    //   43: iconst_3
    //   44: getstatic 110	com/viber/voip/sound/CommonAbstractSoundService:TAG	Ljava/lang/String;
    //   47: ldc_w 1558
    //   50: invokestatic 280	com/viber/voip/sound/SoundFactory:log	(ILjava/lang/String;Ljava/lang/String;)V
    //   53: getstatic 136	com/viber/voip/sound/CommonAbstractSoundService:mediaPlayer	Landroid/media/MediaPlayer;
    //   56: invokevirtual 1561	android/media/MediaPlayer:reset	()V
    //   59: iload_3
    //   60: ifeq +16 -> 76
    //   63: getstatic 120	com/viber/voip/sound/CommonAbstractSoundService:modeChangeAtomicLock	Ljava/util/concurrent/atomic/AtomicBoolean;
    //   66: invokevirtual 961	java/util/concurrent/atomic/AtomicBoolean:get	()Z
    //   69: ifeq +7 -> 76
    //   72: aload_0
    //   73: invokevirtual 1069	com/viber/voip/sound/CommonAbstractSoundService:unlockModeChange	()V
    //   76: aload_1
    //   77: monitorexit
    //   78: return
    //   79: astore_2
    //   80: aload_1
    //   81: monitorexit
    //   82: aload_2
    //   83: athrow
    //   84: astore 5
    //   86: iconst_3
    //   87: getstatic 110	com/viber/voip/sound/CommonAbstractSoundService:TAG	Ljava/lang/String;
    //   90: ldc_w 1558
    //   93: invokestatic 280	com/viber/voip/sound/SoundFactory:log	(ILjava/lang/String;Ljava/lang/String;)V
    //   96: getstatic 136	com/viber/voip/sound/CommonAbstractSoundService:mediaPlayer	Landroid/media/MediaPlayer;
    //   99: invokevirtual 1561	android/media/MediaPlayer:reset	()V
    //   102: iload_3
    //   103: ifeq -27 -> 76
    //   106: getstatic 120	com/viber/voip/sound/CommonAbstractSoundService:modeChangeAtomicLock	Ljava/util/concurrent/atomic/AtomicBoolean;
    //   109: invokevirtual 961	java/util/concurrent/atomic/AtomicBoolean:get	()Z
    //   112: ifeq -36 -> 76
    //   115: aload_0
    //   116: invokevirtual 1069	com/viber/voip/sound/CommonAbstractSoundService:unlockModeChange	()V
    //   119: goto -43 -> 76
    //   122: astore 4
    //   124: iconst_3
    //   125: getstatic 110	com/viber/voip/sound/CommonAbstractSoundService:TAG	Ljava/lang/String;
    //   128: ldc_w 1558
    //   131: invokestatic 280	com/viber/voip/sound/SoundFactory:log	(ILjava/lang/String;Ljava/lang/String;)V
    //   134: getstatic 136	com/viber/voip/sound/CommonAbstractSoundService:mediaPlayer	Landroid/media/MediaPlayer;
    //   137: invokevirtual 1561	android/media/MediaPlayer:reset	()V
    //   140: iload_3
    //   141: ifeq +16 -> 157
    //   144: getstatic 120	com/viber/voip/sound/CommonAbstractSoundService:modeChangeAtomicLock	Ljava/util/concurrent/atomic/AtomicBoolean;
    //   147: invokevirtual 961	java/util/concurrent/atomic/AtomicBoolean:get	()Z
    //   150: ifeq +7 -> 157
    //   153: aload_0
    //   154: invokevirtual 1069	com/viber/voip/sound/CommonAbstractSoundService:unlockModeChange	()V
    //   157: aload 4
    //   159: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	160	0	this	CommonAbstractSoundService
    //   20	61	1	arrayOfInt	int[]
    //   79	4	2	localObject1	Object
    //   27	114	3	bool	boolean
    //   122	36	4	localObject2	Object
    //   84	1	5	localException	Exception
    // Exception table:
    //   from	to	target	type
    //   23	28	79	finally
    //   43	59	79	finally
    //   63	76	79	finally
    //   76	78	79	finally
    //   80	82	79	finally
    //   86	102	79	finally
    //   106	119	79	finally
    //   124	140	79	finally
    //   144	157	79	finally
    //   157	160	79	finally
    //   28	43	84	java/lang/Exception
    //   28	43	122	finally
  }
  
  public void stopRingtone(IRingtoneService.Ringtone paramRingtone)
  {
    getRingtoneService().stopRingtone(paramRingtone);
  }
  
  public boolean stopRingtone()
  {
    if (isRingtonePlaying())
    {
      getRingtoneService().stopRingtone();
      return true;
    }
    return false;
  }
  
  public void stopTone() {}
  
  public int stream_Dtmf()
  {
    return 3;
  }
  
  public int stream_Notification()
  {
    return 5;
  }
  
  public int stream_Ring()
  {
    return 2;
  }
  
  public int stream_Tone()
  {
    return 0;
  }
  
  public int stream_Voice()
  {
    return 0;
  }
  
  public void syncSpeakerState()
  {
    this.isSpeakerActive = this.audioManager.isSpeakerphoneOn();
  }
  
  public void trackActivity(Activity paramActivity)
  {
    if ((paramActivity instanceof VoiceStateListener)) {
      registerVoiceStateListener((VoiceStateListener)paramActivity);
    }
  }
  
  protected void unlockModeChange()
  {
    if (isRouteActive(16)) {
      SoundFactory.log(3, TAG, "unlockModeChange: failed to unlock mode change - GSM call is marked as active (will unlock later)");
    }
    while (!modeChangeAtomicLock.get()) {
      return;
    }
    SoundFactory.log(3, TAG, "setMode() lock released by thread " + Thread.currentThread());
    modeChangeAtomicLock.set(false);
    _replayModeChange();
  }
  
  public void unregisterModeStateListener(ISoundService.ModeStateListenerIntf paramModeStateListenerIntf)
  {
    this.globalModeStateListeners.remove(paramModeStateListenerIntf);
  }
  
  public void unregisterSpeakerStateListener(ISoundService.SpeakerStateListener paramSpeakerStateListener)
  {
    this.globalSpeakerStateListeners.remove(paramSpeakerStateListener);
  }
  
  public void unregisterVoiceStateListener(VoiceStateListener paramVoiceStateListener)
  {
    synchronized (this._voiceStateListeners)
    {
      this._voiceStateListeners.remove(paramVoiceStateListener);
      return;
    }
  }
  
  public void unregisterVolumeChangeListener(ISoundService.VolumeChangeListenerIntf paramVolumeChangeListenerIntf)
  {
    this.volumeChangeListeners.remove(paramVolumeChangeListenerIntf);
  }
  
  public void untrackActivity(Activity paramActivity)
  {
    if ((paramActivity instanceof VoiceStateListener)) {
      unregisterVoiceStateListener((VoiceStateListener)paramActivity);
    }
  }
  
  public boolean useExtraBtChecksForModeChangeWorkaround()
  {
    return true;
  }
  
  public abstract boolean useModeLocking();
  
  public boolean useNativeResetOnSpeakerToggle()
  {
    return false;
  }
  
  public boolean useNativeSoundLibSpeakerControl()
  {
    return false;
  }
  
  public boolean useSpeakerResetForModeChangeWorkaround()
  {
    return false;
  }
  
  public abstract boolean useVolumeQuirks();
  
  protected void voiceChannelPostStopAction()
  {
    if (isRouteActive(16)) {
      return;
    }
    setMode(mode_Normal());
    resumeSoundPool();
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     com.viber.voip.sound.CommonAbstractSoundService
 * JD-Core Version:    0.7.0.1
 */