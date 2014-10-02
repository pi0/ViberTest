.class public Lcom/viber/voip/sound/AudioDeviceSoundServiceDelegate;
.super Lcom/viber/voip/sound/AbstractSoundService;
.source "SourceFile"


# instance fields
.field private final parentSoundService:Lcom/viber/voip/sound/ISoundService;


# direct methods
.method protected constructor <init>(Lcom/viber/voip/sound/ISoundService;)V
    .locals 0
    .parameter

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/viber/voip/sound/AbstractSoundService;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/viber/voip/sound/AudioDeviceSoundServiceDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    .line 17
    return-void
.end method


# virtual methods
.method public getApplicationContext()Lcom/viber/voip/ViberApplication;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/viber/voip/sound/AudioDeviceSoundServiceDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    invoke-interface {v0}, Lcom/viber/voip/sound/ISoundService;->getApplicationContext()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    return-object v0
.end method

.method public getAudioCtl(III)I
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 325
    iget-object v0, p0, Lcom/viber/voip/sound/AudioDeviceSoundServiceDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    invoke-interface {v0, p1, p2, p3}, Lcom/viber/voip/sound/ISoundService;->getAudioCtl(III)I

    move-result v0

    return v0
.end method

.method public getAudioSettings(Lcom/viber/voip/sound/ISoundService$AudioModeCtl;)Lcom/viber/voip/sound/ISoundService$IAudioSettings;
    .locals 1
    .parameter

    .prologue
    .line 320
    iget-object v0, p0, Lcom/viber/voip/sound/AudioDeviceSoundServiceDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    invoke-interface {v0, p1}, Lcom/viber/voip/sound/ISoundService;->getAudioSettings(Lcom/viber/voip/sound/ISoundService$AudioModeCtl;)Lcom/viber/voip/sound/ISoundService$IAudioSettings;

    move-result-object v0

    return-object v0
.end method

.method public getBluetoothCtl()Lcom/viber/voip/sound/bluetooth/BTControl;
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lcom/viber/voip/sound/AudioDeviceSoundServiceDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    invoke-interface {v0}, Lcom/viber/voip/sound/ISoundService;->getBluetoothCtl()Lcom/viber/voip/sound/bluetooth/BTControl;

    move-result-object v0

    return-object v0
.end method

.method public getMediaPlayer()Landroid/media/MediaPlayer;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/viber/voip/sound/AudioDeviceSoundServiceDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    invoke-interface {v0}, Lcom/viber/voip/sound/ISoundService;->getMediaPlayer()Landroid/media/MediaPlayer;

    move-result-object v0

    return-object v0
.end method

.method public getMode()I
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/viber/voip/sound/AudioDeviceSoundServiceDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    invoke-interface {v0}, Lcom/viber/voip/sound/ISoundService;->getMode()I

    move-result v0

    return v0
.end method

.method public getPlatformAudioManager()Landroid/media/AudioManager;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/viber/voip/sound/AudioDeviceSoundServiceDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    invoke-interface {v0}, Lcom/viber/voip/sound/ISoundService;->getPlatformAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    return-object v0
.end method

.method public getRingtone(IZZ)Lcom/viber/voip/sound/IRingtoneService$Ringtone;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 214
    iget-object v0, p0, Lcom/viber/voip/sound/AudioDeviceSoundServiceDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    invoke-interface {v0, p1, p2, p3}, Lcom/viber/voip/sound/ISoundService;->getRingtone(IZZ)Lcom/viber/voip/sound/IRingtoneService$Ringtone;

    move-result-object v0

    return-object v0
.end method

.method public getRingtone(Landroid/net/Uri;ZZ)Lcom/viber/voip/sound/IRingtoneService$Ringtone;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 208
    iget-object v0, p0, Lcom/viber/voip/sound/AudioDeviceSoundServiceDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    invoke-interface {v0, p1, p2, p3}, Lcom/viber/voip/sound/ISoundService;->getRingtone(Landroid/net/Uri;ZZ)Lcom/viber/voip/sound/IRingtoneService$Ringtone;

    move-result-object v0

    return-object v0
.end method

.method public getRingtoneService()Lcom/viber/voip/sound/IRingtoneService;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/viber/voip/sound/AudioDeviceSoundServiceDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    invoke-interface {v0}, Lcom/viber/voip/sound/ISoundService;->getRingtoneService()Lcom/viber/voip/sound/IRingtoneService;

    move-result-object v0

    return-object v0
.end method

.method public getStreamMaxVolume(I)I
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/viber/voip/sound/AudioDeviceSoundServiceDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    invoke-interface {v0, p1}, Lcom/viber/voip/sound/ISoundService;->getStreamMaxVolume(I)I

    move-result v0

    return v0
.end method

.method public getStreamVolume(I)I
    .locals 1
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/viber/voip/sound/AudioDeviceSoundServiceDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    invoke-interface {v0, p1}, Lcom/viber/voip/sound/ISoundService;->getStreamVolume(I)I

    move-result v0

    return v0
.end method

.method public getThreadPriority()I
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/viber/voip/sound/AudioDeviceSoundServiceDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    invoke-interface {v0}, Lcom/viber/voip/sound/ISoundService;->getThreadPriority()I

    move-result v0

    return v0
.end method

.method public getVibratorService()Lcom/viber/voip/sound/IVibratorService;
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/viber/voip/sound/AudioDeviceSoundServiceDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    invoke-interface {v0}, Lcom/viber/voip/sound/ISoundService;->getVibratorService()Lcom/viber/voip/sound/IVibratorService;

    move-result-object v0

    return-object v0
.end method

.method public getVocoderCtl(Lcom/viber/voip/sound/ISoundService$VocoderCtl;II)I
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 340
    iget-object v0, p0, Lcom/viber/voip/sound/AudioDeviceSoundServiceDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    invoke-interface {v0, p1, p2, p3}, Lcom/viber/voip/sound/ISoundService;->getVocoderCtl(Lcom/viber/voip/sound/ISoundService$VocoderCtl;II)I

    move-result v0

    return v0
.end method

.method public getVocoderSettings()Lcom/viber/voip/sound/ISoundService$IVocoderSettings;
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lcom/viber/voip/sound/AudioDeviceSoundServiceDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    invoke-interface {v0}, Lcom/viber/voip/sound/ISoundService;->getVocoderSettings()Lcom/viber/voip/sound/ISoundService$IVocoderSettings;

    move-result-object v0

    return-object v0
.end method

.method public isOnHold()Z
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/viber/voip/sound/AudioDeviceSoundServiceDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    invoke-interface {v0}, Lcom/viber/voip/sound/ISoundService;->isOnHold()Z

    move-result v0

    return v0
.end method

.method public isPeerOnHold()Z
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/viber/voip/sound/AudioDeviceSoundServiceDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    invoke-interface {v0}, Lcom/viber/voip/sound/ISoundService;->isPeerOnHold()Z

    move-result v0

    return v0
.end method

.method public isRouteActive(I)Z
    .locals 1
    .parameter

    .prologue
    .line 229
    iget-object v0, p0, Lcom/viber/voip/sound/AudioDeviceSoundServiceDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    invoke-interface {v0, p1}, Lcom/viber/voip/sound/ISoundService;->isRouteActive(I)Z

    move-result v0

    return v0
.end method

.method public isSpeakerphoneAllowed()Z
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/viber/voip/sound/AudioDeviceSoundServiceDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    invoke-interface {v0}, Lcom/viber/voip/sound/ISoundService;->isSpeakerphoneAllowed()Z

    move-result v0

    return v0
.end method

.method public isSpeakerphoneOn()Z
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/viber/voip/sound/AudioDeviceSoundServiceDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    invoke-interface {v0}, Lcom/viber/voip/sound/ISoundService;->isSpeakerphoneOn()Z

    move-result v0

    return v0
.end method

.method public loadSample(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 249
    iget-object v0, p0, Lcom/viber/voip/sound/AudioDeviceSoundServiceDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    invoke-interface {v0, p1, p2}, Lcom/viber/voip/sound/ISoundService;->loadSample(II)V

    .line 250
    return-void
.end method

.method public loadSamples([I)V
    .locals 1
    .parameter

    .prologue
    .line 254
    iget-object v0, p0, Lcom/viber/voip/sound/AudioDeviceSoundServiceDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    invoke-interface {v0, p1}, Lcom/viber/voip/sound/ISoundService;->loadSamples([I)V

    .line 255
    return-void
.end method

.method public localHold()V
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lcom/viber/voip/sound/AudioDeviceSoundServiceDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    invoke-interface {v0}, Lcom/viber/voip/sound/ISoundService;->localHold()V

    .line 356
    return-void
.end method

.method public localUnhold()V
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lcom/viber/voip/sound/AudioDeviceSoundServiceDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    invoke-interface {v0}, Lcom/viber/voip/sound/ISoundService;->localUnhold()V

    .line 361
    return-void
.end method

.method public mode_Dtmf()I
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/viber/voip/sound/AudioDeviceSoundServiceDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    invoke-interface {v0}, Lcom/viber/voip/sound/ISoundService;->mode_Dtmf()I

    move-result v0

    return v0
.end method

.method public mode_InCall()I
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/viber/voip/sound/AudioDeviceSoundServiceDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    invoke-interface {v0}, Lcom/viber/voip/sound/ISoundService;->mode_InCall()I

    move-result v0

    return v0
.end method

.method public mode_Mic_InCall()I
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/viber/voip/sound/AudioDeviceSoundServiceDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    invoke-interface {v0}, Lcom/viber/voip/sound/ISoundService;->mode_Mic_InCall()I

    move-result v0

    return v0
.end method

.method public mode_Normal()I
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/viber/voip/sound/AudioDeviceSoundServiceDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    invoke-interface {v0}, Lcom/viber/voip/sound/ISoundService;->mode_Normal()I

    move-result v0

    return v0
.end method

.method public mode_Ringtone()I
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/viber/voip/sound/AudioDeviceSoundServiceDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    invoke-interface {v0}, Lcom/viber/voip/sound/ISoundService;->mode_Ringtone()I

    move-result v0

    return v0
.end method

.method public mode_Tone()I
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/viber/voip/sound/AudioDeviceSoundServiceDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    invoke-interface {v0}, Lcom/viber/voip/sound/ISoundService;->mode_Tone()I

    move-result v0

    return v0
.end method

.method public onAnswerButtonClick()V
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/viber/voip/sound/AudioDeviceSoundServiceDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    invoke-interface {v0}, Lcom/viber/voip/sound/ISoundService;->onAnswerButtonClick()V

    .line 316
    return-void
.end method

.method public onCallEnded(JZLjava/lang/String;II)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 386
    iget-object v0, p0, Lcom/viber/voip/sound/AudioDeviceSoundServiceDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    move-wide v1, p1

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/viber/voip/sound/ISoundService;->onCallEnded(JZLjava/lang/String;II)V

    .line 387
    return-void
.end method

.method public onCallStarted(Z)V
    .locals 1
    .parameter

    .prologue
    .line 380
    iget-object v0, p0, Lcom/viber/voip/sound/AudioDeviceSoundServiceDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    invoke-interface {v0, p1}, Lcom/viber/voip/sound/ISoundService;->onCallStarted(Z)V

    .line 381
    return-void
.end method

.method public onDeviceConnected(Landroid/bluetooth/BluetoothDevice;)V
    .locals 1
    .parameter

    .prologue
    .line 280
    iget-object v0, p0, Lcom/viber/voip/sound/AudioDeviceSoundServiceDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    invoke-interface {v0, p1}, Lcom/viber/voip/sound/ISoundService;->onDeviceConnected(Landroid/bluetooth/BluetoothDevice;)V

    .line 281
    return-void
.end method

.method public onDeviceDisconnected(Landroid/bluetooth/BluetoothDevice;)V
    .locals 1
    .parameter

    .prologue
    .line 285
    iget-object v0, p0, Lcom/viber/voip/sound/AudioDeviceSoundServiceDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    invoke-interface {v0, p1}, Lcom/viber/voip/sound/ISoundService;->onDeviceDisconnected(Landroid/bluetooth/BluetoothDevice;)V

    .line 286
    return-void
.end method

.method public onError(Landroid/bluetooth/BluetoothDevice;)V
    .locals 1
    .parameter

    .prologue
    .line 290
    iget-object v0, p0, Lcom/viber/voip/sound/AudioDeviceSoundServiceDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    invoke-interface {v0, p1}, Lcom/viber/voip/sound/ISoundService;->onError(Landroid/bluetooth/BluetoothDevice;)V

    .line 291
    return-void
.end method

.method public onHandsetOffCallDisabled()Z
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lcom/viber/voip/sound/AudioDeviceSoundServiceDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    invoke-interface {v0}, Lcom/viber/voip/sound/ISoundService;->onHandsetOffCallDisabled()Z

    move-result v0

    return v0
.end method

.method public onHandsetOffCallEnabled()Z
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/viber/voip/sound/AudioDeviceSoundServiceDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    invoke-interface {v0}, Lcom/viber/voip/sound/ISoundService;->onHandsetOffCallEnabled()Z

    move-result v0

    return v0
.end method

.method public onHangup()V
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Lcom/viber/voip/sound/AudioDeviceSoundServiceDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    invoke-interface {v0}, Lcom/viber/voip/sound/ISoundService;->onHangup()V

    .line 392
    return-void
.end method

.method public onPhoneStateChanged(I)V
    .locals 1
    .parameter

    .prologue
    .line 375
    iget-object v0, p0, Lcom/viber/voip/sound/AudioDeviceSoundServiceDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    invoke-interface {v0, p1}, Lcom/viber/voip/sound/ISoundService;->onPhoneStateChanged(I)V

    .line 376
    return-void
.end method

.method public peerHold()V
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Lcom/viber/voip/sound/AudioDeviceSoundServiceDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    invoke-interface {v0}, Lcom/viber/voip/sound/ISoundService;->peerHold()V

    .line 366
    return-void
.end method

.method public peerUnhold()V
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Lcom/viber/voip/sound/AudioDeviceSoundServiceDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    invoke-interface {v0}, Lcom/viber/voip/sound/ISoundService;->peerUnhold()V

    .line 371
    return-void
.end method

.method public playSample(IFFIIF)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 260
    iget-object v0, p0, Lcom/viber/voip/sound/AudioDeviceSoundServiceDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/viber/voip/sound/ISoundService;->playSample(IFFIIF)V

    .line 261
    return-void
.end method

.method public registerVoiceStateListener(Lcom/viber/voip/sound/VoiceStateListener;)V
    .locals 1
    .parameter

    .prologue
    .line 265
    iget-object v0, p0, Lcom/viber/voip/sound/AudioDeviceSoundServiceDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    invoke-interface {v0, p1}, Lcom/viber/voip/sound/ISoundService;->registerVoiceStateListener(Lcom/viber/voip/sound/VoiceStateListener;)V

    .line 266
    return-void
.end method

.method public rejectSpeakerActiveState()Z
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/viber/voip/sound/AudioDeviceSoundServiceDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    invoke-interface {v0}, Lcom/viber/voip/sound/ISoundService;->rejectSpeakerActiveState()Z

    move-result v0

    return v0
.end method

.method public rejectSpeakerStateChangeWithHeadset()Z
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/viber/voip/sound/AudioDeviceSoundServiceDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    invoke-interface {v0}, Lcom/viber/voip/sound/ISoundService;->rejectSpeakerStateChangeWithHeadset()Z

    move-result v0

    return v0
.end method

.method public setAudioCtl(III)I
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 330
    iget-object v0, p0, Lcom/viber/voip/sound/AudioDeviceSoundServiceDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    invoke-interface {v0, p1, p2, p3}, Lcom/viber/voip/sound/ISoundService;->setAudioCtl(III)I

    move-result v0

    return v0
.end method

.method public setMode(I)V
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/viber/voip/sound/AudioDeviceSoundServiceDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    invoke-interface {v0, p1}, Lcom/viber/voip/sound/ISoundService;->setMode(I)V

    .line 58
    return-void
.end method

.method public setModeWithPriorityLock(I)V
    .locals 1
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Lcom/viber/voip/sound/AudioDeviceSoundServiceDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    invoke-interface {v0, p1}, Lcom/viber/voip/sound/ISoundService;->setModeWithPriorityLock(I)V

    .line 83
    return-void
.end method

.method public setSpeakerphoneOn(Z)V
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/viber/voip/sound/AudioDeviceSoundServiceDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    invoke-interface {v0, p1}, Lcom/viber/voip/sound/ISoundService;->setSpeakerphoneOn(Z)V

    .line 53
    return-void
.end method

.method public setVocoderCtl(Lcom/viber/voip/sound/ISoundService$VocoderCtl;II)I
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 345
    iget-object v0, p0, Lcom/viber/voip/sound/AudioDeviceSoundServiceDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    invoke-interface {v0, p1, p2, p3}, Lcom/viber/voip/sound/ISoundService;->setVocoderCtl(Lcom/viber/voip/sound/ISoundService$VocoderCtl;II)I

    move-result v0

    return v0
.end method

.method public shouldKillMediaManagerOnSuspend()Z
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/viber/voip/sound/AudioDeviceSoundServiceDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    invoke-interface {v0}, Lcom/viber/voip/sound/ISoundService;->shouldKillMediaManagerOnSuspend()Z

    move-result v0

    return v0
.end method

.method public stream_Dtmf()I
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/viber/voip/sound/AudioDeviceSoundServiceDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    invoke-interface {v0}, Lcom/viber/voip/sound/ISoundService;->stream_Dtmf()I

    move-result v0

    return v0
.end method

.method public stream_Notification()I
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/viber/voip/sound/AudioDeviceSoundServiceDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    invoke-interface {v0}, Lcom/viber/voip/sound/ISoundService;->stream_Notification()I

    move-result v0

    return v0
.end method

.method public stream_Ring()I
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/viber/voip/sound/AudioDeviceSoundServiceDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    invoke-interface {v0}, Lcom/viber/voip/sound/ISoundService;->stream_Ring()I

    move-result v0

    return v0
.end method

.method public stream_Tone()I
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/viber/voip/sound/AudioDeviceSoundServiceDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    invoke-interface {v0}, Lcom/viber/voip/sound/ISoundService;->stream_Tone()I

    move-result v0

    return v0
.end method

.method public stream_Voice()I
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/viber/voip/sound/AudioDeviceSoundServiceDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    invoke-interface {v0}, Lcom/viber/voip/sound/ISoundService;->stream_Voice()I

    move-result v0

    return v0
.end method

.method public suspendNativeOnLocalHold()Z
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/viber/voip/sound/AudioDeviceSoundServiceDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    invoke-interface {v0}, Lcom/viber/voip/sound/ISoundService;->suspendNativeOnLocalHold()Z

    move-result v0

    return v0
.end method

.method public suspendNativeOnParallelGSM()Z
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/viber/voip/sound/AudioDeviceSoundServiceDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    invoke-interface {v0}, Lcom/viber/voip/sound/ISoundService;->suspendNativeOnParallelGSM()Z

    move-result v0

    return v0
.end method

.method public suspendNativeOnPeerHold()Z
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/viber/voip/sound/AudioDeviceSoundServiceDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    invoke-interface {v0}, Lcom/viber/voip/sound/ISoundService;->suspendNativeOnPeerHold()Z

    move-result v0

    return v0
.end method

.method public syncSpeakerState()V
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lcom/viber/voip/sound/AudioDeviceSoundServiceDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    invoke-interface {v0}, Lcom/viber/voip/sound/ISoundService;->syncSpeakerState()V

    .line 351
    return-void
.end method

.method public unregisterVoiceStateListener(Lcom/viber/voip/sound/VoiceStateListener;)V
    .locals 1
    .parameter

    .prologue
    .line 270
    iget-object v0, p0, Lcom/viber/voip/sound/AudioDeviceSoundServiceDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    invoke-interface {v0, p1}, Lcom/viber/voip/sound/ISoundService;->unregisterVoiceStateListener(Lcom/viber/voip/sound/VoiceStateListener;)V

    .line 271
    return-void
.end method

.method public useExtraBtChecksForModeChangeWorkaround()Z
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/viber/voip/sound/AudioDeviceSoundServiceDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    invoke-interface {v0}, Lcom/viber/voip/sound/ISoundService;->useExtraBtChecksForModeChangeWorkaround()Z

    move-result v0

    return v0
.end method

.method public useModeLocking()Z
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/viber/voip/sound/AudioDeviceSoundServiceDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    invoke-interface {v0}, Lcom/viber/voip/sound/ISoundService;->useModeLocking()Z

    move-result v0

    return v0
.end method

.method public useModeSwitchForSpeakerToggleWorkaround()Z
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/viber/voip/sound/AudioDeviceSoundServiceDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    invoke-interface {v0}, Lcom/viber/voip/sound/ISoundService;->useModeSwitchForSpeakerToggleWorkaround()Z

    move-result v0

    return v0
.end method

.method public useNativeMuteControl()Z
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/viber/voip/sound/AudioDeviceSoundServiceDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    invoke-interface {v0}, Lcom/viber/voip/sound/ISoundService;->useNativeMuteControl()Z

    move-result v0

    return v0
.end method

.method public useNativeResetOnSpeakerToggle()Z
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/viber/voip/sound/AudioDeviceSoundServiceDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    invoke-interface {v0}, Lcom/viber/voip/sound/ISoundService;->useNativeResetOnSpeakerToggle()Z

    move-result v0

    return v0
.end method

.method public useNativeSoundLibSpeakerControl()Z
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/viber/voip/sound/AudioDeviceSoundServiceDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    invoke-interface {v0}, Lcom/viber/voip/sound/ISoundService;->useNativeSoundLibSpeakerControl()Z

    move-result v0

    return v0
.end method

.method public useSpeakerResetForModeChangeWorkaround()Z
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/viber/voip/sound/AudioDeviceSoundServiceDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    invoke-interface {v0}, Lcom/viber/voip/sound/ISoundService;->useSpeakerResetForModeChangeWorkaround()Z

    move-result v0

    return v0
.end method

.method public useThreadPriority()Z
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/viber/voip/sound/AudioDeviceSoundServiceDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    invoke-interface {v0}, Lcom/viber/voip/sound/ISoundService;->useThreadPriority()Z

    move-result v0

    return v0
.end method

.method public useVoiceChannelListeners()Z
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/viber/voip/sound/AudioDeviceSoundServiceDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    invoke-interface {v0}, Lcom/viber/voip/sound/ISoundService;->useVoiceChannelListeners()Z

    move-result v0

    return v0
.end method

.method public useVolumeBoostForTonesInSpeakerMode()Z
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/viber/voip/sound/AudioDeviceSoundServiceDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    invoke-interface {v0}, Lcom/viber/voip/sound/ISoundService;->useVolumeBoostForTonesInSpeakerMode()Z

    move-result v0

    return v0
.end method

.method public useVolumeQuirks()Z
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/viber/voip/sound/AudioDeviceSoundServiceDelegate;->parentSoundService:Lcom/viber/voip/sound/ISoundService;

    invoke-interface {v0}, Lcom/viber/voip/sound/ISoundService;->useVolumeQuirks()Z

    move-result v0

    return v0
.end method
