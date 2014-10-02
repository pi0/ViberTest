.class final Lcom/viber/voip/qrcode/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private c:Z

.field private d:Z

.field private final e:Z

.field private final f:Landroid/hardware/Camera;

.field private g:Lcom/viber/voip/util/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/viber/voip/util/b/a",
            "<***>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 34
    const-class v0, Lcom/viber/voip/qrcode/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/qrcode/a;->a:Ljava/lang/String;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/viber/voip/qrcode/a;->b:Ljava/util/Collection;

    .line 40
    sget-object v0, Lcom/viber/voip/qrcode/a;->b:Ljava/util/Collection;

    const-string/jumbo v1, "auto"

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 41
    sget-object v0, Lcom/viber/voip/qrcode/a;->b:Ljava/util/Collection;

    const-string/jumbo v1, "macro"

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 42
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/hardware/Camera;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p2, p0, Lcom/viber/voip/qrcode/a;->f:Landroid/hardware/Camera;

    .line 53
    invoke-virtual {p2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v0

    .line 54
    sget-object v1, Lcom/viber/voip/qrcode/a;->b:Ljava/util/Collection;

    invoke-interface {v1, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/viber/voip/qrcode/a;->e:Z

    .line 58
    invoke-virtual {p0}, Lcom/viber/voip/qrcode/a;->a()V

    .line 59
    return-void
.end method

.method private declared-synchronized c()V
    .locals 3

    .prologue
    .line 68
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/viber/voip/qrcode/a;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/qrcode/a;->g:Lcom/viber/voip/util/b/a;

    if-nez v0, :cond_0

    .line 69
    new-instance v0, Lcom/viber/voip/qrcode/c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/viber/voip/qrcode/c;-><init>(Lcom/viber/voip/qrcode/a;Lcom/viber/voip/qrcode/b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    :try_start_1
    sget-object v1, Lcom/viber/voip/util/b/a;->b:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/qrcode/c;->a(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcom/viber/voip/util/b/a;

    .line 72
    iput-object v0, p0, Lcom/viber/voip/qrcode/a;->g:Lcom/viber/voip/util/b/a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_1} :catch_0

    .line 77
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 68
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 73
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private declared-synchronized d()V
    .locals 2

    .prologue
    .line 97
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/qrcode/a;->g:Lcom/viber/voip/util/b/a;

    if-eqz v0, :cond_1

    .line 98
    iget-object v0, p0, Lcom/viber/voip/qrcode/a;->g:Lcom/viber/voip/util/b/a;

    invoke-virtual {v0}, Lcom/viber/voip/util/b/a;->a()Lcom/viber/voip/util/b/j;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/util/b/j;->c:Lcom/viber/voip/util/b/j;

    if-eq v0, v1, :cond_0

    .line 99
    iget-object v0, p0, Lcom/viber/voip/qrcode/a;->g:Lcom/viber/voip/util/b/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/viber/voip/util/b/a;->a(Z)Z

    .line 101
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/viber/voip/qrcode/a;->g:Lcom/viber/voip/util/b/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    :cond_1
    monitor-exit p0

    return-void

    .line 97
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method declared-synchronized a()V
    .locals 1

    .prologue
    .line 80
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/viber/voip/qrcode/a;->e:Z

    if-eqz v0, :cond_0

    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/viber/voip/qrcode/a;->g:Lcom/viber/voip/util/b/a;

    .line 82
    iget-boolean v0, p0, Lcom/viber/voip/qrcode/a;->c:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/viber/voip/qrcode/a;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 84
    :try_start_1
    iget-object v0, p0, Lcom/viber/voip/qrcode/a;->f:Landroid/hardware/Camera;

    invoke-virtual {v0, p0}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/viber/voip/qrcode/a;->d:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 94
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 86
    :catch_0
    move-exception v0

    .line 90
    :try_start_2
    invoke-direct {p0}, Lcom/viber/voip/qrcode/a;->c()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 80
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized b()V
    .locals 1

    .prologue
    .line 106
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/viber/voip/qrcode/a;->c:Z

    .line 107
    iget-boolean v0, p0, Lcom/viber/voip/qrcode/a;->e:Z

    if-eqz v0, :cond_0

    .line 108
    invoke-direct {p0}, Lcom/viber/voip/qrcode/a;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    :try_start_1
    iget-object v0, p0, Lcom/viber/voip/qrcode/a;->f:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->cancelAutoFocus()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 117
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 106
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 112
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public declared-synchronized onAutoFocus(ZLandroid/hardware/Camera;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 63
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/viber/voip/qrcode/a;->d:Z

    .line 64
    invoke-direct {p0}, Lcom/viber/voip/qrcode/a;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    monitor-exit p0

    return-void

    .line 63
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
