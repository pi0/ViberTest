.class public Lcom/viber/voip/api/billing/InAppBillingService;
.super Landroid/app/Service;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# static fields
.field private static final AUTOUNBIND_TIMEOUT:J = 0xea60L

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field protected clientStub:Lcom/viber/voip/api/billing/InAppBillingService$InAppBillingServiceServiceImpl;

.field mClientCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mHandler:Landroid/os/Handler;

.field protected volatile mService:Lcom/android/b/a/a;

.field private mServiceSync:Ljava/lang/Object;

.field private mUnbindRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/viber/voip/api/billing/InAppBillingService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/api/billing/InAppBillingService;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 23
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/api/billing/InAppBillingService;->mHandler:Landroid/os/Handler;

    .line 25
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/api/billing/InAppBillingService;->mServiceSync:Ljava/lang/Object;

    .line 27
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/api/billing/InAppBillingService;->mClientCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 34
    new-instance v0, Lcom/viber/voip/api/billing/InAppBillingService$InAppBillingServiceServiceImpl;

    invoke-direct {v0, p0}, Lcom/viber/voip/api/billing/InAppBillingService$InAppBillingServiceServiceImpl;-><init>(Lcom/viber/voip/api/billing/InAppBillingService;)V

    iput-object v0, p0, Lcom/viber/voip/api/billing/InAppBillingService;->clientStub:Lcom/viber/voip/api/billing/InAppBillingService$InAppBillingServiceServiceImpl;

    .line 101
    new-instance v0, Lcom/viber/voip/api/billing/InAppBillingService$1;

    invoke-direct {v0, p0}, Lcom/viber/voip/api/billing/InAppBillingService$1;-><init>(Lcom/viber/voip/api/billing/InAppBillingService;)V

    iput-object v0, p0, Lcom/viber/voip/api/billing/InAppBillingService;->mUnbindRunnable:Ljava/lang/Runnable;

    .line 31
    return-void
.end method

.method static synthetic access$000(Lcom/viber/voip/api/billing/InAppBillingService;)V
    .locals 0
    .parameter

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/viber/voip/api/billing/InAppBillingService;->unbind()V

    return-void
.end method

.method static synthetic access$100(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 19
    invoke-static {p0}, Lcom/viber/voip/api/billing/InAppBillingService;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/viber/voip/api/billing/InAppBillingService;)Lcom/android/b/a/a;
    .locals 1
    .parameter

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/viber/voip/api/billing/InAppBillingService;->getBillingService()Lcom/android/b/a/a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/viber/voip/api/billing/InAppBillingService;)V
    .locals 0
    .parameter

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/viber/voip/api/billing/InAppBillingService;->clientBegin()V

    return-void
.end method

.method static synthetic access$400(Lcom/viber/voip/api/billing/InAppBillingService;)V
    .locals 0
    .parameter

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/viber/voip/api/billing/InAppBillingService;->clientEnd()V

    return-void
.end method

.method private clientBegin()V
    .locals 2

    .prologue
    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "clientBegin, client count: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/api/billing/InAppBillingService;->mClientCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/api/billing/InAppBillingService;->log(Ljava/lang/String;)V

    .line 141
    invoke-direct {p0}, Lcom/viber/voip/api/billing/InAppBillingService;->unscheduleUnbind()V

    .line 142
    return-void
.end method

.method private clientEnd()V
    .locals 3

    .prologue
    .line 144
    iget-object v0, p0, Lcom/viber/voip/api/billing/InAppBillingService;->mClientCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    .line 145
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "clientEnd, client count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/viber/voip/api/billing/InAppBillingService;->log(Ljava/lang/String;)V

    .line 146
    if-nez v0, :cond_0

    .line 147
    invoke-direct {p0}, Lcom/viber/voip/api/billing/InAppBillingService;->scheduleUnbind()V

    .line 149
    :cond_0
    return-void
.end method

.method private getBillingService()Lcom/android/b/a/a;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 59
    iget-object v2, p0, Lcom/viber/voip/api/billing/InAppBillingService;->mServiceSync:Ljava/lang/Object;

    monitor-enter v2

    .line 60
    :try_start_0
    invoke-direct {p0}, Lcom/viber/voip/api/billing/InAppBillingService;->isMainThread()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 61
    const-string/jumbo v1, "bindRealBillingIfNeeded called from main thread!!! Ignoring"

    invoke-static {v1}, Lcom/viber/voip/api/billing/InAppBillingService;->log(Ljava/lang/String;)V

    .line 62
    monitor-exit v2

    .line 87
    :goto_0
    return-object v0

    .line 74
    :cond_0
    const-string/jumbo v3, "calling bindService..."

    invoke-static {v3}, Lcom/viber/voip/api/billing/InAppBillingService;->log(Ljava/lang/String;)V

    .line 75
    const/4 v3, 0x1

    invoke-virtual {p0, v1, p0, v3}, Lcom/viber/voip/api/billing/InAppBillingService;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 76
    const-string/jumbo v1, "bindService done"

    invoke-static {v1}, Lcom/viber/voip/api/billing/InAppBillingService;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    :try_start_1
    const-string/jumbo v1, "waiting for connection..."

    invoke-static {v1}, Lcom/viber/voip/api/billing/InAppBillingService;->log(Ljava/lang/String;)V

    .line 80
    iget-object v1, p0, Lcom/viber/voip/api/billing/InAppBillingService;->mServiceSync:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    .line 81
    const-string/jumbo v1, "waiting for connection finished"

    invoke-static {v1}, Lcom/viber/voip/api/billing/InAppBillingService;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 67
    :cond_1
    :goto_1
    :try_start_2
    iget-object v1, p0, Lcom/viber/voip/api/billing/InAppBillingService;->mService:Lcom/android/b/a/a;

    if-nez v1, :cond_2

    .line 68
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "com.android.vending.billing.InAppBillingService.BIND"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0}, Lcom/viber/voip/api/billing/InAppBillingService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 70
    monitor-exit v2

    goto :goto_0

    .line 88
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 82
    :catch_0
    move-exception v1

    .line 83
    :try_start_3
    const-string/jumbo v3, "waiting for connection interrupted!"

    invoke-static {v3}, Lcom/viber/voip/api/billing/InAppBillingService;->log(Ljava/lang/String;)V

    .line 84
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 87
    :cond_2
    iget-object v0, p0, Lcom/viber/voip/api/billing/InAppBillingService;->mService:Lcom/android/b/a/a;

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method private isMainThread()Z
    .locals 2

    .prologue
    .line 53
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 244
    return-void
.end method

.method private scheduleUnbind()V
    .locals 4

    .prologue
    .line 92
    const-string/jumbo v0, "scheduleUnbind"

    invoke-static {v0}, Lcom/viber/voip/api/billing/InAppBillingService;->log(Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/viber/voip/api/billing/InAppBillingService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/viber/voip/api/billing/InAppBillingService;->mUnbindRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 94
    iget-object v0, p0, Lcom/viber/voip/api/billing/InAppBillingService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/viber/voip/api/billing/InAppBillingService;->mUnbindRunnable:Ljava/lang/Runnable;

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 95
    return-void
.end method

.method private unbind()V
    .locals 2

    .prologue
    .line 132
    const-string/jumbo v0, "unbind()"

    invoke-static {v0}, Lcom/viber/voip/api/billing/InAppBillingService;->log(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p0, p0}, Lcom/viber/voip/api/billing/InAppBillingService;->unbindService(Landroid/content/ServiceConnection;)V

    .line 134
    iget-object v1, p0, Lcom/viber/voip/api/billing/InAppBillingService;->mServiceSync:Ljava/lang/Object;

    monitor-enter v1

    .line 135
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/viber/voip/api/billing/InAppBillingService;->mService:Lcom/android/b/a/a;

    .line 136
    monitor-exit v1

    .line 137
    return-void

    .line 136
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private unscheduleUnbind()V
    .locals 2

    .prologue
    .line 97
    const-string/jumbo v0, "unscheduleUnbind"

    invoke-static {v0}, Lcom/viber/voip/api/billing/InAppBillingService;->log(Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/viber/voip/api/billing/InAppBillingService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/viber/voip/api/billing/InAppBillingService;->mUnbindRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 99
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter

    .prologue
    .line 235
    const-string/jumbo v0, "onBind()"

    invoke-static {v0}, Lcom/viber/voip/api/billing/InAppBillingService;->log(Ljava/lang/String;)V

    .line 236
    iget-object v0, p0, Lcom/viber/voip/api/billing/InAppBillingService;->clientStub:Lcom/viber/voip/api/billing/InAppBillingService$InAppBillingServiceServiceImpl;

    invoke-virtual {v0}, Lcom/viber/voip/api/billing/InAppBillingService$InAppBillingServiceServiceImpl;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 50
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 110
    const-string/jumbo v0, "onServiceConnected()"

    invoke-static {v0}, Lcom/viber/voip/api/billing/InAppBillingService;->log(Ljava/lang/String;)V

    .line 111
    iget-object v1, p0, Lcom/viber/voip/api/billing/InAppBillingService;->mServiceSync:Ljava/lang/Object;

    monitor-enter v1

    .line 112
    :try_start_0
    invoke-static {p2}, Lcom/android/b/a/b;->a(Landroid/os/IBinder;)Lcom/android/b/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/api/billing/InAppBillingService;->mService:Lcom/android/b/a/a;

    .line 113
    iget-object v0, p0, Lcom/viber/voip/api/billing/InAppBillingService;->mServiceSync:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 114
    monitor-exit v1

    .line 115
    return-void

    .line 114
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter

    .prologue
    .line 119
    const-string/jumbo v0, "onServiceDisconnected()"

    invoke-static {v0}, Lcom/viber/voip/api/billing/InAppBillingService;->log(Ljava/lang/String;)V

    .line 120
    iget-object v1, p0, Lcom/viber/voip/api/billing/InAppBillingService;->mServiceSync:Ljava/lang/Object;

    monitor-enter v1

    .line 121
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/viber/voip/api/billing/InAppBillingService;->mService:Lcom/android/b/a/a;

    .line 122
    monitor-exit v1

    .line 123
    return-void

    .line 122
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 127
    const-string/jumbo v0, "onStartCommand()"

    invoke-static {v0}, Lcom/viber/voip/api/billing/InAppBillingService;->log(Ljava/lang/String;)V

    .line 128
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method
