.class public interface abstract Lcom/viber/voip/sound/SoundServiceCommonConfig$GenericConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CTL_MUTE_VIA_NATIVE:Z = true

.field public static final CTL_REJECT_SPEAKER_STATE_CHANGE_WITH_HEADSET:Z = false

.field public static final CTL_RESET_VOICHANNEL_ON_CALL_START:Z = false

.field public static final CTL_RESTORE_SPEAKER_STATE_AFTER_MODE_RESET:Z = false

.field public static final CTL_SPEAKER_WITH_NATIVE_RESET:Z = false

#the value of this static final field might be set in the static constructor
.field public static final CTL_USE_MEDIA_THREAD_PRIORITY:Z = false

#the value of this static final field might be set in the static constructor
.field public static final CTL_USE_UI_THREAD_PRIORITY:Z = false

.field public static final CTL_USE_VOLUME_BOOST:Z = false

.field public static final CTL_VOLUME_BOOST_FACTOR:F = 0.0f

.field public static final CTL_VOLUME_BOOST_FOR_TONES_WHEN_SPEAKER_ACTIVE:Z = true

.field public static final KILL_NATIVE_ON_SUSPEND:Z = false

.field public static final MEDIA_THREAD_PRIORITY:I = -0x8

.field public static final RESET_AUDIORECORDER_ON_SPEAKER_EVENT:Z = false

.field public static final RESET_AUDIOTRACK_ON_SPEAKER_EVENT:Z = false

.field public static final SPEAKERPHONE_ALLOWED:Z = true

.field public static final SUSPEND_NATIVE_ON_LOCAL_HOLD:Z = true

.field public static final SUSPEND_NATIVE_ON_PARALLEL_GSM:Z = true

.field public static final SUSPEND_NATIVE_ON_PEER_HOLD:Z = true

.field public static final SYNC_RECORDING_TO_VOICECHANNEL_STATE:Z = false

.field public static final UI_THREAD_PRIORITY:I = -0x13

.field public static final USE_DEFERRED_VOLUME_RESTORE_IN_CALL_MODE:Z = false

.field public static final USE_MODE_SWITCH_FOR_SPEAKER_TOGGLE_WORKAROUND:Z = false

.field public static final USE_NATIVE_PASSTHROUGH_VOLUME_REGULATOR:Z = false

.field public static final USE_VOLUME_LOCKING:Z = true

.field public static final USE_VOLUME_QUIRKS:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 115
    sget-boolean v0, Lcom/viber/voip/sound/SoundServiceCommonConfig;->WEAK_DEVICE:Z

    or-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/viber/voip/sound/SoundServiceCommonConfig$GenericConfig;->CTL_USE_MEDIA_THREAD_PRIORITY:Z

    .line 116
    sget-boolean v0, Lcom/viber/voip/sound/SoundServiceCommonConfig;->WEAK_DEVICE:Z

    or-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/viber/voip/sound/SoundServiceCommonConfig$GenericConfig;->CTL_USE_UI_THREAD_PRIORITY:Z

    return-void
.end method
