.class public Lcom/viber/voip/util/bw;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static e:Lcom/viber/voip/util/bw;


# instance fields
.field private a:Z

.field private b:Z

.field private c:Ljava/lang/Object;

.field private d:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/viber/voip/util/bz;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/util/bw;->c:Ljava/lang/Object;

    .line 37
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/util/bw;->d:Ljava/util/Queue;

    .line 39
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/util/bx;

    invoke-direct {v1, p0}, Lcom/viber/voip/util/bx;-><init>(Lcom/viber/voip/util/bw;)V

    invoke-virtual {v0, v1}, Lcom/viber/jni/PhoneControllerWrapper;->addReadyListener(Lcom/viber/jni/PhoneControllerReadyListener;)V

    .line 45
    return-void
.end method

.method public static a()Lcom/viber/voip/util/bw;
    .locals 2

    .prologue
    .line 26
    sget-object v0, Lcom/viber/voip/util/bw;->e:Lcom/viber/voip/util/bw;

    if-nez v0, :cond_1

    .line 27
    const-class v1, Lcom/viber/voip/util/bw;

    monitor-enter v1

    .line 28
    :try_start_0
    sget-object v0, Lcom/viber/voip/util/bw;->e:Lcom/viber/voip/util/bw;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Lcom/viber/voip/util/bw;

    invoke-direct {v0}, Lcom/viber/voip/util/bw;-><init>()V

    sput-object v0, Lcom/viber/voip/util/bw;->e:Lcom/viber/voip/util/bw;

    .line 31
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    :cond_1
    sget-object v0, Lcom/viber/voip/util/bw;->e:Lcom/viber/voip/util/bw;

    return-object v0

    .line 31
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private a(J)V
    .locals 4
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 81
    iget-object v1, p0, Lcom/viber/voip/util/bw;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 82
    :try_start_0
    iget-boolean v0, p0, Lcom/viber/voip/util/bw;->a:Z

    if-eq v0, v2, :cond_0

    .line 83
    iget-object v0, p0, Lcom/viber/voip/util/bw;->d:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/util/bz;

    .line 84
    if-eqz v0, :cond_1

    .line 85
    invoke-static {v0}, Lcom/viber/voip/util/bz;->b(Lcom/viber/voip/util/bz;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/viber/voip/util/by;

    invoke-direct {v3, p0, v0}, Lcom/viber/voip/util/by;-><init>(Lcom/viber/voip/util/bw;Lcom/viber/voip/util/bz;)V

    invoke-virtual {v2, v3, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 96
    :cond_0
    :goto_0
    monitor-exit v1

    .line 97
    return-void

    .line 93
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/viber/voip/util/bw;->b:Z

    goto :goto_0

    .line 96
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/viber/voip/util/bw;)V
    .locals 0
    .parameter

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/viber/voip/util/bw;->b()V

    return-void
.end method

.method static synthetic a(Lcom/viber/voip/util/bw;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 12
    invoke-direct {p0, p1, p2}, Lcom/viber/voip/util/bw;->a(J)V

    return-void
.end method

.method private b()V
    .locals 4

    .prologue
    .line 75
    iget-object v1, p0, Lcom/viber/voip/util/bw;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 76
    const-wide/16 v2, 0x64

    :try_start_0
    invoke-direct {p0, v2, v3}, Lcom/viber/voip/util/bw;->a(J)V

    .line 77
    monitor-exit v1

    .line 78
    return-void

    .line 77
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 48
    new-instance v0, Lcom/viber/voip/util/bz;

    invoke-direct {v0, p0, p1, p2}, Lcom/viber/voip/util/bz;-><init>(Lcom/viber/voip/util/bw;Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 49
    iget-object v1, p0, Lcom/viber/voip/util/bw;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 51
    :try_start_0
    iget-object v2, p0, Lcom/viber/voip/util/bw;->d:Ljava/util/Queue;

    invoke-interface {v2, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 52
    iget-boolean v0, p0, Lcom/viber/voip/util/bw;->b:Z

    if-eqz v0, :cond_0

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/viber/voip/util/bw;->b:Z

    .line 54
    const-wide/16 v2, 0x64

    invoke-direct {p0, v2, v3}, Lcom/viber/voip/util/bw;->a(J)V

    .line 56
    :cond_0
    monitor-exit v1

    .line 58
    return-void

    .line 56
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
