.class public Lcom/viber/voip/util/fr;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static e:Ljava/lang/String;


# instance fields
.field private a:Landroid/os/Handler;

.field private b:Ljava/lang/Runnable;

.field private c:J

.field private volatile d:Z

.field private f:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-string/jumbo v0, "PeriodicMon"

    sput-object v0, Lcom/viber/voip/util/fr;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Ljava/lang/Runnable;J)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/viber/voip/util/fr;->d:Z

    .line 29
    new-instance v0, Lcom/viber/voip/util/fs;

    invoke-direct {v0, p0}, Lcom/viber/voip/util/fs;-><init>(Lcom/viber/voip/util/fr;)V

    iput-object v0, p0, Lcom/viber/voip/util/fr;->f:Ljava/lang/Runnable;

    .line 19
    iput-object p1, p0, Lcom/viber/voip/util/fr;->a:Landroid/os/Handler;

    .line 20
    iput-object p2, p0, Lcom/viber/voip/util/fr;->b:Ljava/lang/Runnable;

    .line 21
    iput-wide p3, p0, Lcom/viber/voip/util/fr;->c:J

    .line 23
    iget-object v0, p0, Lcom/viber/voip/util/fr;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/util/fr;->b:Ljava/lang/Runnable;

    if-nez v0, :cond_1

    .line 25
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Invalid params"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 27
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/util/fr;)Z
    .locals 1
    .parameter

    .prologue
    .line 9
    iget-boolean v0, p0, Lcom/viber/voip/util/fr;->d:Z

    return v0
.end method

.method static synthetic b(Lcom/viber/voip/util/fr;)Ljava/lang/Runnable;
    .locals 1
    .parameter

    .prologue
    .line 9
    iget-object v0, p0, Lcom/viber/voip/util/fr;->b:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic c(Lcom/viber/voip/util/fr;)Ljava/lang/Runnable;
    .locals 1
    .parameter

    .prologue
    .line 9
    iget-object v0, p0, Lcom/viber/voip/util/fr;->f:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic d(Lcom/viber/voip/util/fr;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 9
    iget-object v0, p0, Lcom/viber/voip/util/fr;->a:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic e(Lcom/viber/voip/util/fr;)J
    .locals 2
    .parameter

    .prologue
    .line 9
    iget-wide v0, p0, Lcom/viber/voip/util/fr;->c:J

    return-wide v0
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 2

    .prologue
    .line 45
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/viber/voip/util/fr;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 53
    :goto_0
    monitor-exit p0

    return-void

    .line 48
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/viber/voip/util/fr;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/viber/voip/util/fr;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/viber/voip/util/fr;->d:Z

    .line 52
    iget-object v0, p0, Lcom/viber/voip/util/fr;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/viber/voip/util/fr;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 45
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()V
    .locals 2

    .prologue
    .line 57
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/viber/voip/util/fr;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 62
    :goto_0
    monitor-exit p0

    return-void

    .line 60
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/viber/voip/util/fr;->d:Z

    .line 61
    iget-object v0, p0, Lcom/viber/voip/util/fr;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/viber/voip/util/fr;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 57
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
