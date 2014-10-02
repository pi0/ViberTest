.class final Lorg/webrtc/voiceengine/AudioDeviceManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/webrtc/voiceengine/IAudioDevice;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public CheckDeviceVoiceCommunicationAbility(II)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 71
    const/4 v0, -0x1

    return v0
.end method

.method public GetAudioRoute()I
    .locals 1

    .prologue
    .line 66
    const/4 v0, -0x1

    return v0
.end method

.method public GetPlayoutVolume()I
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    return v0
.end method

.method public ProbePlayback(I)I
    .locals 1
    .parameter

    .prologue
    .line 58
    const/4 v0, 0x0

    return v0
.end method

.method public ProbeRecording(II)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 54
    const/4 v0, 0x0

    return v0
.end method

.method public SetAudioRoute(I)I
    .locals 1
    .parameter

    .prologue
    .line 62
    const/4 v0, -0x1

    return v0
.end method

.method public SetPlayoutSpeaker(Z)I
    .locals 1
    .parameter

    .prologue
    .line 28
    const/4 v0, 0x0

    return v0
.end method

.method public SetPlayoutVolume(I)I
    .locals 1
    .parameter

    .prologue
    .line 24
    const/4 v0, 0x0

    return v0
.end method

.method public StartPlayback()I
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    return v0
.end method

.method public StartRecording()I
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    return v0
.end method

.method public StopPlayback()I
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    return v0
.end method

.method public StopRecording()I
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    return v0
.end method

.method public registerStateListener(Lorg/webrtc/voiceengine/IAudioDevice$AudioDeviceStateListener;)V
    .locals 0
    .parameter

    .prologue
    .line 17
    return-void
.end method

.method public restartRecorder()V
    .locals 0

    .prologue
    .line 48
    return-void
.end method

.method public waitForInitialize()V
    .locals 0

    .prologue
    .line 51
    return-void
.end method
