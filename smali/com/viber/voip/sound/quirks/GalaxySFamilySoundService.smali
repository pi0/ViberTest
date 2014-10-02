.class public Lcom/viber/voip/sound/quirks/GalaxySFamilySoundService;
.super Lcom/viber/voip/sound/CommonAbstractSoundService;
.source "SourceFile"


# static fields
.field private static final enableVoiceChannelListenersUsage:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 135
    invoke-static {}, Lcom/viber/voip/sound/quirks/GalaxySFamilySoundService;->isVoiceChannelStateReportingAccessible()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/viber/voip/sound/quirks/GalaxySFamilySoundService;->enableVoiceChannelListenersUsage:Z

    .line 136
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/viber/voip/sound/CommonAbstractSoundService;-><init>(Landroid/content/Context;)V

    .line 14
    return-void
.end method


# virtual methods
.method protected forceSpeakerphoneOn(Z)V
    .locals 3
    .parameter

    .prologue
    .line 39
    const/4 v0, 0x3

    sget-object v1, Lcom/viber/voip/sound/quirks/GalaxySFamilySoundService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "old SGS hack, updating mode for correct speaker control"

    invoke-static {v0, v1, v2}, Lcom/viber/voip/sound/SoundFactory;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 40
    if-eqz p1, :cond_0

    .line 41
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/viber/voip/sound/quirks/GalaxySFamilySoundService;->setMode(I)V

    .line 43
    :cond_0
    invoke-super {p0, p1}, Lcom/viber/voip/sound/CommonAbstractSoundService;->forceSpeakerphoneOn(Z)V

    .line 45
    if-nez p1, :cond_1

    .line 46
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/viber/voip/sound/quirks/GalaxySFamilySoundService;->setMode(I)V

    .line 47
    :cond_1
    return-void
.end method

.method public getThreadPriority()I
    .locals 1

    .prologue
    .line 109
    const/4 v0, -0x8

    return v0
.end method

.method public isSpeakerphoneAllowed()Z
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x1

    return v0
.end method

.method public mode_InCall()I
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x2

    return v0
.end method

.method public mode_Ringtone()I
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x0

    return v0
.end method

.method public mode_Tone()I
    .locals 1

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/viber/voip/sound/quirks/GalaxySFamilySoundService;->mode_InCall()I

    move-result v0

    return v0
.end method

.method public shouldKillMediaManagerOnSuspend()Z
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x1

    return v0
.end method

.method public shouldUseSpeakers(Z)Z
    .locals 3
    .parameter

    .prologue
    .line 33
    const/4 v0, 0x3

    sget-object v1, Lcom/viber/voip/sound/quirks/GalaxySFamilySoundService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "old SGS hack, preventing native speaker switch"

    invoke-static {v0, v1, v2}, Lcom/viber/voip/sound/SoundFactory;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 34
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public stream_Voice()I
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x0

    return v0
.end method

.method public suspendNativeOnLocalHold()Z
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x1

    return v0
.end method

.method public suspendNativeOnParallelGSM()Z
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x1

    return v0
.end method

.method public suspendNativeOnPeerHold()Z
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    return v0
.end method

.method public useModeLocking()Z
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x1

    return v0
.end method

.method public useModeSwitchForSpeakerToggleWorkaround()Z
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x1

    return v0
.end method

.method public useNativeMuteControl()Z
    .locals 1

    .prologue
    .line 124
    const/4 v0, 0x1

    return v0
.end method

.method public useNativeResetOnSpeakerToggle()Z
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x1

    return v0
.end method

.method public useSpeakerResetForModeChangeWorkaround()Z
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    return v0
.end method

.method public useThreadPriority()Z
    .locals 1

    .prologue
    .line 104
    sget-boolean v0, Lcom/viber/voip/sound/SoundServiceCommonConfig$GalaxySConfig;->CTL_USE_MEDIA_THREAD_PRIORITY:Z

    return v0
.end method

.method public useVoiceChannelListeners()Z
    .locals 1

    .prologue
    .line 129
    sget-boolean v0, Lcom/viber/voip/sound/quirks/GalaxySFamilySoundService;->enableVoiceChannelListenersUsage:Z

    return v0
.end method

.method public useVolumeBoostForTonesInSpeakerMode()Z
    .locals 1

    .prologue
    .line 114
    const/4 v0, 0x0

    return v0
.end method

.method public useVolumeQuirks()Z
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x1

    return v0
.end method
