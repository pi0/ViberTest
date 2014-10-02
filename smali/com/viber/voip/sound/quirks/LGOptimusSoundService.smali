.class public Lcom/viber/voip/sound/quirks/LGOptimusSoundService;
.super Lcom/viber/voip/sound/GenericSoundService;
.source "SourceFile"


# static fields
.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Lcom/viber/voip/sound/quirks/LGOptimusSoundService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/sound/quirks/LGOptimusSoundService;->TAG:Ljava/lang/String;

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
.method public mode_InCall()I
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x2

    return v0
.end method

.method public mode_Tone()I
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x2

    return v0
.end method

.method public useModeSwitchForSpeakerToggleWorkaround()Z
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x1

    return v0
.end method

.method public useNativeResetOnSpeakerToggle()Z
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    return v0
.end method

.method public useVoiceChannelListeners()Z
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    return v0
.end method

.method public useVolumeBoostForTonesInSpeakerMode()Z
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    return v0
.end method
