.class public abstract Lcom/viber/voip/sound/SoundServiceCommonConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final AGGRESSIVE_AUDIOROUTE_RECOVERY:Z = false

.field static final CONTROL_MASTER_ITSELF:Z = true

.field static final CTL_BLUETOOTH_VIA_NATIVE:Z = false

.field public static final CTL_BT_CAPTURE_DEVICE_ON_CONNECT:Z = true

.field public static final CTL_BT_REJECT_MODE_CHANGE_WHILE_PAIRED:Z = false

.field public static final CTL_BT_REJECT_MODE_CHANGE_WHILE_VOICE_ACTIVE:Z = false

.field public static final CTL_GIPS:Z = true

.field public static final CTL_GIPS_NATIVE_LIKE:Z = true

.field static final CTL_MODE_REJECT_ACTIVE_STATE_POLICY:Z = true

.field public static final CTL_NATIVE_ON_GALAXY_S:Z = false

.field static final CTL_OVERRIDE_ALWAYS_USE_HIGHER_PRIORITY:Z = true

.field static final CTL_SETMODE_USE_LOCKING:Z = true

.field static final CTL_SOUNDSERVICE_OWNS_HANDLER:Z = false

.field static final CTL_SOUNDSERVICE_USE_SINGLETHREAD_WRAP:Z = false

.field static final CTL_SPEAKER_IF_HEADSET_PLUGGED:Z = true

.field public static final CTL_SPEAKER_REJECT_ACTIVE_STATE_POLICY:Z = true

.field static final CTL_SPEAKER_VIA_NATIVE:Z = false

.field static final CTL_SW_VOLUME_NATIVE:Z = true

.field static final CTL_SYSTEMPROPERTIES_HACK:Z = false

.field public static final CTL_TSM:Z = true

.field public static final CTL_USE_EXTRA_BT_CHECKS_FOR_MODE_CHANGE:Z = true

.field public static final CTL_USE_HTC_EXPERIMENTAL_HW_AEC_QUIRKS:Z = true

.field public static final CTL_USE_INCREDIBLE_RELATED_EXTRA_VOLUME_SYNC:Z = true

.field static final CTL_VOICECHANNEL_VOLUME_ONLY:Z = true

.field static final DEFERRED_VOLUME_CHECK_MAX_TRIES_COUNT:I = 0x5

.field static final DEFERRED_VOLUME_REPOST_DELAY:I = 0x1f4

.field public static final TAG:Ljava/lang/String; = null

.field public static final USE_AUDIOROUTE_API:Z = false

.field public static final USE_MEDIA_TONES:Z = true

.field public static final USE_POOLED_DTMF_TONES:Z = true

.field public static final USE_SEPARATE_STREAMS:Z = false

.field public static final USE_VOCODER_WATCHDOG:Z = true

.field static final USE_VOLUME_RESTORE:Z

.field public static final WEAK_DEVICE:Z

.field static final hack_PropertyBag:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final weak_devices_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final MIN_VOLUME_STEP:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 20
    const-class v0, Lcom/viber/voip/sound/SoundServiceCommonConfig;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/sound/SoundServiceCommonConfig;->TAG:Ljava/lang/String;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/viber/voip/sound/SoundServiceCommonConfig;->hack_PropertyBag:Ljava/util/List;

    .line 86
    sget-object v0, Lcom/viber/voip/sound/SoundServiceCommonConfig;->hack_PropertyBag:Ljava/util/List;

    new-instance v1, Landroid/util/Pair;

    const-string/jumbo v2, "media.a1026.enableA1026"

    const-string/jumbo v3, "1"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    sget-object v0, Lcom/viber/voip/sound/SoundServiceCommonConfig;->hack_PropertyBag:Ljava/util/List;

    new-instance v1, Landroid/util/Pair;

    const-string/jumbo v2, "media.a1026.nsForVoiceRec"

    const-string/jumbo v3, "0"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    sget-object v0, Lcom/viber/voip/sound/SoundServiceCommonConfig;->hack_PropertyBag:Ljava/util/List;

    new-instance v1, Landroid/util/Pair;

    const-string/jumbo v2, "htc.audio.alt.enable"

    const-string/jumbo v3, "1"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    sget-object v0, Lcom/viber/voip/sound/SoundServiceCommonConfig;->hack_PropertyBag:Ljava/util/List;

    new-instance v1, Landroid/util/Pair;

    const-string/jumbo v2, "htc.audio.hac.enable"

    const-string/jumbo v3, "1"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/viber/voip/sound/SoundServiceCommonConfig;->weak_devices_list:Ljava/util/List;

    .line 92
    sget-object v0, Lcom/viber/voip/sound/SoundServiceCommonConfig;->weak_devices_list:Ljava/util/List;

    const-string/jumbo v1, "buzz"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    sget-object v0, Lcom/viber/voip/sound/SoundServiceCommonConfig;->weak_devices_list:Ljava/util/List;

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/viber/voip/sound/SoundServiceCommonConfig;->WEAK_DEVICE:Z

    .line 95
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 211
    const/4 v0, 0x0

    iput v0, p0, Lcom/viber/voip/sound/SoundServiceCommonConfig;->MIN_VOLUME_STEP:I

    return-void
.end method
