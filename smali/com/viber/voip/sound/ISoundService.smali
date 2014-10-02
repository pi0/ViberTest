.class public interface abstract Lcom/viber/voip/sound/ISoundService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/jni/PhoneControllerDelegate;
.implements Lcom/viber/jni/dialer/DialerControllerDelegate$DialerHoldState;
.implements Lcom/viber/jni/dialer/DialerControllerDelegate$DialerLocalCallState;
.implements Lcom/viber/jni/dialer/DialerControllerDelegate$DialerPhoneState;
.implements Lcom/viber/voip/sound/bluetooth/BTControl$IBluetoothDeviceListener;


# static fields
.field public static final CHANNEL_TAG_DTMF:Ljava/lang/String; = "-dtmf"

.field public static final CHANNEL_TAG_INCALL:Ljava/lang/String; = "-incall"

.field public static final CHANNEL_TAG_RINGER:Ljava/lang/String; = "-ringer"

.field public static final CHANNEL_TAG_TONE:Ljava/lang/String; = "-tone"

.field public static final MAX_STREAMS_NUM:I = 0x9

.field public static final MODE_CURRENT:I = -0x1

#the value of this static final field might be set in the static constructor
.field public static final MODE_FOR_BLUETOOTH:I = 0x0

.field public static final MODE_INVALID:I = -0x2

.field public static final MODE_IN_CALL:I = 0x2

#the value of this static final field might be set in the static constructor
.field public static final MODE_IN_COMMUNICATION:I = 0x0

.field public static final MODE_NORMAL:I = 0x0

.field public static final MODE_RINGTONE:I = 0x1

.field public static final RINGER_MODE_NORMAL:I = 0x2

.field public static final RINGER_MODE_SILENT:I = 0x0

.field public static final RINGER_MODE_VIBRATE:I = 0x1

.field public static final SETMODE_FORCED:I = 0x2

.field public static final SETMODE_NODEFER:I = 0x1

.field public static final SETMODE_NORMAL:I = 0x0

.field public static final STREAM_ALARM:I = 0x4

.field public static final STREAM_DTMF:I = 0x8

.field public static final STREAM_MUSIC:I = 0x3

.field public static final STREAM_NOTIFICATION:I = 0x5

.field public static final STREAM_RING:I = 0x2

.field public static final STREAM_SYSTEM:I = 0x1

.field public static final STREAM_VOICE_CALL:I = 0x0

.field public static final USE_DEFAULT_STREAM_TYPE:I = -0x80000000

.field public static final VIBRATE_TYPE_NOTIFICATION:I = 0x1

.field public static final VIBRATE_TYPE_RINGER:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v2, 0xb

    const/4 v1, 0x3

    .line 32
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v2, :cond_0

    move v0, v1

    :goto_0
    sput v0, Lcom/viber/voip/sound/ISoundService;->MODE_IN_COMMUNICATION:I

    .line 34
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v2, :cond_1

    :goto_1
    sput v1, Lcom/viber/voip/sound/ISoundService;->MODE_FOR_BLUETOOTH:I

    return-void

    .line 32
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 34
    :cond_1
    const/4 v1, 0x2

    goto :goto_1
.end method


# virtual methods
.method public abstract getApplicationContext()Lcom/viber/voip/ViberApplication;
.end method

.method public abstract getAudioCtl(III)I
.end method

.method public abstract getAudioSettings(Lcom/viber/voip/sound/ISoundService$AudioModeCtl;)Lcom/viber/voip/sound/ISoundService$IAudioSettings;
.end method

.method public abstract getBluetoothCtl()Lcom/viber/voip/sound/bluetooth/BTControl;
.end method

.method public abstract getContext()Landroid/content/Context;
.end method

.method public abstract getHandler()Landroid/os/Handler;
.end method

.method public abstract getMediaPlayer()Landroid/media/MediaPlayer;
.end method

.method public abstract getMode()I
.end method

.method public abstract getPlatformAudioManager()Landroid/media/AudioManager;
.end method

.method public abstract getRingerMode()I
.end method

.method public abstract getRingtone(I)Lcom/viber/voip/sound/IRingtoneService$Ringtone;
.end method

.method public abstract getRingtone(IZZ)Lcom/viber/voip/sound/IRingtoneService$Ringtone;
.end method

.method public abstract getRingtone(Landroid/net/Uri;)Lcom/viber/voip/sound/IRingtoneService$Ringtone;
.end method

.method public abstract getRingtone(Landroid/net/Uri;Z)Lcom/viber/voip/sound/IRingtoneService$Ringtone;
.end method

.method public abstract getRingtone(Landroid/net/Uri;ZZ)Lcom/viber/voip/sound/IRingtoneService$Ringtone;
.end method

.method public abstract getRingtoneService()Lcom/viber/voip/sound/IRingtoneService;
.end method

.method public abstract getStreamMaxVolume(I)I
.end method

.method public abstract getStreamVolume(I)I
.end method

.method public abstract getThreadPriority()I
.end method

.method public abstract getVibratorService()Lcom/viber/voip/sound/IVibratorService;
.end method

.method public abstract getVocoderCtl(Lcom/viber/voip/sound/ISoundService$VocoderCtl;II)I
.end method

.method public abstract getVocoderSettings()Lcom/viber/voip/sound/ISoundService$IVocoderSettings;
.end method

.method public abstract getVolumeBoostLevel()F
.end method

.method public abstract getVolumeBoostMaxLevel()F
.end method

.method public abstract isBluetoothScoOn()Z
.end method

.method public abstract isHeadsetPluggedIn()Z
.end method

.method public abstract isMediaPlayerPlaying()Z
.end method

.method public abstract isMicrophoneMute()Z
.end method

.method public abstract isOnHold()Z
.end method

.method public abstract isPeerOnHold()Z
.end method

.method public abstract isRingtonePlaying()Z
.end method

.method public abstract isRouteActive(I)Z
.end method

.method public abstract isSpeakerphoneAllowed()Z
.end method

.method public abstract isSpeakerphoneOn()Z
.end method

.method public abstract loadAudioResource(I)V
.end method

.method public abstract loadSample(II)V
.end method

.method public abstract loadSamples([I)V
.end method

.method public abstract mode_Dtmf()I
.end method

.method public abstract mode_InCall()I
.end method

.method public abstract mode_Mic_InCall()I
.end method

.method public abstract mode_Normal()I
.end method

.method public abstract mode_Ringtone()I
.end method

.method public abstract mode_Tone()I
.end method

.method public abstract onHeadsetPlug()V
.end method

.method public abstract onHeadsetUnplug()V
.end method

.method public abstract playDTMFTone(II)V
.end method

.method public abstract playMessageNotification(Lcom/viber/voip/sound/IRingtoneService$Ringtone;)V
.end method

.method public abstract playRingtone(Lcom/viber/voip/sound/IRingtoneService$Ringtone;)V
.end method

.method public abstract playSample(IFFIIF)V
.end method

.method public abstract playTone(I)V
.end method

.method public abstract playTone(Lcom/viber/voip/sound/ToneGeneratorFactory$ToneType;)V
.end method

.method public abstract registerModeStateListener(Lcom/viber/voip/sound/ISoundService$ModeStateListenerIntf;)V
.end method

.method public abstract registerSpeakerStateListener(Lcom/viber/voip/sound/ISoundService$SpeakerStateListener;)V
.end method

.method public abstract registerVoiceStateListener(Lcom/viber/voip/sound/VoiceStateListener;)V
.end method

.method public abstract rejectSpeakerActiveState()Z
.end method

.method public abstract rejectSpeakerStateChangeWithHeadset()Z
.end method

.method public abstract sendDTMFTone(I)V
.end method

.method public abstract setAudioCtl(III)I
.end method

.method public abstract setBluetoothScoOn(Z)V
.end method

.method public abstract setMicrophoneMute(Z)V
.end method

.method public abstract setMode(I)V
.end method

.method public abstract setMode(ILcom/viber/voip/sound/ISoundService$ModeStateListenerIntf;)V
.end method

.method public abstract setMode(ILcom/viber/voip/sound/ISoundService$ModeStateListenerIntf;I)V
.end method

.method public abstract setModeWithPriorityLock(I)V
.end method

.method public abstract setSpeakerphoneOn(Z)V
.end method

.method public abstract setVocoderCtl(Lcom/viber/voip/sound/ISoundService$VocoderCtl;II)I
.end method

.method public abstract setVolumeBoostLevel(F)Z
.end method

.method public abstract shouldKillMediaManagerOnSuspend()Z
.end method

.method public abstract shouldVibrate(I)Z
.end method

.method public abstract startMediaPlayer()V
.end method

.method public abstract stopAllTones()V
.end method

.method public abstract stopDTMFTone()V
.end method

.method public abstract stopMediaPlayer()V
.end method

.method public abstract stopRingtone(Lcom/viber/voip/sound/IRingtoneService$Ringtone;)V
.end method

.method public abstract stopRingtone()Z
.end method

.method public abstract stopTone()V
.end method

.method public abstract stream_Dtmf()I
.end method

.method public abstract stream_Notification()I
.end method

.method public abstract stream_Ring()I
.end method

.method public abstract stream_Tone()I
.end method

.method public abstract stream_Voice()I
.end method

.method public abstract suspendNativeOnLocalHold()Z
.end method

.method public abstract suspendNativeOnParallelGSM()Z
.end method

.method public abstract suspendNativeOnPeerHold()Z
.end method

.method public abstract syncSpeakerState()V
.end method

.method public abstract trackActivity(Landroid/app/Activity;)V
.end method

.method public abstract unregisterModeStateListener(Lcom/viber/voip/sound/ISoundService$ModeStateListenerIntf;)V
.end method

.method public abstract unregisterSpeakerStateListener(Lcom/viber/voip/sound/ISoundService$SpeakerStateListener;)V
.end method

.method public abstract unregisterVoiceStateListener(Lcom/viber/voip/sound/VoiceStateListener;)V
.end method

.method public abstract untrackActivity(Landroid/app/Activity;)V
.end method

.method public abstract useExtraBtChecksForModeChangeWorkaround()Z
.end method

.method public abstract useModeLocking()Z
.end method

.method public abstract useModeSwitchForSpeakerToggleWorkaround()Z
.end method

.method public abstract useNativeMuteControl()Z
.end method

.method public abstract useNativeResetOnSpeakerToggle()Z
.end method

.method public abstract useNativeSoundLibSpeakerControl()Z
.end method

.method public abstract useSpeakerResetForModeChangeWorkaround()Z
.end method

.method public abstract useThreadPriority()Z
.end method

.method public abstract useVoiceChannelListeners()Z
.end method

.method public abstract useVolumeBoostForTonesInSpeakerMode()Z
.end method

.method public abstract useVolumeQuirks()Z
.end method
