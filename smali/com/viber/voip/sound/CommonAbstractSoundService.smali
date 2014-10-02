.class public abstract Lcom/viber/voip/sound/CommonAbstractSoundService;
.super Lcom/viber/voip/sound/AbstractSoundService;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/sound/AudioDeviceOperable;


# static fields
.field public static final FLAG_ALLOW_RINGER_MODES:I = 0x2

.field public static final FLAG_DONT_BE_SELF_RECURSIVE:I = 0x100

.field public static final FLAG_NATIVE_VOLUME:I = 0x200

.field public static final FLAG_PLAY_SOUND:I = 0x4

.field public static final FLAG_REMOVE_SOUND_AND_VIBRATE:I = 0x8

.field public static final FLAG_SHOW_UI:I = 0x1

.field public static final FLAG_VIBRATE:I = 0x10

.field private static final GSM_CALL_END_HANDLING_DELAY:I = 0x7d0

.field protected static final NATIVE_VOICE_STATE_STARTED:I = 0x1

.field protected static final NATIVE_VOICE_STATE_STOPPED:I = 0x0

.field private static final SETMODE_RESTORE_FROM_DEFERRED:I = 0x100

.field public static final TAG:Ljava/lang/String;

.field private static _deferredModeChangeQueue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/viber/voip/sound/ISoundService$ModeStateListenerIntf;",
            ">;>;"
        }
    .end annotation
.end field

.field protected static volatile _deviceFlags:I

.field protected static volatile _deviceModes:Lcom/viber/jni/DeviceFlags$DeviceModes;

.field private static _handler:Landroid/os/Handler;

.field private static _handlerThread:Landroid/os/HandlerThread;

.field private static _samplesMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected static _svcInstance:Lcom/viber/voip/sound/CommonAbstractSoundService;

.field protected static volatile beforeHeadsetPluggedSpeakerStateWasOn:Z

.field private static volatile max_volumes_initialized:Z

.field private static mediaPlayer:Landroid/media/MediaPlayer;

.field private static volatile modeChangeAtomicLock:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected static volatile native_state:I

.field private static volatile routingFlags:I

.field private static volatile stream_max_volume:[I


# instance fields
.field private _audioSettings:[Lcom/viber/voip/sound/CommonAbstractSoundService$AudioSettingsImpl;

.field private final _samplesPool:Landroid/media/SoundPool;

.field private _vocoderSettings:Lcom/viber/voip/sound/CommonAbstractSoundService$VocoderSettingsImpl;

.field private volatile _voiceState:Lcom/viber/voip/sound/VoiceStateListener$VoiceState;

.field private final _voiceStateListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/viber/voip/sound/VoiceStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private audioDeviceCtl:Lorg/webrtc/voiceengine/IAudioDevice;

.field private audioDeviceStateListener:Lorg/webrtc/voiceengine/IAudioDevice$AudioDeviceStateListener;

.field private final audioManager:Landroid/media/AudioManager;

.field private final ctx:Landroid/content/Context;

.field private globalModeStateListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/viber/voip/sound/ISoundService$ModeStateListenerIntf;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private globalSpeakerStateListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/viber/voip/sound/ISoundService$SpeakerStateListener;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private volatile headsetPlugReceiver:Lcom/viber/voip/sound/CommonAbstractSoundService$HeadphonePlugStateListener;

.field protected volatile isMicMuted:Z

.field protected volatile isSpeakerActive:Z

.field private volatile localHoldFlag:Z

.field private final mAudioFocusControl:Lcom/viber/voip/sound/AudioFocusController;

.field private final mBtControl:Lcom/viber/voip/sound/bluetooth/BTControl;

.field private final mmControl:Lcom/viber/voip/sound/MMControl;

.field private final myInitialParams:Lcom/viber/voip/sound/AbstractSoundService$SoundServiceParams;

.field private volatile peerHoldFlag:Z

.field protected volatile prevPhoneState:I

.field private final ringtoneService:Lcom/viber/voip/sound/IRingtoneService;

.field private volatile spirit_coldstart:Z

.field private final vocoderWatchdog:Lcom/viber/voip/sound/VocoderWatchdog;

.field private final volumeChangeListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/viber/voip/sound/ISoundService$VolumeChangeListenerIntf;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 57
    const-class v0, Lcom/viber/voip/sound/CommonAbstractSoundService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/sound/CommonAbstractSoundService;->TAG:Ljava/lang/String;

    .line 82
    sput-boolean v2, Lcom/viber/voip/sound/CommonAbstractSoundService;->max_volumes_initialized:Z

    .line 88
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/viber/voip/sound/CommonAbstractSoundService;->modeChangeAtomicLock:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 111
    const/16 v0, 0x9

    new-array v0, v0, [I

    sput-object v0, Lcom/viber/voip/sound/CommonAbstractSoundService;->stream_max_volume:[I

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/sound/CommonAbstractSoundService;->_deferredModeChangeQueue:Ljava/util/List;

    .line 115
    sput-object v3, Lcom/viber/voip/sound/CommonAbstractSoundService;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 116
    sput v2, Lcom/viber/voip/sound/CommonAbstractSoundService;->native_state:I

    .line 118
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "SoundService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/viber/voip/sound/CommonAbstractSoundService;->_handlerThread:Landroid/os/HandlerThread;

    .line 119
    sget-object v0, Lcom/viber/voip/sound/CommonAbstractSoundService;->_handlerThread:Landroid/os/HandlerThread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/HandlerThread;->setDaemon(Z)V

    .line 120
    sget-object v0, Lcom/viber/voip/sound/CommonAbstractSoundService;->_handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 122
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/viber/voip/sound/CommonAbstractSoundService;->_handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/viber/voip/sound/CommonAbstractSoundService;->_handler:Landroid/os/Handler;

    .line 123
    sput-object v3, Lcom/viber/voip/sound/CommonAbstractSoundService;->_svcInstance:Lcom/viber/voip/sound/CommonAbstractSoundService;

    .line 125
    sput v2, Lcom/viber/voip/sound/CommonAbstractSoundService;->routingFlags:I

    .line 127
    sput-boolean v2, Lcom/viber/voip/sound/CommonAbstractSoundService;->beforeHeadsetPluggedSpeakerStateWasOn:Z

    .line 129
    invoke-static {}, Lcom/viber/jni/DeviceFlags;->getFlagsForDeviceModel()I

    move-result v0

    sput v0, Lcom/viber/voip/sound/CommonAbstractSoundService;->_deviceFlags:I

    .line 131
    invoke-static {}, Lcom/viber/jni/DeviceFlags;->getSpeechEnhancementsModeForDeviceModel()Lcom/viber/jni/DeviceFlags$DeviceModes;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/sound/CommonAbstractSoundService;->_deviceModes:Lcom/viber/jni/DeviceFlags$DeviceModes;

    .line 166
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/sound/CommonAbstractSoundService;->_samplesMap:Ljava/util/Map;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 521
    invoke-direct {p0}, Lcom/viber/voip/sound/AbstractSoundService;-><init>()V

    .line 137
    iput-boolean v5, p0, Lcom/viber/voip/sound/CommonAbstractSoundService;->isSpeakerActive:Z

    .line 138
    iput-boolean v5, p0, Lcom/viber/voip/sound/CommonAbstractSoundService;->isMicMuted:Z

    .line 140
    iput v5, p0, Lcom/viber/voip/sound/CommonAbstractSoundService;->prevPhoneState:I

    .line 142
    iput-object v1, p0, Lcom/viber/voip/sound/CommonAbstractSoundService;->audioDeviceCtl:Lorg/webrtc/voiceengine/IAudioDevice;

    .line 148
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/sound/CommonAbstractSoundService;->globalModeStateListeners:Ljava/util/Map;

    .line 149
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/sound/CommonAbstractSoundService;->globalSpeakerStateListeners:Ljava/util/Map;

    .line 152
    iput-boolean v6, p0, Lcom/viber/voip/sound/CommonAbstractSoundService;->spirit_coldstart:Z

    .line 153
    iput-boolean v5, p0, Lcom/viber/voip/sound/CommonAbstractSoundService;->localHoldFlag:Z

    .line 154
    iput-boolean v5, p0, Lcom/viber/voip/sound/CommonAbstractSoundService;->peerHoldFlag:Z

    .line 156
    new-instance v0, Lcom/viber/voip/sound/CommonAbstractSoundService$HeadphonePlugStateListener;

    invoke-direct {v0, p0}, Lcom/viber/voip/sound/CommonAbstractSoundService$HeadphonePlugStateListener;-><init>(Lcom/viber/voip/sound/CommonAbstractSoundService;)V

    iput-object v0, p0, Lcom/viber/voip/sound/CommonAbstractSoundService;->headsetPlugReceiver:Lcom/viber/voip/sound/CommonAbstractSoundService$HeadphonePlugStateListener;

    .line 164
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/sound/CommonAbstractSoundService;->volumeChangeListeners:Ljava/util/Map;

    .line 170
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/sound/CommonAbstractSoundService;->_voiceStateListeners:Ljava/util/Set;

    .line 171
    sget-object v0, Lcom/viber/voip/sound/VoiceStateListener$VoiceState;->VS_RINGER:Lcom/viber/voip/sound/VoiceStateListener$VoiceState;

    iput-object v0, p0, Lcom/viber/voip/sound/CommonAbstractSoundService;->_voiceState:Lcom/viber/voip/sound/VoiceStateListener$VoiceState;

    .line 352
    const/4 v0, 0x2

    new-array v2, v0, [Lcom/viber/voip/sound/CommonAbstractSoundService$AudioSettingsImpl;

    new-instance v3, Lcom/viber/voip/sound/CommonAbstractSoundService$AudioSettingsImpl;

    move-object v0, v1

    check-cast v0, Lcom/viber/voip/sound/CommonAbstractSoundService$DbgAudioSettingsTracer;

    invoke-direct {v3, p0, v0}, Lcom/viber/voip/sound/CommonAbstractSoundService$AudioSettingsImpl;-><init>(Lcom/viber/voip/sound/CommonAbstractSoundService;Lcom/viber/voip/sound/ISoundService$IAudioSettings$IAudioSettingsListener;)V

    aput-object v3, v2, v5

    new-instance v3, Lcom/viber/voip/sound/CommonAbstractSoundService$AudioSettingsImpl;

    move-object v0, v1

    check-cast v0, Lcom/viber/voip/sound/CommonAbstractSoundService$DbgAudioSettingsTracer;

    invoke-direct {v3, p0, v0}, Lcom/viber/voip/sound/CommonAbstractSoundService$AudioSettingsImpl;-><init>(Lcom/viber/voip/sound/CommonAbstractSoundService;Lcom/viber/voip/sound/ISoundService$IAudioSettings$IAudioSettingsListener;)V

    aput-object v3, v2, v6

    iput-object v2, p0, Lcom/viber/voip/sound/CommonAbstractSoundService;->_audioSettings:[Lcom/viber/voip/sound/CommonAbstractSoundService$AudioSettingsImpl;

    .line 357
    new-instance v0, Lcom/viber/voip/sound/CommonAbstractSoundService$VocoderSettingsImpl;

    invoke-direct {v0, p0, v1}, Lcom/viber/voip/sound/CommonAbstractSoundService$VocoderSettingsImpl;-><init>(Lcom/viber/voip/sound/CommonAbstractSoundService;Lcom/viber/voip/sound/CommonAbstractSoundService$1;)V

    iput-object v0, p0, Lcom/viber/voip/sound/CommonAbstractSoundService;->_vocoderSettings:Lcom/viber/voip/sound/CommonAbstractSoundService$VocoderSettingsImpl;

    .line 378
    new-instance v0, Lcom/viber/voip/sound/CommonAbstractSoundService$1;

    invoke-direct {v0, p0}, Lcom/viber/voip/sound/CommonAbstractSoundService$1;-><init>(Lcom/viber/voip/sound/CommonAbstractSoundService;)V

    iput-object v0, p0, Lcom/viber/voip/sound/CommonAbstractSoundService;->audioDeviceStateListener:Lorg/webrtc/voiceengine/IAudioDevice$AudioDeviceStateListener;

    .line 522
    const/4 v0, 0x3

    sget-object v2, Lcom/viber/voip/sound/CommonAbstractSoundService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "GenericSoundService<ctor>@"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/viber/voip/sound/SoundFactory;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 524
    sget-object v0, Lcom/viber/voip/sound/SoundFactory;->instance:Lcom/viber/voip/sound/ISoundService;

    if-eqz v0, :cond_0

    .line 525
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Can\'t create new instance of SoundService: singleton is already registered"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 528
    :cond_0
    iput-object p1, p0, Lcom/viber/voip/sound/CommonAbstractSoundService;->ctx:Landroid/content/Context;

    .line 529
    iget-object v0, p0, Lcom/viber/voip/sound/CommonAbstractSoundService;->ctx:Landroid/content/Context;

    const-string/jumbo v2, "audio"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/viber/voip/sound/CommonAbstractSoundService;->audioManager:Landroid/media/AudioManager;

    .line 530
    new-instance v0, Lcom/viber/voip/sound/bluetooth/BTControl;

    invoke-direct {v0, p0}, Lcom/viber/voip/sound/bluetooth/BTControl;-><init>(Lcom/viber/voip/sound/ISoundService;)V

    iput-object v0, p0, Lcom/viber/voip/sound/CommonAbstractSoundService;->mBtControl:Lcom/viber/voip/sound/bluetooth/BTControl;

    .line 532
    new-instance v0, Lcom/viber/voip/sound/AudioDeviceSoundServiceDelegate;

    invoke-direct {v0, p0}, Lcom/viber/voip/sound/AudioDeviceSoundServiceDelegate;-><init>(Lcom/viber/voip/sound/ISoundService;)V

    .line 536
    invoke-static {}, Lorg/webrtc/voiceengine/AudioDeviceManager;->getAudioDeviceCtl()Lorg/webrtc/voiceengine/IAudioDevice;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/sound/CommonAbstractSoundService;->registerAudioDevice(Lorg/webrtc/voiceengine/IAudioDevice;)V

    .line 538
    new-instance v0, Lcom/viber/voip/sound/AbstractSoundService$SoundServiceParams;

    invoke-direct {v0, p0, p0}, Lcom/viber/voip/sound/AbstractSoundService$SoundServiceParams;-><init>(Lcom/viber/voip/sound/AbstractSoundService;Lcom/viber/voip/sound/ISoundService;)V

    iput-object v0, p0, Lcom/viber/voip/sound/CommonAbstractSoundService;->myInitialParams:Lcom/viber/voip/sound/AbstractSoundService$SoundServiceParams;

    .line 539
    invoke-virtual {p0}, Lcom/viber/voip/sound/CommonAbstractSoundService;->isSpeakerphoneOn()Z

    move-result v0

    iput-boolean v0, p0, Lcom/viber/voip/sound/CommonAbstractSoundService;->isSpeakerActive:Z

    .line 541
    iget-object v0, p0, Lcom/viber/voip/sound/CommonAbstractSoundService;->ctx:Landroid/content/Context;

    iget-object v2, p0, Lcom/viber/voip/sound/CommonAbstractSoundService;->headsetPlugReceiver:Lcom/viber/voip/sound/CommonAbstractSoundService$HeadphonePlugStateListener;

    new-instance v3, Landroid/content/IntentFilter;

    const-string/jumbo v4, "android.intent.action.HEADSET_PLUG"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 543
    invoke-static {p0}, Lcom/viber/voip/sound/RingtoneService;->forSoundService(Lcom/viber/voip/sound/AbstractSoundService;)Lcom/viber/voip/sound/IRingtoneService;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/sound/CommonAbstractSoundService;->ringtoneService:Lcom/viber/voip/sound/IRingtoneService;

    .line 544
    iget-object v0, p0, Lcom/viber/voip/sound/CommonAbstractSoundService;->ringtoneService:Lcom/viber/voip/sound/IRingtoneService;

    instance-of v0, v0, Lcom/viber/voip/sound/ISoundService$ModeStateListener;

    if-eqz v0, :cond_1

    .line 545
    iget-object v0, p0, Lcom/viber/voip/sound/CommonAbstractSoundService;->ringtoneService:Lcom/viber/voip/sound/IRingtoneService;

    check-cast v0, Lcom/viber/voip/sound/ISoundService$ModeStateListener;

    invoke-virtual {p0, v0}, Lcom/viber/voip/sound/CommonAbstractSoundService;->registerModeStateListener(Lcom/viber/voip/sound/ISoundService$ModeStateListenerIntf;)V

    :cond_1
    move-object v0, v1

    .line 548
    check-cast v0, Lcom/viber/voip/sound/MMControl;

    iput-object v0, p0, Lcom/viber/voip/sound/CommonAbstractSoundService;->mmControl:Lcom/viber/voip/sound/MMControl;

    .line 549
    sget-boolean v0, Lcom/viber/voip/dx;->a:Z

    if-eqz v0, :cond_2

    new-instance v1, Lcom/viber/voip/sound/AudioFocusController;

    iget-object v0, p0, Lcom/viber/voip/sound/CommonAbstractSoundService;->audioManager:Landroid/media/AudioManager;

    invoke-direct {v1, v0}, Lcom/viber/voip/sound/AudioFocusController;-><init>(Landroid/media/AudioManager;)V

    :cond_2
    iput-object v1, p0, Lcom/viber/voip/sound/CommonAbstractSoundService;->mAudioFocusControl:Lcom/viber/voip/sound/AudioFocusController;

    .line 553
    sget-boolean v0, Lcom/viber/voip/sound/SoundServiceCommonConfig$GenericConfig;->CTL_USE_UI_THREAD_PRIORITY:Z

    if-eqz v0, :cond_3

    .line 554
    const/16 v0, -0x13

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 591
    :cond_3
    new-instance v0, Lcom/viber/voip/sound/VocoderWatchdog;

    invoke-direct {v0, p0}, Lcom/viber/voip/sound/VocoderWatchdog;-><init>(Lcom/viber/voip/sound/AbstractSoundService;)V

    iput-object v0, p0, Lcom/viber/voip/sound/CommonAbstractSoundService;->vocoderWatchdog:Lcom/viber/voip/sound/VocoderWatchdog;

    .line 592
    invoke-virtual {p0}, Lcom/viber/voip/sound/CommonAbstractSoundService;->getAudioDeviceCtl()Lorg/webrtc/voiceengine/IAudioDevice;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/sound/CommonAbstractSoundService;->vocoderWatchdog:Lcom/viber/voip/sound/VocoderWatchdog;

    invoke-interface {v0, v1}, Lorg/webrtc/voiceengine/IAudioDevice;->registerStateListener(Lorg/webrtc/voiceengine/IAudioDevice$AudioDeviceStateListener;)V

    .line 597
    invoke-direct {p0}, Lcom/viber/voip/sound/CommonAbstractSoundService;->initMaxVolumeValuesForStreams()V

    .line 598
    new-instance v0, Landroid/media/SoundPool;

    invoke-virtual {p0}, Lcom/viber/voip/sound/CommonAbstractSoundService;->stream_Notification()I

    move-result v1

    invoke-direct {v0, v6, v1, v5}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/viber/voip/sound/CommonAbstractSoundService;->_samplesPool:Landroid/media/SoundPool;

    .line 599
    return-void
.end method

.method private _dumpStackTrace(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 643
    return-void
.end method

.method private _getCallerMethodName()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 656
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 658
    array-length v1, v0

    const/4 v2, 0x5

    if-ge v1, v2, :cond_0

    .line 659
    const-string/jumbo v0, ""

    .line 661
    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v2, v0, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v0, v0, v3

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private _replayModeChange()V
    .locals 5

    .prologue
    .line 1303
    const/4 v0, 0x0

    .line 1304
    sget-object v2, Lcom/viber/voip/sound/CommonAbstractSoundService;->_deferredModeChangeQueue:Ljava/util/List;

    monitor-enter v2

    .line 1305
    :try_start_0
    sget-object v1, Lcom/viber/voip/sound/CommonAbstractSoundService;->_deferredModeChangeQueue:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 1306
    sget-object v0, Lcom/viber/voip/sound/CommonAbstractSoundService;->_deferredModeChangeQueue:Ljava/util/List;

    sget-object v1, Lcom/viber/voip/sound/CommonAbstractSoundService;->_deferredModeChangeQueue:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    move-object v1, v0

    .line 1308
    :goto_0
    sget-object v0, Lcom/viber/voip/sound/CommonAbstractSoundService;->_deferredModeChangeQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1309
    monitor-exit v2

    .line 1311
    if-nez v1, :cond_0

    .line 1314
    :goto_1
    return-void

    .line 1309
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1312
    :cond_0
    const/4 v2, 0x3

    sget-object v3, Lcom/viber/voip/sound/CommonAbstractSoundService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setMode("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/viber/voip/sound/CommonAbstractSoundService;->getModeName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "): restoring from deferred "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/viber/voip/sound/SoundFactory;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 1313
    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/viber/voip/sound/ISoundService$ModeStateListenerIntf;

    const/16 v1, 0x100

    invoke-virtual {p0, v2, v0, v1}, Lcom/viber/voip/sound/CommonAbstractSoundService;->setMode(ILcom/viber/voip/sound/ISoundService$ModeStateListenerIntf;I)V

    goto :goto_1

    :cond_1
    move-object v1, v0

    goto :goto_0
.end method

.method static synthetic access$100()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/viber/voip/sound/CommonAbstractSoundService;->_handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/viber/voip/sound/CommonAbstractSoundService;)Lcom/viber/voip/sound/bluetooth/BTControl;
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/viber/voip/sound/CommonAbstractSoundService;->mBtControl:Lcom/viber/voip/sound/bluetooth/BTControl;

    return-object v0
.end method

.method public static getModeName(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 462
    const/4 v0, -0x1

    if-ne v0, p0, :cond_0

    const-string/jumbo v0, "MODE_CURRENT"

    .line 468
    :goto_0
    return-object v0

    .line 463
    :cond_0
    const/4 v0, 0x2

    if-ne v0, p0, :cond_1

    const-string/jumbo v0, "MODE_IN_CALL"

    goto :goto_0

    .line 464
    :cond_1
    const/4 v0, -0x2

    if-ne v0, p0, :cond_2

    const-string/jumbo v0, "MODE_INVALID"

    goto :goto_0

    .line 465
    :cond_2
    if-nez p0, :cond_3

    const-string/jumbo v0, "MODE_NORMAL"

    goto :goto_0

    .line 466
    :cond_3
    const/4 v0, 0x1

    if-ne v0, p0, :cond_4

    const-string/jumbo v0, "MODE_RINGTONE"

    goto :goto_0

    .line 467
    :cond_4
    sget v0, Lcom/viber/voip/sound/CommonAbstractSoundService;->MODE_IN_COMMUNICATION:I

    if-ne v0, p0, :cond_5

    const-string/jumbo v0, "MODE_IN_COMMUNICATION"

    goto :goto_0

    .line 468
    :cond_5
    const-string/jumbo v0, "unknown"

    goto :goto_0
.end method

.method public static getRingerModeName(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 483
    const/4 v0, 0x2

    if-ne v0, p0, :cond_0

    const-string/jumbo v0, "RINGER_MODE_NORMAL"

    .line 486
    :goto_0
    return-object v0

    .line 484
    :cond_0
    if-nez p0, :cond_1

    const-string/jumbo v0, "RINGER_MODE_SILENT"

    goto :goto_0

    .line 485
    :cond_1
    const/4 v0, 0x1

    if-ne v0, p0, :cond_2

    const-string/jumbo v0, "RINGER_MODE_VIBRATE"

    goto :goto_0

    .line 486
    :cond_2
    const-string/jumbo v0, "unknown"

    goto :goto_0
.end method

.method protected static getRouteName(I)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 490
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 491
    const/4 v1, 0x1

    and-int/lit8 v2, p0, 0x1

    if-ne v1, v2, :cond_0

    const-string/jumbo v1, "ROUTEMODE_CALL "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 492
    :cond_0
    const/4 v1, 0x4

    and-int/lit8 v2, p0, 0x4

    if-ne v1, v2, :cond_1

    const-string/jumbo v1, "ROUTEMODE_DTMF "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 493
    :cond_1
    const/16 v1, 0x20

    and-int/lit8 v2, p0, 0x20

    if-ne v1, v2, :cond_2

    const-string/jumbo v1, "ROUTEMODE_EXTERNAL_HEADSET "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 494
    :cond_2
    const/16 v1, 0x10

    and-int/lit8 v2, p0, 0x10

    if-ne v1, v2, :cond_3

    const-string/jumbo v1, "ROUTEMODE_GSMCALL "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 495
    :cond_3
    const/16 v1, 0x8

    and-int/lit8 v2, p0, 0x8

    if-ne v1, v2, :cond_4

    const-string/jumbo v1, "ROUTEMODE_RINGTONE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 496
    :cond_4
    const/4 v1, 0x2

    and-int/lit8 v2, p0, 0x2

    if-ne v1, v2, :cond_5

    const-string/jumbo v1, "ROUTEMODE_TONE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 497
    :cond_5
    if-nez p0, :cond_6

    const-string/jumbo v1, "ROUTEMODE_NORMAL "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 498
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getStreamName(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 472
    const/4 v0, 0x4

    if-ne v0, p0, :cond_0

    const-string/jumbo v0, "STREAM_ALARM"

    .line 479
    :goto_0
    return-object v0

    .line 473
    :cond_0
    const/16 v0, 0x8

    if-ne v0, p0, :cond_1

    const-string/jumbo v0, "STREAM_DTMF"

    goto :goto_0

    .line 474
    :cond_1
    const/4 v0, 0x3

    if-ne v0, p0, :cond_2

    const-string/jumbo v0, "STREAM_MUSIC"

    goto :goto_0

    .line 475
    :cond_2
    const/4 v0, 0x5

    if-ne v0, p0, :cond_3

    const-string/jumbo v0, "STREAM_NOTIFICATION"

    goto :goto_0

    .line 476
    :cond_3
    const/4 v0, 0x2

    if-ne v0, p0, :cond_4

    const-string/jumbo v0, "STREAM_RING"

    goto :goto_0

    .line 477
    :cond_4
    const/4 v0, 0x1

    if-ne v0, p0, :cond_5

    const-string/jumbo v0, "STREAM_SYSTEM"

    goto :goto_0

    .line 478
    :cond_5
    if-nez p0, :cond_6

    const-string/jumbo v0, "STREAM_VOICE_CALL"

    goto :goto_0

    .line 479
    :cond_6
    const-string/jumbo v0, "unknown"

    goto :goto_0
.end method

.method private initMaxVolumeValuesForStreams()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 507
    sget-boolean v0, Lcom/viber/voip/sound/CommonAbstractSoundService;->max_volumes_initialized:Z

    if-eqz v0, :cond_0

    .line 519
    :goto_0
    return-void

    .line 508
    :cond_0
    sget-object v3, Lcom/viber/voip/sound/CommonAbstractSoundService;->stream_max_volume:[I

    monitor-enter v3

    move v2, v1

    .line 510
    :goto_1
    :try_start_0
    sget-object v0, Lcom/viber/voip/sound/CommonAbstractSoundService;->stream_max_volume:[I

    array-length v0, v0

    if-ge v2, v0, :cond_2

    .line 511
    sget-object v0, Lcom/viber/voip/sound/CommonAbstractSoundService;->stream_max_volume:[I

    iget-object v4, p0, Lcom/viber/voip/sound/CommonAbstractSoundService;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, v2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v4

    aput v4, v0, v2

    .line 516
    sget-boolean v4, Lcom/viber/voip/sound/CommonAbstractSoundService;->max_volumes_initialized:Z

    sget-object v0, Lcom/viber/voip/sound/CommonAbstractSoundService;->stream_max_volume:[I

    aget v0, v0, v2

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_2
    or-int/2addr v0, v4

    sput-boolean v0, Lcom/viber/voip/sound/CommonAbstractSoundService;->max_volumes_initialized:Z

    .line 510
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_1
    move v0, v1

    .line 516
    goto :goto_2

    .line 518
    :cond_2
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private logRouteState()V
    .locals 4

    .prologue
    .line 925
    const/4 v0, 0x3

    sget-object v1, Lcom/viber/voip/sound/CommonAbstractSoundService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "routing: bta2dp="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/viber/voip/sound/CommonAbstractSoundService;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v3}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " btSco="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/viber/voip/sound/CommonAbstractSoundService;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v3}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " speaker="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/viber/voip/sound/CommonAbstractSoundService;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v3}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/viber/voip/sound/SoundFactory;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 931
    return-void
.end method

.method private notifyVoiceStateChange(Lcom/viber/voip/sound/VoiceStateListener$VoiceState;Lcom/viber/voip/sound/VoiceStateListener$VoiceState;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1347
    iget-object v1, p0, Lcom/viber/voip/sound/CommonAbstractSoundService;->_voiceStateListeners:Ljava/util/Set;

    monitor-enter v1

    .line 1348
    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v2, p0, Lcom/viber/voip/sound/CommonAbstractSoundService;->_voiceStateListeners:Ljava/util/Set;

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1349
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1350
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/sound/VoiceStateListener;

    .line 1351
    invoke-interface {v0, p0, p2}, Lcom/viber/voip/sound/VoiceStateListener;->onVoiceStateChanged(Lcom/viber/voip/sound/ISoundService;Lcom/viber/voip/sound/VoiceStateListener$VoiceState;)V

    goto :goto_0

    .line 1349
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1353
    :cond_0
    return-void
.end method

.method private pauseSoundPool()V
    .locals 2

    .prologue
    .line 1185
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    .line 1186
    iget-object v0, p0, Lcom/viber/voip/sound/CommonAbstractSoundService;->_samplesPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->autoPause()V

    .line 1188
    :cond_0
    return-void
.end method

.method private resumeSoundPool()V
    .locals 2

    .prologue
    .line 1193
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    .line 1194
    iget-object v0, p0, Lcom/viber/voip/sound/CommonAbstractSoundService;->_samplesPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->autoResume()V

    .line 1196
    :cond_0
    return-void
.end method


# virtual methods
.method protected _notifySpeakerStateChange(ZZ)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 935
    iget-object v1, p0, Lcom/viber/voip/sound/CommonAbstractSoundService;->globalSpeakerStateListeners:Ljava/util/Map;

    monitor-enter v1

    .line 936
    :try_start_0
    new-instance v2, Ljava/util/HashMap;

    iget-object v0, p0, Lcom/viber/voip/sound/CommonAbstractSoundService;->globalSpeakerStateListeners:Ljava/util/Map;

    invoke-direct {v2, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 937
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 939
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 940
    if-eqz p2, :cond_0

    .line 941
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/sound/ISoundService$SpeakerStateListener;

    invoke-interface {v0, p1}, Lcom/viber/voip/sound/ISoundService$SpeakerStateListener;->onSpeakerStatePreChanged(Z)V

    goto :goto_0

    .line 937
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 943
    :cond_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/sound/ISoundService$SpeakerStateListener;

    invoke-interface {v0, p1}, Lcom/viber/voip/sound/ISoundService$SpeakerStateListener;->onSpeakerStateChanged(Z)V

    goto :goto_0

    .line 945
    :cond_1
    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 946
    return-void
.end method

.method protected _notifySpeakerStatePostChange(Z)V
    .locals 1
    .parameter

    .prologue
    .line 961
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/viber/voip/sound/CommonAbstractSoundService;->_notifySpeakerStateChange(ZZ)V

    .line 962
    return-void
.end method

.method protected _notifySpeakerStatePreChange(Z)V
    .locals 1
    .parameter

    .prologue
    .line 965
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/viber/voip/sound/CommonAbstractSoundService;->_notifySpeakerStateChange(ZZ)V

    .line 966
    return-void
.end method

.method protected checkPeerHoldStatusAndPlayHoldToneIfNecessary()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1535
    invoke-virtual {p0}, Lcom/viber/voip/sound/CommonAbstractSoundService;->getApplicationContext()Lcom/viber/voip/ViberApplication;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/jni/PhoneControllerWrapper;->getCurrentCall()Lcom/viber/voip/phone/call/k;

    move-result-object v1

    .line 1536
    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/viber/voip/sound/CommonAbstractSoundService;->isPeerOnHold()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1537
    invoke-virtual {p0}, Lcom/viber/voip/sound/CommonAbstractSoundService;->stopAllTones()V

    .line 1538
    invoke-virtual {p0}, Lcom/viber/voip/sound/CommonAbstractSoundService;->mode_Tone()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/sound/CommonAbstractSoundService;->setModeWithPriorityLock(I)V

    .line 1539
    sget-object v0, Lcom/viber/voip/sound/ToneGeneratorFactory$ToneType;->HOLD_TONE:Lcom/viber/voip/sound/ToneGeneratorFactory$ToneType;

    invoke-virtual {p0, v0}, Lcom/viber/voip/sound/CommonAbstractSoundService;->playTone(Lcom/viber/voip/sound/ToneGeneratorFactory$ToneType;)V

    .line 1540
    const/4 v0, 0x1

    .line 1542
    :cond_0
    return v0
.end method

.method protected checkVoiceStateForRouting(I)V
    .locals 4
    .parameter

    .prologue
    .line 1327
    iget-object v1, p0, Lcom/viber/voip/sound/CommonAbstractSoundService;->_voiceState:Lcom/viber/voip/sound/VoiceStateListener$VoiceState;

    monitor-enter v1

    .line 1328
    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/sound/CommonAbstractSoundService;->_voiceState:Lcom/viber/voip/sound/VoiceStateListener$VoiceState;

    .line 1329
    const/4 v2, 0x1

    and-int/lit8 v3, p1, 0x1

    if-ne v2, v3, :cond_1

    sget-object v2, Lcom/viber/voip/sound/VoiceStateListener$VoiceState;->VS_VOICE:Lcom/viber/voip/sound/VoiceStateListener$VoiceState;

    iput-object v2, p0, Lcom/viber/voip/sound/CommonAbstractSoundService;->_voiceState:Lcom/viber/voip/sound/VoiceStateListener$VoiceState;

    .line 1332
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1333
    iget-object v1, p0, Lcom/viber/voip/sound/CommonAbstractSoundService;->_voiceState:Lcom/viber/voip/sound/VoiceStateListener$VoiceState;

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/viber/voip/sound/CommonAbstractSoundService;->_voiceState:Lcom/viber/voip/sound/VoiceStateListener$VoiceState;

    invoke-direct {p0, v0, v1}, Lcom/viber/voip/sound/CommonAbstractSoundService;->notifyVoiceStateChange(Lcom/viber/voip/sound/VoiceStateListener$VoiceState;Lcom/viber/voip/sound/VoiceStateListener$VoiceState;)V

    .line 1334
    :cond_0
    return-void

    .line 1330
    :cond_1
    const/16 v2, 0x10

    and-int/lit8 v3, p1, 0x10

    if-ne v2, v3, :cond_2

    :try_start_1
    sget-object v2, Lcom/viber/voip/sound/VoiceStateListener$VoiceState;->VS_GSM:Lcom/viber/voip/sound/VoiceStateListener$VoiceState;

    iput-object v2, p0, Lcom/viber/voip/sound/CommonAbstractSoundService;->_voiceState:Lcom/viber/voip/sound/VoiceStateListener$VoiceState;

    goto :goto_0

    .line 1332
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1331
    :cond_2
    :try_start_2
    sget-object v2, Lcom/viber/voip/sound/VoiceStateListener$VoiceState;->VS_RINGER:Lcom/viber/voip/sound/VoiceStateListener$VoiceState;

    iput-object v2, p0, Lcom/viber/voip/sound/CommonAbstractSoundService;->_voiceState:Lcom/viber/voip/sound/VoiceStateListener$VoiceState;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public clearRouteFlags(I)I
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x3

    .line 1317
    sget v0, Lcom/viber/voip/sound/CommonAbstractSoundService;->routingFlags:I

    and-int/2addr v0, p1

    if-nez v0, :cond_0

    sget v0, Lcom/viber/voip/sound/CommonAbstractSoundService;->routingFlags:I

    .line 1322
    :goto_0
    return v0

    .line 1318
    :cond_0
    sget-object v0, Lcom/viber/voip/sound/CommonAbstractSoundService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "<-- routing flags changed from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/viber/voip/sound/CommonAbstractSoundService;->routingFlags:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/viber/voip/sound/CommonAbstractSoundService;->routingFlags:I

    xor-int/lit8 v3, p1, -0x1

    and-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": clearing route flag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/viber/voip/sound/CommonAbstractSoundService;->getRouteName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v0, v1}, Lcom/viber/voip/sound/SoundFactory;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 1319
    sget v0, Lcom/viber/voip/sound/CommonAbstractSoundService;->routingFlags:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    sput v0, Lcom/viber/voip/sound/CommonAbstractSoundService;->routingFlags:I

    .line 1320
    sget v0, Lcom/viber/voip/sound/CommonAbstractSoundService;->routingFlags:I

    invoke-virtual {p0, v0}, Lcom/viber/voip/sound/CommonAbstractSoundService;->checkVoiceStateForRouting(I)V

    .line 1321
    sget-object v0, Lcom/viber/voip/sound/CommonAbstractSoundService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "<-- current routing is: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/viber/voip/sound/CommonAbstractSoundService;->routingFlags:I

    invoke-static {v2}, Lcom/viber/voip/sound/CommonAbstractSoundService;->getRouteName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v0, v1}, Lcom/viber/voip/sound/SoundFactory;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 1322
    sget v0, Lcom/viber/voip/sound/CommonAbstractSoundService;->routingFlags:I

    goto :goto_0
.end method

.method public ensureStopTone(Lcom/viber/voip/sound/ToneGeneratorFactory$ToneType;)V
    .locals 0
    .parameter

    .prologue
    .line 1401
    invoke-static {p1}, Lcom/viber/voip/sound/ToneGeneratorFactory;->ensureStopCommonTone(Lcom/viber/voip/sound/ToneGeneratorFactory$ToneType;)V

    .line 1402
    return-void
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 1046
    iget-object v0, p0, Lcom/viber/voip/sound/CommonAbstractSoundService;->ctx:Landroid/content/Context;

    iget-object v1, p0, Lcom/viber/voip/sound/CommonAbstractSoundService;->headsetPlugReceiver:Lcom/viber/voip/sound/CommonAbstractSoundService$HeadphonePlugStateListener;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1047
    invoke-virtual {p0}, Lcom/viber/voip/sound/CommonAbstractSoundService;->stopMediaPlayer()V

    .line 1048
    invoke-virtual {p0}, Lcom/viber/voip/sound/CommonAbstractSoundService;->releaseMediaPlayer()V

    .line 1049
    invoke-virtual {p0}, Lcom/viber/voip/sound/CommonAbstractSoundService;->stopAllTones()V

    .line 1050
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 1051
    return-void
.end method

.method protected forceSpeakerphoneOn(Z)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x3

    .line 817
    invoke-static {}, Lcom/viber/voip/sound/bluetooth/BTControl;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 818
    iget-object v0, p0, Lcom/viber/voip/sound/CommonAbstractSoundService;->mBtControl:Lcom/viber/voip/sound/bluetooth/BTControl;

    invoke-virtual {v0}, Lcom/viber/voip/sound/bluetooth/BTControl;->disableBluetoothRoute()V

    .line 821
    :cond_0
    sget-object v0, Lcom/viber/voip/sound/CommonAbstractSoundService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "forceSpeakerphone: setting to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/viber/voip/sound/CommonAbstractSoundService;->getMode()I

    move-result v2

    invoke-static {v2}, Lcom/viber/voip/sound/CommonAbstractSoundService;->getModeName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/viber/voip/sound/SoundFactory;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 822
    iget-object v0, p0, Lcom/viber/voip/sound/CommonAbstractSoundService;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 823
    sget-object v0, Lcom/viber/voip/sound/CommonAbstractSoundService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "forceSpeakerphone: current is ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/sound/CommonAbstractSoundService;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/viber/voip/sound/SoundFactory;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 825
    invoke-static {}, Lcom/viber/voip/sound/bluetooth/BTControl;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    .line 827
    iget-object v0, p0, Lcom/viber/voip/sound/CommonAbstractSoundService;->mBtControl:Lcom/viber/voip/sound/bluetooth/BTControl;

    invoke-virtual {v0}, Lcom/viber/voip/sound/bluetooth/BTControl;->disableBluetoothRoute()V

    .line 828
    iget-object v0, p0, Lcom/viber/voip/sound/CommonAbstractSoundService;->mBtControl:Lcom/viber/voip/sound/bluetooth/BTControl;

    invoke-virtual {v0}, Lcom/viber/voip/sound/bluetooth/BTControl;->enableBluetoothRoute()V

    .line 830
    :cond_1
    return-void
.end method

.method public final getApplicationContext()Lcom/viber/voip/ViberApplication;
    .locals 1

    .prologue
    .line 1697
    iget-object v0, p0, Lcom/viber/voip/sound/CommonAbstractSoundService;->ctx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/ViberApplication;

    return-object v0
.end method

.method public getAudioCtl(III)I
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2021
    invoke-virtual {p0, p2}, Lcom/viber/voip/sound/CommonAbstractSoundService;->getAudioSettings(I)Lcom/viber/voip/sound/ISoundService$IAudioSettings;

    move-result-object v0

    .line 2022
    if-nez v0, :cond_1

    .line 2036
    :cond_0
    :goto_0
    return p3

    .line 2023
    :cond_1
    sget-object v1, Lcom/viber/voip/sound/ISoundService$AudioCtl;->AUCTL_AEC_MODE:Lcom/viber/voip/sound/ISoundService$AudioCtl;

    invoke-virtual {v1}, Lcom/viber/voip/sound/ISoundService$AudioCtl;->ordinal()I

    move-result v1

    if-ne v1, p1, :cond_2

    .line 2024
    invoke-interface {v0}, Lcom/viber/voip/sound/ISoundService$IAudioSettings;->getAECMode()I

    move-result p3

    goto :goto_0

    .line 2025
    :cond_2
    sget-object v1, Lcom/viber/voip/sound/ISoundService$AudioCtl;->AUCTL_AGC_MODE:Lcom/viber/voip/sound/ISoundService$AudioCtl;

    invoke-virtual {v1}, Lcom/viber/voip/sound/ISoundService$AudioCtl;->ordinal()I

    move-result v1

    if-ne v1, p1, :cond_3

    .line 2026
    invoke-interface {v0}, Lcom/viber/voip/sound/ISoundService$IAudioSettings;->getAGCMode()I

    move-result p3

    goto :goto_0

    .line 2027
    :cond_3
    sget-object v1, Lcom/viber/voip/sound/ISoundService$AudioCtl;->AUCTL_NS_MODE:Lcom/viber/voip/sound/ISoundService$AudioCtl;

    invoke-virtual {v1}, Lcom/viber/voip/sound/ISoundService$AudioCtl;->ordinal()I

    move-result v1

    if-ne v1, p1, :cond_4

    .line 2028
    invoke-interface {v0}, Lcom/viber/voip/sound/ISoundService$IAudioSettings;->getNSMode()I

    move-result p3

    goto :goto_0

    .line 2029
    :cond_4
    sget-object v1, Lcom/viber/voip/sound/ISoundService$AudioCtl;->AUCTL_RX_AGC_MODE:Lcom/viber/voip/sound/ISoundService$AudioCtl;

    invoke-virtual {v1}, Lcom/viber/voip/sound/ISoundService$AudioCtl;->ordinal()I

    move-result v1

    if-ne v1, p1, :cond_5

    .line 2030
    invoke-interface {v0}, Lcom/viber/voip/sound/ISoundService$IAudioSettings;->getRxAGCMode()I

    move-result p3

    goto :goto_0

    .line 2031
    :cond_5
    sget-object v1, Lcom/viber/voip/sound/ISoundService$AudioCtl;->AUCTL_RX_NS_MODE:Lcom/viber/voip/sound/ISoundService$AudioCtl;

    invoke-virtual {v1}, Lcom/viber/voip/sound/ISoundService$AudioCtl;->ordinal()I

    move-result v1

    if-ne v1, p1, :cond_6

    .line 2032
    invoke-interface {v0}, Lcom/viber/voip/sound/ISoundService$IAudioSettings;->getRxNSMode()I

    move-result p3

    goto :goto_0

    .line 2033
    :cond_6
    sget-object v1, Lcom/viber/voip/sound/ISoundService$AudioCtl;->AUCTL_VAD_MODE:Lcom/viber/voip/sound/ISoundService$AudioCtl;

    invoke-virtual {v1}, Lcom/viber/voip/sound/ISoundService$AudioCtl;->ordinal()I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 2034
    invoke-interface {v0}, Lcom/viber/voip/sound/ISoundService$IAudioSettings;->getVADMode()I

    move-result p3

    goto :goto_0
.end method

.method public final getAudioDeviceCtl()Lorg/webrtc/voiceengine/IAudioDevice;
    .locals 1

    .prologue
    .line 1701
    iget-object v0, p0, Lcom/viber/voip/sound/CommonAbstractSoundService;->audioDeviceCtl:Lorg/webrtc/voiceengine/IAudioDevice;

    return-object v0
.end method

.method public getAudioSettings(I)Lcom/viber/voip/sound/ISoundService$IAudioSettings;
    .locals 1
    .parameter

    .prologue
    .line 2012
    iget-object v0, p0, Lcom/viber/voip/sound/CommonAbstractSoundService;->_audioSettings:[Lcom/viber/voip/sound/CommonAbstractSoundService$AudioSettingsImpl;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/sound/CommonAbstractSoundService;->_audioSettings:[Lcom/viber/voip/sound/CommonAbstractSoundService$AudioSettingsImpl;

    aget-object v0, v0, p1

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAudioSettings(Lcom/viber/voip/sound/ISoundService$AudioModeCtl;)Lcom/viber/voip/sound/ISoundService$IAudioSettings;
    .locals 1
    .parameter

    .prologue
    .line 2016
    invoke-virtual {p1}, Lcom/viber/voip/sound/ISoundService$AudioModeCtl;->ordinal()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/sound/CommonAbstractSoundService;->getAudioSettings(I)Lcom/viber/voip/sound/ISoundService$IAudioSettings;

    move-result-object v0

    return-object v0
.end method

.method public getBluetoothCtl()Lcom/viber/voip/sound/bluetooth/BTControl;
    .locals 1

    .prologue
    .line 2008
    iget-object v0, p0, Lcom/viber/voip/sound/CommonAbstractSoundService;->mBtControl:Lcom/viber/voip/sound/bluetooth/BTControl;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 1357
    iget-object v0, p0, Lcom/viber/voip/sound/CommonAbstractSoundService;->ctx:Landroid/content/Context;

    return-object v0
.end method

.method public final getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 1706
    sget-object v0, Lcom/viber/voip/sound/CommonAbstractSoundService;->_handler:Landroid/os/Handler;

    return-object v0
.end method

.method public getInitialParams()Lcom/viber/voip/sound/AbstractSoundService$SoundServiceParams;
    .locals 1

    .prologue
    .line 1146
    iget-object v0, p0, Lcom/viber/voip/sound/CommonAbstractSoundService;->myInitialParams:Lcom/viber/voip/sound/AbstractSoundService$SoundServiceParams;

    return-object v0
.end method

.method public getMediaPlayer()Landroid/media/MediaPlayer;
    .locals 2

    .prologue
    .line 1139
    sget-object v1, Lcom/viber/voip/sound/CommonAbstractSoundService;->stream_max_volume:[I

    monitor-enter v1

    .line 1140
    :try_start_0
    sget-object v0, Lcom/viber/voip/sound/CommonAbstractSoundService;->mediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    sput-object v0, Lcom/viber/voip/sound/CommonAbstractSoundService;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 1141
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1142
    sget-object v0, Lcom/viber/voip/sound/CommonAbstractSoundService;->mediaPlayer:Landroid/media/MediaPlayer;

    return-object v0

    .line 1141
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getMode()I
    .locals 1

    .prologue
    .line 634
    iget-object v0, p0, Lcom/viber/voip/sound/CommonAbstractSoundService;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v0

    return v0
.end method

.method public getPlatformAudioManager()Landroid/media/AudioManager;
    .locals 1

    .prologue
    .line 1361
    iget-object v0, p0, Lcom/viber/voip/sound/CommonAbstractSoundService;->audioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method public getRingerMode()I
    .locals 1

    .prologue
    .line 638
    iget-object v0, p0, Lcom/viber/voip/sound/CommonAbstractSoundService;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    return v0
.end method

.method public getRingtone(I)Lcom/viber/voip/sound/IRingtoneService$Ringtone;
    .locals 2
    .parameter

    .prologue
    .line 1493
    invoke-virtual {p0}, Lcom/viber/voip/sound/CommonAbstractSoundService;->getRingtoneService()Lcom/viber/voip/sound/IRingtoneService;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/viber/voip/sound/IRingtoneService;->getRingtone(IZ)Lcom/viber/voip/sound/IRingtoneService$Ringtone;

    move-result-object v0

    return-object v0
.end method

.method public getRingtone(IZ)Lcom/viber/voip/sound/IRingtoneService$Ringtone;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1488
    invoke-virtual {p0}, Lcom/viber/voip/sound/CommonAbstractSoundService;->getRingtoneService()Lcom/viber/voip/sound/IRingtoneService;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/viber/voip/sound/IRingtoneService;->getRingtone(IZ)Lcom/viber/voip/sound/IRingtoneService$Ringtone;

    move-result-object v0

    return-object v0
.end method

.method public getRingtone(IZZ)Lcom/viber/voip/sound/IRingtoneService$Ringtone;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1473
    invoke-virtual {p0}, Lcom/viber/voip/sound/CommonAbstractSoundService;->getRingtoneService()Lcom/viber/voip/sound/IRingtoneService;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/viber/voip/sound/IRingtoneService;->getRingtone(IZZ)Lcom/viber/voip/sound/IRingtoneService$Ringtone;

    move-result-object v0

    return-object v0
.end method

.method public getRingtone(Landroid/net/Uri;)Lcom/viber/voip/sound/IRingtoneService$Ringtone;
    .locals 1
    .parameter

    .prologue
    .line 1483
    invoke-virtual {p0}, Lcom/viber/voip/sound/CommonAbstractSoundService;->getRingtoneService()Lcom/viber/voip/sound/IRingtoneService;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/viber/voip/sound/IRingtoneService;->getRingtone(Landroid/net/Uri;)Lcom/viber/voip/sound/IRingtoneService$Ringtone;

    move-result-object v0

    return-object v0
.end method

.method public getRingtone(Landroid/net/Uri;Z)Lcom/viber/voip/sound/IRingtoneService$Ringtone;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1478
    invoke-virtual {p0}, Lcom/viber/voip/sound/CommonAbstractSoundService;->getRingtoneService()Lcom/viber/voip/sound/IRingtoneService;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/viber/voip/sound/IRingtoneService;->getRingtone(Landroid/net/Uri;Z)Lcom/viber/voip/sound/IRingtoneService$Ringtone;

    move-result-object v0

    return-object v0
.end method

.method public getRingtone(Landroid/net/Uri;ZZ)Lcom/viber/voip/sound/IRingtoneService$Ringtone;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1467
    invoke-virtual {p0}, Lcom/viber/voip/sound/CommonAbstractSoundService;->getRingtoneService()Lcom/viber/voip/sound/IRingtoneService;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/viber/voip/sound/IRingtoneService;->getRingtone(Landroid/net/Uri;ZZ)Lcom/viber/voip/sound/IRingtoneService$Ringtone;

    move-result-object v0

    return-object v0
.end method

.method public final getRingtoneService()Lcom/viber/voip/sound/IRingtoneService;
    .locals 1

    .prologue
    .line 1421
    iget-object v0, p0, Lcom/viber/voip/sound/CommonAbstractSoundService;->ringtoneService:Lcom/viber/voip/sound/IRingtoneService;

    return-object v0
.end method

.method public getStreamMaxVolume(I)I
    .locals 2
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 1035
    sget-boolean v1, Lcom/viber/voip/sound/CommonAbstractSoundService;->max_volumes_initialized:Z

    if-nez v1, :cond_1

    .line 1037
    invoke-direct {p0}, Lcom/viber/voip/sound/CommonAbstractSoundService;->initMaxVolumeValuesForStreams()V

    .line 1038
    sget-boolean v1, Lcom/viber/voip/sound/CommonAbstractSoundService;->max_volumes_initialized:Z

    if-nez v1, :cond_1

    .line 1041
    :cond_0
    :goto_0
    return v0

    .line 1040
    :cond_1
    if-ltz p1, :cond_0

    sget-object v1, Lcom/viber/voip/sound/CommonAbstractSoundService;->stream_max_volume:[I

    array-length v1, v1

    if-ge p1, v1, :cond_0

    .line 1041
    sget-object v0, Lcom/viber/voip/sound/CommonAbstractSoundService;->stream_max_volume:[I

    aget v0, v0, p1

    goto :goto_0
.end method

.method public getStreamVolume(I)I
    .locals 1
    .parameter

    .prologue
    .line 1025
    iget-object v0, p0, Lcom/viber/voip/sound/CommonAbstractSoundService;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    return v0
.end method

.method public final getVibratorService()Lcom/viber/voip/sound/IVibratorService;
    .locals 1

    .prologue
    .line 1425
    iget-object v0, p0, Lcom/viber/voip/sound/CommonAbstractSoundService;->ringtoneService:Lcom/viber/voip/sound/IRingtoneService;

    check-cast v0, Lcom/viber/voip/sound/IVibratorService;

    return-object v0
.end method

.method public getVocoderCtl(Lcom/viber/voip/sound/ISoundService$VocoderCtl;II)I
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2066
    iget-object v0, p0, Lcom/viber/voip/sound/CommonAbstractSoundService;->_vocoderSettings:Lcom/viber/voip/sound/CommonAbstractSoundService$VocoderSettingsImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/viber/voip/sound/CommonAbstractSoundService$VocoderSettingsImpl;->getVocoderCtl(Lcom/viber/voip/sound/ISoundService$VocoderCtl;II)I

    move-result v0

    return v0
.end method

.method public getVocoderSettings()Lcom/viber/voip/sound/ISoundService$IVocoderSettings;
    .locals 1

    .prologue
    .line 2061
    iget-object v0, p0, Lcom/viber/voip/sound/CommonAbstractSoundService;->_vocoderSettings:Lcom/viber/voip/sound/CommonAbstractSoundService$VocoderSettingsImpl;

    return-object v0
.end method

.method public isBluetoothScoOn()Z
    .locals 1

    .prologue
    .line 987
    invoke-static {}, Lcom/viber/voip/sound/bluetooth/BTControl;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/sound/CommonAbstractSoundService;->mBtControl:Lcom/viber/voip/sound/bluetooth/BTControl;

    invoke-virtual {v0}, Lcom/viber/voip/sound/bluetooth/BTControl;->isScoOn()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHeadsetPluggedIn()Z
    .locals 1

    .prologue
    .line 1752
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/viber/voip/sound/CommonAbstractSoundService;->isRouteActive(I)Z

    move-result v0

    return v0
.end method

.method public isMediaPlayerPlaying()Z
    .locals 2

    .prologue
    .line 1124
    sget-object v1, Lcom/viber/voip/sound/CommonAbstractSoundService;->stream_max_volume:[I

    monitor-enter v1

    .line 1125
    :try_start_0
    invoke-virtual {p0}, Lcom/viber/voip/sound/CommonAbstractSoundService;->getMediaPlayer()Landroid/media/MediaPlayer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1127
    :try_start_1
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    :try_start_2
    monitor-exit v1

    .line 1129
    :goto_0
    return v0

    .line 1128
    :catch_0
    move-exception v0

    .line 1129
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    .line 1131
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public isMicrophoneMute()Z
    .locals 1

    .prologue
    .line 969
    invoke-virtual {p0}, Lcom/viber/voip/sound/CommonAbstractSoundService;->useNativeMuteControl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 970
    iget-boolean v0, p0, Lcom/viber/voip/sound/CommonAbstractSoundService;->isMicMuted:Z

    .line 971
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/viber/voip/sound/CommonAbstractSoundService;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isMicrophoneMute()Z

    move-result v0

    goto :goto_0
.end method

.method public final isOnHold()Z
    .locals 1

    .prologue
    .line 1687
    iget-boolean v0, p0, Lcom/viber/voip/sound/CommonAbstractSoundService;->localHoldFlag:Z

    return v0
.end method

.method public final isPeerOnHold()Z
    .locals 1

    .prologue
    .line 1692
    iget-boolean v0, p0, Lcom/viber/voip/sound/CommonAbstractSoundService;->peerHoldFlag:Z

    return v0
.end method

.method public isRingtonePlaying()Z
    .locals 1

    .prologue
    .line 1135
    invoke-virtual {p0}, Lcom/viber/voip/sound/CommonAbstractSoundService;->isMediaPlayerPlaying()Z

    move-result v0

    return v0
.end method

.method public final isRouteActive(I)Z
    .locals 1
    .parameter

    .prologue
    .line 1245
    sget v0, Lcom/viber/voip/sound/CommonAbstractSoundService;->routingFlags:I

    and-int/2addr v0, p1

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract isSpeakerphoneAllowed()Z
.end method

.method public isSpeakerphoneOn()Z
    .locals 2

    .prologue
    .line 797
    invoke-virtual {p0}, Lcom/viber/voip/sound/CommonAbstractSoundService;->isSpeakerphoneAllowed()Z

    move-result v0

    iget-boolean v1, p0, Lcom/viber/voip/sound/CommonAbstractSoundService;->isSpeakerActive:Z

    and-int/2addr v0, v1

    return v0
.end method

.method public loadAudioResource(I)V
    .locals 7
    .parameter

    .prologue
    .line 1054
    .line 1056
    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/sound/CommonAbstractSoundService;->ctx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 1061
    if-nez v6, :cond_0

    .line 1077
    :goto_0
    return-void

    .line 1057
    :catch_0
    move-exception v0

    .line 1058
    invoke-virtual {v0}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    goto :goto_0

    .line 1063
    :cond_0
    :try_start_1
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/viber/voip/sound/CommonAbstractSoundService;->setMediaDataSource(Ljava/io/FileDescriptor;JJ)Landroid/media/MediaPlayer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    .line 1072
    :try_start_2
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 1073
    :catch_1
    move-exception v0

    .line 1074
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 1064
    :catch_2
    move-exception v0

    .line 1065
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1072
    :try_start_4
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_0

    .line 1073
    :catch_3
    move-exception v0

    .line 1074
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 1066
    :catch_4
    move-exception v0

    .line 1067
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1072
    :try_start_6
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_0

    .line 1073
    :catch_5
    move-exception v0

    .line 1074
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 1068
    :catch_6
    move-exception v0

    .line 1069
    :try_start_7
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1072
    :try_start_8
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    goto :goto_0

    .line 1073
    :catch_7
    move-exception v0

    .line 1074
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 1071
    :catchall_0
    move-exception v0

    .line 1072
    :try_start_9
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    .line 1075
    :goto_1
    throw v0

    .line 1073
    :catch_8
    move-exception v1

    .line 1074
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public loadSample(II)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 1878
    sget-object v0, Lcom/viber/voip/sound/CommonAbstractSoundService;->_samplesMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/sound/CommonAbstractSoundService;->_samplesPool:Landroid/media/SoundPool;

    iget-object v3, p0, Lcom/viber/voip/sound/CommonAbstractSoundService;->ctx:Landroid/content/Context;

    invoke-virtual {v2, v3, p1, p2}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1879
    return-void
.end method

.method public loadSamples([I)V
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1883
    array-length v2, p1

    move v0, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget v3, p1, v0

    .line 1884
    invoke-virtual {p0, v3, v1}, Lcom/viber/voip/sound/CommonAbstractSoundService;->loadSample(II)V

    .line 1883
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1886
    :cond_0
    return-void
.end method

.method public localHold()V
    .locals 1

    .prologue
    .line 1527
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/viber/voip/sound/CommonAbstractSoundService;->localHoldFlag:Z

    .line 1528
    invoke-virtual {p0}, Lcom/viber/voip/sound/CommonAbstractSoundService;->suspendNativeOnLocalHold()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/sound/CommonAbstractSoundService;->stopAudioRecord(Z)V

    .line 1529
    iget-boolean v0, p0, Lcom/viber/voip/sound/CommonAbstractSoundService;->peerHoldFlag:Z

    if-eqz v0, :cond_0

    .line 1530
    invoke-virtual {p0}, Lcom/viber/voip/sound/CommonAbstractSoundService;->stopTone()V

    .line 1532
    :cond_0
    return-void
.end method

.method public localUnhold()V
    .locals 1

    .prologue
    .line 1547
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/viber/voip/sound/CommonAbstractSoundService;->localHoldFlag:Z

    .line 1549
    invoke-virtual {p0}, Lcom/viber/voip/sound/CommonAbstractSoundService;->checkPeerHoldStatusAndPlayHoldToneIfNecessary()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/viber/voip/sound/CommonAbstractSoundService;->isPeerOnHold()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1550
    invoke-virtual {p0}, Lcom/viber/voip/sound/CommonAbstractSoundService;->suspendNativeOnLocalHold()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/sound/CommonAbstractSoundService;->startAudioRecord(Z)V

    .line 1551
    :cond_0
    return-void
.end method

.method protected lockModeChange()V
    .locals 4

    .prologue
    .line 1282
    invoke-virtual {p0}, Lcom/viber/voip/sound/CommonAbstractSoundService;->useModeLocking()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/viber/voip/sound/CommonAbstractSoundService;->modeChangeAtomicLock:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1287
    :cond_0
    :goto_0
    return-void

    .line 1284
    :cond_1
    const/4 v0, 0x3

    sget-object v1, Lcom/viber/voip/sound/CommonAbstractSoundService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setMode() lock acquired by thread "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/viber/voip/sound/SoundFactory;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 1286
    sget-object v0, Lcom/viber/voip/sound/CommonAbstractSoundService;->modeChangeAtomicLock:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0
.end method

.method protected masterVolumeSet(I)Z
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1158
    invoke-virtual {p0}, Lcom/viber/voip/sound/CommonAbstractSoundService;->useVolumeQuirks()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1166
    :cond_0
    :goto_0
    return v1

    .line 1159
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/sound/CommonAbstractSoundService;->ctx:Landroid/content/Context;

    check-cast v0, Lcom/viber/voip/ViberApplication;

    .line 1160
    if-nez v0, :cond_0

    goto :goto_0
.end method

.method public mode_Dtmf()I
    .locals 1

    .prologue
    .line 1779
    const/4 v0, 0x0

    return v0
.end method

.method public mode_InCall()I
    .locals 1

    .prologue
    .line 1759
    sget v0, Lcom/viber/voip/sound/CommonAbstractSoundService;->MODE_IN_COMMUNICATION:I

    return v0
.end method

.method public mode_Mic_InCall()I
    .locals 1

    .prologue
    .line 1764
    invoke-virtual {p0}, Lcom/viber/voip/sound/CommonAbstractSoundService;->mode_InCall()I

    move-result v0

    return v0
.end method

.method public mode_Normal()I
    .locals 1

    .prologue
    .line 1784
    const/4 v0, 0x0

    return v0
.end method

.method public mode_Ringtone()I
    .locals 1

    .prologue
    .line 1769
    const/4 v0, 0x1

    return v0
.end method

.method public mode_Tone()I
    .locals 1

    .prologue
    .line 1774
    const/4 v0, 0x0

    return v0
.end method

.method protected notifyHeadphonesConnectionChange(Z)V
    .locals 3
    .parameter

    .prologue
    .line 950
    iget-object v1, p0, Lcom/viber/voip/sound/CommonAbstractSoundService;->globalSpeakerStateListeners:Ljava/util/Map;

    monitor-enter v1

    .line 951
    :try_start_0
    new-instance v2, Ljava/util/HashMap;

    iget-object v0, p0, Lcom/viber/voip/sound/CommonAbstractSoundService;->globalSpeakerStateListeners:Ljava/util/Map;

    invoke-direct {v2, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 952
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 954
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 955
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/sound/ISoundService$SpeakerStateListener;

    invoke-interface {v0, p1}, Lcom/viber/voip/sound/ISoundService$SpeakerStateListener;->onHeadphonesConnected(Z)V

    goto :goto_0

    .line 952
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 957
    :cond_0
    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 958
    return-void
.end method

.method public onAnswerButtonClick()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1986
    const/4 v0, 0x3

    sget-object v1, Lcom/viber/voip/sound/CommonAbstractSoundService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "bluetooth button is clicked"

    invoke-static {v0, v1, v2}, Lcom/viber/voip/sound/SoundFactory;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 1989
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    .line 1990
    invoke-virtual {p0}, Lcom/viber/voip/sound/CommonAbstractSoundService;->isRingtonePlaying()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1991
    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerWrapper;->getDialerController()Lcom/viber/jni/dialer/DialerController;

    move-result-object v0

    invoke-interface {v0}, Lcom/viber/jni/dialer/DialerController;->handleAnswer()V

    .line 1999
    :cond_0
    :goto_0
    return-void

    .line 1994
    :cond_1
    invoke-virtual {p0}, Lcom/viber/voip/sound/CommonAbstractSoundService;->isSpeakerphoneOn()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v3}, Lcom/viber/voip/sound/CommonAbstractSoundService;->isRouteActive(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x10

    invoke-virtual {p0, v1}, Lcom/viber/voip/sound/CommonAbstractSoundService;->isRouteActive(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1995
    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerWrapper;->getCallHandler()Lcom/viber/voip/phone/call/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/phone/call/a;->a()V

    .line 1996
    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerWrapper;->getDialerController()Lcom/viber/jni/dialer/DialerController;

    move-result-object v0

    invoke-interface {v0}, Lcom/viber/jni/dialer/DialerController;->handleHangup()V

    goto :goto_0
.end method

.method public onCallEnded(JZLjava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2090
    return-void
.end method

.method public onCallStarted(Z)V
    .locals 0
    .parameter

    .prologue
    .line 2085
    return-void
.end method

.method public onDeviceConnected(Landroid/bluetooth/BluetoothDevice;)V
    .locals 4
    .parameter

    .prologue
    .line 1947
    const/4 v0, 0x3

    sget-object v1, Lcom/viber/voip/sound/CommonAbstractSoundService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "got bonded bluetooth headset ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", trying to route audio through it"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/viber/voip/sound/SoundFactory;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 1948
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/viber/voip/sound/CommonAbstractSoundService;->clearRouteFlags(I)I

    .line 1950
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/viber/voip/sound/CommonAbstractSoundService;->isRouteActive(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1951
    iget-object v0, p0, Lcom/viber/voip/sound/CommonAbstractSoundService;->mBtControl:Lcom/viber/voip/sound/bluetooth/BTControl;

    invoke-virtual {v0}, Lcom/viber/voip/sound/bluetooth/BTControl;->enableBluetoothRoute()V

    .line 1953
    :cond_0
    return-void
.end method

.method public onDeviceDisconnected(Landroid/bluetooth/BluetoothDevice;)V
    .locals 1
    .parameter

    .prologue
    .line 1957
    iget-object v0, p0, Lcom/viber/voip/sound/CommonAbstractSoundService;->mBtControl:Lcom/viber/voip/sound/bluetooth/BTControl;

    invoke-virtual {v0}, Lcom/viber/voip/sound/bluetooth/BTControl;->disableBluetoothRoute()V

    .line 1958
    iget-object v0, p0, Lcom/viber/voip/sound/CommonAbstractSoundService;->mBtControl:Lcom/viber/voip/sound/bluetooth/BTControl;

    invoke-virtual {v0}, Lcom/viber/voip/sound/bluetooth/BTControl;->stopBluetooth()V

    .line 1959
    return-void
.end method

.method public onError(Landroid/bluetooth/BluetoothDevice;)V
    .locals 0
    .parameter

    .prologue
    .line 1963
    invoke-virtual {p0, p1}, Lcom/viber/voip/sound/CommonAbstractSoundService;->onDeviceDisconnected(Landroid/bluetooth/BluetoothDevice;)V

    .line 1964
    return-void
.end method

.method public onGSMStateChange(ILjava/lang/String;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/16 v3, 0x10

    .line 1565
    sget-object v0, Lcom/viber/voip/sound/CommonAbstractSoundService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onGSMStateChange: gsmState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v0, v1}, Lcom/viber/voip/sound/SoundFactory;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 1566
    iget-object v0, p0, Lcom/viber/voip/sound/CommonAbstractSoundService;->ctx:Landroid/content/Context;

    check-cast v0, Lcom/viber/voip/ViberApplication;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerWrapper;->getCurrentCall()Lcom/viber/voip/phone/call/k;

    move-result-object v0

    .line 1568
    packed-switch p1, :pswitch_data_0

    .line 1595
    :goto_0
    return-void

    .line 1571
    :pswitch_0
    invoke-virtual {p0, v3}, Lcom/viber/voip/sound/CommonAbstractSoundService;->isRouteActive(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1572
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/viber/voip/sound/CommonAbstractSoundService;->isRouteActive(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, v4}, Lcom/viber/voip/sound/CommonAbstractSoundService;->isRouteActive(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1573
    :cond_0
    invoke-virtual {p0}, Lcom/viber/voip/sound/CommonAbstractSoundService;->checkPeerHoldStatusAndPlayHoldToneIfNecessary()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1574
    invoke-virtual {p0}, Lcom/viber/voip/sound/CommonAbstractSoundService;->stopAllTones()V

    .line 1577
    :cond_1
    invoke-virtual {p0, v3}, Lcom/viber/voip/sound/CommonAbstractSoundService;->setRouteFlags(I)I

    goto :goto_0

    .line 1580
    :pswitch_1
    invoke-virtual {p0, v3}, Lcom/viber/voip/sound/CommonAbstractSoundService;->clearRouteFlags(I)I

    .line 1581
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/k;->d()Lcom/viber/voip/phone/call/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/phone/call/n;->c()I

    move-result v1

    if-eq v5, v1, :cond_2

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/k;->d()Lcom/viber/voip/phone/call/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/n;->c()I

    move-result v0

    if-ne v4, v0, :cond_3

    .line 1582
    :cond_2
    sget-object v0, Lcom/viber/voip/sound/CommonAbstractSoundService;->_handler:Landroid/os/Handler;

    new-instance v1, Lcom/viber/voip/sound/CommonAbstractSoundService$3;

    invoke-direct {v1, p0}, Lcom/viber/voip/sound/CommonAbstractSoundService$3;-><init>(Lcom/viber/voip/sound/CommonAbstractSoundService;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1592
    :goto_1
    invoke-virtual {p0}, Lcom/viber/voip/sound/CommonAbstractSoundService;->mode_Normal()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/sound/CommonAbstractSoundService;->setModeWithPriorityLock(I)V

    goto :goto_0

    .line 1590
    :cond_3
    invoke-virtual {p0}, Lcom/viber/voip/sound/CommonAbstractSoundService;->unlockModeChange()V

    goto :goto_1

    .line 1568
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onHandsetOffCallDisabled()Z
    .locals 4

    .prologue
    .line 1980
    const/4 v0, 0x3

    sget-object v1, Lcom/viber/voip/sound/CommonAbstractSoundService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "bluetooth handset reported to be inactive, speaker state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/viber/voip/sound/CommonAbstractSoundService;->isSpeakerphoneOn()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/viber/voip/sound/SoundFactory;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 1981
    const/4 v0, 0x1

    return v0
.end method

.method public onHandsetOffCallEnabled()Z
    .locals 4

    .prologue
    .line 1968
    const/4 v0, 0x3

    sget-object v1, Lcom/viber/voip/sound/CommonAbstractSoundService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "bluetooth handset reported to be active, speaker state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/viber/voip/sound/CommonAbstractSoundService;->isSpeakerphoneOn()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/viber/voip/sound/SoundFactory;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 1969
    const/4 v0, 0x1

    return v0
.end method

.method public onHangup()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1842
    invoke-virtual {p0, v1}, Lcom/viber/voip/sound/CommonAbstractSoundService;->isRouteActive(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1843
    iget-object v0, p0, Lcom/viber/voip/sound/CommonAbstractSoundService;->audioDeviceCtl:Lorg/webrtc/voiceengine/IAudioDevice;

    if-eqz v0, :cond_0

    .line 1844
    invoke-virtual {p0, v1}, Lcom/viber/voip/sound/CommonAbstractSoundService;->clearRouteFlags(I)I

    .line 1845
    iget-object v0, p0, Lcom/viber/voip/sound/CommonAbstractSoundService;->audioDeviceCtl:Lorg/webrtc/voiceengine/IAudioDevice;

    invoke-interface {v0}, Lorg/webrtc/voiceengine/IAudioDevice;->StopRecording()I

    .line 1849
    :cond_0
    return-void
.end method

.method public onHeadsetPlug()V
    .locals 3

    .prologue
    .line 1861
    invoke-virtual {p0}, Lcom/viber/voip/sound/CommonAbstractSoundService;->isSpeakerphoneOn()Z

    move-result v0

    sput-boolean v0, Lcom/viber/voip/sound/CommonAbstractSoundService;->beforeHeadsetPluggedSpeakerStateWasOn:Z

    .line 1862
    sget-boolean v0, Lcom/viber/voip/sound/CommonAbstractSoundService;->beforeHeadsetPluggedSpeakerStateWasOn:Z

    if-eqz v0, :cond_0

    .line 1863
    const/4 v0, 0x3

    sget-object v1, Lcom/viber/voip/sound/CommonAbstractSoundService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Earphones plugged. disabling speaker"

    invoke-static {v0, v1, v2}, Lcom/viber/voip/sound/SoundFactory;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 1864
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/viber/voip/sound/CommonAbstractSoundService;->setSpeakerphoneOn(Z)V

    .line 1866
    :cond_0
    return-void
.end method

.method public onHeadsetUnplug()V
    .locals 3

    .prologue
    .line 1869
    sget-boolean v0, Lcom/viber/voip/sound/CommonAbstractSoundService;->beforeHeadsetPluggedSpeakerStateWasOn:Z

    if-eqz v0, :cond_0

    .line 1870
    const/4 v0, 0x3

    sget-object v1, Lcom/viber/voip/sound/CommonAbstractSoundService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Earphones unplugged. restoring speaker"

    invoke-static {v0, v1, v2}, Lcom/viber/voip/sound/SoundFactory;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 1871
    sget-boolean v0, Lcom/viber/voip/sound/CommonAbstractSoundService;->beforeHeadsetPluggedSpeakerStateWasOn:Z

    invoke-virtual {p0, v0}, Lcom/viber/voip/sound/CommonAbstractSoundService;->setSpeakerphoneOn(Z)V

    .line 1873
    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/viber/voip/sound/CommonAbstractSoundService;->beforeHeadsetPluggedSpeakerStateWasOn:Z

    .line 1874
    return-void
.end method

.method public onPhoneStateChanged(I)V
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1599
    const/4 v2, 0x3

    sget-object v3, Lcom/viber/voip/sound/CommonAbstractSoundService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onPhoneStateChanged: stateID="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/viber/voip/sound/SoundFactory;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 1601
    iget-object v2, p0, Lcom/viber/voip/sound/CommonAbstractSoundService;->mmControl:Lcom/viber/voip/sound/MMControl;

    if-eqz v2, :cond_0

    .line 1602
    iget-object v2, p0, Lcom/viber/voip/sound/CommonAbstractSoundService;->mmControl:Lcom/viber/voip/sound/MMControl;

    invoke-virtual {v2, p1}, Lcom/viber/voip/sound/MMControl;->processPhoneStateChange(I)V

    .line 1604
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 1682
    :cond_1
    :goto_0
    :pswitch_0
    iput p1, p0, Lcom/viber/voip/sound/CommonAbstractSoundService;->prevPhoneState:I

    .line 1683
    return-void

    .line 1607
    :pswitch_1
    invoke-static {}, Lcom/viber/voip/sound/bluetooth/BTControl;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1608
    iget-object v1, p0, Lcom/viber/voip/sound/CommonAbstractSoundService;->mBtControl:Lcom/viber/voip/sound/bluetooth/BTControl;

    invoke-virtual {v1}, Lcom/viber/voip/sound/bluetooth/BTControl;->enableBluetoothRoute()V

    .line 1611
    :cond_2
    iput-boolean v0, p0, Lcom/viber/voip/sound/CommonAbstractSoundService;->spirit_coldstart:Z

    .line 1613
    iget-object v0, p0, Lcom/viber/voip/sound/CommonAbstractSoundService;->mAudioFocusControl:Lcom/viber/voip/sound/AudioFocusController;

    if-eqz v0, :cond_1

    .line 1614
    iget-object v0, p0, Lcom/viber/voip/sound/CommonAbstractSoundService;->mAudioFocusControl:Lcom/viber/voip/sound/AudioFocusController;

    invoke-virtual {v0}, Lcom/viber/voip/sound/AudioFocusController;->requestAudioFocus()V

    goto :goto_0

    .line 1618
    :pswitch_2
    invoke-virtual {p0, v0}, Lcom/viber/voip/sound/CommonAbstractSoundService;->setRouteFlags(I)I

    .line 1620
    invoke-virtual {p0}, Lcom/viber/voip/sound/CommonAbstractSoundService;->isPeerOnHold()Z

    move-result v2

    if-nez v2, :cond_5

    .line 1621
    invoke-virtual {p0}, Lcom/viber/voip/sound/CommonAbstractSoundService;->stopAllTones()V

    .line 1622
    invoke-virtual {p0}, Lcom/viber/voip/sound/CommonAbstractSoundService;->isOnHold()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1623
    iget-boolean v2, p0, Lcom/viber/voip/sound/CommonAbstractSoundService;->spirit_coldstart:Z

    if-nez v2, :cond_4

    :goto_1
    invoke-virtual {p0, v0}, Lcom/viber/voip/sound/CommonAbstractSoundService;->startAudioRecord(Z)V

    .line 1627
    :cond_3
    :goto_2
    iput-boolean v1, p0, Lcom/viber/voip/sound/CommonAbstractSoundService;->spirit_coldstart:Z

    goto :goto_0

    :cond_4
    move v0, v1

    .line 1623
    goto :goto_1

    .line 1625
    :cond_5
    invoke-virtual {p0}, Lcom/viber/voip/sound/CommonAbstractSoundService;->checkPeerHoldStatusAndPlayHoldToneIfNecessary()Z

    goto :goto_2

    .line 1642
    :pswitch_3
    invoke-virtual {p0}, Lcom/viber/voip/sound/CommonAbstractSoundService;->stopAllTones()V

    goto :goto_0

    .line 1646
    :pswitch_4
    sget-object v2, Lcom/viber/voip/sound/ToneGeneratorFactory$ToneType;->HOLD_TONE:Lcom/viber/voip/sound/ToneGeneratorFactory$ToneType;

    invoke-virtual {p0, v2}, Lcom/viber/voip/sound/CommonAbstractSoundService;->ensureStopTone(Lcom/viber/voip/sound/ToneGeneratorFactory$ToneType;)V

    .line 1647
    sget-object v2, Lcom/viber/voip/sound/ToneGeneratorFactory$ToneType;->DATA_INTERRUPTION_TONE:Lcom/viber/voip/sound/ToneGeneratorFactory$ToneType;

    invoke-virtual {p0, v2}, Lcom/viber/voip/sound/CommonAbstractSoundService;->ensureStopTone(Lcom/viber/voip/sound/ToneGeneratorFactory$ToneType;)V

    .line 1648
    invoke-virtual {p0, v0}, Lcom/viber/voip/sound/CommonAbstractSoundService;->clearRouteFlags(I)I

    .line 1651
    invoke-virtual {p0}, Lcom/viber/voip/sound/CommonAbstractSoundService;->getAudioDeviceCtl()Lorg/webrtc/voiceengine/IAudioDevice;

    move-result-object v0

    invoke-interface {v0}, Lorg/webrtc/voiceengine/IAudioDevice;->StopRecording()I

    .line 1655
    :pswitch_5
    invoke-virtual {p0}, Lcom/viber/voip/sound/CommonAbstractSoundService;->stopRingtone()Z

    .line 1656
    invoke-virtual {p0}, Lcom/viber/voip/sound/CommonAbstractSoundService;->stopAllTones()V

    .line 1657
    iput-boolean v1, p0, Lcom/viber/voip/sound/CommonAbstractSoundService;->localHoldFlag:Z

    .line 1658
    iput-boolean v1, p0, Lcom/viber/voip/sound/CommonAbstractSoundService;->peerHoldFlag:Z

    .line 1659
    iput-boolean v1, p0, Lcom/viber/voip/sound/CommonAbstractSoundService;->spirit_coldstart:Z

    .line 1660
    sput-boolean v1, Lcom/viber/voip/sound/CommonAbstractSoundService;->beforeHeadsetPluggedSpeakerStateWasOn:Z

    .line 1662
    invoke-virtual {p0, v1}, Lcom/viber/voip/sound/CommonAbstractSoundService;->setRouteFlags(I)I

    .line 1663
    invoke-static {}, Lcom/viber/voip/sound/bluetooth/BTControl;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1664
    iget-object v0, p0, Lcom/viber/voip/sound/CommonAbstractSoundService;->mBtControl:Lcom/viber/voip/sound/bluetooth/BTControl;

    invoke-virtual {v0}, Lcom/viber/voip/sound/bluetooth/BTControl;->disableBluetoothRoute()V

    .line 1665
    iget-object v0, p0, Lcom/viber/voip/sound/CommonAbstractSoundService;->mBtControl:Lcom/viber/voip/sound/bluetooth/BTControl;

    invoke-virtual {v0}, Lcom/viber/voip/sound/bluetooth/BTControl;->stopBluetooth()V

    .line 1668
    :cond_6
    iget-object v0, p0, Lcom/viber/voip/sound/CommonAbstractSoundService;->mAudioFocusControl:Lcom/viber/voip/sound/AudioFocusController;

    if-eqz v0, :cond_7

    .line 1669
    iget-object v0, p0, Lcom/viber/voip/sound/CommonAbstractSoundService;->mAudioFocusControl:Lcom/viber/voip/sound/AudioFocusController;

    invoke-virtual {v0}, Lcom/viber/voip/sound/AudioFocusController;->abandonAudioFocus()V

    .line 1671
    :cond_7
    invoke-virtual {p0, v1}, Lcom/viber/voip/sound/CommonAbstractSoundService;->setSpeakerphoneOnFallback(Z)V

    .line 1672
    invoke-virtual {p0, v1}, Lcom/viber/voip/sound/CommonAbstractSoundService;->setMicrophoneMute(Z)V

    .line 1674
    iget v0, p0, Lcom/viber/voip/sound/CommonAbstractSoundService;->prevPhoneState:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_8

    iget v0, p0, Lcom/viber/voip/sound/CommonAbstractSoundService;->prevPhoneState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 1675
    :cond_8
    invoke-virtual {p0}, Lcom/viber/voip/sound/CommonAbstractSoundService;->mode_Normal()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/sound/CommonAbstractSoundService;->setMode(I)V

    .line 1676
    invoke-virtual {p0}, Lcom/viber/voip/sound/CommonAbstractSoundService;->unlockModeChange()V

    goto/16 :goto_0

    .line 1604
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public onVoiceChannelStateChange(Z)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x3

    .line 1818
    if-eqz p1, :cond_0

    .line 1819
    sget v0, Lcom/viber/voip/sound/CommonAbstractSoundService;->_deviceFlags:I

    invoke-static {v0}, Lcom/viber/voip/sound/CommonAbstractSoundService;->setDeviceFlags(I)I

    .line 1820
    sget-object v0, Lcom/viber/voip/sound/CommonAbstractSoundService;->_deviceModes:Lcom/viber/jni/DeviceFlags$DeviceModes;

    iget v0, v0, Lcom/viber/jni/DeviceFlags$DeviceModes;->AEC_mode:I

    sget-object v1, Lcom/viber/voip/sound/CommonAbstractSoundService;->_deviceModes:Lcom/viber/jni/DeviceFlags$DeviceModes;

    iget v1, v1, Lcom/viber/jni/DeviceFlags$DeviceModes;->AGC_mode:I

    sget-object v2, Lcom/viber/voip/sound/CommonAbstractSoundService;->_deviceModes:Lcom/viber/jni/DeviceFlags$DeviceModes;

    iget v2, v2, Lcom/viber/jni/DeviceFlags$DeviceModes;->NS_mode:I

    sget-object v3, Lcom/viber/voip/sound/CommonAbstractSoundService;->_deviceModes:Lcom/viber/jni/DeviceFlags$DeviceModes;

    iget v3, v3, Lcom/viber/jni/DeviceFlags$DeviceModes;->RxAGC_mode:I

    sget-object v4, Lcom/viber/voip/sound/CommonAbstractSoundService;->_deviceModes:Lcom/viber/jni/DeviceFlags$DeviceModes;

    iget v4, v4, Lcom/viber/jni/DeviceFlags$DeviceModes;->RxNS_mode:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/viber/voip/sound/CommonAbstractSoundService;->setSpeechEnhancementsModes(IIIII)I

    .line 1823
    :cond_0
    invoke-virtual {p0}, Lcom/viber/voip/sound/CommonAbstractSoundService;->useVoiceChannelListeners()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1837
    :goto_0
    return-void

    .line 1826
    :cond_1
    if-eqz p1, :cond_3

    .line 1827
    sget-object v0, Lcom/viber/voip/sound/CommonAbstractSoundService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "starting native recorder since voice channel is reported as active"

    invoke-static {v5, v0, v1}, Lcom/viber/voip/sound/SoundFactory;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 1828
    iget-object v0, p0, Lcom/viber/voip/sound/CommonAbstractSoundService;->audioDeviceCtl:Lorg/webrtc/voiceengine/IAudioDevice;

    if-eqz v0, :cond_2

    .line 1829
    iget-object v0, p0, Lcom/viber/voip/sound/CommonAbstractSoundService;->audioDeviceCtl:Lorg/webrtc/voiceengine/IAudioDevice;

    invoke-interface {v0}, Lorg/webrtc/voiceengine/IAudioDevice;->StartRecording()I

    .line 1836
    :cond_2
    :goto_1
    invoke-super {p0, p1}, Lcom/viber/voip/sound/AbstractSoundService;->onVoiceChannelStateChange(Z)V

    goto :goto_0

    .line 1831
    :cond_3
    sget-object v0, Lcom/viber/voip/sound/CommonAbstractSoundService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopping native recorder since voice channel is reported as non-active"

    invoke-static {v5, v0, v1}, Lcom/viber/voip/sound/SoundFactory;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 1832
    iget-object v0, p0, Lcom/viber/voip/sound/CommonAbstractSoundService;->audioDeviceCtl:Lorg/webrtc/voiceengine/IAudioDevice;

    if-eqz v0, :cond_2

    .line 1833
    iget-object v0, p0, Lcom/viber/voip/sound/CommonAbstractSoundService;->audioDeviceCtl:Lorg/webrtc/voiceengine/IAudioDevice;

    invoke-interface {v0}, Lorg/webrtc/voiceengine/IAudioDevice;->StopRecording()I

    goto :goto_1
.end method

.method public peerHold()V
    .locals 1

    .prologue
    .line 1519
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/viber/voip/sound/CommonAbstractSoundService;->peerHoldFlag:Z

    .line 1521
    invoke-virtual {p0}, Lcom/viber/voip/sound/CommonAbstractSoundService;->suspendNativeOnPeerHold()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/sound/CommonAbstractSoundService;->stopAudioRecord(Z)V

    .line 1522
    invoke-virtual {p0}, Lcom/viber/voip/sound/CommonAbstractSoundService;->mode_Tone()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/sound/CommonAbstractSoundService;->setModeWithPriorityLock(I)V

    .line 1523
    return-void
.end method

.method public peerUnhold()V
    .locals 1

    .prologue
    .line 1555
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/viber/voip/sound/CommonAbstractSoundService;->peerHoldFlag:Z

    .line 1557
    iget-boolean v0, p0, Lcom/viber/voip/sound/CommonAbstractSoundService;->localHoldFlag:Z

    if-eqz v0, :cond_0

    .line 1561
    :goto_0
    return-void

    .line 1558
    :cond_0
    invoke-virtual {p0}, Lcom/viber/voip/sound/CommonAbstractSoundService;->stopAllTones()V

    .line 1560
    invoke-virtual {p0}, Lcom/viber/voip/sound/CommonAbstractSoundService;->suspendNativeOnPeerHold()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/sound/CommonAbstractSoundService;->startAudioRecord(Z)V

    goto :goto_0
.end method

.method public playDTMFTone(II)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1389
    invoke-static {p0}, Lcom/viber/voip/sound/ToneGeneratorFactory;->newDTMFToneGenerator(Lcom/viber/voip/sound/CommonAbstractSoundService;)Lcom/viber/voip/sound/tonegen/IToneGenerator;

    move-result-object v0

    .line 1390
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/viber/voip/sound/CommonAbstractSoundService;->setRouteFlags(I)I

    .line 1391
    invoke-static {p1}, Lcom/viber/voip/sound/ToneGeneratorFactory;->getDTMFToneId(I)I

    move-result v1

    invoke-interface {v0, v1, p2}, Lcom/viber/voip/sound/tonegen/IToneGenerator;->startTone(II)V

    .line 1393
    return-void
.end method

.method public playMessageNotification(Lcom/viber/voip/sound/IRingtoneService$Ringtone;)V
    .locals 1
    .parameter

    .prologue
    .line 1446
    invoke-virtual {p0}, Lcom/viber/voip/sound/CommonAbstractSoundService;->stream_Notification()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/viber/voip/sound/IRingtoneService$Ringtone;->setStreamType(I)V

    .line 1447
    invoke-virtual {p0}, Lcom/viber/voip/sound/CommonAbstractSoundService;->getRingtoneService()Lcom/viber/voip/sound/IRingtoneService;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/viber/voip/sound/IRingtoneService;->playRingtone(Lcom/viber/voip/sound/IRingtoneService$Ringtone;)V

    .line 1448
    return-void
.end method

.method public playRingtone(Landroid/net/Uri;)V
    .locals 2
    .parameter

    .prologue
    .line 1440
    invoke-virtual {p0, p1}, Lcom/viber/voip/sound/CommonAbstractSoundService;->getRingtone(Landroid/net/Uri;)Lcom/viber/voip/sound/IRingtoneService$Ringtone;

    move-result-object v0

    .line 1442
    invoke-virtual {p0}, Lcom/viber/voip/sound/CommonAbstractSoundService;->getRingtoneService()Lcom/viber/voip/sound/IRingtoneService;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/viber/voip/sound/IRingtoneService;->playRingtone(Lcom/viber/voip/sound/IRingtoneService$Ringtone;)V

    .line 1443
    return-void
.end method

.method public playRingtone(Lcom/viber/voip/sound/IRingtoneService$Ringtone;)V
    .locals 3
    .parameter

    .prologue
    .line 1430
    invoke-static {}, Lcom/viber/voip/sound/bluetooth/BTControl;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/sound/CommonAbstractSoundService;->mBtControl:Lcom/viber/voip/sound/bluetooth/BTControl;

    invoke-virtual {v0}, Lcom/viber/voip/sound/bluetooth/BTControl;->isHeadsetConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1431
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/viber/voip/sound/IRingtoneService$Ringtone;->setStreamType(I)V

    .line 1432
    const/4 v0, 0x3

    sget-object v1, Lcom/viber/voip/sound/CommonAbstractSoundService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "bt headset Connected! settting ringtone stream to voice"

    invoke-static {v0, v1, v2}, Lcom/viber/voip/sound/SoundFactory;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 1435
    :cond_0
    invoke-virtual {p0}, Lcom/viber/voip/sound/CommonAbstractSoundService;->getRingtoneService()Lcom/viber/voip/sound/IRingtoneService;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/viber/voip/sound/IRingtoneService;->playRingtone(Lcom/viber/voip/sound/IRingtoneService$Ringtone;)V

    .line 1436
    return-void
.end method

.method public playSample(IFFIIF)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v8, 0x3

    .line 1890
    const/4 v0, 0x1

    sget v2, Lcom/viber/voip/sound/CommonAbstractSoundService;->native_state:I

    if-eq v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/viber/voip/sound/CommonAbstractSoundService;->havingValidVoiceChannel()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1891
    :cond_0
    sget-object v0, Lcom/viber/voip/sound/CommonAbstractSoundService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "dropping sample play request for resId#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": native layer is started"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v0, v1}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 1929
    :cond_1
    :goto_0
    return-void

    .line 1895
    :cond_2
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/viber/voip/sound/CommonAbstractSoundService;->isRouteActive(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1896
    sget-object v0, Lcom/viber/voip/sound/CommonAbstractSoundService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "playSample skipped due to GSM call"

    invoke-static {v8, v0, v1}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1900
    :cond_3
    invoke-virtual {p0}, Lcom/viber/voip/sound/CommonAbstractSoundService;->getPlatformAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1901
    sget-object v0, Lcom/viber/voip/sound/CommonAbstractSoundService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "playSample for active music stream"

    invoke-static {v8, v0, v2}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 1902
    invoke-virtual {p0, p1}, Lcom/viber/voip/sound/CommonAbstractSoundService;->getRingtone(I)Lcom/viber/voip/sound/IRingtoneService$Ringtone;

    move-result-object v0

    .line 1903
    invoke-virtual {v0, v8}, Lcom/viber/voip/sound/IRingtoneService$Ringtone;->setStreamType(I)V

    .line 1904
    invoke-virtual {v0, v1}, Lcom/viber/voip/sound/IRingtoneService$Ringtone;->setAudioMode(I)V

    .line 1905
    invoke-virtual {p0, v0}, Lcom/viber/voip/sound/CommonAbstractSoundService;->playRingtone(Lcom/viber/voip/sound/IRingtoneService$Ringtone;)V

    goto :goto_0

    .line 1909
    :cond_4
    sget-object v0, Lcom/viber/voip/sound/CommonAbstractSoundService;->_samplesMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    move v7, v1

    move-object v1, v0

    .line 1911
    :goto_1
    const/4 v0, 0x2

    if-ge v7, v0, :cond_1

    .line 1912
    if-nez v1, :cond_5

    .line 1913
    sget-object v0, Lcom/viber/voip/sound/CommonAbstractSoundService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[attempt:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] no preloaded sample for resId#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " found, trying to load on demand"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v0, v1}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 1914
    invoke-virtual {p0, p1, p4}, Lcom/viber/voip/sound/CommonAbstractSoundService;->loadSample(II)V

    .line 1915
    sget-object v0, Lcom/viber/voip/sound/CommonAbstractSoundService;->_samplesMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1916
    add-int/lit8 v1, v7, 0x1

    move v7, v1

    move-object v1, v0

    .line 1917
    goto :goto_1

    .line 1919
    :cond_5
    iget-object v0, p0, Lcom/viber/voip/sound/CommonAbstractSoundService;->_samplesPool:Landroid/media/SoundPool;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v0

    if-nez v0, :cond_6

    .line 1920
    sget-object v0, Lcom/viber/voip/sound/CommonAbstractSoundService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[attempt:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] failed to play sample for resId#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", trying to reload it"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v0, v1}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 1921
    invoke-virtual {p0, p1, p4}, Lcom/viber/voip/sound/CommonAbstractSoundService;->loadSample(II)V

    .line 1922
    sget-object v0, Lcom/viber/voip/sound/CommonAbstractSoundService;->_samplesMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1923
    add-int/lit8 v1, v7, 0x1

    move v7, v1

    move-object v1, v0

    goto/16 :goto_1

    .line 1925
    :cond_6
    sget-object v0, Lcom/viber/voip/sound/CommonAbstractSoundService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[attempt:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] done playing resId#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v0, v1}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public playTone(I)V
    .locals 1
    .parameter

    .prologue
    .line 1379
    invoke-static {p1}, Lcom/viber/voip/sound/ToneGeneratorFactory;->convert(I)Lcom/viber/voip/sound/ToneGeneratorFactory$ToneType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/sound/CommonAbstractSoundService;->playTone(Lcom/viber/voip/sound/ToneGeneratorFactory$ToneType;)V

    .line 1380
    return-void
.end method

.method public playTone(Lcom/viber/voip/sound/ToneGeneratorFactory$ToneType;)V
    .locals 2
    .parameter

    .prologue
    .line 1370
    sget-object v0, Lcom/viber/voip/sound/ToneGeneratorFactory$ToneType;->NO_TONE:Lcom/viber/voip/sound/ToneGeneratorFactory$ToneType;

    if-ne v0, p1, :cond_0

    .line 1375
    :goto_0
    return-void

    .line 1371
    :cond_0
    invoke-static {p1}, Lcom/viber/voip/sound/ToneGeneratorFactory;->getTonePlayer(Lcom/viber/voip/sound/ToneGeneratorFactory$ToneType;)Lcom/viber/voip/sound/tonegen/TonePlayer;

    move-result-object v0

    .line 1372
    invoke-virtual {p0}, Lcom/viber/voip/sound/CommonAbstractSoundService;->mode_Tone()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/viber/voip/sound/CommonAbstractSoundService;->setModeWithPriorityLock(I)V

    .line 1373
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/viber/voip/sound/CommonAbstractSoundService;->setRouteFlags(I)I

    .line 1374
    invoke-virtual {v0, p0}, Lcom/viber/voip/sound/tonegen/TonePlayer;->play(Lcom/viber/voip/sound/AbstractSoundService;)V

    goto :goto_0
.end method

.method protected processAudioDevStartSignalOnce(Z)V
    .locals 1
    .parameter

    .prologue
    .line 1717
    if-nez p1, :cond_0

    .line 1721
    :goto_0
    return-void

    .line 1720
    :cond_0
    const/4 v0, 0x1

    sput v0, Lcom/viber/voip/sound/CommonAbstractSoundService;->native_state:I

    goto :goto_0
.end method

.method public processAudioDevStopSignalOnce()V
    .locals 1

    .prologue
    .line 1710
    const/4 v0, 0x0

    sput v0, Lcom/viber/voip/sound/CommonAbstractSoundService;->native_state:I

    .line 1712
    invoke-virtual {p0}, Lcom/viber/voip/sound/CommonAbstractSoundService;->unlockModeChange()V

    .line 1713
    invoke-virtual {p0}, Lcom/viber/voip/sound/CommonAbstractSoundService;->voiceChannelPostStopAction()V

    .line 1714
    return-void
.end method

.method public registerAudioDevice(Lorg/webrtc/voiceengine/IAudioDevice;)V
    .locals 2
    .parameter

    .prologue
    .line 1178
    iput-object p1, p0, Lcom/viber/voip/sound/CommonAbstractSoundService;->audioDeviceCtl:Lorg/webrtc/voiceengine/IAudioDevice;

    .line 1179
    invoke-static {}, Lorg/webrtc/voiceengine/AudioDeviceManager;->getJavaAutioDeviceCtl()Lorg/webrtc/voiceengine/IAudioDevice;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/sound/CommonAbstractSoundService;->audioDeviceStateListener:Lorg/webrtc/voiceengine/IAudioDevice$AudioDeviceStateListener;

    invoke-interface {v0, v1}, Lorg/webrtc/voiceengine/IAudioDevice;->registerStateListener(Lorg/webrtc/voiceengine/IAudioDevice$AudioDeviceStateListener;)V

    .line 1180
    return-void
.end method

.method public registerModeStateListener(Lcom/viber/voip/sound/ISoundService$ModeStateListenerIntf;)V
    .locals 2
    .parameter

    .prologue
    .line 1728
    iget-object v0, p0, Lcom/viber/voip/sound/CommonAbstractSoundService;->globalModeStateListeners:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1729
    return-void
.end method

.method public registerSpeakerStateListener(Lcom/viber/voip/sound/ISoundService$SpeakerStateListener;)V
    .locals 2
    .parameter

    .prologue
    .line 1744
    iget-object v0, p0, Lcom/viber/voip/sound/CommonAbstractSoundService;->globalSpeakerStateListeners:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1745
    return-void
.end method

.method public registerVoiceStateListener(Lcom/viber/voip/sound/VoiceStateListener;)V
    .locals 2
    .parameter

    .prologue
    .line 1933
    iget-object v1, p0, Lcom/viber/voip/sound/CommonAbstractSoundService;->_voiceStateListeners:Ljava/util/Set;

    monitor-enter v1

    .line 1934
    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/sound/CommonAbstractSoundService;->_voiceStateListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1935
    monitor-exit v1

    .line 1936
    return-void

    .line 1935
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public registerVolumeChangeListener(Lcom/viber/voip/sound/ISoundService$VolumeChangeListenerIntf;)V
    .locals 2
    .parameter

    .prologue
    .line 1853
    iget-object v0, p0, Lcom/viber/voip/sound/CommonAbstractSoundService;->volumeChangeListeners:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1854
    return-void
.end method

.method public final rejectSpeakerActiveState()Z
    .locals 1

    .prologue
    .line 1813
    const/4 v0, 0x1

    return v0
.end method

.method public rejectSpeakerStateChangeWithHeadset()Z
    .locals 1

    .prologue
    .line 783
    const/4 v0, 0x0

    return v0
.end method

.method public releaseMediaPlayer()V
    .locals 3

    .prologue
    .line 624
    const/4 v0, 0x3

    sget-object v1, Lcom/viber/voip/sound/CommonAbstractSoundService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "releasing mediaplayer..."

    invoke-static {v0, v1, v2}, Lcom/viber/voip/sound/SoundFactory;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 625
    sget-object v0, Lcom/viber/voip/sound/CommonAbstractSoundService;->mediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    .line 631
    :goto_0
    return-void

    .line 627
    :cond_0
    sget-object v1, Lcom/viber/voip/sound/CommonAbstractSoundService;->stream_max_volume:[I

    monitor-enter v1

    .line 628
    :try_start_0
    sget-object v0, Lcom/viber/voip/sound/CommonAbstractSoundService;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 629
    const/4 v0, 0x0

    sput-object v0, Lcom/viber/voip/sound/CommonAbstractSoundService;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 630
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setAudioCtl(III)I
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 2041
    invoke-virtual {p0, p2}, Lcom/viber/voip/sound/CommonAbstractSoundService;->getAudioSettings(I)Lcom/viber/voip/sound/ISoundService$IAudioSettings;

    move-result-object v1

    .line 2042
    if-nez v1, :cond_1

    .line 2056
    :cond_0
    :goto_0
    return v0

    .line 2043
    :cond_1
    sget-object v2, Lcom/viber/voip/sound/ISoundService$AudioCtl;->AUCTL_AEC_MODE:Lcom/viber/voip/sound/ISoundService$AudioCtl;

    invoke-virtual {v2}, Lcom/viber/voip/sound/ISoundService$AudioCtl;->ordinal()I

    move-result v2

    if-ne v2, p1, :cond_2

    .line 2044
    invoke-interface {v1, p3}, Lcom/viber/voip/sound/ISoundService$IAudioSettings;->setAECMode(I)I

    move-result v0

    goto :goto_0

    .line 2045
    :cond_2
    sget-object v2, Lcom/viber/voip/sound/ISoundService$AudioCtl;->AUCTL_AGC_MODE:Lcom/viber/voip/sound/ISoundService$AudioCtl;

    invoke-virtual {v2}, Lcom/viber/voip/sound/ISoundService$AudioCtl;->ordinal()I

    move-result v2

    if-ne v2, p1, :cond_3

    .line 2046
    invoke-interface {v1, p3}, Lcom/viber/voip/sound/ISoundService$IAudioSettings;->setAGCMode(I)I

    move-result v0

    goto :goto_0

    .line 2047
    :cond_3
    sget-object v2, Lcom/viber/voip/sound/ISoundService$AudioCtl;->AUCTL_NS_MODE:Lcom/viber/voip/sound/ISoundService$AudioCtl;

    invoke-virtual {v2}, Lcom/viber/voip/sound/ISoundService$AudioCtl;->ordinal()I

    move-result v2

    if-ne v2, p1, :cond_4

    .line 2048
    invoke-interface {v1, p3}, Lcom/viber/voip/sound/ISoundService$IAudioSettings;->setNSMode(I)I

    move-result v0

    goto :goto_0

    .line 2049
    :cond_4
    sget-object v2, Lcom/viber/voip/sound/ISoundService$AudioCtl;->AUCTL_RX_AGC_MODE:Lcom/viber/voip/sound/ISoundService$AudioCtl;

    invoke-virtual {v2}, Lcom/viber/voip/sound/ISoundService$AudioCtl;->ordinal()I

    move-result v2

    if-ne v2, p1, :cond_5

    .line 2050
    invoke-interface {v1, p3}, Lcom/viber/voip/sound/ISoundService$IAudioSettings;->setRxAGCMode(I)I

    move-result v0

    goto :goto_0

    .line 2051
    :cond_5
    sget-object v2, Lcom/viber/voip/sound/ISoundService$AudioCtl;->AUCTL_RX_NS_MODE:Lcom/viber/voip/sound/ISoundService$AudioCtl;

    invoke-virtual {v2}, Lcom/viber/voip/sound/ISoundService$AudioCtl;->ordinal()I

    move-result v2

    if-ne v2, p1, :cond_6

    .line 2052
    invoke-interface {v1, p3}, Lcom/viber/voip/sound/ISoundService$IAudioSettings;->setRxNSMode(I)I

    move-result v0

    goto :goto_0

    .line 2053
    :cond_6
    sget-object v2, Lcom/viber/voip/sound/ISoundService$AudioCtl;->AUCTL_VAD_MODE:Lcom/viber/voip/sound/ISoundService$AudioCtl;

    invoke-virtual {v2}, Lcom/viber/voip/sound/ISoundService$AudioCtl;->ordinal()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 2054
    invoke-interface {v1, p3}, Lcom/viber/voip/sound/ISoundService$IAudioSettings;->setVADMode(I)I

    move-result v0

    goto :goto_0
.end method

.method public setMediaDataSource(Landroid/net/Uri;I)Landroid/media/MediaPlayer;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 1096
    const/4 v0, 0x3

    sget-object v1, Lcom/viber/voip/sound/CommonAbstractSoundService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setting mediaplayer parameters ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/viber/voip/sound/SoundFactory;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 1098
    sget-object v1, Lcom/viber/voip/sound/CommonAbstractSoundService;->stream_max_volume:[I

    monitor-enter v1

    .line 1099
    :try_start_0
    invoke-virtual {p0}, Lcom/viber/voip/sound/CommonAbstractSoundService;->stopMediaPlayer()V

    .line 1100
    invoke-virtual {p0}, Lcom/viber/voip/sound/CommonAbstractSoundService;->getMediaPlayer()Landroid/media/MediaPlayer;

    move-result-object v0

    .line 1101
    iget-object v2, p0, Lcom/viber/voip/sound/CommonAbstractSoundService;->ctx:Landroid/content/Context;

    invoke-virtual {v0, v2, p1}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 1102
    invoke-virtual {v0, p2}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 1103
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 1104
    monitor-exit v1

    .line 1105
    return-object v0

    .line 1104
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setMediaDataSource(Lcom/viber/voip/sound/IRingtoneService$Ringtone;I)Landroid/media/MediaPlayer;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1111
    iget-object v0, p1, Lcom/viber/voip/sound/IRingtoneService$Ringtone;->m_Uri:Landroid/net/Uri;

    invoke-virtual {p0, v0, p2}, Lcom/viber/voip/sound/CommonAbstractSoundService;->setMediaDataSource(Landroid/net/Uri;I)Landroid/media/MediaPlayer;

    move-result-object v0

    return-object v0
.end method

.method public setMediaDataSource(Ljava/io/FileDescriptor;JJ)Landroid/media/MediaPlayer;
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1082
    const/4 v0, 0x3

    sget-object v1, Lcom/viber/voip/sound/CommonAbstractSoundService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setting mediaplayer with file descriptor..."

    invoke-static {v0, v1, v2}, Lcom/viber/voip/sound/SoundFactory;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 1084
    sget-object v6, Lcom/viber/voip/sound/CommonAbstractSoundService;->stream_max_volume:[I

    monitor-enter v6

    .line 1085
    :try_start_0
    invoke-virtual {p0}, Lcom/viber/voip/sound/CommonAbstractSoundService;->stopMediaPlayer()V

    .line 1086
    invoke-virtual {p0}, Lcom/viber/voip/sound/CommonAbstractSoundService;->getMediaPlayer()Landroid/media/MediaPlayer;

    move-result-object v0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    .line 1087
    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 1088
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 1089
    monitor-exit v6

    .line 1090
    return-object v0

    .line 1089
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setMicrophoneMute(Z)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 975
    invoke-virtual {p0}, Lcom/viber/voip/sound/CommonAbstractSoundService;->useNativeMuteControl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 976
    iget-object v0, p0, Lcom/viber/voip/sound/CommonAbstractSoundService;->ctx:Landroid/content/Context;

    check-cast v0, Lcom/viber/voip/ViberApplication;

    .line 977
    if-eqz p1, :cond_1

    .line 978
    invoke-virtual {v0, v1}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerWrapper;->getDialerControllerNowrap()Lcom/viber/jni/dialer/DialerController;

    move-result-object v0

    invoke-interface {v0}, Lcom/viber/jni/dialer/DialerController;->handleMute()V

    .line 983
    :cond_0
    :goto_0
    iput-boolean p1, p0, Lcom/viber/voip/sound/CommonAbstractSoundService;->isMicMuted:Z

    .line 984
    return-void

    .line 980
    :cond_1
    invoke-virtual {v0, v1}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerWrapper;->getDialerControllerNowrap()Lcom/viber/jni/dialer/DialerController;

    move-result-object v0

    invoke-interface {v0}, Lcom/viber/jni/dialer/DialerController;->handleUnmute()V

    goto :goto_0
.end method

.method public setMode(I)V
    .locals 1
    .parameter

    .prologue
    .line 666
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/viber/voip/sound/CommonAbstractSoundService;->setMode(ILcom/viber/voip/sound/ISoundService$ModeStateListenerIntf;)V

    .line 667
    return-void
.end method

.method public setMode(ILcom/viber/voip/sound/ISoundService$ModeStateListenerIntf;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 671
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/viber/voip/sound/CommonAbstractSoundService;->setMode(ILcom/viber/voip/sound/ISoundService$ModeStateListenerIntf;I)V

    .line 672
    return-void
.end method

.method public setMode(ILcom/viber/voip/sound/ISoundService$ModeStateListenerIntf;I)V
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    .line 676
    invoke-virtual {p0}, Lcom/viber/voip/sound/CommonAbstractSoundService;->getMode()I

    move-result v1

    .line 677
    const/4 v0, 0x2

    and-int/lit8 v2, p3, 0x2

    if-ne v0, v2, :cond_0

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/viber/voip/sound/CommonAbstractSoundService;->isRouteActive(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 678
    :cond_0
    const/4 v0, 0x1

    sget v2, Lcom/viber/voip/sound/CommonAbstractSoundService;->native_state:I

    const v3, 0xffff

    and-int/2addr v2, v3

    if-ne v0, v2, :cond_1

    .line 679
    sget-object v0, Lcom/viber/voip/sound/CommonAbstractSoundService;->modeChangeAtomicLock:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/viber/voip/sound/CommonAbstractSoundService;->havingValidVoiceChannel()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 681
    :cond_1
    sget-object v0, Lcom/viber/voip/sound/CommonAbstractSoundService;->modeChangeAtomicLock:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2

    if-ne v1, p1, :cond_3

    :cond_2
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/viber/voip/sound/CommonAbstractSoundService;->isRouteActive(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 682
    :cond_3
    const/4 v0, 0x1

    and-int/lit8 v2, p3, 0x1

    if-eq v0, v2, :cond_6

    .line 683
    sget-object v2, Lcom/viber/voip/sound/CommonAbstractSoundService;->_deferredModeChangeQueue:Ljava/util/List;

    monitor-enter v2

    .line 684
    const/4 v0, 0x3

    :try_start_0
    sget-object v3, Lcom/viber/voip/sound/CommonAbstractSoundService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "deferring mode switching to ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Lcom/viber/voip/sound/CommonAbstractSoundService;->getModeName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "] for state listener "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " / current mode is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Lcom/viber/voip/sound/CommonAbstractSoundService;->getModeName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "; lock status: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/viber/voip/sound/CommonAbstractSoundService;->modeChangeAtomicLock:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/viber/voip/sound/SoundFactory;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 685
    sget-object v0, Lcom/viber/voip/sound/CommonAbstractSoundService;->_deferredModeChangeQueue:Ljava/util/List;

    new-instance v3, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v3, v4, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 686
    if-eqz p2, :cond_4

    const/4 v0, 0x1

    invoke-interface {p2, v0, v1, p1}, Lcom/viber/voip/sound/ISoundService$ModeStateListenerIntf;->onModeStateChangeDeferred(III)V

    .line 687
    :cond_4
    monitor-exit v2

    .line 764
    :cond_5
    :goto_0
    return-void

    .line 687
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 689
    :cond_6
    const/4 v0, 0x3

    sget-object v2, Lcom/viber/voip/sound/CommonAbstractSoundService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "SETMODE_NODEFER passed while switching acquired to ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Lcom/viber/voip/sound/CommonAbstractSoundService;->getModeName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "] for state listener "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " / current mode is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Lcom/viber/voip/sound/CommonAbstractSoundService;->getModeName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "; lock status: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lcom/viber/voip/sound/CommonAbstractSoundService;->modeChangeAtomicLock:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/viber/voip/sound/SoundFactory;->log(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 693
    :cond_7
    const/16 v0, 0x100

    and-int/lit16 v2, p3, 0x100

    if-eq v0, v2, :cond_8

    .line 694
    invoke-direct {p0}, Lcom/viber/voip/sound/CommonAbstractSoundService;->_replayModeChange()V

    .line 697
    :cond_8
    invoke-virtual {p0}, Lcom/viber/voip/sound/CommonAbstractSoundService;->isSpeakerphoneOn()Z

    move-result v2

    .line 698
    const/4 v0, 0x3

    sget-object v3, Lcom/viber/voip/sound/CommonAbstractSoundService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setMode("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Lcom/viber/voip/sound/CommonAbstractSoundService;->getModeName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ") from ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/viber/voip/sound/CommonAbstractSoundService;->getMode()I

    move-result v5

    invoke-static {v5}, Lcom/viber/voip/sound/CommonAbstractSoundService;->getModeName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/viber/voip/sound/SoundFactory;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 701
    iget-object v0, p0, Lcom/viber/voip/sound/CommonAbstractSoundService;->mBtControl:Lcom/viber/voip/sound/bluetooth/BTControl;

    invoke-virtual {v0}, Lcom/viber/voip/sound/bluetooth/BTControl;->isHeadsetConnected()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 702
    invoke-virtual {p0}, Lcom/viber/voip/sound/CommonAbstractSoundService;->mode_InCall()I

    move-result v0

    if-eq v0, p1, :cond_9

    const/4 v0, 0x2

    and-int/lit8 v3, p3, 0x2

    if-eq v0, v3, :cond_9

    .line 708
    :cond_9
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/viber/voip/sound/CommonAbstractSoundService;->isRouteActive(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 709
    invoke-virtual {p0}, Lcom/viber/voip/sound/CommonAbstractSoundService;->mode_InCall()I

    move-result v0

    if-eq v0, p1, :cond_a

    const/4 v0, 0x2

    and-int/lit8 v3, p3, 0x2

    if-eq v0, v3, :cond_a

    .line 718
    :cond_a
    iget-object v3, p0, Lcom/viber/voip/sound/CommonAbstractSoundService;->globalModeStateListeners:Ljava/util/Map;

    monitor-enter v3

    .line 719
    :try_start_1
    new-instance v0, Ljava/util/HashMap;

    iget-object v4, p0, Lcom/viber/voip/sound/CommonAbstractSoundService;->globalModeStateListeners:Ljava/util/Map;

    invoke-direct {v0, v4}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    .line 720
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 721
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 723
    const/4 v5, 0x3

    :try_start_2
    sget-object v6, Lcom/viber/voip/sound/CommonAbstractSoundService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setMode(): notifying permanent listener "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/viber/voip/sound/SoundFactory;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 724
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/sound/ISoundService$ModeStateListenerIntf;

    invoke-interface {v0, p1}, Lcom/viber/voip/sound/ISoundService$ModeStateListenerIntf;->onModeStatePreChanged(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 725
    :catch_0
    move-exception v0

    goto :goto_1

    .line 720
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 730
    :cond_b
    if-eqz p2, :cond_c

    .line 731
    const/4 v0, 0x3

    sget-object v3, Lcom/viber/voip/sound/CommonAbstractSoundService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setMode(): having immediate listener "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v3, v5}, Lcom/viber/voip/sound/SoundFactory;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 732
    invoke-interface {p2, p1}, Lcom/viber/voip/sound/ISoundService$ModeStateListenerIntf;->onModeStatePreChanged(I)V

    .line 734
    :cond_c
    if-eq p1, v1, :cond_10

    .line 738
    invoke-static {}, Lcom/viber/voip/sound/SoundFactory;->isHTCSense()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 739
    invoke-virtual {p0}, Lcom/viber/voip/sound/CommonAbstractSoundService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/viber/voip/sound/CommonAbstractSoundService;->getPlatformAudioManager()Landroid/media/AudioManager;

    move-result-object v3

    sget v0, Lcom/viber/voip/sound/ISoundService;->MODE_IN_COMMUNICATION:I

    if-ne p1, v0, :cond_f

    const/4 v0, 0x1

    :goto_2
    invoke-static {v1, v3, v0}, Lcom/viber/voip/sound/SoundServiceCommonConfig$HtcHwConfig$HtcHwCtl;->ctlHwAec(Landroid/content/Context;Landroid/media/AudioManager;Z)V

    .line 742
    :cond_d
    const/4 v0, 0x3

    sget-object v1, Lcom/viber/voip/sound/CommonAbstractSoundService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "real setting Mode "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Lcom/viber/voip/sound/CommonAbstractSoundService;->getModeName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/viber/voip/sound/SoundFactory;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 744
    iget-object v0, p0, Lcom/viber/voip/sound/CommonAbstractSoundService;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setMode(I)V

    .line 745
    invoke-virtual {p0}, Lcom/viber/voip/sound/CommonAbstractSoundService;->useSpeakerResetForModeChangeWorkaround()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 746
    invoke-virtual {p0, v2}, Lcom/viber/voip/sound/CommonAbstractSoundService;->setSpeakerphoneOn(Z)V

    .line 754
    :cond_e
    :goto_3
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 756
    :try_start_4
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/sound/ISoundService$ModeStateListenerIntf;

    invoke-interface {v0, p1}, Lcom/viber/voip/sound/ISoundService$ModeStateListenerIntf;->onModeStateChanged(I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_4

    .line 757
    :catch_1
    move-exception v0

    goto :goto_4

    .line 739
    :cond_f
    const/4 v0, 0x0

    goto :goto_2

    .line 749
    :cond_10
    const/4 v0, 0x2

    and-int/lit8 v3, p3, 0x2

    if-ne v0, v3, :cond_11

    invoke-virtual {p0}, Lcom/viber/voip/sound/CommonAbstractSoundService;->useSpeakerResetForModeChangeWorkaround()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 750
    invoke-virtual {p0, v2}, Lcom/viber/voip/sound/CommonAbstractSoundService;->setSpeakerphoneOn(Z)V

    .line 751
    :cond_11
    if-eqz p2, :cond_e

    const/4 v0, 0x1

    invoke-interface {p2, v0, v1, p1}, Lcom/viber/voip/sound/ISoundService$ModeStateListenerIntf;->onModeStateChangeRejected(III)V

    goto :goto_3

    .line 761
    :cond_12
    if-eqz p2, :cond_5

    .line 762
    invoke-interface {p2, p1}, Lcom/viber/voip/sound/ISoundService$ModeStateListenerIntf;->onModeStateChanged(I)V

    goto/16 :goto_0
.end method

.method public setModeWithPriorityLock(I)V
    .locals 2
    .parameter

    .prologue
    .line 1732
    new-instance v0, Lcom/viber/voip/sound/CommonAbstractSoundService$4;

    invoke-direct {v0, p0}, Lcom/viber/voip/sound/CommonAbstractSoundService$4;-><init>(Lcom/viber/voip/sound/CommonAbstractSoundService;)V

    const/4 v1, 0x2

    invoke-virtual {p0, p1, v0, v1}, Lcom/viber/voip/sound/CommonAbstractSoundService;->setMode(ILcom/viber/voip/sound/ISoundService$ModeStateListenerIntf;I)V

    .line 1741
    return-void
.end method

.method public setRingerMode(I)V
    .locals 4
    .parameter

    .prologue
    .line 787
    const/4 v0, 0x3

    sget-object v1, Lcom/viber/voip/sound/CommonAbstractSoundService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setRingerMode("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/viber/voip/sound/CommonAbstractSoundService;->getRingerModeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") from ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/viber/voip/sound/CommonAbstractSoundService;->getRingerMode()I

    move-result v3

    invoke-static {v3}, Lcom/viber/voip/sound/CommonAbstractSoundService;->getRingerModeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/viber/voip/sound/SoundFactory;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 792
    iget-object v0, p0, Lcom/viber/voip/sound/CommonAbstractSoundService;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 794
    return-void
.end method

.method public setRouteFlags(I)I
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x3

    .line 1337
    sget v0, Lcom/viber/voip/sound/CommonAbstractSoundService;->routingFlags:I

    and-int/2addr v0, p1

    if-ne p1, v0, :cond_0

    sget v0, Lcom/viber/voip/sound/CommonAbstractSoundService;->routingFlags:I

    .line 1342
    :goto_0
    return v0

    .line 1338
    :cond_0
    sget-object v0, Lcom/viber/voip/sound/CommonAbstractSoundService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "--> routing flags changed from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/viber/voip/sound/CommonAbstractSoundService;->routingFlags:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/viber/voip/sound/CommonAbstractSoundService;->routingFlags:I

    or-int/2addr v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": setting route flag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/viber/voip/sound/CommonAbstractSoundService;->getRouteName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/viber/voip/sound/SoundFactory;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 1339
    sget v0, Lcom/viber/voip/sound/CommonAbstractSoundService;->routingFlags:I

    or-int/2addr v0, p1

    sput v0, Lcom/viber/voip/sound/CommonAbstractSoundService;->routingFlags:I

    .line 1340
    sget v0, Lcom/viber/voip/sound/CommonAbstractSoundService;->routingFlags:I

    invoke-virtual {p0, v0}, Lcom/viber/voip/sound/CommonAbstractSoundService;->checkVoiceStateForRouting(I)V

    .line 1341
    sget-object v0, Lcom/viber/voip/sound/CommonAbstractSoundService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "--> current routing is: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/viber/voip/sound/CommonAbstractSoundService;->routingFlags:I

    invoke-static {v2}, Lcom/viber/voip/sound/CommonAbstractSoundService;->getRouteName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/viber/voip/sound/SoundFactory;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 1342
    sget v0, Lcom/viber/voip/sound/CommonAbstractSoundService;->routingFlags:I

    goto :goto_0
.end method

.method public setSpeakerphoneOn(Z)V
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x3

    .line 833
    sget-object v0, Lcom/viber/voip/sound/CommonAbstractSoundService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setSpeakerphoneOn: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "; current mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/viber/voip/sound/CommonAbstractSoundService;->getMode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/viber/voip/sound/CommonAbstractSoundService;->getMode()I

    move-result v3

    invoke-static {v3}, Lcom/viber/voip/sound/CommonAbstractSoundService;->getModeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "; ringer mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/viber/voip/sound/CommonAbstractSoundService;->getRingerMode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/viber/voip/sound/CommonAbstractSoundService;->getRingerMode()I

    move-result v3

    invoke-static {v3}, Lcom/viber/voip/sound/CommonAbstractSoundService;->getRingerModeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v0, v2}, Lcom/viber/voip/sound/SoundFactory;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 837
    invoke-virtual {p0}, Lcom/viber/voip/sound/CommonAbstractSoundService;->getMode()I

    .line 838
    invoke-virtual {p0}, Lcom/viber/voip/sound/CommonAbstractSoundService;->isSpeakerphoneAllowed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 839
    iput-boolean p1, p0, Lcom/viber/voip/sound/CommonAbstractSoundService;->isSpeakerActive:Z

    .line 840
    sget-object v0, Lcom/viber/voip/sound/CommonAbstractSoundService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "speakerphone is DISABLED, set to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/viber/voip/sound/CommonAbstractSoundService;->isSpeakerphoneOn()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " (input was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v0, v1}, Lcom/viber/voip/sound/SoundFactory;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 922
    :goto_0
    return-void

    .line 843
    :cond_0
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/viber/voip/sound/CommonAbstractSoundService;->isRouteActive(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 844
    sget-object v0, Lcom/viber/voip/sound/CommonAbstractSoundService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "speaker state change rejected due to GSM call"

    invoke-static {v5, v0, v1}, Lcom/viber/voip/sound/SoundFactory;->log(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 847
    :cond_1
    invoke-virtual {p0}, Lcom/viber/voip/sound/CommonAbstractSoundService;->isHeadsetPluggedIn()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/viber/voip/sound/CommonAbstractSoundService;->rejectSpeakerStateChangeWithHeadset()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 848
    sget-object v0, Lcom/viber/voip/sound/CommonAbstractSoundService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "speaker state change rejected because external headset is plugged in"

    invoke-static {v5, v0, v1}, Lcom/viber/voip/sound/SoundFactory;->log(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 852
    :cond_2
    invoke-virtual {p0}, Lcom/viber/voip/sound/CommonAbstractSoundService;->isSpeakerphoneOn()Z

    move-result v0

    if-ne v0, p1, :cond_3

    invoke-virtual {p0}, Lcom/viber/voip/sound/CommonAbstractSoundService;->getPlatformAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v0

    if-ne v0, p1, :cond_3

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/viber/voip/sound/CommonAbstractSoundService;->isRouteActive(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 857
    invoke-virtual {p0, p1}, Lcom/viber/voip/sound/CommonAbstractSoundService;->_notifySpeakerStatePreChange(Z)V

    .line 858
    invoke-virtual {p0, p1}, Lcom/viber/voip/sound/CommonAbstractSoundService;->_notifySpeakerStatePostChange(Z)V

    .line 859
    sget-object v0, Lcom/viber/voip/sound/CommonAbstractSoundService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "speaker state change rejected, its the same"

    invoke-static {v5, v0, v1}, Lcom/viber/voip/sound/SoundFactory;->log(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 863
    :cond_3
    invoke-virtual {p0, p1}, Lcom/viber/voip/sound/CommonAbstractSoundService;->_notifySpeakerStatePreChange(Z)V

    .line 865
    invoke-virtual {p0}, Lcom/viber/voip/sound/CommonAbstractSoundService;->useNativeResetOnSpeakerToggle()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 866
    invoke-virtual {p0, v1}, Lcom/viber/voip/sound/CommonAbstractSoundService;->isRouteActive(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 867
    invoke-virtual {p0}, Lcom/viber/voip/sound/CommonAbstractSoundService;->suspendNativeOnParallelGSM()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/sound/CommonAbstractSoundService;->suspendSound(Z)I

    .line 871
    :cond_4
    invoke-virtual {p0}, Lcom/viber/voip/sound/CommonAbstractSoundService;->useNativeSoundLibSpeakerControl()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 873
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/viber/voip/sound/CommonAbstractSoundService;->useSpeakers(Z)V

    .line 874
    iput-boolean p1, p0, Lcom/viber/voip/sound/CommonAbstractSoundService;->isSpeakerActive:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 912
    :goto_1
    invoke-virtual {p0}, Lcom/viber/voip/sound/CommonAbstractSoundService;->useNativeResetOnSpeakerToggle()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 913
    invoke-virtual {p0, v1}, Lcom/viber/voip/sound/CommonAbstractSoundService;->isRouteActive(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 914
    invoke-virtual {p0}, Lcom/viber/voip/sound/CommonAbstractSoundService;->suspendNativeOnParallelGSM()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/sound/CommonAbstractSoundService;->resumeSound(Z)I

    .line 918
    :cond_5
    invoke-virtual {p0}, Lcom/viber/voip/sound/CommonAbstractSoundService;->isSpeakerphoneOn()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/sound/CommonAbstractSoundService;->_notifySpeakerStatePostChange(Z)V

    .line 920
    sget-object v0, Lcom/viber/voip/sound/CommonAbstractSoundService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "speakerphone is set to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/viber/voip/sound/CommonAbstractSoundService;->isSpeakerphoneOn()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " (input was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v0, v1}, Lcom/viber/voip/sound/SoundFactory;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 921
    invoke-direct {p0}, Lcom/viber/voip/sound/CommonAbstractSoundService;->logRouteState()V

    goto/16 :goto_0

    .line 875
    :catch_0
    move-exception v0

    .line 877
    invoke-virtual {p0, p1}, Lcom/viber/voip/sound/CommonAbstractSoundService;->setSpeakerphoneOnFallback(Z)V

    goto :goto_1

    .line 882
    :cond_6
    const/4 v0, 0x3

    :try_start_1
    sget-object v2, Lcom/viber/voip/sound/CommonAbstractSoundService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setSpeakerphoneOn: trying to switch speaker route via native ... ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/viber/voip/sound/SoundFactory;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 883
    invoke-virtual {p0, p1}, Lcom/viber/voip/sound/CommonAbstractSoundService;->shouldUseSpeakers(Z)Z

    move-result v0

    if-ne p1, v0, :cond_8

    .line 884
    invoke-virtual {p0}, Lcom/viber/voip/sound/CommonAbstractSoundService;->getPlatformAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v0

    if-eq p1, v0, :cond_7

    .line 885
    const/4 v0, 0x3

    sget-object v2, Lcom/viber/voip/sound/CommonAbstractSoundService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setSpeakerphoneOn: local setting disagrees with settled by native: local="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "; real: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/viber/voip/sound/CommonAbstractSoundService;->getPlatformAudioManager()Landroid/media/AudioManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/viber/voip/sound/SoundFactory;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 886
    invoke-virtual {p0, p1}, Lcom/viber/voip/sound/CommonAbstractSoundService;->setSpeakerphoneOnFallback(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 906
    :goto_2
    if-eqz p1, :cond_9

    const/4 v0, 0x4

    :goto_3
    :try_start_2
    invoke-virtual {p0, v0}, Lcom/viber/voip/sound/CommonAbstractSoundService;->setAECMode(I)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    .line 907
    :catch_1
    move-exception v0

    .line 908
    sget-object v0, Lcom/viber/voip/sound/CommonAbstractSoundService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setSpeakerphoneOn: setAECMode exception. whatever..."

    invoke-static {v5, v0, v2}, Lcom/viber/voip/sound/SoundFactory;->log(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 889
    :cond_7
    :try_start_3
    iput-boolean p1, p0, Lcom/viber/voip/sound/CommonAbstractSoundService;->isSpeakerActive:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    .line 896
    :catch_2
    move-exception v0

    .line 897
    sget-object v0, Lcom/viber/voip/sound/CommonAbstractSoundService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setSpeakerphoneOn: exception! falling back"

    invoke-static {v5, v0, v2}, Lcom/viber/voip/sound/SoundFactory;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 898
    invoke-virtual {p0, p1}, Lcom/viber/voip/sound/CommonAbstractSoundService;->setSpeakerphoneOnFallback(Z)V

    goto :goto_2

    .line 892
    :cond_8
    const/4 v0, 0x3

    :try_start_4
    sget-object v2, Lcom/viber/voip/sound/CommonAbstractSoundService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "setSpeakerphoneOn: native speaker ctl failed, falling back to platform"

    invoke-static {v0, v2, v3}, Lcom/viber/voip/sound/SoundFactory;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 893
    invoke-virtual {p0, p1}, Lcom/viber/voip/sound/CommonAbstractSoundService;->setSpeakerphoneOnFallback(Z)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :cond_9
    move v0, v1

    .line 906
    goto :goto_3
.end method

.method protected setSpeakerphoneOnFallback(Z)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x3

    .line 801
    sget-object v0, Lcom/viber/voip/sound/CommonAbstractSoundService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSpeakerphoneOnFallback, current state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/sound/CommonAbstractSoundService;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "; mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/viber/voip/sound/CommonAbstractSoundService;->getMode()I

    move-result v2

    invoke-static {v2}, Lcom/viber/voip/sound/CommonAbstractSoundService;->getModeName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " going to set to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/viber/voip/sound/SoundFactory;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 803
    invoke-virtual {p0}, Lcom/viber/voip/sound/CommonAbstractSoundService;->isSpeakerphoneOn()Z

    move-result v0

    if-ne v0, p1, :cond_0

    invoke-virtual {p0}, Lcom/viber/voip/sound/CommonAbstractSoundService;->getPlatformAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v0

    if-ne v0, p1, :cond_0

    .line 804
    sget-object v0, Lcom/viber/voip/sound/CommonAbstractSoundService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setSpeakerphoneOnFallback: rejecting speaker state change to the same"

    invoke-static {v3, v0, v1}, Lcom/viber/voip/sound/SoundFactory;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 814
    :goto_0
    return-void

    .line 808
    :cond_0
    invoke-virtual {p0, p1}, Lcom/viber/voip/sound/CommonAbstractSoundService;->forceSpeakerphoneOn(Z)V

    .line 810
    invoke-virtual {p0}, Lcom/viber/voip/sound/CommonAbstractSoundService;->getPlatformAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v0

    iput-boolean v0, p0, Lcom/viber/voip/sound/CommonAbstractSoundService;->isSpeakerActive:Z

    .line 812
    sget-object v0, Lcom/viber/voip/sound/CommonAbstractSoundService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSpeakerphoneOnFallback: platform API says speaker state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/viber/voip/sound/CommonAbstractSoundService;->isSpeakerActive:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "; mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/viber/voip/sound/CommonAbstractSoundService;->getMode()I

    move-result v2

    invoke-static {v2}, Lcom/viber/voip/sound/CommonAbstractSoundService;->getModeName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/viber/voip/sound/SoundFactory;->log(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setVocoderCtl(Lcom/viber/voip/sound/ISoundService$VocoderCtl;II)I
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2071
    iget-object v0, p0, Lcom/viber/voip/sound/CommonAbstractSoundService;->_vocoderSettings:Lcom/viber/voip/sound/CommonAbstractSoundService$VocoderSettingsImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/viber/voip/sound/CommonAbstractSoundService$VocoderSettingsImpl;->setVocoderCtl(Lcom/viber/voip/sound/ISoundService$VocoderCtl;II)I

    move-result v0

    return v0
.end method

.method public shouldVibrate(I)Z
    .locals 8
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v7, 0x3

    const/4 v2, 0x0

    .line 992
    iget-object v0, p0, Lcom/viber/voip/sound/CommonAbstractSoundService;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v3

    .line 993
    sget-object v0, Lcom/viber/voip/sound/CommonAbstractSoundService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "vibrate ringer mode is = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v0, v4}, Lcom/viber/voip/sound/SoundFactory;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 995
    invoke-virtual {p0}, Lcom/viber/voip/sound/CommonAbstractSoundService;->getApplicationContext()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerWrapper;->getCurrentCall()Lcom/viber/voip/phone/call/k;

    move-result-object v4

    .line 996
    invoke-virtual {p0}, Lcom/viber/voip/sound/CommonAbstractSoundService;->getApplicationContext()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    const-string/jumbo v5, "phone"

    invoke-virtual {v0, v5}, Lcom/viber/voip/ViberApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 997
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 1000
    :goto_0
    if-eqz v0, :cond_0

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/viber/voip/phone/call/k;->d()Lcom/viber/voip/phone/call/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/n;->c()I

    move-result v0

    if-eq v7, v0, :cond_0

    const/4 v0, 0x2

    invoke-virtual {v4}, Lcom/viber/voip/phone/call/k;->d()Lcom/viber/voip/phone/call/n;

    move-result-object v4

    invoke-virtual {v4}, Lcom/viber/voip/phone/call/n;->c()I

    move-result v4

    if-ne v0, v4, :cond_2

    :cond_0
    move v0, v2

    .line 1019
    :goto_1
    return v0

    :cond_1
    move v0, v2

    .line 997
    goto :goto_0

    .line 1004
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-ge v0, v4, :cond_3

    .line 1005
    iget-object v0, p0, Lcom/viber/voip/sound/CommonAbstractSoundService;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->shouldVibrate(I)Z

    move-result v0

    .line 1006
    sget-object v1, Lcom/viber/voip/sound/CommonAbstractSoundService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "should vibrate = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v1, v2}, Lcom/viber/voip/sound/SoundFactory;->log(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1009
    :cond_3
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    invoke-static {}, Lcom/viber/voip/settings/j;->P()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/viber/voip/settings/j;->Q()Z

    move-result v5

    invoke-interface {v0, v4, v5}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;Z)Z

    move-result v0

    .line 1011
    sget-object v4, Lcom/viber/voip/sound/CommonAbstractSoundService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "vibrate setting = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v4, v5}, Lcom/viber/voip/sound/SoundFactory;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 1012
    packed-switch v3, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    move v0, v2

    .line 1016
    goto :goto_1

    :pswitch_1
    move v0, v1

    .line 1014
    goto :goto_1

    .line 1012
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public startAudioRecord(Z)V
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 1203
    invoke-virtual {p0}, Lcom/viber/voip/sound/CommonAbstractSoundService;->shouldKillMediaManagerOnSuspend()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/viber/voip/sound/CommonAbstractSoundService;->isRouteActive(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1204
    iget-boolean v0, p0, Lcom/viber/voip/sound/CommonAbstractSoundService;->isMicMuted:Z

    invoke-virtual {p0, v0}, Lcom/viber/voip/sound/CommonAbstractSoundService;->setMicrophoneMute(Z)V

    .line 1212
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/sound/CommonAbstractSoundService;->audioDeviceCtl:Lorg/webrtc/voiceengine/IAudioDevice;

    if-nez v0, :cond_2

    .line 1242
    :cond_1
    :goto_0
    return-void

    .line 1214
    :cond_2
    invoke-direct {p0}, Lcom/viber/voip/sound/CommonAbstractSoundService;->pauseSoundPool()V

    .line 1216
    invoke-virtual {p0}, Lcom/viber/voip/sound/CommonAbstractSoundService;->useVoiceChannelListeners()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1217
    monitor-enter p0

    .line 1218
    :try_start_0
    sget v0, Lcom/viber/voip/sound/CommonAbstractSoundService;->native_state:I

    if-ne v1, v0, :cond_3

    invoke-virtual {p0}, Lcom/viber/voip/sound/CommonAbstractSoundService;->havingValidVoiceChannel()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1219
    const/4 v0, 0x3

    sget-object v1, Lcom/viber/voip/sound/CommonAbstractSoundService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "avoiding native doublestart"

    invoke-static {v0, v1, v2}, Lcom/viber/voip/sound/SoundFactory;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 1221
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/viber/voip/sound/CommonAbstractSoundService;->resumeSound(Z)I

    .line 1222
    monitor-exit p0

    goto :goto_0

    .line 1241
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1224
    :cond_3
    const/4 v0, 0x1

    :try_start_1
    sput v0, Lcom/viber/voip/sound/CommonAbstractSoundService;->native_state:I

    .line 1225
    sget-object v1, Lcom/viber/voip/sound/CommonAbstractSoundService;->_deferredModeChangeQueue:Ljava/util/List;

    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1226
    :try_start_2
    sget-object v0, Lcom/viber/voip/sound/CommonAbstractSoundService;->_deferredModeChangeQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1227
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1228
    :try_start_3
    invoke-virtual {p0}, Lcom/viber/voip/sound/CommonAbstractSoundService;->mode_InCall()I

    move-result v0

    new-instance v1, Lcom/viber/voip/sound/CommonAbstractSoundService$2;

    invoke-direct {v1, p0, p1}, Lcom/viber/voip/sound/CommonAbstractSoundService$2;-><init>(Lcom/viber/voip/sound/CommonAbstractSoundService;Z)V

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v1, v2}, Lcom/viber/voip/sound/CommonAbstractSoundService;->setMode(ILcom/viber/voip/sound/ISoundService$ModeStateListenerIntf;I)V

    .line 1241
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1227
    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public startMediaPlayer()V
    .locals 3

    .prologue
    .line 1115
    const/4 v0, 0x3

    sget-object v1, Lcom/viber/voip/sound/CommonAbstractSoundService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "starting mediaplayer..."

    invoke-static {v0, v1, v2}, Lcom/viber/voip/sound/SoundFactory;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 1116
    invoke-virtual {p0}, Lcom/viber/voip/sound/CommonAbstractSoundService;->getMediaPlayer()Landroid/media/MediaPlayer;

    move-result-object v0

    .line 1118
    sget-object v1, Lcom/viber/voip/sound/CommonAbstractSoundService;->stream_max_volume:[I

    monitor-enter v1

    .line 1119
    :try_start_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 1120
    monitor-exit v1

    .line 1121
    return-void

    .line 1120
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public stopAllTones()V
    .locals 0

    .prologue
    .line 1412
    invoke-virtual {p0}, Lcom/viber/voip/sound/CommonAbstractSoundService;->stopTone()V

    .line 1413
    invoke-virtual {p0}, Lcom/viber/voip/sound/CommonAbstractSoundService;->stopDTMFTone()V

    .line 1414
    return-void
.end method

.method public stopAudioRecord(Z)V
    .locals 3
    .parameter

    .prologue
    .line 1263
    iget-object v0, p0, Lcom/viber/voip/sound/CommonAbstractSoundService;->audioDeviceCtl:Lorg/webrtc/voiceengine/IAudioDevice;

    if-nez v0, :cond_1

    .line 1278
    :cond_0
    :goto_0
    return-void

    .line 1264
    :cond_1
    invoke-virtual {p0}, Lcom/viber/voip/sound/CommonAbstractSoundService;->useVoiceChannelListeners()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1265
    monitor-enter p0

    .line 1268
    const/4 v0, 0x1

    :try_start_0
    sget v1, Lcom/viber/voip/sound/CommonAbstractSoundService;->native_state:I

    const v2, 0xffff

    and-int/2addr v1, v2

    if-eq v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/viber/voip/sound/CommonAbstractSoundService;->havingValidVoiceChannel()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1269
    :cond_2
    const/4 v0, 0x3

    sget-object v1, Lcom/viber/voip/sound/CommonAbstractSoundService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "stopping native VVE thread"

    invoke-static {v0, v1, v2}, Lcom/viber/voip/sound/SoundFactory;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 1270
    if-eqz p1, :cond_3

    .line 1271
    invoke-virtual {p0}, Lcom/viber/voip/sound/CommonAbstractSoundService;->shouldKillMediaManagerOnSuspend()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/sound/CommonAbstractSoundService;->suspendSound(Z)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1274
    :cond_3
    const/4 v0, 0x0

    :try_start_1
    sput v0, Lcom/viber/voip/sound/CommonAbstractSoundService;->native_state:I

    .line 1275
    invoke-virtual {p0}, Lcom/viber/voip/sound/CommonAbstractSoundService;->voiceChannelPostStopAction()V

    .line 1277
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1274
    :catchall_1
    move-exception v0

    const/4 v1, 0x0

    :try_start_2
    sput v1, Lcom/viber/voip/sound/CommonAbstractSoundService;->native_state:I

    .line 1275
    invoke-virtual {p0}, Lcom/viber/voip/sound/CommonAbstractSoundService;->voiceChannelPostStopAction()V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public stopDTMFTone()V
    .locals 1

    .prologue
    .line 1406
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/viber/voip/sound/CommonAbstractSoundService;->clearRouteFlags(I)I

    .line 1407
    invoke-static {}, Lcom/viber/voip/sound/ToneGeneratorFactory;->releaseDtmfGenerator()V

    .line 1408
    return-void
.end method

.method public stopMediaPlayer()V
    .locals 6

    .prologue
    const/4 v2, 0x3

    .line 602
    sget-object v0, Lcom/viber/voip/sound/CommonAbstractSoundService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopping mediaplayer..."

    invoke-static {v2, v0, v1}, Lcom/viber/voip/sound/SoundFactory;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 603
    sget-object v0, Lcom/viber/voip/sound/CommonAbstractSoundService;->mediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    .line 621
    :goto_0
    return-void

    .line 605
    :cond_0
    sget-object v1, Lcom/viber/voip/sound/CommonAbstractSoundService;->stream_max_volume:[I

    monitor-enter v1

    .line 606
    :try_start_0
    invoke-virtual {p0}, Lcom/viber/voip/sound/CommonAbstractSoundService;->isMediaPlayerPlaying()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 608
    :try_start_1
    sget-object v0, Lcom/viber/voip/sound/CommonAbstractSoundService;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 609
    invoke-virtual {p0}, Lcom/viber/voip/sound/CommonAbstractSoundService;->releaseMediaPlayer()V

    .line 610
    invoke-virtual {p0}, Lcom/viber/voip/sound/CommonAbstractSoundService;->getMediaPlayer()Landroid/media/MediaPlayer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 615
    const/4 v0, 0x3

    :try_start_2
    sget-object v3, Lcom/viber/voip/sound/CommonAbstractSoundService;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "resetting mediaplayer..."

    invoke-static {v0, v3, v4}, Lcom/viber/voip/sound/SoundFactory;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 616
    sget-object v0, Lcom/viber/voip/sound/CommonAbstractSoundService;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 617
    if-eqz v2, :cond_1

    sget-object v0, Lcom/viber/voip/sound/CommonAbstractSoundService;->modeChangeAtomicLock:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 618
    invoke-virtual {p0}, Lcom/viber/voip/sound/CommonAbstractSoundService;->unlockModeChange()V

    .line 620
    :cond_1
    :goto_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 612
    :catch_0
    move-exception v0

    .line 615
    const/4 v0, 0x3

    :try_start_3
    sget-object v3, Lcom/viber/voip/sound/CommonAbstractSoundService;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "resetting mediaplayer..."

    invoke-static {v0, v3, v4}, Lcom/viber/voip/sound/SoundFactory;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 616
    sget-object v0, Lcom/viber/voip/sound/CommonAbstractSoundService;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 617
    if-eqz v2, :cond_1

    sget-object v0, Lcom/viber/voip/sound/CommonAbstractSoundService;->modeChangeAtomicLock:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 618
    invoke-virtual {p0}, Lcom/viber/voip/sound/CommonAbstractSoundService;->unlockModeChange()V

    goto :goto_1

    .line 615
    :catchall_1
    move-exception v0

    const/4 v3, 0x3

    sget-object v4, Lcom/viber/voip/sound/CommonAbstractSoundService;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "resetting mediaplayer..."

    invoke-static {v3, v4, v5}, Lcom/viber/voip/sound/SoundFactory;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 616
    sget-object v3, Lcom/viber/voip/sound/CommonAbstractSoundService;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->reset()V

    .line 617
    if-eqz v2, :cond_2

    sget-object v2, Lcom/viber/voip/sound/CommonAbstractSoundService;->modeChangeAtomicLock:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 618
    invoke-virtual {p0}, Lcom/viber/voip/sound/CommonAbstractSoundService;->unlockModeChange()V

    :cond_2
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public stopRingtone(Lcom/viber/voip/sound/IRingtoneService$Ringtone;)V
    .locals 1
    .parameter

    .prologue
    .line 1462
    invoke-virtual {p0}, Lcom/viber/voip/sound/CommonAbstractSoundService;->getRingtoneService()Lcom/viber/voip/sound/IRingtoneService;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/viber/voip/sound/IRingtoneService;->stopRingtone(Lcom/viber/voip/sound/IRingtoneService$Ringtone;)V

    .line 1463
    return-void
.end method

.method public stopRingtone()Z
    .locals 1

    .prologue
    .line 1452
    invoke-virtual {p0}, Lcom/viber/voip/sound/CommonAbstractSoundService;->isRingtonePlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1453
    invoke-virtual {p0}, Lcom/viber/voip/sound/CommonAbstractSoundService;->getRingtoneService()Lcom/viber/voip/sound/IRingtoneService;

    move-result-object v0

    invoke-interface {v0}, Lcom/viber/voip/sound/IRingtoneService;->stopRingtone()Z

    .line 1454
    const/4 v0, 0x1

    .line 1457
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public stopTone()V
    .locals 0

    .prologue
    .line 1397
    invoke-static {}, Lcom/viber/voip/sound/ToneGeneratorFactory;->stopCommonTones()V

    .line 1398
    return-void
.end method

.method public stream_Dtmf()I
    .locals 1

    .prologue
    .line 1804
    const/4 v0, 0x3

    return v0
.end method

.method public stream_Notification()I
    .locals 1

    .prologue
    .line 1808
    const/4 v0, 0x5

    return v0
.end method

.method public stream_Ring()I
    .locals 1

    .prologue
    .line 1794
    const/4 v0, 0x2

    return v0
.end method

.method public stream_Tone()I
    .locals 1

    .prologue
    .line 1799
    const/4 v0, 0x0

    return v0
.end method

.method public stream_Voice()I
    .locals 1

    .prologue
    .line 1789
    const/4 v0, 0x0

    return v0
.end method

.method public syncSpeakerState()V
    .locals 1

    .prologue
    .line 2076
    iget-object v0, p0, Lcom/viber/voip/sound/CommonAbstractSoundService;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v0

    iput-boolean v0, p0, Lcom/viber/voip/sound/CommonAbstractSoundService;->isSpeakerActive:Z

    .line 2077
    return-void
.end method

.method public trackActivity(Landroid/app/Activity;)V
    .locals 1
    .parameter

    .prologue
    .line 1503
    instance-of v0, p1, Lcom/viber/voip/sound/VoiceStateListener;

    if-eqz v0, :cond_0

    .line 1504
    check-cast p1, Lcom/viber/voip/sound/VoiceStateListener;

    invoke-virtual {p0, p1}, Lcom/viber/voip/sound/CommonAbstractSoundService;->registerVoiceStateListener(Lcom/viber/voip/sound/VoiceStateListener;)V

    .line 1505
    :cond_0
    return-void
.end method

.method protected unlockModeChange()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 1291
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/viber/voip/sound/CommonAbstractSoundService;->isRouteActive(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1292
    sget-object v0, Lcom/viber/voip/sound/CommonAbstractSoundService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "unlockModeChange: failed to unlock mode change - GSM call is marked as active (will unlock later)"

    invoke-static {v3, v0, v1}, Lcom/viber/voip/sound/SoundFactory;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 1300
    :cond_0
    :goto_0
    return-void

    .line 1295
    :cond_1
    sget-object v0, Lcom/viber/voip/sound/CommonAbstractSoundService;->modeChangeAtomicLock:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1296
    sget-object v0, Lcom/viber/voip/sound/CommonAbstractSoundService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setMode() lock released by thread "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/viber/voip/sound/SoundFactory;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 1297
    sget-object v0, Lcom/viber/voip/sound/CommonAbstractSoundService;->modeChangeAtomicLock:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1299
    invoke-direct {p0}, Lcom/viber/voip/sound/CommonAbstractSoundService;->_replayModeChange()V

    goto :goto_0
.end method

.method public unregisterModeStateListener(Lcom/viber/voip/sound/ISoundService$ModeStateListenerIntf;)V
    .locals 1
    .parameter

    .prologue
    .line 1724
    iget-object v0, p0, Lcom/viber/voip/sound/CommonAbstractSoundService;->globalModeStateListeners:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1725
    return-void
.end method

.method public unregisterSpeakerStateListener(Lcom/viber/voip/sound/ISoundService$SpeakerStateListener;)V
    .locals 1
    .parameter

    .prologue
    .line 1748
    iget-object v0, p0, Lcom/viber/voip/sound/CommonAbstractSoundService;->globalSpeakerStateListeners:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1749
    return-void
.end method

.method public unregisterVoiceStateListener(Lcom/viber/voip/sound/VoiceStateListener;)V
    .locals 2
    .parameter

    .prologue
    .line 1940
    iget-object v1, p0, Lcom/viber/voip/sound/CommonAbstractSoundService;->_voiceStateListeners:Ljava/util/Set;

    monitor-enter v1

    .line 1941
    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/sound/CommonAbstractSoundService;->_voiceStateListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1942
    monitor-exit v1

    .line 1943
    return-void

    .line 1942
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unregisterVolumeChangeListener(Lcom/viber/voip/sound/ISoundService$VolumeChangeListenerIntf;)V
    .locals 1
    .parameter

    .prologue
    .line 1857
    iget-object v0, p0, Lcom/viber/voip/sound/CommonAbstractSoundService;->volumeChangeListeners:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1858
    return-void
.end method

.method public untrackActivity(Landroid/app/Activity;)V
    .locals 1
    .parameter

    .prologue
    .line 1509
    instance-of v0, p1, Lcom/viber/voip/sound/VoiceStateListener;

    if-eqz v0, :cond_0

    .line 1510
    check-cast p1, Lcom/viber/voip/sound/VoiceStateListener;

    invoke-virtual {p0, p1}, Lcom/viber/voip/sound/CommonAbstractSoundService;->unregisterVoiceStateListener(Lcom/viber/voip/sound/VoiceStateListener;)V

    .line 1511
    :cond_0
    return-void
.end method

.method public useExtraBtChecksForModeChangeWorkaround()Z
    .locals 1

    .prologue
    .line 2003
    const/4 v0, 0x1

    return v0
.end method

.method public abstract useModeLocking()Z
.end method

.method public useNativeResetOnSpeakerToggle()Z
    .locals 1

    .prologue
    .line 778
    const/4 v0, 0x0

    return v0
.end method

.method public useNativeSoundLibSpeakerControl()Z
    .locals 1

    .prologue
    .line 768
    const/4 v0, 0x0

    return v0
.end method

.method public useSpeakerResetForModeChangeWorkaround()Z
    .locals 1

    .prologue
    .line 773
    const/4 v0, 0x0

    return v0
.end method

.method public abstract useVolumeQuirks()Z
.end method

.method protected voiceChannelPostStopAction()V
    .locals 1

    .prologue
    .line 1249
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/viber/voip/sound/CommonAbstractSoundService;->isRouteActive(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1252
    :goto_0
    return-void

    .line 1250
    :cond_0
    invoke-virtual {p0}, Lcom/viber/voip/sound/CommonAbstractSoundService;->mode_Normal()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/sound/CommonAbstractSoundService;->setMode(I)V

    .line 1251
    invoke-direct {p0}, Lcom/viber/voip/sound/CommonAbstractSoundService;->resumeSoundPool()V

    goto :goto_0
.end method
