.class public Lcom/viber/voip/sound/VocoderWatchdog;
.super Lcom/viber/jni/PhoneControllerDelegateAdapter;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lorg/webrtc/voiceengine/IAudioDevice$AudioDeviceStateListener;


# static fields
.field public static final WATCHDOG_RESET_INTERVAL:I = 0x2bf20


# instance fields
.field private final soundService:Lcom/viber/voip/sound/AbstractSoundService;

.field private final watchdogEventQueue:Landroid/os/Handler;

.field private final watchdogLock:Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method public constructor <init>(Lcom/viber/voip/sound/AbstractSoundService;)V
    .locals 1
    .parameter

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/viber/jni/PhoneControllerDelegateAdapter;-><init>()V

    .line 15
    sget-object v0, Lcom/viber/voip/dk;->f:Lcom/viber/voip/dk;

    invoke-static {v0}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/sound/VocoderWatchdog;->watchdogEventQueue:Landroid/os/Handler;

    .line 16
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/sound/VocoderWatchdog;->watchdogLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 20
    iput-object p1, p0, Lcom/viber/voip/sound/VocoderWatchdog;->soundService:Lcom/viber/voip/sound/AbstractSoundService;

    .line 21
    return-void
.end method

.method private resetVocoder()V
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/viber/voip/sound/VocoderWatchdog;->soundService:Lcom/viber/voip/sound/AbstractSoundService;

    invoke-virtual {v0}, Lcom/viber/voip/sound/AbstractSoundService;->resetVoice()I

    .line 51
    return-void
.end method


# virtual methods
.method public onCapturePostStart()V
    .locals 0

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/viber/voip/sound/VocoderWatchdog;->startWatchdog()V

    .line 60
    return-void
.end method

.method public onCaptureStart()V
    .locals 0

    .prologue
    .line 55
    return-void
.end method

.method public onCaptureStop()V
    .locals 0

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/viber/voip/sound/VocoderWatchdog;->stopWatchdog()V

    .line 65
    return-void
.end method

.method public onPlaybackPostStart()V
    .locals 0

    .prologue
    .line 81
    return-void
.end method

.method public onPlaybackPostStop()V
    .locals 0

    .prologue
    .line 89
    return-void
.end method

.method public onPlaybackPreStart()V
    .locals 0

    .prologue
    .line 77
    return-void
.end method

.method public onPlaybackPreStop()V
    .locals 0

    .prologue
    .line 85
    return-void
.end method

.method public onPlaybackReady()V
    .locals 0

    .prologue
    .line 69
    return-void
.end method

.method public onPlaybackShutdown()V
    .locals 0

    .prologue
    .line 73
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 93
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 97
    return-void
.end method

.method public run()V
    .locals 2

    .prologue
    .line 40
    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/sound/VocoderWatchdog;->watchdogLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 41
    iget-object v0, p0, Lcom/viber/voip/sound/VocoderWatchdog;->soundService:Lcom/viber/voip/sound/AbstractSoundService;

    invoke-virtual {v0}, Lcom/viber/voip/sound/AbstractSoundService;->isMicrophoneMute()Z

    move-result v0

    .line 42
    invoke-direct {p0}, Lcom/viber/voip/sound/VocoderWatchdog;->resetVocoder()V

    .line 43
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/sound/VocoderWatchdog;->soundService:Lcom/viber/voip/sound/AbstractSoundService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/viber/voip/sound/AbstractSoundService;->setMicrophoneMute(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/sound/VocoderWatchdog;->watchdogLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 47
    return-void

    .line 45
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/viber/voip/sound/VocoderWatchdog;->watchdogLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public startWatchdog()V
    .locals 3

    .prologue
    .line 24
    invoke-virtual {p0}, Lcom/viber/voip/sound/VocoderWatchdog;->stopWatchdog()V

    .line 25
    iget-object v0, p0, Lcom/viber/voip/sound/VocoderWatchdog;->watchdogEventQueue:Landroid/os/Handler;

    const-wide/32 v1, 0x2bf20

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 26
    return-void
.end method

.method public stopWatchdog()V
    .locals 2

    .prologue
    .line 30
    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/sound/VocoderWatchdog;->watchdogLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 31
    iget-object v0, p0, Lcom/viber/voip/sound/VocoderWatchdog;->watchdogEventQueue:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    iget-object v0, p0, Lcom/viber/voip/sound/VocoderWatchdog;->watchdogLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 35
    return-void

    .line 33
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/viber/voip/sound/VocoderWatchdog;->watchdogLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method
