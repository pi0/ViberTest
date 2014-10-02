.class public Lcom/viber/voip/sound/tonegen/ToneGenerator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/sound/tonegen/IToneGenerator;


# static fields
.field public static final MAX_DTMF_VOLUME:F = 0.1f

.field public static final MAX_TONE_VOLUME:F = 0.5f

.field public static final TAG:Ljava/lang/String;

.field protected static final _monitor:Landroid/os/Handler;


# instance fields
.field private final _modeSet:I

.field private final _soundService:Lcom/viber/voip/sound/ISoundService;

.field private volatile _streamType:I

.field private _toneGenerator:Landroid/media/ToneGenerator;

.field private final modeLock:Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/viber/voip/sound/tonegen/ToneGenerator;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/sound/tonegen/ToneGenerator;->TAG:Ljava/lang/String;

    .line 27
    sget-object v0, Lcom/viber/voip/dk;->h:Lcom/viber/voip/dk;

    invoke-static {v0}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/sound/tonegen/ToneGenerator;->_monitor:Landroid/os/Handler;

    .line 29
    return-void
.end method

.method public constructor <init>(Lcom/viber/voip/sound/ISoundService;II)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/sound/tonegen/ToneGenerator;->modeLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 44
    iput p3, p0, Lcom/viber/voip/sound/tonegen/ToneGenerator;->_streamType:I

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/viber/voip/sound/tonegen/ToneGenerator;->_toneGenerator:Landroid/media/ToneGenerator;

    .line 46
    iput-object p1, p0, Lcom/viber/voip/sound/tonegen/ToneGenerator;->_soundService:Lcom/viber/voip/sound/ISoundService;

    .line 47
    iput p2, p0, Lcom/viber/voip/sound/tonegen/ToneGenerator;->_modeSet:I

    .line 48
    return-void
.end method

.method private static getToneGenerator(I)Landroid/media/ToneGenerator;
    .locals 3
    .parameter

    .prologue
    .line 32
    sget-object v1, Lcom/viber/voip/sound/tonegen/ToneGenerator;->_monitor:Landroid/os/Handler;

    monitor-enter v1

    .line 33
    :try_start_0
    new-instance v0, Landroid/media/ToneGenerator;

    const/16 v2, 0x64

    invoke-direct {v0, p0, v2}, Landroid/media/ToneGenerator;-><init>(II)V

    monitor-exit v1

    return-object v0

    .line 34
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private release()V
    .locals 2

    .prologue
    .line 102
    sget-object v1, Lcom/viber/voip/sound/tonegen/ToneGenerator;->_monitor:Landroid/os/Handler;

    monitor-enter v1

    .line 103
    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/sound/tonegen/ToneGenerator;->_toneGenerator:Landroid/media/ToneGenerator;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/viber/voip/sound/tonegen/ToneGenerator;->_toneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->release()V

    .line 106
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/viber/voip/sound/tonegen/ToneGenerator;->_toneGenerator:Landroid/media/ToneGenerator;

    .line 107
    monitor-exit v1

    .line 108
    return-void

    .line 107
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public onModeStateChangeDeferred(III)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 129
    const/4 v0, 0x5

    sget-object v1, Lcom/viber/voip/sound/tonegen/ToneGenerator;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ToneGenerator got defer signal for mode state from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Lcom/viber/voip/sound/CommonAbstractSoundService;->getModeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p3}, Lcom/viber/voip/sound/CommonAbstractSoundService;->getModeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", reason "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 130
    return-void
.end method

.method public onModeStateChangeRejected(III)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 124
    const/4 v0, 0x5

    sget-object v1, Lcom/viber/voip/sound/tonegen/ToneGenerator;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ToneGenerator got reject signal for mode state from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Lcom/viber/voip/sound/CommonAbstractSoundService;->getModeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p3}, Lcom/viber/voip/sound/CommonAbstractSoundService;->getModeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", reason "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 125
    return-void
.end method

.method public onModeStateChanged(I)V
    .locals 0
    .parameter

    .prologue
    .line 120
    return-void
.end method

.method public onModeStatePreChanged(I)V
    .locals 1
    .parameter

    .prologue
    .line 112
    iget v0, p0, Lcom/viber/voip/sound/tonegen/ToneGenerator;->_modeSet:I

    if-eq v0, p1, :cond_0

    .line 113
    iget-object v0, p0, Lcom/viber/voip/sound/tonegen/ToneGenerator;->modeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 116
    :goto_0
    return-void

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/sound/tonegen/ToneGenerator;->modeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0
.end method

.method protected repostCallbackAfter(Ljava/lang/Runnable;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 74
    if-nez p1, :cond_0

    .line 77
    :goto_0
    return-void

    .line 75
    :cond_0
    sget-object v0, Lcom/viber/voip/sound/tonegen/ToneGenerator;->_monitor:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 76
    sget-object v0, Lcom/viber/voip/sound/tonegen/ToneGenerator;->_monitor:Landroid/os/Handler;

    int-to-long v1, p2

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public startTone(I)V
    .locals 3
    .parameter

    .prologue
    .line 61
    sget-object v1, Lcom/viber/voip/sound/tonegen/ToneGenerator;->_monitor:Landroid/os/Handler;

    monitor-enter v1

    .line 62
    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/sound/tonegen/ToneGenerator;->_soundService:Lcom/viber/voip/sound/ISoundService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/sound/tonegen/ToneGenerator;->_soundService:Lcom/viber/voip/sound/ISoundService;

    invoke-interface {v0}, Lcom/viber/voip/sound/ISoundService;->getMode()I

    move-result v0

    iget v2, p0, Lcom/viber/voip/sound/tonegen/ToneGenerator;->_modeSet:I

    if-eq v0, v2, :cond_1

    :cond_0
    monitor-exit v1

    .line 71
    :goto_0
    return-void

    .line 64
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/sound/tonegen/ToneGenerator;->_toneGenerator:Landroid/media/ToneGenerator;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/viber/voip/sound/tonegen/ToneGenerator;->stopTone()V

    .line 65
    :cond_2
    iget v0, p0, Lcom/viber/voip/sound/tonegen/ToneGenerator;->_streamType:I

    invoke-static {v0}, Lcom/viber/voip/sound/tonegen/ToneGenerator;->getToneGenerator(I)Landroid/media/ToneGenerator;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/sound/tonegen/ToneGenerator;->_toneGenerator:Landroid/media/ToneGenerator;

    .line 66
    iget-object v0, p0, Lcom/viber/voip/sound/tonegen/ToneGenerator;->modeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 67
    iget-object v0, p0, Lcom/viber/voip/sound/tonegen/ToneGenerator;->_toneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0, p1}, Landroid/media/ToneGenerator;->startTone(I)Z

    .line 68
    iget-object v0, p0, Lcom/viber/voip/sound/tonegen/ToneGenerator;->modeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 70
    :cond_3
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public startTone(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 98
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/viber/voip/sound/tonegen/ToneGenerator;->startTone(IILjava/lang/Runnable;)V

    .line 99
    return-void
.end method

.method public startTone(IILjava/lang/Runnable;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x3

    .line 80
    sget-object v0, Lcom/viber/voip/sound/tonegen/ToneGenerator;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "starting tone #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/ duration "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/ callback="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/viber/voip/sound/SoundFactory;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 81
    sget-object v1, Lcom/viber/voip/sound/tonegen/ToneGenerator;->_monitor:Landroid/os/Handler;

    monitor-enter v1

    .line 82
    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/sound/tonegen/ToneGenerator;->_soundService:Lcom/viber/voip/sound/ISoundService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/sound/tonegen/ToneGenerator;->_soundService:Lcom/viber/voip/sound/ISoundService;

    invoke-interface {v0}, Lcom/viber/voip/sound/ISoundService;->getMode()I

    move-result v0

    iget v2, p0, Lcom/viber/voip/sound/tonegen/ToneGenerator;->_modeSet:I

    if-eq v0, v2, :cond_1

    :cond_0
    monitor-exit v1

    .line 95
    :goto_0
    return-void

    .line 84
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/sound/tonegen/ToneGenerator;->_toneGenerator:Landroid/media/ToneGenerator;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/viber/voip/sound/tonegen/ToneGenerator;->stopTone()V

    .line 85
    :cond_2
    iget v0, p0, Lcom/viber/voip/sound/tonegen/ToneGenerator;->_streamType:I

    invoke-static {v0}, Lcom/viber/voip/sound/tonegen/ToneGenerator;->getToneGenerator(I)Landroid/media/ToneGenerator;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/sound/tonegen/ToneGenerator;->_toneGenerator:Landroid/media/ToneGenerator;

    .line 86
    iget-object v0, p0, Lcom/viber/voip/sound/tonegen/ToneGenerator;->modeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 87
    const/4 v0, 0x3

    sget-object v2, Lcom/viber/voip/sound/tonegen/ToneGenerator;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "really starting tone #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/ duration "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/ callback="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/viber/voip/sound/SoundFactory;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/viber/voip/sound/tonegen/ToneGenerator;->_toneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0, p1, p2}, Landroid/media/ToneGenerator;->startTone(II)Z

    .line 89
    iget-object v0, p0, Lcom/viber/voip/sound/tonegen/ToneGenerator;->modeLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 91
    :cond_3
    if-eqz p3, :cond_4

    .line 92
    invoke-virtual {p0, p3, p2}, Lcom/viber/voip/sound/tonegen/ToneGenerator;->repostCallbackAfter(Ljava/lang/Runnable;I)V

    .line 94
    :cond_4
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public stopTone()V
    .locals 2

    .prologue
    .line 51
    sget-object v1, Lcom/viber/voip/sound/tonegen/ToneGenerator;->_monitor:Landroid/os/Handler;

    monitor-enter v1

    .line 52
    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/sound/tonegen/ToneGenerator;->_toneGenerator:Landroid/media/ToneGenerator;

    if-nez v0, :cond_0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    :goto_0
    return-void

    .line 54
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/viber/voip/sound/tonegen/ToneGenerator;->_toneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->stopTone()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 56
    :try_start_2
    invoke-direct {p0}, Lcom/viber/voip/sound/tonegen/ToneGenerator;->release()V

    .line 57
    :goto_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 55
    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 56
    :try_start_4
    invoke-direct {p0}, Lcom/viber/voip/sound/tonegen/ToneGenerator;->release()V

    goto :goto_1

    :catchall_1
    move-exception v0

    invoke-direct {p0}, Lcom/viber/voip/sound/tonegen/ToneGenerator;->release()V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method
