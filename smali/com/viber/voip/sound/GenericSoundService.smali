.class public Lcom/viber/voip/sound/GenericSoundService;
.super Lcom/viber/voip/sound/CommonAbstractSoundService;
.source "SourceFile"


# static fields
.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 6
    const-class v0, Lcom/viber/voip/sound/GenericSoundService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/sound/GenericSoundService;->TAG:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 9
    invoke-direct {p0, p1}, Lcom/viber/voip/sound/CommonAbstractSoundService;-><init>(Landroid/content/Context;)V

    .line 10
    return-void
.end method


# virtual methods
.method public getThreadPriority()I
    .locals 1

    .prologue
    .line 59
    const/4 v0, -0x8

    return v0
.end method

.method public isSpeakerphoneAllowed()Z
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x1

    return v0
.end method

.method public shouldKillMediaManagerOnSuspend()Z
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    return v0
.end method

.method public suspendNativeOnLocalHold()Z
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x1

    return v0
.end method

.method public suspendNativeOnParallelGSM()Z
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x1

    return v0
.end method

.method public suspendNativeOnPeerHold()Z
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x1

    return v0
.end method

.method public useModeLocking()Z
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x1

    return v0
.end method

.method public useModeSwitchForSpeakerToggleWorkaround()Z
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    return v0
.end method

.method public useNativeMuteControl()Z
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x1

    return v0
.end method

.method public useThreadPriority()Z
    .locals 1

    .prologue
    .line 54
    sget-boolean v0, Lcom/viber/voip/sound/SoundServiceCommonConfig$GenericConfig;->CTL_USE_MEDIA_THREAD_PRIORITY:Z

    return v0
.end method

.method public useVoiceChannelListeners()Z
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    return v0
.end method

.method public useVolumeBoostForTonesInSpeakerMode()Z
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x1

    return v0
.end method

.method public useVolumeQuirks()Z
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x1

    return v0
.end method
