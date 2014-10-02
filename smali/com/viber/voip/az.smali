.class public Lcom/viber/voip/az;
.super Lcom/viber/voip/ao;
.source "SourceFile"


# instance fields
.field final b:Ljava/lang/Object;

.field private c:Z


# direct methods
.method public constructor <init>(Lcom/viber/voip/dk;Landroid/os/Looper;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lcom/viber/voip/ao;-><init>(Lcom/viber/voip/dk;Landroid/os/Looper;)V

    .line 14
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/az;->b:Ljava/lang/Object;

    .line 18
    return-void
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 3

    .prologue
    .line 21
    monitor-enter p0

    const/4 v0, 0x3

    :try_start_0
    iget-object v1, p0, Lcom/viber/voip/az;->a:Ljava/lang/String;

    const-string/jumbo v2, "pause"

    invoke-static {v0, v1, v2}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 22
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/viber/voip/az;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    monitor-exit p0

    return-void

    .line 21
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()V
    .locals 3

    .prologue
    .line 26
    monitor-enter p0

    const/4 v0, 0x3

    :try_start_0
    iget-object v1, p0, Lcom/viber/voip/az;->a:Ljava/lang/String;

    const-string/jumbo v2, "resume"

    invoke-static {v0, v1, v2}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 27
    iget-object v1, p0, Lcom/viber/voip/az;->b:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 28
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/viber/voip/az;->c:Z

    .line 29
    iget-object v0, p0, Lcom/viber/voip/az;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 30
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    monitor-exit p0

    return-void

    .line 30
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 26
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public dispatchMessage(Landroid/os/Message;)V
    .locals 3
    .parameter

    .prologue
    .line 35
    :goto_0
    iget-boolean v0, p0, Lcom/viber/voip/az;->c:Z

    if-eqz v0, :cond_0

    .line 36
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/viber/voip/az;->a:Ljava/lang/String;

    const-string/jumbo v2, "WAIT!!!"

    invoke-static {v0, v1, v2}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 37
    iget-object v1, p0, Lcom/viber/voip/az;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 39
    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/az;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    :goto_1
    :try_start_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 40
    :catch_0
    move-exception v0

    .line 41
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 46
    :cond_0
    invoke-super {p0, p1}, Lcom/viber/voip/ao;->dispatchMessage(Landroid/os/Message;)V

    .line 47
    return-void
.end method
