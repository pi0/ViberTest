.class public Lorg/webrtc/voiceengine/NativeADMDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final AUDIOROUTE_PLAYBACK:I = 0x1

.field static final AUDIOROUTE_PLAYBACK_AND_RECORDING:I = 0x3

.field static final AUDIOROUTE_RECORDING:I = 0x2

.field static final AUDIOROUTE_VOIP:I = 0x0

.field static final DELEGATE_FAIL:I = -0x1

.field static final DELEGATE_INTERCEPT:I = 0x1

.field static final DELEGATE_OK:I = 0x0

.field private static final PLAYBACK_THREAD_PRIORITY:I = -0x8

.field private static final RECORDER_THREAD_PRIORITY:I = -0x8

.field private static final TAG:Ljava/lang/String; = null

.field private static final USE_AUDIOROUTING_API:Z = false

.field private static final USE_PRIORITY_BOOST:Z = true

.field private static final USE_RS_VOICE_COMMUNICATION_ROUTE_WHITELIST:Z = true

.field private static recordBugDeviceBlacklist:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static voiceCommunicationRouteDeviceWhitelist:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static voiceCommunicationRouteVendorWhitelist:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private volatile _audioRoute:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 20
    const-class v0, Lorg/webrtc/voiceengine/NativeADMDelegate;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/webrtc/voiceengine/NativeADMDelegate;->TAG:Ljava/lang/String;

    .line 38
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lorg/webrtc/voiceengine/NativeADMDelegate;->recordBugDeviceBlacklist:Ljava/util/Set;

    .line 39
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lorg/webrtc/voiceengine/NativeADMDelegate;->voiceCommunicationRouteDeviceWhitelist:Ljava/util/Set;

    .line 40
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lorg/webrtc/voiceengine/NativeADMDelegate;->voiceCommunicationRouteVendorWhitelist:Ljava/util/Set;

    .line 43
    sget-object v0, Lorg/webrtc/voiceengine/NativeADMDelegate;->recordBugDeviceBlacklist:Ljava/util/Set;

    const-string/jumbo v1, "golfu"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 44
    sget-object v0, Lorg/webrtc/voiceengine/NativeADMDelegate;->recordBugDeviceBlacklist:Ljava/util/Set;

    const-string/jumbo v1, "vision"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 45
    sget-object v0, Lorg/webrtc/voiceengine/NativeADMDelegate;->recordBugDeviceBlacklist:Ljava/util/Set;

    const-string/jumbo v1, "GT-I9000"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 46
    sget-object v0, Lorg/webrtc/voiceengine/NativeADMDelegate;->recordBugDeviceBlacklist:Ljava/util/Set;

    const-string/jumbo v1, "GT-S5570"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 47
    sget-object v0, Lorg/webrtc/voiceengine/NativeADMDelegate;->recordBugDeviceBlacklist:Ljava/util/Set;

    const-string/jumbo v1, "GT-S5300"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 48
    sget-object v0, Lorg/webrtc/voiceengine/NativeADMDelegate;->recordBugDeviceBlacklist:Ljava/util/Set;

    const-string/jumbo v1, "vee3e"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 49
    sget-object v0, Lorg/webrtc/voiceengine/NativeADMDelegate;->recordBugDeviceBlacklist:Ljava/util/Set;

    const-string/jumbo v1, "jflte"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 51
    sget-object v0, Lorg/webrtc/voiceengine/NativeADMDelegate;->voiceCommunicationRouteVendorWhitelist:Ljava/util/Set;

    const-string/jumbo v1, "htc"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 53
    sget-object v0, Lorg/webrtc/voiceengine/NativeADMDelegate;->voiceCommunicationRouteVendorWhitelist:Ljava/util/Set;

    const-string/jumbo v1, "samsung"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 55
    sget-object v0, Lorg/webrtc/voiceengine/NativeADMDelegate;->voiceCommunicationRouteVendorWhitelist:Ljava/util/Set;

    const-string/jumbo v1, "sony ericsson"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 56
    sget-object v0, Lorg/webrtc/voiceengine/NativeADMDelegate;->voiceCommunicationRouteDeviceWhitelist:Ljava/util/Set;

    const-string/jumbo v1, "lt26i"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 58
    sget-object v0, Lorg/webrtc/voiceengine/NativeADMDelegate;->voiceCommunicationRouteVendorWhitelist:Ljava/util/Set;

    const-string/jumbo v1, "asus"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 59
    sget-object v0, Lorg/webrtc/voiceengine/NativeADMDelegate;->voiceCommunicationRouteDeviceWhitelist:Ljava/util/Set;

    const-string/jumbo v1, "grouper"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 60
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lorg/webrtc/voiceengine/NativeADMDelegate;->_audioRoute:I

    return-void
.end method

.method private static isPlatformAECAvailable_JBAndUpper()Z
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 284
    invoke-static {}, Landroid/media/audiofx/AcousticEchoCanceler;->isAvailable()Z

    move-result v0

    return v0
.end method

.method private static isPlatformNSAvailable_JBAndUpper()Z
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 289
    invoke-static {}, Landroid/media/audiofx/NoiseSuppressor;->isAvailable()Z

    move-result v0

    return v0
.end method

.method static isPlatformWideAECEffectAvailable()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 293
    const/16 v1, 0x10

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v1, v2, :cond_0

    .line 297
    :goto_0
    return v0

    .line 295
    :cond_0
    :try_start_0
    invoke-static {}, Lorg/webrtc/voiceengine/NativeADMDelegate;->isPlatformAECAvailable_JBAndUpper()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 296
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static isPlatformWideNSEffectAvailable()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 306
    const/16 v1, 0x10

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v1, v2, :cond_0

    .line 310
    :goto_0
    return v0

    .line 308
    :cond_0
    :try_start_0
    invoke-static {}, Lorg/webrtc/voiceengine/NativeADMDelegate;->isPlatformNSAvailable_JBAndUpper()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 309
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static isVoiceCommRouteAvailable(II)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 272
    sget-object v0, Lorg/webrtc/voiceengine/NativeADMDelegate;->voiceCommunicationRouteVendorWhitelist:Ljava/util/Set;

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/webrtc/voiceengine/NativeADMDelegate;->voiceCommunicationRouteDeviceWhitelist:Ljava/util/Set;

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method CheckDeviceVoiceCommunicationAbility(II)I
    .locals 1
    .parameter
    .parameter
    .annotation build Lorg/webrtc/videoengine/ViEOMXHelper$Native;
    .end annotation

    .prologue
    .line 302
    invoke-static {p1, p2}, Lorg/webrtc/voiceengine/NativeADMDelegate;->isVoiceCommRouteAvailable(II)I

    move-result v0

    return v0
.end method

.method GetStreamMaxVolume(I)I
    .locals 5
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 254
    const/4 v1, 0x3

    sget-object v2, Lorg/webrtc/voiceengine/NativeADMDelegate;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "GetStreamMaxVolume: #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/viber/voip/sound/SoundFactory;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 255
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v1

    invoke-static {v1}, Lcom/viber/voip/sound/SoundFactory;->getSoundService(Landroid/content/Context;)Lcom/viber/voip/sound/ISoundService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/viber/voip/sound/ISoundService;->getStreamMaxVolume(I)I

    move-result v1

    .line 256
    if-ne v0, v1, :cond_0

    .line 257
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method OnAGC()I
    .locals 3

    .prologue
    .line 210
    const/4 v0, 0x3

    sget-object v1, Lorg/webrtc/voiceengine/NativeADMDelegate;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "OnAGC"

    invoke-static {v0, v1, v2}, Lcom/viber/voip/sound/SoundFactory;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 211
    const/4 v0, -0x1

    return v0
.end method

.method OnCreate()I
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/webrtc/voiceengine/NativeADMDelegate;->OnCreate(I)I

    move-result v0

    return v0
.end method

.method OnCreate(I)I
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v1, 0x0

    .line 63
    sget-object v0, Lorg/webrtc/voiceengine/NativeADMDelegate;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "OnCreate #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v0, v2}, Lcom/viber/voip/sound/SoundFactory;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 64
    iput p1, p0, Lorg/webrtc/voiceengine/NativeADMDelegate;->_audioRoute:I

    .line 65
    iget v0, p0, Lorg/webrtc/voiceengine/NativeADMDelegate;->_audioRoute:I

    if-eq v4, v0, :cond_0

    iget v0, p0, Lorg/webrtc/voiceengine/NativeADMDelegate;->_audioRoute:I

    if-ne v5, v0, :cond_1

    :cond_0
    sget-object v0, Lorg/webrtc/voiceengine/NativeADMDelegate;->recordBugDeviceBlacklist:Ljava/util/Set;

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 66
    const/4 v0, -0x1

    .line 74
    :goto_0
    return v0

    .line 68
    :cond_1
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/sound/SoundFactory;->getSoundService(Landroid/content/Context;)Lcom/viber/voip/sound/ISoundService;

    move-result-object v0

    .line 69
    iget v2, p0, Lorg/webrtc/voiceengine/NativeADMDelegate;->_audioRoute:I

    if-eqz v2, :cond_2

    iget v2, p0, Lorg/webrtc/voiceengine/NativeADMDelegate;->_audioRoute:I

    if-ne v4, v2, :cond_3

    .line 70
    :cond_2
    check-cast v0, Lcom/viber/voip/sound/CommonAbstractSoundService;

    invoke-virtual {v0, v1}, Lcom/viber/voip/sound/CommonAbstractSoundService;->startAudioRecord(Z)V

    :cond_3
    move v0, v1

    .line 74
    goto :goto_0
.end method

.method OnDestroy()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 82
    const/4 v0, 0x3

    sget-object v1, Lorg/webrtc/voiceengine/NativeADMDelegate;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "OnDestroy"

    invoke-static {v0, v1, v2}, Lcom/viber/voip/sound/SoundFactory;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 83
    iget v0, p0, Lorg/webrtc/voiceengine/NativeADMDelegate;->_audioRoute:I

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    iget v1, p0, Lorg/webrtc/voiceengine/NativeADMDelegate;->_audioRoute:I

    if-ne v0, v1, :cond_1

    .line 84
    :cond_0
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/sound/SoundFactory;->getSoundService(Landroid/content/Context;)Lcom/viber/voip/sound/ISoundService;

    move-result-object v1

    move-object v0, v1

    .line 85
    check-cast v0, Lcom/viber/voip/sound/CommonAbstractSoundService;

    invoke-virtual {v0, v3}, Lcom/viber/voip/sound/CommonAbstractSoundService;->stopAudioRecord(Z)V

    .line 86
    check-cast v1, Lcom/viber/voip/sound/CommonAbstractSoundService;

    invoke-virtual {v1}, Lcom/viber/voip/sound/CommonAbstractSoundService;->processAudioDevStopSignalOnce()V

    .line 89
    :cond_1
    return v3
.end method

.method OnGetMicrophoneMute()I
    .locals 3

    .prologue
    .line 202
    const/4 v0, 0x3

    sget-object v1, Lorg/webrtc/voiceengine/NativeADMDelegate;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "OnGetMicrophoneMute"

    invoke-static {v0, v1, v2}, Lcom/viber/voip/sound/SoundFactory;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 203
    const/4 v0, -0x1

    return v0
.end method

.method OnGetSpeakerMute()I
    .locals 3

    .prologue
    .line 194
    const/4 v0, 0x3

    sget-object v1, Lorg/webrtc/voiceengine/NativeADMDelegate;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "OnGetSpeakerMute"

    invoke-static {v0, v1, v2}, Lcom/viber/voip/sound/SoundFactory;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 195
    const/4 v0, -0x1

    return v0
.end method

.method OnGetSpeakerVolume()I
    .locals 3

    .prologue
    .line 186
    const/4 v0, 0x3

    sget-object v1, Lorg/webrtc/voiceengine/NativeADMDelegate;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "OnGetSpeakerVolume"

    invoke-static {v0, v1, v2}, Lcom/viber/voip/sound/SoundFactory;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 187
    const/4 v0, -0x1

    return v0
.end method

.method OnInitPlayback(II)I
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 162
    const/4 v0, 0x3

    sget-object v1, Lorg/webrtc/voiceengine/NativeADMDelegate;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "OnInitPlayback: sampleRate:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", streamType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/viber/voip/sound/SoundFactory;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 163
    const/4 v0, 0x0

    return v0
.end method

.method OnInitRecording(II)I
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 100
    const/4 v0, 0x3

    sget-object v1, Lorg/webrtc/voiceengine/NativeADMDelegate;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "OnInitRecording: audioSource:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", sampleRate:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/viber/voip/sound/SoundFactory;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 101
    const/4 v0, 0x0

    return v0
.end method

.method OnProbePlayback(II)I
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 96
    const/4 v0, 0x3

    sget-object v1, Lorg/webrtc/voiceengine/NativeADMDelegate;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "OnProbePlayback: sampleRate:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", streamType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/viber/voip/sound/SoundFactory;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 97
    const/4 v0, 0x0

    return v0
.end method

.method OnProbeRecording(II)I
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 92
    const/4 v0, 0x3

    sget-object v1, Lorg/webrtc/voiceengine/NativeADMDelegate;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "OnProbeRecording: audioSource:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", sampleRate:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/viber/voip/sound/SoundFactory;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 93
    const/4 v0, 0x0

    return v0
.end method

.method OnSetAGC(Z)I
    .locals 3
    .parameter

    .prologue
    .line 206
    const/4 v0, 0x3

    sget-object v1, Lorg/webrtc/voiceengine/NativeADMDelegate;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "OnSetAGC"

    invoke-static {v0, v1, v2}, Lcom/viber/voip/sound/SoundFactory;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 207
    const/4 v0, 0x0

    return v0
.end method

.method OnSetLoudspeakerState(Z)I
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x3

    .line 214
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/sound/SoundFactory;->getSoundService(Landroid/content/Context;)Lcom/viber/voip/sound/ISoundService;

    move-result-object v0

    .line 215
    invoke-interface {v0}, Lcom/viber/voip/sound/ISoundService;->getPlatformAudioManager()Landroid/media/AudioManager;

    move-result-object v1

    .line 216
    invoke-interface {v0}, Lcom/viber/voip/sound/ISoundService;->getBluetoothCtl()Lcom/viber/voip/sound/bluetooth/BTControl;

    move-result-object v2

    .line 218
    sget-object v3, Lorg/webrtc/voiceengine/NativeADMDelegate;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "OnSetLoudspeakerState: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v3, v4}, Lcom/viber/voip/sound/SoundFactory;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 219
    iget v3, p0, Lorg/webrtc/voiceengine/NativeADMDelegate;->_audioRoute:I

    if-eqz v3, :cond_1

    invoke-interface {v0}, Lcom/viber/voip/sound/ISoundService;->isHeadsetPluggedIn()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 251
    :cond_0
    :goto_0
    return v7

    .line 223
    :cond_1
    iget v3, p0, Lorg/webrtc/voiceengine/NativeADMDelegate;->_audioRoute:I

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Lcom/viber/voip/sound/bluetooth/BTControl;->isHeadsetConnected()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 226
    if-eqz p1, :cond_2

    .line 227
    sget-object v0, Lorg/webrtc/voiceengine/NativeADMDelegate;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "looks like we\'re playing ptt, and bt or headset is connected, so no speakerphone"

    invoke-static {v6, v0, v3}, Lcom/viber/voip/sound/SoundFactory;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 228
    invoke-virtual {v2}, Lcom/viber/voip/sound/bluetooth/BTControl;->enableBluetoothRoute()V

    .line 229
    sget v0, Lcom/viber/voip/sound/ISoundService;->MODE_FOR_BLUETOOTH:I

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->setMode(I)V

    goto :goto_0

    .line 231
    :cond_2
    sget-object v0, Lorg/webrtc/voiceengine/NativeADMDelegate;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "looks like we\'re stopped playing ptt, putting everything bt related back (not touching speakerphone)"

    invoke-static {v6, v0, v3}, Lcom/viber/voip/sound/SoundFactory;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 232
    invoke-virtual {v1, v7}, Landroid/media/AudioManager;->setMode(I)V

    .line 233
    invoke-virtual {v2}, Lcom/viber/voip/sound/bluetooth/BTControl;->disableBluetoothRoute()V

    .line 234
    invoke-virtual {v2}, Lcom/viber/voip/sound/bluetooth/BTControl;->stopBluetooth()V

    goto :goto_0

    .line 237
    :cond_3
    invoke-virtual {v1}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v3

    if-eq v3, p1, :cond_0

    .line 238
    invoke-static {}, Lcom/viber/voip/sound/bluetooth/BTControl;->isAvailable()Z

    move-result v3

    if-eqz v3, :cond_4

    if-eqz p1, :cond_4

    .line 239
    invoke-virtual {v2}, Lcom/viber/voip/sound/bluetooth/BTControl;->disableBluetoothRoute()V

    .line 242
    :cond_4
    invoke-virtual {v1, p1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 243
    invoke-interface {v0}, Lcom/viber/voip/sound/ISoundService;->syncSpeakerState()V

    .line 244
    sget-object v0, Lorg/webrtc/voiceengine/NativeADMDelegate;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setting speaker state to: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v0, v1}, Lcom/viber/voip/sound/SoundFactory;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 246
    invoke-static {}, Lcom/viber/voip/sound/bluetooth/BTControl;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 247
    invoke-virtual {v2}, Lcom/viber/voip/sound/bluetooth/BTControl;->enableBluetoothRoute()V

    goto :goto_0
.end method

.method OnSetMicrophoneMute(Z)I
    .locals 3
    .parameter

    .prologue
    .line 198
    const/4 v0, 0x3

    sget-object v1, Lorg/webrtc/voiceengine/NativeADMDelegate;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "OnSetMicrophoneMute"

    invoke-static {v0, v1, v2}, Lcom/viber/voip/sound/SoundFactory;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 199
    const/4 v0, 0x0

    return v0
.end method

.method OnSetSpeakerMute(Z)I
    .locals 3
    .parameter

    .prologue
    .line 190
    const/4 v0, 0x3

    sget-object v1, Lorg/webrtc/voiceengine/NativeADMDelegate;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "OnSetSpeakerMute"

    invoke-static {v0, v1, v2}, Lcom/viber/voip/sound/SoundFactory;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 191
    const/4 v0, 0x0

    return v0
.end method

.method OnSetSpeakerVolume(I)I
    .locals 3
    .parameter

    .prologue
    .line 182
    const/4 v0, 0x3

    sget-object v1, Lorg/webrtc/voiceengine/NativeADMDelegate;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "OnSetSpeakerVolume"

    invoke-static {v0, v1, v2}, Lcom/viber/voip/sound/SoundFactory;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 183
    const/4 v0, 0x0

    return v0
.end method

.method OnStartPlayback()I
    .locals 3

    .prologue
    .line 166
    const/4 v0, 0x3

    sget-object v1, Lorg/webrtc/voiceengine/NativeADMDelegate;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "OnStartPlayback"

    invoke-static {v0, v1, v2}, Lcom/viber/voip/sound/SoundFactory;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 168
    sget-boolean v0, Lcom/viber/voip/sound/SoundServiceCommonConfig$GenericConfig;->CTL_USE_MEDIA_THREAD_PRIORITY:Z

    if-eqz v0, :cond_0

    .line 169
    const/4 v0, -0x8

    invoke-virtual {p0, v0}, Lorg/webrtc/voiceengine/NativeADMDelegate;->setCurrentThreadPriority(I)V

    .line 171
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method OnStartRecording()I
    .locals 3

    .prologue
    .line 112
    const/4 v0, 0x3

    sget-object v1, Lorg/webrtc/voiceengine/NativeADMDelegate;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "OnStartRecording"

    invoke-static {v0, v1, v2}, Lcom/viber/voip/sound/SoundFactory;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 114
    sget-boolean v0, Lcom/viber/voip/sound/SoundServiceCommonConfig$GenericConfig;->CTL_USE_MEDIA_THREAD_PRIORITY:Z

    if-eqz v0, :cond_0

    .line 115
    const/4 v0, -0x8

    invoke-virtual {p0, v0}, Lorg/webrtc/voiceengine/NativeADMDelegate;->setCurrentThreadPriority(I)V

    .line 122
    :cond_0
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/sound/SoundFactory;->getSoundService(Landroid/content/Context;)Lcom/viber/voip/sound/ISoundService;

    move-result-object v0

    .line 123
    invoke-interface {v0}, Lcom/viber/voip/sound/ISoundService;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lorg/webrtc/voiceengine/NativeADMDelegate$1;

    invoke-direct {v2, p0, v0}, Lorg/webrtc/voiceengine/NativeADMDelegate$1;-><init>(Lorg/webrtc/voiceengine/NativeADMDelegate;Lcom/viber/voip/sound/ISoundService;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 132
    const/4 v0, 0x0

    return v0
.end method

.method OnStopPlayback()I
    .locals 3

    .prologue
    .line 174
    const/4 v0, 0x3

    sget-object v1, Lorg/webrtc/voiceengine/NativeADMDelegate;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "OnStopPlayback"

    invoke-static {v0, v1, v2}, Lcom/viber/voip/sound/SoundFactory;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 176
    sget-boolean v0, Lcom/viber/voip/sound/SoundServiceCommonConfig$GenericConfig;->CTL_USE_MEDIA_THREAD_PRIORITY:Z

    if-eqz v0, :cond_0

    .line 177
    const/16 v0, -0x13

    invoke-virtual {p0, v0}, Lorg/webrtc/voiceengine/NativeADMDelegate;->setCurrentThreadPriority(I)V

    .line 179
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method OnStopRecording()I
    .locals 3

    .prologue
    .line 136
    const/4 v0, 0x3

    sget-object v1, Lorg/webrtc/voiceengine/NativeADMDelegate;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "OnStopRecording"

    invoke-static {v0, v1, v2}, Lcom/viber/voip/sound/SoundFactory;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 138
    sget-boolean v0, Lcom/viber/voip/sound/SoundServiceCommonConfig$GenericConfig;->CTL_USE_MEDIA_THREAD_PRIORITY:Z

    if-eqz v0, :cond_0

    .line 139
    const/16 v0, -0x13

    invoke-virtual {p0, v0}, Lorg/webrtc/voiceengine/NativeADMDelegate;->setCurrentThreadPriority(I)V

    .line 146
    :cond_0
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/sound/SoundFactory;->getSoundService(Landroid/content/Context;)Lcom/viber/voip/sound/ISoundService;

    move-result-object v0

    .line 147
    invoke-interface {v0}, Lcom/viber/voip/sound/ISoundService;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lorg/webrtc/voiceengine/NativeADMDelegate$2;

    invoke-direct {v2, p0, v0}, Lorg/webrtc/voiceengine/NativeADMDelegate$2;-><init>(Lorg/webrtc/voiceengine/NativeADMDelegate;Lcom/viber/voip/sound/ISoundService;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 158
    const/4 v0, 0x0

    return v0
.end method

.method PlaybackWarning(II)I
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 264
    const/4 v0, 0x3

    sget-object v1, Lorg/webrtc/voiceengine/NativeADMDelegate;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "PlaybackWarning"

    invoke-static {v0, v1, v2}, Lcom/viber/voip/sound/SoundFactory;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 265
    const/4 v0, 0x0

    return v0
.end method

.method RecordWarning(II)I
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 260
    const/4 v0, 0x3

    sget-object v1, Lorg/webrtc/voiceengine/NativeADMDelegate;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "RecordWarning"

    invoke-static {v0, v1, v2}, Lcom/viber/voip/sound/SoundFactory;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 261
    const/4 v0, 0x0

    return v0
.end method

.method setCurrentThreadPriority(I)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x3

    .line 105
    :try_start_0
    invoke-static {p1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 106
    const/4 v0, 0x3

    sget-object v1, Lorg/webrtc/voiceengine/NativeADMDelegate;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "thread "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " priority is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " now"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/viber/voip/sound/SoundFactory;->log(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    :goto_0
    return-void

    .line 107
    :catch_0
    move-exception v0

    .line 108
    sget-object v1, Lorg/webrtc/voiceengine/NativeADMDelegate;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "thread "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " priority failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v1, v0}, Lcom/viber/voip/sound/SoundFactory;->log(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
