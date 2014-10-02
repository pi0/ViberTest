.class final Lcom/viber/voip/qrcode/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Landroid/app/Activity;

.field private final c:Landroid/content/BroadcastReceiver;

.field private d:Z

.field private e:Lcom/viber/voip/util/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/viber/voip/util/b/a",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/viber/voip/qrcode/h;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/qrcode/h;->a:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .parameter

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/viber/voip/qrcode/h;->b:Landroid/app/Activity;

    .line 46
    new-instance v0, Lcom/viber/voip/qrcode/k;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/viber/voip/qrcode/k;-><init>(Lcom/viber/voip/qrcode/h;Lcom/viber/voip/qrcode/i;)V

    iput-object v0, p0, Lcom/viber/voip/qrcode/h;->c:Landroid/content/BroadcastReceiver;

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/viber/voip/qrcode/h;->d:Z

    .line 48
    invoke-virtual {p0}, Lcom/viber/voip/qrcode/h;->a()V

    .line 49
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/qrcode/h;)V
    .locals 0
    .parameter

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/viber/voip/qrcode/h;->f()V

    return-void
.end method

.method static synthetic b(Lcom/viber/voip/qrcode/h;)Landroid/app/Activity;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/viber/voip/qrcode/h;->b:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/viber/voip/qrcode/h;->a:Ljava/lang/String;

    return-object v0
.end method

.method private declared-synchronized f()V
    .locals 2

    .prologue
    .line 78
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/qrcode/h;->e:Lcom/viber/voip/util/b/a;

    .line 79
    if-eqz v0, :cond_0

    .line 80
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/viber/voip/util/b/a;->a(Z)Z

    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/viber/voip/qrcode/h;->e:Lcom/viber/voip/util/b/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    :cond_0
    monitor-exit p0

    return-void

    .line 78
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method declared-synchronized a()V
    .locals 3

    .prologue
    .line 52
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/viber/voip/qrcode/h;->f()V

    .line 53
    new-instance v0, Lcom/viber/voip/qrcode/j;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/viber/voip/qrcode/j;-><init>(Lcom/viber/voip/qrcode/h;Lcom/viber/voip/qrcode/i;)V

    iput-object v0, p0, Lcom/viber/voip/qrcode/h;->e:Lcom/viber/voip/util/b/a;

    .line 54
    iget-object v0, p0, Lcom/viber/voip/qrcode/h;->e:Lcom/viber/voip/util/b/a;

    sget-object v1, Lcom/viber/voip/util/b/a;->b:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/util/b/a;->a(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcom/viber/voip/util/b/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    monitor-exit p0

    return-void

    .line 52
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()V
    .locals 2

    .prologue
    .line 58
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/viber/voip/qrcode/h;->f()V

    .line 59
    iget-boolean v0, p0, Lcom/viber/voip/qrcode/h;->d:Z

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/viber/voip/qrcode/h;->b:Landroid/app/Activity;

    iget-object v1, p0, Lcom/viber/voip/qrcode/h;->c:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/viber/voip/qrcode/h;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    :goto_0
    monitor-exit p0

    return-void

    .line 63
    :cond_0
    :try_start_1
    sget-object v0, Lcom/viber/voip/qrcode/h;->a:Ljava/lang/String;

    const-string/jumbo v1, "PowerStatusReceiver was never registered?"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 58
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c()V
    .locals 4

    .prologue
    .line 68
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/viber/voip/qrcode/h;->d:Z

    if-eqz v0, :cond_0

    .line 69
    sget-object v0, Lcom/viber/voip/qrcode/h;->a:Ljava/lang/String;

    const-string/jumbo v1, "PowerStatusReceiver was already registered?"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :goto_0
    invoke-virtual {p0}, Lcom/viber/voip/qrcode/h;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    monitor-exit p0

    return-void

    .line 71
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/viber/voip/qrcode/h;->b:Landroid/app/Activity;

    iget-object v1, p0, Lcom/viber/voip/qrcode/h;->c:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/viber/voip/qrcode/h;->d:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 68
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method d()V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/viber/voip/qrcode/h;->f()V

    .line 87
    return-void
.end method
