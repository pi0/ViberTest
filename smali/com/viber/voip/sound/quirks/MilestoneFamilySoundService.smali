.class public Lcom/viber/voip/sound/quirks/MilestoneFamilySoundService;
.super Lcom/viber/voip/sound/GenericSoundService;
.source "SourceFile"


# static fields
.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Lcom/viber/voip/sound/quirks/MilestoneFamilySoundService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/sound/quirks/MilestoneFamilySoundService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/viber/voip/sound/GenericSoundService;-><init>(Landroid/content/Context;)V

    .line 13
    return-void
.end method


# virtual methods
.method public mode_Dtmf()I
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    return v0
.end method

.method public mode_InCall()I
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    return v0
.end method

.method public mode_Tone()I
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    return v0
.end method

.method public stream_Dtmf()I
    .locals 1

    .prologue
    .line 44
    const/16 v0, 0x8

    return v0
.end method

.method public stream_Tone()I
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    return v0
.end method

.method public suspendNativeOnLocalHold()Z
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    return v0
.end method

.method public suspendNativeOnParallelGSM()Z
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x1

    return v0
.end method

.method public suspendNativeOnPeerHold()Z
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    return v0
.end method

.method public useNativeResetOnSpeakerToggle()Z
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x1

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
    const/4 v0, 0x0

    return v0
.end method
