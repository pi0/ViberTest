.class public Lorg/webrtc/voiceengine/AudioDeviceManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final USE_NATIVE_ADM:Z = true

.field private static _audioDevice:Lorg/webrtc/voiceengine/IAudioDevice;

.field private static _audioDeviceStub:Lorg/webrtc/voiceengine/IAudioDevice;

.field private static _dummyADMStub:Lorg/webrtc/voiceengine/IAudioDevice;

.field private static _listeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lorg/webrtc/voiceengine/IAudioDevice$AudioDeviceStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private static _monitor:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const/4 v0, 0x0

    sput-object v0, Lorg/webrtc/voiceengine/AudioDeviceManager;->_audioDevice:Lorg/webrtc/voiceengine/IAudioDevice;

    .line 11
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/webrtc/voiceengine/AudioDeviceManager;->_monitor:Ljava/lang/Object;

    .line 12
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lorg/webrtc/voiceengine/AudioDeviceManager;->_listeners:Ljava/util/Set;

    .line 14
    new-instance v0, Lorg/webrtc/voiceengine/AudioDeviceManager$1;

    invoke-direct {v0}, Lorg/webrtc/voiceengine/AudioDeviceManager$1;-><init>()V

    sput-object v0, Lorg/webrtc/voiceengine/AudioDeviceManager;->_dummyADMStub:Lorg/webrtc/voiceengine/IAudioDevice;

    .line 75
    new-instance v0, Lorg/webrtc/voiceengine/AudioDeviceManager$2;

    invoke-direct {v0}, Lorg/webrtc/voiceengine/AudioDeviceManager$2;-><init>()V

    sput-object v0, Lorg/webrtc/voiceengine/AudioDeviceManager;->_audioDeviceStub:Lorg/webrtc/voiceengine/IAudioDevice;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/Set;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lorg/webrtc/voiceengine/AudioDeviceManager;->_listeners:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lorg/webrtc/voiceengine/AudioDeviceManager;->_monitor:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200()Lorg/webrtc/voiceengine/IAudioDevice;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lorg/webrtc/voiceengine/AudioDeviceManager;->_audioDevice:Lorg/webrtc/voiceengine/IAudioDevice;

    return-object v0
.end method

.method public static getAudioDeviceCtl()Lorg/webrtc/voiceengine/IAudioDevice;
    .locals 1

    .prologue
    .line 202
    sget-object v0, Lorg/webrtc/voiceengine/AudioDeviceManager;->_dummyADMStub:Lorg/webrtc/voiceengine/IAudioDevice;

    return-object v0
.end method

.method public static getJavaAutioDeviceCtl()Lorg/webrtc/voiceengine/IAudioDevice;
    .locals 1

    .prologue
    .line 206
    sget-object v0, Lorg/webrtc/voiceengine/AudioDeviceManager;->_audioDeviceStub:Lorg/webrtc/voiceengine/IAudioDevice;

    return-object v0
.end method

.method protected static registerAudioDevice(Lorg/webrtc/voiceengine/IAudioDevice;)V
    .locals 4
    .parameter

    .prologue
    .line 210
    sget-object v1, Lorg/webrtc/voiceengine/AudioDeviceManager;->_monitor:Ljava/lang/Object;

    monitor-enter v1

    .line 211
    :try_start_0
    sput-object p0, Lorg/webrtc/voiceengine/AudioDeviceManager;->_audioDevice:Lorg/webrtc/voiceengine/IAudioDevice;

    .line 212
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 213
    sget-object v0, Lorg/webrtc/voiceengine/AudioDeviceManager;->_listeners:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 219
    :goto_0
    return-void

    .line 212
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 214
    :cond_0
    sget-object v1, Lorg/webrtc/voiceengine/AudioDeviceManager;->_listeners:Ljava/util/Set;

    monitor-enter v1

    .line 215
    :try_start_2
    sget-object v0, Lorg/webrtc/voiceengine/AudioDeviceManager;->_listeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/webrtc/voiceengine/IAudioDevice$AudioDeviceStateListener;

    .line 216
    sget-object v3, Lorg/webrtc/voiceengine/AudioDeviceManager;->_audioDevice:Lorg/webrtc/voiceengine/IAudioDevice;

    invoke-interface {v3, v0}, Lorg/webrtc/voiceengine/IAudioDevice;->registerStateListener(Lorg/webrtc/voiceengine/IAudioDevice$AudioDeviceStateListener;)V

    goto :goto_1

    .line 218
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_1
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0
.end method
