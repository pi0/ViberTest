.class Lcom/viber/voip/sound/CommonAbstractSoundService$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/webrtc/voiceengine/IAudioDevice$AudioDeviceStateListener;


# instance fields
.field final synthetic this$0:Lcom/viber/voip/sound/CommonAbstractSoundService;


# direct methods
.method constructor <init>(Lcom/viber/voip/sound/CommonAbstractSoundService;)V
    .locals 0
    .parameter

    .prologue
    .line 378
    iput-object p1, p0, Lcom/viber/voip/sound/CommonAbstractSoundService$1;->this$0:Lcom/viber/voip/sound/CommonAbstractSoundService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCapturePostStart()V
    .locals 2

    .prologue
    .line 413
    invoke-static {}, Lcom/viber/voip/sound/CommonAbstractSoundService;->access$100()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 414
    invoke-static {}, Lcom/viber/voip/sound/CommonAbstractSoundService;->access$100()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/sound/CommonAbstractSoundService$1$3;

    invoke-direct {v1, p0}, Lcom/viber/voip/sound/CommonAbstractSoundService$1$3;-><init>(Lcom/viber/voip/sound/CommonAbstractSoundService$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 423
    :goto_0
    return-void

    .line 421
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/sound/CommonAbstractSoundService$1;->this$0:Lcom/viber/voip/sound/CommonAbstractSoundService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/viber/voip/sound/CommonAbstractSoundService;->processAudioDevStartSignalOnce(Z)V

    goto :goto_0
.end method

.method public onCaptureStart()V
    .locals 2

    .prologue
    .line 394
    invoke-static {}, Lcom/viber/voip/sound/CommonAbstractSoundService;->access$100()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 395
    invoke-static {}, Lcom/viber/voip/sound/CommonAbstractSoundService;->access$100()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/sound/CommonAbstractSoundService$1$2;

    invoke-direct {v1, p0}, Lcom/viber/voip/sound/CommonAbstractSoundService$1$2;-><init>(Lcom/viber/voip/sound/CommonAbstractSoundService$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 404
    :goto_0
    return-void

    .line 402
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/sound/CommonAbstractSoundService$1;->this$0:Lcom/viber/voip/sound/CommonAbstractSoundService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/viber/voip/sound/CommonAbstractSoundService;->processAudioDevStartSignalOnce(Z)V

    goto :goto_0
.end method

.method public onCaptureStop()V
    .locals 2

    .prologue
    .line 381
    invoke-static {}, Lcom/viber/voip/sound/CommonAbstractSoundService;->access$100()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 382
    invoke-static {}, Lcom/viber/voip/sound/CommonAbstractSoundService;->access$100()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/sound/CommonAbstractSoundService$1$1;

    invoke-direct {v1, p0}, Lcom/viber/voip/sound/CommonAbstractSoundService$1$1;-><init>(Lcom/viber/voip/sound/CommonAbstractSoundService$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 391
    :goto_0
    return-void

    .line 389
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/sound/CommonAbstractSoundService$1;->this$0:Lcom/viber/voip/sound/CommonAbstractSoundService;

    invoke-virtual {v0}, Lcom/viber/voip/sound/CommonAbstractSoundService;->processAudioDevStopSignalOnce()V

    goto :goto_0
.end method

.method public onPlaybackPostStart()V
    .locals 0

    .prologue
    .line 430
    return-void
.end method

.method public onPlaybackPostStop()V
    .locals 0

    .prologue
    .line 436
    return-void
.end method

.method public onPlaybackPreStart()V
    .locals 0

    .prologue
    .line 427
    return-void
.end method

.method public onPlaybackPreStop()V
    .locals 0

    .prologue
    .line 433
    return-void
.end method

.method public onPlaybackReady()V
    .locals 0

    .prologue
    .line 407
    return-void
.end method

.method public onPlaybackShutdown()V
    .locals 0

    .prologue
    .line 410
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 439
    iget-object v0, p0, Lcom/viber/voip/sound/CommonAbstractSoundService$1;->this$0:Lcom/viber/voip/sound/CommonAbstractSoundService;

    invoke-virtual {v0}, Lcom/viber/voip/sound/CommonAbstractSoundService;->havingValidVoiceChannel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 440
    const/4 v0, 0x3

    sget-object v1, Lcom/viber/voip/sound/CommonAbstractSoundService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "DEV_onStart event"

    invoke-static {v0, v1, v2}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 441
    iget-object v0, p0, Lcom/viber/voip/sound/CommonAbstractSoundService$1;->this$0:Lcom/viber/voip/sound/CommonAbstractSoundService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/viber/voip/sound/CommonAbstractSoundService;->setRouteFlags(I)I

    .line 443
    iget-object v0, p0, Lcom/viber/voip/sound/CommonAbstractSoundService$1;->this$0:Lcom/viber/voip/sound/CommonAbstractSoundService;

    #getter for: Lcom/viber/voip/sound/CommonAbstractSoundService;->mBtControl:Lcom/viber/voip/sound/bluetooth/BTControl;
    invoke-static {v0}, Lcom/viber/voip/sound/CommonAbstractSoundService;->access$200(Lcom/viber/voip/sound/CommonAbstractSoundService;)Lcom/viber/voip/sound/bluetooth/BTControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/sound/bluetooth/BTControl;->enableBluetoothRoute()V

    .line 445
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 3

    .prologue
    .line 448
    iget-object v0, p0, Lcom/viber/voip/sound/CommonAbstractSoundService$1;->this$0:Lcom/viber/voip/sound/CommonAbstractSoundService;

    invoke-virtual {v0}, Lcom/viber/voip/sound/CommonAbstractSoundService;->havingValidVoiceChannel()Z

    move-result v0

    if-nez v0, :cond_0

    .line 449
    const/4 v0, 0x3

    sget-object v1, Lcom/viber/voip/sound/CommonAbstractSoundService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "DEV_onStop event"

    invoke-static {v0, v1, v2}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 450
    iget-object v0, p0, Lcom/viber/voip/sound/CommonAbstractSoundService$1;->this$0:Lcom/viber/voip/sound/CommonAbstractSoundService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/viber/voip/sound/CommonAbstractSoundService;->clearRouteFlags(I)I

    .line 452
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/sound/CommonAbstractSoundService$1;->this$0:Lcom/viber/voip/sound/CommonAbstractSoundService;

    #getter for: Lcom/viber/voip/sound/CommonAbstractSoundService;->mBtControl:Lcom/viber/voip/sound/bluetooth/BTControl;
    invoke-static {v0}, Lcom/viber/voip/sound/CommonAbstractSoundService;->access$200(Lcom/viber/voip/sound/CommonAbstractSoundService;)Lcom/viber/voip/sound/bluetooth/BTControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/sound/bluetooth/BTControl;->disableBluetoothRoute()V

    .line 453
    iget-object v0, p0, Lcom/viber/voip/sound/CommonAbstractSoundService$1;->this$0:Lcom/viber/voip/sound/CommonAbstractSoundService;

    #getter for: Lcom/viber/voip/sound/CommonAbstractSoundService;->mBtControl:Lcom/viber/voip/sound/bluetooth/BTControl;
    invoke-static {v0}, Lcom/viber/voip/sound/CommonAbstractSoundService;->access$200(Lcom/viber/voip/sound/CommonAbstractSoundService;)Lcom/viber/voip/sound/bluetooth/BTControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/sound/bluetooth/BTControl;->stopBluetooth()V

    .line 454
    return-void
.end method
