.class final Lorg/webrtc/voiceengine/AudioDeviceManager$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/webrtc/voiceengine/IAudioDevice;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public CheckDeviceVoiceCommunicationAbility(II)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 194
    invoke-static {}, Lorg/webrtc/voiceengine/AudioDeviceManager;->access$100()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 195
    :try_start_0
    invoke-static {}, Lorg/webrtc/voiceengine/AudioDeviceManager;->access$200()Lorg/webrtc/voiceengine/IAudioDevice;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    monitor-exit v1

    .line 196
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lorg/webrtc/voiceengine/AudioDeviceManager;->access$200()Lorg/webrtc/voiceengine/IAudioDevice;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/webrtc/voiceengine/IAudioDevice;->CheckDeviceVoiceCommunicationAbility(II)I

    move-result v0

    monitor-exit v1

    goto :goto_0

    .line 197
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public GetAudioRoute()I
    .locals 2

    .prologue
    .line 185
    invoke-static {}, Lorg/webrtc/voiceengine/AudioDeviceManager;->access$100()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 186
    :try_start_0
    invoke-static {}, Lorg/webrtc/voiceengine/AudioDeviceManager;->access$200()Lorg/webrtc/voiceengine/IAudioDevice;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    monitor-exit v1

    .line 187
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lorg/webrtc/voiceengine/AudioDeviceManager;->access$200()Lorg/webrtc/voiceengine/IAudioDevice;

    move-result-object v0

    invoke-interface {v0}, Lorg/webrtc/voiceengine/IAudioDevice;->GetAudioRoute()I

    move-result v0

    monitor-exit v1

    goto :goto_0

    .line 188
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public GetPlayoutVolume()I
    .locals 2

    .prologue
    .line 89
    invoke-static {}, Lorg/webrtc/voiceengine/AudioDeviceManager;->access$100()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 90
    :try_start_0
    invoke-static {}, Lorg/webrtc/voiceengine/AudioDeviceManager;->access$200()Lorg/webrtc/voiceengine/IAudioDevice;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    monitor-exit v1

    .line 91
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lorg/webrtc/voiceengine/AudioDeviceManager;->access$200()Lorg/webrtc/voiceengine/IAudioDevice;

    move-result-object v0

    invoke-interface {v0}, Lorg/webrtc/voiceengine/IAudioDevice;->GetPlayoutVolume()I

    move-result v0

    monitor-exit v1

    goto :goto_0

    .line 92
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public ProbePlayback(I)I
    .locals 2
    .parameter

    .prologue
    .line 169
    invoke-static {}, Lorg/webrtc/voiceengine/AudioDeviceManager;->access$100()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 170
    :try_start_0
    invoke-static {}, Lorg/webrtc/voiceengine/AudioDeviceManager;->access$200()Lorg/webrtc/voiceengine/IAudioDevice;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    monitor-exit v1

    .line 171
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lorg/webrtc/voiceengine/AudioDeviceManager;->access$200()Lorg/webrtc/voiceengine/IAudioDevice;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/webrtc/voiceengine/IAudioDevice;->ProbePlayback(I)I

    move-result v0

    monitor-exit v1

    goto :goto_0

    .line 172
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public ProbeRecording(II)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 161
    invoke-static {}, Lorg/webrtc/voiceengine/AudioDeviceManager;->access$100()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 162
    :try_start_0
    invoke-static {}, Lorg/webrtc/voiceengine/AudioDeviceManager;->access$200()Lorg/webrtc/voiceengine/IAudioDevice;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    monitor-exit v1

    .line 163
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lorg/webrtc/voiceengine/AudioDeviceManager;->access$200()Lorg/webrtc/voiceengine/IAudioDevice;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/webrtc/voiceengine/IAudioDevice;->ProbeRecording(II)I

    move-result v0

    monitor-exit v1

    goto :goto_0

    .line 164
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public SetAudioRoute(I)I
    .locals 2
    .parameter

    .prologue
    .line 177
    invoke-static {}, Lorg/webrtc/voiceengine/AudioDeviceManager;->access$100()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 178
    :try_start_0
    invoke-static {}, Lorg/webrtc/voiceengine/AudioDeviceManager;->access$200()Lorg/webrtc/voiceengine/IAudioDevice;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    monitor-exit v1

    .line 179
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lorg/webrtc/voiceengine/AudioDeviceManager;->access$200()Lorg/webrtc/voiceengine/IAudioDevice;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/webrtc/voiceengine/IAudioDevice;->SetAudioRoute(I)I

    move-result v0

    monitor-exit v1

    goto :goto_0

    .line 180
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public SetPlayoutSpeaker(Z)I
    .locals 2
    .parameter

    .prologue
    .line 105
    invoke-static {}, Lorg/webrtc/voiceengine/AudioDeviceManager;->access$100()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 106
    :try_start_0
    invoke-static {}, Lorg/webrtc/voiceengine/AudioDeviceManager;->access$200()Lorg/webrtc/voiceengine/IAudioDevice;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    monitor-exit v1

    .line 107
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lorg/webrtc/voiceengine/AudioDeviceManager;->access$200()Lorg/webrtc/voiceengine/IAudioDevice;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/webrtc/voiceengine/IAudioDevice;->SetPlayoutSpeaker(Z)I

    move-result v0

    monitor-exit v1

    goto :goto_0

    .line 108
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public SetPlayoutVolume(I)I
    .locals 2
    .parameter

    .prologue
    .line 97
    invoke-static {}, Lorg/webrtc/voiceengine/AudioDeviceManager;->access$100()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 98
    :try_start_0
    invoke-static {}, Lorg/webrtc/voiceengine/AudioDeviceManager;->access$200()Lorg/webrtc/voiceengine/IAudioDevice;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    monitor-exit v1

    .line 99
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lorg/webrtc/voiceengine/AudioDeviceManager;->access$200()Lorg/webrtc/voiceengine/IAudioDevice;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/webrtc/voiceengine/IAudioDevice;->SetPlayoutVolume(I)I

    move-result v0

    monitor-exit v1

    goto :goto_0

    .line 100
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public StartPlayback()I
    .locals 2

    .prologue
    .line 137
    invoke-static {}, Lorg/webrtc/voiceengine/AudioDeviceManager;->access$100()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 138
    :try_start_0
    invoke-static {}, Lorg/webrtc/voiceengine/AudioDeviceManager;->access$200()Lorg/webrtc/voiceengine/IAudioDevice;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    monitor-exit v1

    .line 139
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lorg/webrtc/voiceengine/AudioDeviceManager;->access$200()Lorg/webrtc/voiceengine/IAudioDevice;

    move-result-object v0

    invoke-interface {v0}, Lorg/webrtc/voiceengine/IAudioDevice;->StartPlayback()I

    move-result v0

    monitor-exit v1

    goto :goto_0

    .line 140
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public StartRecording()I
    .locals 2

    .prologue
    .line 121
    invoke-static {}, Lorg/webrtc/voiceengine/AudioDeviceManager;->access$100()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 122
    :try_start_0
    invoke-static {}, Lorg/webrtc/voiceengine/AudioDeviceManager;->access$200()Lorg/webrtc/voiceengine/IAudioDevice;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    monitor-exit v1

    .line 123
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lorg/webrtc/voiceengine/AudioDeviceManager;->access$200()Lorg/webrtc/voiceengine/IAudioDevice;

    move-result-object v0

    invoke-interface {v0}, Lorg/webrtc/voiceengine/IAudioDevice;->StartRecording()I

    move-result v0

    monitor-exit v1

    goto :goto_0

    .line 124
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public StopPlayback()I
    .locals 2

    .prologue
    .line 129
    invoke-static {}, Lorg/webrtc/voiceengine/AudioDeviceManager;->access$100()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 130
    :try_start_0
    invoke-static {}, Lorg/webrtc/voiceengine/AudioDeviceManager;->access$200()Lorg/webrtc/voiceengine/IAudioDevice;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    monitor-exit v1

    .line 131
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lorg/webrtc/voiceengine/AudioDeviceManager;->access$200()Lorg/webrtc/voiceengine/IAudioDevice;

    move-result-object v0

    invoke-interface {v0}, Lorg/webrtc/voiceengine/IAudioDevice;->StopPlayback()I

    move-result v0

    monitor-exit v1

    goto :goto_0

    .line 132
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public StopRecording()I
    .locals 2

    .prologue
    .line 113
    invoke-static {}, Lorg/webrtc/voiceengine/AudioDeviceManager;->access$100()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 114
    :try_start_0
    invoke-static {}, Lorg/webrtc/voiceengine/AudioDeviceManager;->access$200()Lorg/webrtc/voiceengine/IAudioDevice;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    monitor-exit v1

    .line 115
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lorg/webrtc/voiceengine/AudioDeviceManager;->access$200()Lorg/webrtc/voiceengine/IAudioDevice;

    move-result-object v0

    invoke-interface {v0}, Lorg/webrtc/voiceengine/IAudioDevice;->StopRecording()I

    move-result v0

    monitor-exit v1

    goto :goto_0

    .line 116
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public registerStateListener(Lorg/webrtc/voiceengine/IAudioDevice$AudioDeviceStateListener;)V
    .locals 2
    .parameter

    .prologue
    .line 78
    invoke-static {}, Lorg/webrtc/voiceengine/AudioDeviceManager;->access$000()Ljava/util/Set;

    move-result-object v1

    monitor-enter v1

    .line 79
    :try_start_0
    invoke-static {}, Lorg/webrtc/voiceengine/AudioDeviceManager;->access$000()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 80
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    invoke-static {}, Lorg/webrtc/voiceengine/AudioDeviceManager;->access$100()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 82
    :try_start_1
    invoke-static {}, Lorg/webrtc/voiceengine/AudioDeviceManager;->access$200()Lorg/webrtc/voiceengine/IAudioDevice;

    move-result-object v0

    if-nez v0, :cond_0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 85
    :goto_0
    return-void

    .line 80
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 83
    :cond_0
    :try_start_3
    invoke-static {}, Lorg/webrtc/voiceengine/AudioDeviceManager;->access$200()Lorg/webrtc/voiceengine/IAudioDevice;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/webrtc/voiceengine/IAudioDevice;->registerStateListener(Lorg/webrtc/voiceengine/IAudioDevice$AudioDeviceStateListener;)V

    .line 84
    monitor-exit v1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public restartRecorder()V
    .locals 2

    .prologue
    .line 145
    invoke-static {}, Lorg/webrtc/voiceengine/AudioDeviceManager;->access$100()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 146
    :try_start_0
    invoke-static {}, Lorg/webrtc/voiceengine/AudioDeviceManager;->access$200()Lorg/webrtc/voiceengine/IAudioDevice;

    move-result-object v0

    if-nez v0, :cond_0

    monitor-exit v1

    .line 149
    :goto_0
    return-void

    .line 147
    :cond_0
    invoke-static {}, Lorg/webrtc/voiceengine/AudioDeviceManager;->access$200()Lorg/webrtc/voiceengine/IAudioDevice;

    move-result-object v0

    invoke-interface {v0}, Lorg/webrtc/voiceengine/IAudioDevice;->restartRecorder()V

    .line 148
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public waitForInitialize()V
    .locals 2

    .prologue
    .line 153
    invoke-static {}, Lorg/webrtc/voiceengine/AudioDeviceManager;->access$100()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 154
    :try_start_0
    invoke-static {}, Lorg/webrtc/voiceengine/AudioDeviceManager;->access$200()Lorg/webrtc/voiceengine/IAudioDevice;

    move-result-object v0

    if-nez v0, :cond_0

    monitor-exit v1

    .line 157
    :goto_0
    return-void

    .line 155
    :cond_0
    invoke-static {}, Lorg/webrtc/voiceengine/AudioDeviceManager;->access$200()Lorg/webrtc/voiceengine/IAudioDevice;

    move-result-object v0

    invoke-interface {v0}, Lorg/webrtc/voiceengine/IAudioDevice;->waitForInitialize()V

    .line 156
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
