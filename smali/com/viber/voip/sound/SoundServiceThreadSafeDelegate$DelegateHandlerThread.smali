.class final Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate$DelegateHandlerThread;
.super Landroid/os/HandlerThread;
.source "SourceFile"


# instance fields
.field private _looper:Landroid/os/Looper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    const-string/jumbo v0, "SoundService handler thread"

    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 44
    invoke-virtual {p0}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate$DelegateHandlerThread;->start()V

    .line 45
    monitor-enter p0

    .line 46
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate$DelegateHandlerThread;->_looper:Landroid/os/Looper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 48
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 49
    :catch_0
    move-exception v0

    goto :goto_0

    .line 52
    :cond_0
    :try_start_2
    monitor-exit p0

    .line 53
    return-void

    .line 52
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method


# virtual methods
.method public getLooper()Landroid/os/Looper;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate$DelegateHandlerThread;->_looper:Landroid/os/Looper;

    return-object v0
.end method

.method public quit()Z
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate$DelegateHandlerThread;->_looper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 59
    const/4 v0, 0x1

    return v0
.end method

.method public run()V
    .locals 1

    .prologue
    .line 62
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 64
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate$DelegateHandlerThread;->_looper:Landroid/os/Looper;

    .line 65
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 66
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 67
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 68
    :try_start_2
    invoke-static {}, Landroid/os/Looper;->loop()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 70
    return-void

    .line 67
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 69
    :catchall_1
    move-exception v0

    throw v0
.end method
