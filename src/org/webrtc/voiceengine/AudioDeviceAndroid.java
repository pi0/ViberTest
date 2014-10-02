package org.webrtc.voiceengine;

import android.annotation.TargetApi;
import android.content.Context;
import android.media.AudioManager;
import android.media.AudioRecord;
import android.media.AudioTrack;
import android.media.audiofx.AudioEffect;
import android.os.Process;
import com.viber.voip.ViberApplication;
import com.viber.voip.sound.ISoundService;
import com.viber.voip.sound.SoundFactory;
import com.viber.voip.sound.bluetooth.BTControl;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.locks.ReentrantLock;

class AudioDeviceAndroid
  implements IAudioDevice
{
  private static final boolean ENABLE_PLATFORMWIDE_AEC = true;
  private static final boolean ENABLE_PLATFORMWIDE_NS = true;
  public static final int FALLBACK_REC_AUDIOSOURCE = 1;
  public static final int FLAG_AUDIOPLAYBACK_STARTED = 8;
  public static final int FLAG_AUDIORECORD_INITIALIZED = 1;
  public static final int FLAG_AUDIORECORD_STARTED = 4;
  public static final int FLAG_AUDIOTRACK_INITIALIZED = 2;
  public static final int FLAG_INACTIVE = 0;
  public static final int FLAG_VE_STARTED = 16;
  public static final String TAG = AudioDeviceAndroid.class.getSimpleName();
  public static final int[] audioSources = { 7, 1, 0, 5 };
  private ISoundService _audioManager;
  private AudioRecord _audioRecord = null;
  private int _audioSource = 0;
  private AudioTrack _audioTrack = null;
  private int _bufferedPlaySamples = 0;
  private int _bufferedRecSamples = 0;
  private Context _context;
  private boolean _doPlayInit = true;
  private boolean _doRecInit = true;
  private boolean _isPlaying = false;
  private boolean _isRecording = false;
  private ByteBuffer _playBuffer;
  private final ReentrantLock _playLock = new ReentrantLock();
  private int _playPosition = 0;
  private int _playbackStream = 0;
  private ByteBuffer _recBuffer;
  private final ReentrantLock _recLock = new ReentrantLock();
  private byte[] _tempBufPlay = null;
  private byte[] _tempBufRec = null;
  private Object aecFilter = null;
  private volatile int audioRoute = 0;
  private volatile int flags = 0;
  private Set<IAudioDevice.AudioDeviceStateListener> listeners = Collections.synchronizedSet(new HashSet());
  private Object nsFilter = null;
  
  AudioDeviceAndroid()
  {
    this(SoundFactory.getSoundService(ViberApplication.getInstance()));
  }
  
  public AudioDeviceAndroid(ISoundService paramISoundService)
  {
    this(paramISoundService, 44100);
  }
  
  public AudioDeviceAndroid(ISoundService paramISoundService, int paramInt)
  {
    this._context = paramISoundService.getContext();
    this._tempBufPlay = new byte[960];
    this._tempBufRec = new byte[960];
    this._playBuffer = ByteBuffer.allocateDirect(this._tempBufPlay.length);
    this._recBuffer = ByteBuffer.allocateDirect(this._tempBufRec.length);
    this._audioManager = paramISoundService;
    AudioDeviceManager.registerAudioDevice(this);
  }
  
  private void DoLog(String paramString)
  {
    SoundFactory.log(3, TAG, paramString);
  }
  
  private void DoLogErr(String paramString)
  {
    SoundFactory.log(6, TAG, paramString);
  }
  
  private int GetBufferedPlaySamplesCount()
  {
    return this._bufferedPlaySamples;
  }
  
  private int InitPlayback(int paramInt)
  {
    return InitPlaybackWithOwnBuffers(paramInt, this._tempBufPlay, this._playBuffer);
  }
  
  private int InitRecording(int paramInt1, int paramInt2)
  {
    return InitRecordingWithOwnBuffers(paramInt1, paramInt2, this._tempBufRec, this._recBuffer);
  }
  
  private int PlayAudio(int paramInt)
  {
    this._playLock.lock();
    for (;;)
    {
      try
      {
        AudioTrack localAudioTrack = this._audioTrack;
        if (localAudioTrack == null) {
          return -2;
        }
        if (this._doPlayInit == true)
        {
          boolean bool = sound_io_use_high_priority_media_thread();
          if (!bool) {}
        }
        try
        {
          Process.setThreadPriority(sound_io_media_thread_priority());
          this._doPlayInit = false;
          this._playBuffer.get(this._tempBufPlay);
          int i = this._audioTrack.write(this._tempBufPlay, 0, paramInt);
          this._playBuffer.rewind();
          this._bufferedPlaySamples += (i >> 1);
          int j = this._audioTrack.getPlaybackHeadPosition();
          if (j < this._playPosition) {
            this._playPosition = 0;
          }
          this._bufferedPlaySamples -= j - this._playPosition;
          this._playPosition = j;
          if (this._isRecording) {
            break label230;
          }
          k = this._bufferedPlaySamples;
          if (i != paramInt) {
            return -1;
          }
        }
        catch (Exception localException)
        {
          DoLog("Set play thread priority failed: " + localException.getMessage());
          continue;
        }
      }
      finally
      {
        this._playLock.unlock();
      }
      return k;
      label230:
      int k = 0;
    }
  }
  
  private int RecordAudio(int paramInt)
  {
    this._recLock.lock();
    for (;;)
    {
      try
      {
        AudioRecord localAudioRecord = this._audioRecord;
        if (localAudioRecord == null) {
          return -2;
        }
        if (this._doRecInit == true)
        {
          boolean bool = sound_io_use_high_priority_media_thread();
          if (!bool) {}
        }
      }
      catch (Exception localException1)
      {
        int i;
        DoLogErr("RecordAudio try failed: " + localException1.getMessage());
        this._recLock.unlock();
        continue;
      }
      finally
      {
        this._recLock.unlock();
      }
      try
      {
        Process.setThreadPriority(sound_io_media_thread_priority());
        this._doRecInit = false;
        this._recBuffer.rewind();
        i = this._audioRecord.read(this._tempBufRec, 0, paramInt);
        this._recBuffer.put(this._tempBufRec, 0, i);
        this._recLock.unlock();
        return this._bufferedPlaySamples;
      }
      catch (Exception localException2)
      {
        DoLog("Set rec thread priority failed: " + localException2.getMessage());
      }
    }
  }
  
  private int SetPlayoutSpeakerInternal(boolean paramBoolean)
  {
    DoLog("changing speakerphone state to " + paramBoolean);
    if ((BTControl.isAvailable()) && (paramBoolean)) {
      this._audioManager.getBluetoothCtl().disableBluetoothRoute();
    }
    this._audioManager.getPlatformAudioManager().setSpeakerphoneOn(paramBoolean);
    this._audioManager.syncSpeakerState();
    DoLog("speakerphone is set to " + paramBoolean + "; platform reports " + this._audioManager.getPlatformAudioManager().isSpeakerphoneOn());
    if ((BTControl.isAvailable()) && (!paramBoolean)) {
      this._audioManager.getBluetoothCtl().enableBluetoothRoute();
    }
    return 0;
  }
  
  @TargetApi(16)
  private static boolean disableEffectForAudioRecordSession(AudioRecord paramAudioRecord, Object paramObject)
  {
    if (paramObject != null) {
      try
      {
        if (!(paramObject instanceof AudioEffect)) {
          return false;
        }
        ((AudioEffect)paramObject).release();
        return true;
      }
      catch (Throwable localThrowable)
      {
        ViberApplication.log(6, TAG, "failed to destroy platform-wide effect filter", localThrowable);
      }
    }
    return false;
  }
  
  @TargetApi(16)
  private static Object enableEffectForAudioRecordSession(AudioRecord paramAudioRecord, AudioDeviceAndroid.EffectFactory paramEffectFactory)
  {
    if (paramAudioRecord == null) {}
    for (;;)
    {
      return null;
      try
      {
        AudioEffect localAudioEffect = paramEffectFactory.create(paramAudioRecord);
        if (localAudioEffect != null)
        {
          ViberApplication.log(3, TAG, "trying to attach " + localAudioEffect.toString() + " effect to the active session " + paramAudioRecord.getAudioSessionId());
          localAudioEffect.setEnableStatusListener(new AudioDeviceAndroid.1());
          localAudioEffect.setControlStatusListener(new AudioDeviceAndroid.2());
          localAudioEffect.setEnabled(true);
          ViberApplication.log(3, TAG, "AEC added and should be available");
          return localAudioEffect;
        }
      }
      catch (Throwable localThrowable)
      {
        ViberApplication.log(6, TAG, "failed to create platform-wide AEC filter", localThrowable);
      }
    }
    return null;
  }
  
  /* Error */
  private static int getRecAudioSourceForNativeSourceInternal(int paramInt)
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: getstatic 73	org/webrtc/voiceengine/AudioDeviceAndroid:audioSources	[I
    //   6: iload_0
    //   7: iaload
    //   8: istore_3
    //   9: ldc 2
    //   11: monitorexit
    //   12: iload_3
    //   13: ireturn
    //   14: astore_2
    //   15: iconst_1
    //   16: istore_3
    //   17: goto -8 -> 9
    //   20: astore_1
    //   21: ldc 2
    //   23: monitorexit
    //   24: aload_1
    //   25: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	26	0	paramInt	int
    //   20	5	1	localObject	Object
    //   14	1	2	localException	Exception
    //   8	9	3	i	int
    // Exception table:
    //   from	to	target	type
    //   3	9	14	java/lang/Exception
    //   3	9	20	finally
  }
  
  private void processOnCapturePostStartEvent()
  {
    if (4 == (0x4 & this.flags)) {}
    for (;;)
    {
      return;
      setFlagsInternal(4);
      Iterator localIterator = this.listeners.iterator();
      while (localIterator.hasNext()) {
        ((IAudioDevice.AudioDeviceStateListener)localIterator.next()).onCapturePostStart();
      }
    }
  }
  
  private void processOnCaptureStartEvent()
  {
    if (1 == (0x1 & this.flags)) {}
    for (;;)
    {
      return;
      setFlagsInternal(1);
      Iterator localIterator = this.listeners.iterator();
      while (localIterator.hasNext()) {
        ((IAudioDevice.AudioDeviceStateListener)localIterator.next()).onCaptureStart();
      }
    }
  }
  
  private void processOnCaptureStopEvent()
  {
    if (1 != (0x1 & this.flags)) {}
    for (;;)
    {
      return;
      clearFlagsInternal(1);
      clearFlagsInternal(4);
      Iterator localIterator = this.listeners.iterator();
      while (localIterator.hasNext()) {
        ((IAudioDevice.AudioDeviceStateListener)localIterator.next()).onCaptureStop();
      }
    }
  }
  
  private void processOnOverallStartEvent()
  {
    if (16 == (0x10 & this.flags)) {
      return;
    }
    Iterator localIterator = this.listeners.iterator();
    while (localIterator.hasNext()) {
      ((IAudioDevice.AudioDeviceStateListener)localIterator.next()).onStart();
    }
    setFlagsInternal(16);
  }
  
  private void processOnOverallStopEvent()
  {
    if (16 != (0x10 & this.flags)) {
      return;
    }
    Iterator localIterator = this.listeners.iterator();
    while (localIterator.hasNext()) {
      ((IAudioDevice.AudioDeviceStateListener)localIterator.next()).onStop();
    }
    clearFlagsInternal(16);
  }
  
  private void processOnPlaybackPostStartEvent()
  {
    Iterator localIterator = this.listeners.iterator();
    while (localIterator.hasNext()) {
      ((IAudioDevice.AudioDeviceStateListener)localIterator.next()).onPlaybackPostStart();
    }
  }
  
  private void processOnPlaybackPostStopEvent()
  {
    Iterator localIterator = this.listeners.iterator();
    while (localIterator.hasNext()) {
      ((IAudioDevice.AudioDeviceStateListener)localIterator.next()).onPlaybackPostStop();
    }
  }
  
  private void processOnPlaybackPreStartEvent()
  {
    Iterator localIterator = this.listeners.iterator();
    while (localIterator.hasNext()) {
      ((IAudioDevice.AudioDeviceStateListener)localIterator.next()).onPlaybackPreStart();
    }
  }
  
  private void processOnPlaybackPreStopEvent()
  {
    Iterator localIterator = this.listeners.iterator();
    while (localIterator.hasNext()) {
      ((IAudioDevice.AudioDeviceStateListener)localIterator.next()).onPlaybackPreStop();
    }
  }
  
  private void setFlagsInternal(int paramInt)
  {
    this.flags = (paramInt | this.flags);
  }
  
  private int sound_io_media_thread_priority()
  {
    return this._audioManager.getThreadPriority();
  }
  
  private boolean sound_io_reset_playback_on_speaker_event()
  {
    return SoundFactory.RESET_AUDIOTRACK_ON_SPEAKER_EVENT;
  }
  
  private boolean sound_io_reset_recorder_on_speaker_event()
  {
    return SoundFactory.RESET_AUDIORECORDER_ON_SPEAKER_EVENT;
  }
  
  private boolean sound_io_use_high_priority_media_thread()
  {
    return this._audioManager.useThreadPriority();
  }
  
  public int CheckDeviceVoiceCommunicationAbility(int paramInt1, int paramInt2)
  {
    return NativeADMDelegate.isVoiceCommRouteAvailable(paramInt1, paramInt2);
  }
  
  public int GetAudioRoute()
  {
    return this.audioRoute;
  }
  
  public int GetPlayoutVolume()
  {
    if (this._audioTrack != null) {
      return this._audioManager.getStreamVolume(this._audioTrack.getStreamType());
    }
    return this._audioManager.getStreamVolume(this._audioManager.stream_Voice());
  }
  
  public int InitPlaybackWithOwnBuffers(int paramInt, byte[] paramArrayOfByte, ByteBuffer paramByteBuffer)
  {
    int i = 4;
    int k;
    if (2 == this.audioRoute)
    {
      k = -1;
      return k;
    }
    int j = AudioTrack.getMinBufferSize(paramInt, i, 2);
    if (-2 == j)
    {
      j = AudioTrack.getMinBufferSize(paramInt, 2, 2);
      i = 2;
    }
    if (j < 6000) {
      j <<= 1;
    }
    if (paramArrayOfByte == null)
    {
      this._tempBufPlay = new byte[j];
      label70:
      if (paramByteBuffer != null) {
        break label380;
      }
    }
    label380:
    for (this._playBuffer = ByteBuffer.allocateDirect(this._tempBufPlay.length);; this._playBuffer = paramByteBuffer)
    {
      if (this._playBuffer != null)
      {
        this._playBuffer.order(ByteOrder.nativeOrder());
        this._playBuffer.position(0);
      }
      AudioTrack localAudioTrack = this._audioTrack;
      k = 0;
      if (localAudioTrack != null) {
        break;
      }
      if (this.audioRoute == 0) {
        this._audioManager.setModeWithPriorityLock(this._audioManager.mode_InCall());
      }
      DoLog("creating audiodevice on channel " + this._audioManager.stream_Voice() + "; SCO mode: " + this._audioManager.isBluetoothScoOn() + "; channel config=" + i + "; speaker(int)=" + this._audioManager.isSpeakerphoneOn() + "; speaker(pl)=" + this._audioManager.getPlatformAudioManager().isSpeakerphoneOn());
      try
      {
        this._audioTrack = new AudioTrack(this._playbackStream, paramInt, i, 2, j, 1);
        if (this._audioTrack == null) {
          throw new NullPointerException("AudioTrack failed to be initialized for sampleRate=" + paramInt + ", stream=" + this._playbackStream + ", plyBufSz=" + j);
        }
      }
      catch (Throwable localThrowable)
      {
        DoLog("********************** AudioTrack creation FAILED: " + localThrowable.toString());
      }
      if (this._audioTrack != null) {
        break label388;
      }
      return -1;
      this._tempBufPlay = paramArrayOfByte;
      break label70;
    }
    label388:
    if (this._audioTrack.getState() != 1)
    {
      DoLog("*********************** AudioTrack initialization FAILED");
      this._audioTrack.release();
      this._audioTrack = null;
      return -1;
    }
    setFlagsInternal(2);
    DoLog("audiodevice created on channel " + this._audioManager.stream_Voice() + "; SCO mode: " + this._audioManager.isBluetoothScoOn() + "; sampleRate=" + paramInt + ", channel=" + this._audioTrack.getChannelConfiguration());
    Iterator localIterator = this.listeners.iterator();
    while (localIterator.hasNext()) {
      ((IAudioDevice.AudioDeviceStateListener)localIterator.next()).onPlaybackReady();
    }
    SetPlayoutVolume(this._audioManager.getStreamVolume(this._audioManager.stream_Voice()));
    return this._audioManager.getStreamMaxVolume(this._audioManager.stream_Voice());
  }
  
  public int InitRecordingWithOwnBuffers(int paramInt1, int paramInt2, byte[] paramArrayOfByte, ByteBuffer paramByteBuffer)
  {
    if (1 == this.audioRoute) {
      return -1;
    }
    this._audioSource = paramInt1;
    int i = AudioRecord.getMinBufferSize(paramInt2, 16, 2);
    if (paramArrayOfByte == null) {
      if (this._tempBufRec == null)
      {
        if (-2 == i) {
          i = AudioRecord.getMinBufferSize(paramInt2, 2, 2);
        }
        if (-2 != i)
        {
          i <<= 1;
          this._tempBufRec = new byte[i];
        }
      }
    }
    for (;;)
    {
      label88:
      int j;
      if (paramByteBuffer == null)
      {
        this._recBuffer = ByteBuffer.allocateDirect(this._tempBufRec.length);
        if (this._recBuffer != null)
        {
          this._recBuffer.order(ByteOrder.nativeOrder());
          this._recBuffer.position(0);
        }
        this._bufferedRecSamples = (paramInt2 * 5 / 200);
        if (this._audioRecord != null)
        {
          this._audioRecord.release();
          this._audioRecord = null;
        }
        if (this.audioRoute == 0) {
          this._audioManager.setModeWithPriorityLock(this._audioManager.mode_InCall());
        }
        j = getRecAudioSourceForNativeSourceInternal(paramInt1);
        DoLog("creating capture device on channel " + this._audioManager.stream_Voice() + "; SCO mode: " + this._audioManager.isBluetoothScoOn() + "; audioSource=" + j);
      }
      try
      {
        this._audioRecord = new AudioRecord(j, paramInt2, 16, 2, i);
        if (this._audioRecord == null) {
          throw new NullPointerException("AudioRecord failed to be initialized for sampleRate=" + paramInt2 + ", audioSource=" + j + ", recBufSz=" + i);
        }
      }
      catch (Exception localException)
      {
        localException = localException;
        DoLog(localException.getMessage());
        return -1;
        this._tempBufRec = paramArrayOfByte;
        continue;
        this._recBuffer = paramByteBuffer;
        break label88;
      }
      finally {}
    }
    if (this._audioRecord.getState() != 1)
    {
      DoLog("AudioRecord initialization failure for sampleRate " + paramInt2);
      this._audioRecord.release();
      this._audioRecord = null;
      return -1;
    }
    if (NativeADMDelegate.isPlatformWideAECEffectAvailable()) {
      this.aecFilter = enableEffectForAudioRecordSession(this._audioRecord, new AudioDeviceAndroid.AECDefaultFactory(this));
    }
    if (NativeADMDelegate.isPlatformWideNSEffectAvailable()) {
      this.nsFilter = enableEffectForAudioRecordSession(this._audioRecord, new AudioDeviceAndroid.NSDefaultFactory(this));
    }
    return this._bufferedRecSamples;
  }
  
  /* Error */
  public int ProbePlayback(int paramInt)
  {
    // Byte code:
    //   0: iconst_2
    //   1: istore_2
    //   2: iload_1
    //   3: iconst_4
    //   4: iload_2
    //   5: invokestatic 460	android/media/AudioTrack:getMinBufferSize	(III)I
    //   8: istore_3
    //   9: bipush 254
    //   11: iload_3
    //   12: if_icmpne +175 -> 187
    //   15: iload_1
    //   16: iload_2
    //   17: iload_2
    //   18: invokestatic 460	android/media/AudioTrack:getMinBufferSize	(III)I
    //   21: istore_3
    //   22: iload_3
    //   23: sipush 6000
    //   26: if_icmpge +7 -> 33
    //   29: iload_3
    //   30: iconst_1
    //   31: ishl
    //   32: istore_3
    //   33: aconst_null
    //   34: astore 4
    //   36: new 222	android/media/AudioTrack
    //   39: dup
    //   40: aload_0
    //   41: getfield 167	org/webrtc/voiceengine/AudioDeviceAndroid:_audioManager	Lcom/viber/voip/sound/ISoundService;
    //   44: invokeinterface 456 1 0
    //   49: iload_1
    //   50: iload_2
    //   51: iconst_2
    //   52: iload_3
    //   53: iconst_1
    //   54: invokespecial 497	android/media/AudioTrack:<init>	(IIIIII)V
    //   57: astore 5
    //   59: aload 5
    //   61: invokevirtual 513	android/media/AudioTrack:getState	()I
    //   64: istore 9
    //   66: iload 9
    //   68: iconst_1
    //   69: if_icmpeq +15 -> 84
    //   72: aload 5
    //   74: ifnull +8 -> 82
    //   77: aload 5
    //   79: invokevirtual 516	android/media/AudioTrack:release	()V
    //   82: iconst_m1
    //   83: ireturn
    //   84: aload 5
    //   86: ifnull +8 -> 94
    //   89: aload 5
    //   91: invokevirtual 516	android/media/AudioTrack:release	()V
    //   94: aload_0
    //   95: new 235	java/lang/StringBuilder
    //   98: dup
    //   99: invokespecial 236	java/lang/StringBuilder:<init>	()V
    //   102: ldc_w 573
    //   105: invokevirtual 242	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   108: iload_1
    //   109: invokevirtual 343	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   112: invokevirtual 248	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   115: invokespecial 250	org/webrtc/voiceengine/AudioDeviceAndroid:DoLog	(Ljava/lang/String;)V
    //   118: aload_0
    //   119: getfield 167	org/webrtc/voiceengine/AudioDeviceAndroid:_audioManager	Lcom/viber/voip/sound/ISoundService;
    //   122: aload_0
    //   123: getfield 167	org/webrtc/voiceengine/AudioDeviceAndroid:_audioManager	Lcom/viber/voip/sound/ISoundService;
    //   126: invokeinterface 456 1 0
    //   131: invokeinterface 534 2 0
    //   136: ireturn
    //   137: astore 10
    //   139: aconst_null
    //   140: astore 5
    //   142: aload 5
    //   144: ifnull +8 -> 152
    //   147: aload 5
    //   149: invokevirtual 516	android/media/AudioTrack:release	()V
    //   152: iconst_m1
    //   153: ireturn
    //   154: astore 8
    //   156: aload 4
    //   158: ifnull +8 -> 166
    //   161: aload 4
    //   163: invokevirtual 516	android/media/AudioTrack:release	()V
    //   166: aload 8
    //   168: athrow
    //   169: astore 7
    //   171: aload 5
    //   173: astore 4
    //   175: aload 7
    //   177: astore 8
    //   179: goto -23 -> 156
    //   182: astore 6
    //   184: goto -42 -> 142
    //   187: iconst_4
    //   188: istore_2
    //   189: goto -167 -> 22
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	192	0	this	AudioDeviceAndroid
    //   0	192	1	paramInt	int
    //   1	188	2	i	int
    //   8	45	3	j	int
    //   34	140	4	localObject1	Object
    //   57	115	5	localAudioTrack	AudioTrack
    //   182	1	6	localThrowable1	Throwable
    //   169	7	7	localObject2	Object
    //   154	13	8	localObject3	Object
    //   177	1	8	localObject4	Object
    //   64	6	9	k	int
    //   137	1	10	localThrowable2	Throwable
    // Exception table:
    //   from	to	target	type
    //   36	59	137	java/lang/Throwable
    //   36	59	154	finally
    //   59	66	169	finally
    //   59	66	182	java/lang/Throwable
  }
  
  /* Error */
  public int ProbeRecording(int paramInt1, int paramInt2)
  {
    // Byte code:
    //   0: iload_2
    //   1: bipush 16
    //   3: iconst_2
    //   4: invokestatic 535	android/media/AudioRecord:getMinBufferSize	(III)I
    //   7: istore_3
    //   8: aconst_null
    //   9: astore 4
    //   11: new 253	android/media/AudioRecord
    //   14: dup
    //   15: iload_1
    //   16: invokestatic 538	org/webrtc/voiceengine/AudioDeviceAndroid:getRecAudioSourceForNativeSourceInternal	(I)I
    //   19: iload_2
    //   20: bipush 16
    //   22: iconst_2
    //   23: iload_3
    //   24: invokespecial 545	android/media/AudioRecord:<init>	(IIIII)V
    //   27: astore 5
    //   29: aload 5
    //   31: invokevirtual 552	android/media/AudioRecord:getState	()I
    //   34: istore 9
    //   36: iload 9
    //   38: iconst_1
    //   39: if_icmpeq +15 -> 54
    //   42: aload 5
    //   44: ifnull +8 -> 52
    //   47: aload 5
    //   49: invokevirtual 536	android/media/AudioRecord:release	()V
    //   52: iconst_m1
    //   53: ireturn
    //   54: aload 5
    //   56: ifnull +8 -> 64
    //   59: aload 5
    //   61: invokevirtual 536	android/media/AudioRecord:release	()V
    //   64: aload_0
    //   65: new 235	java/lang/StringBuilder
    //   68: dup
    //   69: invokespecial 236	java/lang/StringBuilder:<init>	()V
    //   72: ldc_w 576
    //   75: invokevirtual 242	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   78: iload_2
    //   79: invokevirtual 343	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   82: invokevirtual 248	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   85: invokespecial 250	org/webrtc/voiceengine/AudioDeviceAndroid:DoLog	(Ljava/lang/String;)V
    //   88: iload_2
    //   89: iconst_5
    //   90: imul
    //   91: sipush 200
    //   94: idiv
    //   95: ireturn
    //   96: astore 10
    //   98: aconst_null
    //   99: astore 5
    //   101: aload 5
    //   103: ifnull +8 -> 111
    //   106: aload 5
    //   108: invokevirtual 536	android/media/AudioRecord:release	()V
    //   111: iconst_m1
    //   112: ireturn
    //   113: astore 8
    //   115: aload 4
    //   117: ifnull +8 -> 125
    //   120: aload 4
    //   122: invokevirtual 536	android/media/AudioRecord:release	()V
    //   125: aload 8
    //   127: athrow
    //   128: astore 7
    //   130: aload 5
    //   132: astore 4
    //   134: aload 7
    //   136: astore 8
    //   138: goto -23 -> 115
    //   141: astore 6
    //   143: goto -42 -> 101
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	146	0	this	AudioDeviceAndroid
    //   0	146	1	paramInt1	int
    //   0	146	2	paramInt2	int
    //   7	17	3	i	int
    //   9	124	4	localObject1	Object
    //   27	104	5	localAudioRecord	AudioRecord
    //   141	1	6	localException1	Exception
    //   128	7	7	localObject2	Object
    //   113	13	8	localObject3	Object
    //   136	1	8	localObject4	Object
    //   34	6	9	j	int
    //   96	1	10	localException2	Exception
    // Exception table:
    //   from	to	target	type
    //   11	29	96	java/lang/Exception
    //   11	29	113	finally
    //   29	36	128	finally
    //   29	36	141	java/lang/Exception
  }
  
  public int SetAudioRoute(int paramInt)
  {
    switch (paramInt)
    {
    }
    for (this._playbackStream = 0;; this._playbackStream = 3)
    {
      this.audioRoute = paramInt;
      return paramInt;
    }
  }
  
  public int SetPlayoutSpeaker(boolean paramBoolean)
  {
    DoLog("acquired to change speakerphone state from " + this._audioManager.getPlatformAudioManager().isSpeakerphoneOn() + " to " + paramBoolean);
    AudioManager localAudioManager = this._audioManager.getPlatformAudioManager();
    BTControl localBTControl = this._audioManager.getBluetoothCtl();
    if ((this.audioRoute != 0) && ((this._audioManager.isHeadsetPluggedIn()) || (localAudioManager.isBluetoothA2dpOn()))) {
      return 0;
    }
    if ((this.audioRoute != 0) && (localBTControl.isHeadsetConnected()))
    {
      if (paramBoolean)
      {
        DoLog("looks like we're playing ptt, and bt or headset is connected, so no speakerphone");
        localBTControl.enableBluetoothRoute();
        localAudioManager.setMode(ISoundService.MODE_FOR_BLUETOOTH);
        return 0;
      }
      DoLog("looks like we're stopped playing ptt, putting everything bt related back");
      localAudioManager.setMode(0);
      localBTControl.disableBluetoothRoute();
      localBTControl.stopBluetooth();
      return 0;
    }
    if (paramBoolean == this._audioManager.getPlatformAudioManager().isSpeakerphoneOn())
    {
      DoLog("rejected to change speakerphone state cause current state is the same as acquired");
      return 0;
    }
    if ((!sound_io_reset_recorder_on_speaker_event()) && (!sound_io_reset_playback_on_speaker_event())) {
      return SetPlayoutSpeakerInternal(paramBoolean);
    }
    if (isActive()) {}
    for (;;)
    {
      try
      {
        this._recLock.lock();
        this._playLock.lock();
        if ((!sound_io_reset_recorder_on_speaker_event()) || (this._audioRecord == null)) {
          break label386;
        }
        int k = this._audioRecord.getSampleRate();
        StopRecording();
        i = k;
        if ((!sound_io_reset_playback_on_speaker_event()) || (this._audioTrack == null)) {
          break label380;
        }
        j = this._audioTrack.getSampleRate();
        StopPlayback();
        SetPlayoutSpeakerInternal(paramBoolean);
        if ((sound_io_reset_recorder_on_speaker_event()) && (i != 0))
        {
          InitRecording(this._audioSource, i);
          StartRecording();
        }
        if ((sound_io_reset_playback_on_speaker_event()) && (j != 0))
        {
          InitPlayback(j);
          StartPlayback();
        }
        return 0;
      }
      finally
      {
        this._recLock.unlock();
        this._playLock.unlock();
      }
      SetPlayoutSpeakerInternal(paramBoolean);
      return 0;
      label380:
      int j = 0;
      continue;
      label386:
      int i = 0;
    }
  }
  
  public int SetPlayoutVolume(int paramInt)
  {
    if (this._audioTrack != null) {
      this._audioTrack.setStereoVolume(AudioTrack.getMaxVolume(), AudioTrack.getMaxVolume());
    }
    return paramInt;
  }
  
  public int StartPlayback()
  {
    if (this._audioTrack == null) {
      return -1;
    }
    if (this.audioRoute == 0) {
      this._audioManager.setModeWithPriorityLock(this._audioManager.mode_InCall());
    }
    this._audioTrack.setPlaybackHeadPosition(0);
    if (8 != (0x8 & this.flags)) {
      processOnPlaybackPreStartEvent();
    }
    if (this._audioTrack.getPlayState() != 3) {}
    try
    {
      this._audioTrack.play();
      PlayAudio(this._tempBufPlay.length);
      this._audioTrack.flush();
      if (8 != (0x8 & this.flags))
      {
        processOnPlaybackPostStartEvent();
        if (4 == (0x4 & this.flags)) {
          processOnOverallStartEvent();
        }
      }
      setFlagsInternal(8);
      this._isPlaying = true;
      return 0;
    }
    catch (IllegalStateException localIllegalStateException)
    {
      localIllegalStateException.printStackTrace();
      this._isPlaying = true;
    }
    return -1;
  }
  
  public int StartRecording()
  {
    processOnCaptureStartEvent();
    try
    {
      this._audioRecord.startRecording();
      processOnCapturePostStartEvent();
      if ((!this._isRecording) && (8 == (0x8 & this.flags))) {
        processOnOverallStartEvent();
      }
      this._isRecording = true;
      return 0;
    }
    catch (IllegalStateException localIllegalStateException)
    {
      localIllegalStateException.printStackTrace();
    }
    return -1;
  }
  
  /* Error */
  public int StopPlayback()
  {
    // Byte code:
    //   0: aload_0
    //   1: invokespecial 677	org/webrtc/voiceengine/AudioDeviceAndroid:processOnPlaybackPreStopEvent	()V
    //   4: aload_0
    //   5: getfield 108	org/webrtc/voiceengine/AudioDeviceAndroid:_playLock	Ljava/util/concurrent/locks/ReentrantLock;
    //   8: invokevirtual 200	java/util/concurrent/locks/ReentrantLock:lock	()V
    //   11: aload_0
    //   12: getfield 97	org/webrtc/voiceengine/AudioDeviceAndroid:_audioTrack	Landroid/media/AudioTrack;
    //   15: ifnull +37 -> 52
    //   18: aload_0
    //   19: getfield 97	org/webrtc/voiceengine/AudioDeviceAndroid:_audioTrack	Landroid/media/AudioTrack;
    //   22: invokevirtual 653	android/media/AudioTrack:getPlayState	()I
    //   25: istore_2
    //   26: iload_2
    //   27: iconst_3
    //   28: if_icmpne +17 -> 45
    //   31: aload_0
    //   32: getfield 97	org/webrtc/voiceengine/AudioDeviceAndroid:_audioTrack	Landroid/media/AudioTrack;
    //   35: invokevirtual 680	android/media/AudioTrack:stop	()V
    //   38: aload_0
    //   39: getfield 97	org/webrtc/voiceengine/AudioDeviceAndroid:_audioTrack	Landroid/media/AudioTrack;
    //   42: invokevirtual 661	android/media/AudioTrack:flush	()V
    //   45: aload_0
    //   46: getfield 97	org/webrtc/voiceengine/AudioDeviceAndroid:_audioTrack	Landroid/media/AudioTrack;
    //   49: invokevirtual 516	android/media/AudioTrack:release	()V
    //   52: aload_0
    //   53: aconst_null
    //   54: putfield 97	org/webrtc/voiceengine/AudioDeviceAndroid:_audioTrack	Landroid/media/AudioTrack;
    //   57: aload_0
    //   58: iconst_1
    //   59: putfield 112	org/webrtc/voiceengine/AudioDeviceAndroid:_doPlayInit	Z
    //   62: aload_0
    //   63: getfield 108	org/webrtc/voiceengine/AudioDeviceAndroid:_playLock	Ljava/util/concurrent/locks/ReentrantLock;
    //   66: invokevirtual 203	java/util/concurrent/locks/ReentrantLock:unlock	()V
    //   69: aload_0
    //   70: getfield 167	org/webrtc/voiceengine/AudioDeviceAndroid:_audioManager	Lcom/viber/voip/sound/ISoundService;
    //   73: aload_0
    //   74: getfield 167	org/webrtc/voiceengine/AudioDeviceAndroid:_audioManager	Lcom/viber/voip/sound/ISoundService;
    //   77: invokeinterface 683 1 0
    //   82: invokeinterface 480 2 0
    //   87: aload_0
    //   88: invokespecial 685	org/webrtc/voiceengine/AudioDeviceAndroid:processOnPlaybackPostStopEvent	()V
    //   91: bipush 8
    //   93: bipush 8
    //   95: aload_0
    //   96: getfield 130	org/webrtc/voiceengine/AudioDeviceAndroid:flags	I
    //   99: iand
    //   100: if_icmpne +17 -> 117
    //   103: iconst_4
    //   104: iconst_4
    //   105: aload_0
    //   106: getfield 130	org/webrtc/voiceengine/AudioDeviceAndroid:flags	I
    //   109: iand
    //   110: if_icmpeq +7 -> 117
    //   113: aload_0
    //   114: invokespecial 687	org/webrtc/voiceengine/AudioDeviceAndroid:processOnOverallStopEvent	()V
    //   117: aload_0
    //   118: iconst_2
    //   119: invokevirtual 398	org/webrtc/voiceengine/AudioDeviceAndroid:clearFlagsInternal	(I)V
    //   122: aload_0
    //   123: bipush 8
    //   125: invokevirtual 398	org/webrtc/voiceengine/AudioDeviceAndroid:clearFlagsInternal	(I)V
    //   128: aload_0
    //   129: iconst_0
    //   130: putfield 118	org/webrtc/voiceengine/AudioDeviceAndroid:_isPlaying	Z
    //   133: iconst_0
    //   134: ireturn
    //   135: astore_3
    //   136: aload_3
    //   137: invokevirtual 668	java/lang/IllegalStateException:printStackTrace	()V
    //   140: goto -102 -> 38
    //   143: astore_1
    //   144: aload_0
    //   145: iconst_1
    //   146: putfield 112	org/webrtc/voiceengine/AudioDeviceAndroid:_doPlayInit	Z
    //   149: aload_0
    //   150: getfield 108	org/webrtc/voiceengine/AudioDeviceAndroid:_playLock	Ljava/util/concurrent/locks/ReentrantLock;
    //   153: invokevirtual 203	java/util/concurrent/locks/ReentrantLock:unlock	()V
    //   156: aload_1
    //   157: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	158	0	this	AudioDeviceAndroid
    //   143	14	1	localObject	Object
    //   25	4	2	i	int
    //   135	2	3	localIllegalStateException	IllegalStateException
    // Exception table:
    //   from	to	target	type
    //   31	38	135	java/lang/IllegalStateException
    //   4	26	143	finally
    //   31	38	143	finally
    //   38	45	143	finally
    //   45	52	143	finally
    //   52	57	143	finally
    //   136	140	143	finally
  }
  
  /* Error */
  public int StopRecording()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 110	org/webrtc/voiceengine/AudioDeviceAndroid:_recLock	Ljava/util/concurrent/locks/ReentrantLock;
    //   4: invokevirtual 200	java/util/concurrent/locks/ReentrantLock:lock	()V
    //   7: aload_0
    //   8: getfield 99	org/webrtc/voiceengine/AudioDeviceAndroid:_audioRecord	Landroid/media/AudioRecord;
    //   11: ifnull +82 -> 93
    //   14: aload_0
    //   15: getfield 99	org/webrtc/voiceengine/AudioDeviceAndroid:_audioRecord	Landroid/media/AudioRecord;
    //   18: invokevirtual 690	android/media/AudioRecord:getRecordingState	()I
    //   21: istore_2
    //   22: iload_2
    //   23: iconst_3
    //   24: if_icmpne +10 -> 34
    //   27: aload_0
    //   28: getfield 99	org/webrtc/voiceengine/AudioDeviceAndroid:_audioRecord	Landroid/media/AudioRecord;
    //   31: invokevirtual 691	android/media/AudioRecord:stop	()V
    //   34: aload_0
    //   35: getfield 145	org/webrtc/voiceengine/AudioDeviceAndroid:aecFilter	Ljava/lang/Object;
    //   38: ifnull +22 -> 60
    //   41: aload_0
    //   42: getfield 99	org/webrtc/voiceengine/AudioDeviceAndroid:_audioRecord	Landroid/media/AudioRecord;
    //   45: aload_0
    //   46: getfield 145	org/webrtc/voiceengine/AudioDeviceAndroid:aecFilter	Ljava/lang/Object;
    //   49: invokestatic 693	org/webrtc/voiceengine/AudioDeviceAndroid:disableEffectForAudioRecordSession	(Landroid/media/AudioRecord;Ljava/lang/Object;)Z
    //   52: ifeq +8 -> 60
    //   55: aload_0
    //   56: aconst_null
    //   57: putfield 145	org/webrtc/voiceengine/AudioDeviceAndroid:aecFilter	Ljava/lang/Object;
    //   60: aload_0
    //   61: getfield 147	org/webrtc/voiceengine/AudioDeviceAndroid:nsFilter	Ljava/lang/Object;
    //   64: ifnull +22 -> 86
    //   67: aload_0
    //   68: getfield 99	org/webrtc/voiceengine/AudioDeviceAndroid:_audioRecord	Landroid/media/AudioRecord;
    //   71: aload_0
    //   72: getfield 147	org/webrtc/voiceengine/AudioDeviceAndroid:nsFilter	Ljava/lang/Object;
    //   75: invokestatic 693	org/webrtc/voiceengine/AudioDeviceAndroid:disableEffectForAudioRecordSession	(Landroid/media/AudioRecord;Ljava/lang/Object;)Z
    //   78: ifeq +8 -> 86
    //   81: aload_0
    //   82: aconst_null
    //   83: putfield 147	org/webrtc/voiceengine/AudioDeviceAndroid:nsFilter	Ljava/lang/Object;
    //   86: aload_0
    //   87: getfield 99	org/webrtc/voiceengine/AudioDeviceAndroid:_audioRecord	Landroid/media/AudioRecord;
    //   90: invokevirtual 536	android/media/AudioRecord:release	()V
    //   93: aload_0
    //   94: aconst_null
    //   95: putfield 99	org/webrtc/voiceengine/AudioDeviceAndroid:_audioRecord	Landroid/media/AudioRecord;
    //   98: aload_0
    //   99: iconst_1
    //   100: putfield 114	org/webrtc/voiceengine/AudioDeviceAndroid:_doRecInit	Z
    //   103: aload_0
    //   104: getfield 110	org/webrtc/voiceengine/AudioDeviceAndroid:_recLock	Ljava/util/concurrent/locks/ReentrantLock;
    //   107: invokevirtual 203	java/util/concurrent/locks/ReentrantLock:unlock	()V
    //   110: aload_0
    //   111: invokespecial 695	org/webrtc/voiceengine/AudioDeviceAndroid:processOnCaptureStopEvent	()V
    //   114: aload_0
    //   115: iconst_1
    //   116: invokevirtual 398	org/webrtc/voiceengine/AudioDeviceAndroid:clearFlagsInternal	(I)V
    //   119: bipush 8
    //   121: bipush 8
    //   123: aload_0
    //   124: getfield 130	org/webrtc/voiceengine/AudioDeviceAndroid:flags	I
    //   127: iand
    //   128: if_icmpeq +7 -> 135
    //   131: aload_0
    //   132: invokespecial 687	org/webrtc/voiceengine/AudioDeviceAndroid:processOnOverallStopEvent	()V
    //   135: aload_0
    //   136: iconst_0
    //   137: putfield 116	org/webrtc/voiceengine/AudioDeviceAndroid:_isRecording	Z
    //   140: aload_0
    //   141: getfield 167	org/webrtc/voiceengine/AudioDeviceAndroid:_audioManager	Lcom/viber/voip/sound/ISoundService;
    //   144: aload_0
    //   145: getfield 167	org/webrtc/voiceengine/AudioDeviceAndroid:_audioManager	Lcom/viber/voip/sound/ISoundService;
    //   148: invokeinterface 683 1 0
    //   153: invokeinterface 480 2 0
    //   158: iconst_0
    //   159: ireturn
    //   160: astore_3
    //   161: aload_0
    //   162: aload_3
    //   163: invokevirtual 696	java/lang/IllegalStateException:getMessage	()Ljava/lang/String;
    //   166: invokespecial 250	org/webrtc/voiceengine/AudioDeviceAndroid:DoLog	(Ljava/lang/String;)V
    //   169: goto -135 -> 34
    //   172: astore_1
    //   173: aload_0
    //   174: iconst_1
    //   175: putfield 114	org/webrtc/voiceengine/AudioDeviceAndroid:_doRecInit	Z
    //   178: aload_0
    //   179: getfield 110	org/webrtc/voiceengine/AudioDeviceAndroid:_recLock	Ljava/util/concurrent/locks/ReentrantLock;
    //   182: invokevirtual 203	java/util/concurrent/locks/ReentrantLock:unlock	()V
    //   185: aload_0
    //   186: invokespecial 695	org/webrtc/voiceengine/AudioDeviceAndroid:processOnCaptureStopEvent	()V
    //   189: aload_1
    //   190: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	191	0	this	AudioDeviceAndroid
    //   172	18	1	localObject	Object
    //   21	4	2	i	int
    //   160	3	3	localIllegalStateException	IllegalStateException
    // Exception table:
    //   from	to	target	type
    //   27	34	160	java/lang/IllegalStateException
    //   0	22	172	finally
    //   27	34	172	finally
    //   34	60	172	finally
    //   60	86	172	finally
    //   86	93	172	finally
    //   93	98	172	finally
    //   161	169	172	finally
  }
  
  public void clearFlagsInternal(int paramInt)
  {
    this.flags &= (paramInt ^ 0xFFFFFFFF);
  }
  
  protected void finalize()
  {
    StopRecording();
    StopPlayback();
    super.finalize();
  }
  
  /* Error */
  public boolean isActive()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 99	org/webrtc/voiceengine/AudioDeviceAndroid:_audioRecord	Landroid/media/AudioRecord;
    //   6: ifnull +18 -> 24
    //   9: aload_0
    //   10: getfield 97	org/webrtc/voiceengine/AudioDeviceAndroid:_audioTrack	Landroid/media/AudioTrack;
    //   13: astore_3
    //   14: aload_3
    //   15: ifnull +9 -> 24
    //   18: iconst_1
    //   19: istore_2
    //   20: aload_0
    //   21: monitorexit
    //   22: iload_2
    //   23: ireturn
    //   24: iconst_0
    //   25: istore_2
    //   26: goto -6 -> 20
    //   29: astore_1
    //   30: aload_0
    //   31: monitorexit
    //   32: aload_1
    //   33: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	34	0	this	AudioDeviceAndroid
    //   29	4	1	localObject	Object
    //   19	7	2	bool	boolean
    //   13	2	3	localAudioTrack	AudioTrack
    // Exception table:
    //   from	to	target	type
    //   2	14	29	finally
  }
  
  public void registerStateListener(IAudioDevice.AudioDeviceStateListener paramAudioDeviceStateListener)
  {
    this.listeners.add(paramAudioDeviceStateListener);
  }
  
  public void restartRecorder()
  {
    if ((this._audioRecord == null) || (!this._isRecording)) {}
    for (;;)
    {
      return;
      try
      {
        boolean bool = sound_io_reset_recorder_on_speaker_event();
        int i = 0;
        if (bool)
        {
          AudioRecord localAudioRecord = this._audioRecord;
          i = 0;
          if (localAudioRecord != null)
          {
            i = this._audioRecord.getSampleRate();
            StopRecording();
          }
        }
        if ((!sound_io_reset_recorder_on_speaker_event()) || (i == 0) || (InitRecording(this._audioSource, i) <= 0)) {
          continue;
        }
        StartRecording();
        return;
      }
      finally {}
    }
  }
  
  /* Error */
  public void waitForInitialize()
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 615	org/webrtc/voiceengine/AudioDeviceAndroid:isActive	()Z
    //   4: ifne +26 -> 30
    //   7: aload_0
    //   8: monitorenter
    //   9: aload_0
    //   10: ldc2_w 710
    //   13: invokevirtual 715	java/lang/Object:wait	(J)V
    //   16: aload_0
    //   17: monitorexit
    //   18: goto -18 -> 0
    //   21: astore_2
    //   22: aload_0
    //   23: monitorexit
    //   24: aload_2
    //   25: athrow
    //   26: astore_1
    //   27: goto -11 -> 16
    //   30: return
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	31	0	this	AudioDeviceAndroid
    //   26	1	1	localInterruptedException	java.lang.InterruptedException
    //   21	4	2	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   9	16	21	finally
    //   16	18	21	finally
    //   22	24	21	finally
    //   9	16	26	java/lang/InterruptedException
  }
}


/* Location:           C:\Users\pooya\Desktop\ac.jar
 * Qualified Name:     org.webrtc.voiceengine.AudioDeviceAndroid
 * JD-Core Version:    0.7.0.1
 */