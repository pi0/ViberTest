.class public interface abstract Lorg/webrtc/voiceengine/IAudioDevice;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final AUDIOROUTE_PLAYBACK:I = 0x1

.field public static final AUDIOROUTE_PLAYBACK_AND_RECORDING:I = 0x3

.field public static final AUDIOROUTE_RECORDING:I = 0x2

.field public static final AUDIOROUTE_VOIP:I


# virtual methods
.method public abstract CheckDeviceVoiceCommunicationAbility(II)I
.end method

.method public abstract GetAudioRoute()I
.end method

.method public abstract GetPlayoutVolume()I
.end method

.method public abstract ProbePlayback(I)I
.end method

.method public abstract ProbeRecording(II)I
.end method

.method public abstract SetAudioRoute(I)I
.end method

.method public abstract SetPlayoutSpeaker(Z)I
.end method

.method public abstract SetPlayoutVolume(I)I
.end method

.method public abstract StartPlayback()I
.end method

.method public abstract StartRecording()I
.end method

.method public abstract StopPlayback()I
.end method

.method public abstract StopRecording()I
.end method

.method public abstract registerStateListener(Lorg/webrtc/voiceengine/IAudioDevice$AudioDeviceStateListener;)V
.end method

.method public abstract restartRecorder()V
.end method

.method public abstract waitForInitialize()V
.end method
