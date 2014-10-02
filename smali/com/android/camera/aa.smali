.class Lcom/android/camera/aa;
.super Lcom/android/camera/w;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/android/camera/MonitoredActivity;

.field private final b:Landroid/app/ProgressDialog;

.field private final c:Ljava/lang/Runnable;

.field private final d:Landroid/os/Handler;

.field private final e:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/android/camera/MonitoredActivity;Ljava/lang/Runnable;Landroid/app/ProgressDialog;Landroid/os/Handler;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 372
    invoke-direct {p0}, Lcom/android/camera/w;-><init>()V

    .line 364
    new-instance v0, Lcom/android/camera/ab;

    invoke-direct {v0, p0}, Lcom/android/camera/ab;-><init>(Lcom/android/camera/aa;)V

    iput-object v0, p0, Lcom/android/camera/aa;->e:Ljava/lang/Runnable;

    .line 373
    iput-object p1, p0, Lcom/android/camera/aa;->a:Lcom/android/camera/MonitoredActivity;

    .line 374
    iput-object p3, p0, Lcom/android/camera/aa;->b:Landroid/app/ProgressDialog;

    .line 375
    iput-object p2, p0, Lcom/android/camera/aa;->c:Ljava/lang/Runnable;

    .line 376
    iget-object v0, p0, Lcom/android/camera/aa;->a:Lcom/android/camera/MonitoredActivity;

    invoke-virtual {v0, p0}, Lcom/android/camera/MonitoredActivity;->a(Lcom/android/camera/x;)V

    .line 377
    iput-object p4, p0, Lcom/android/camera/aa;->d:Landroid/os/Handler;

    .line 378
    return-void
.end method

.method static synthetic a(Lcom/android/camera/aa;)Lcom/android/camera/MonitoredActivity;
    .locals 1
    .parameter

    .prologue
    .line 357
    iget-object v0, p0, Lcom/android/camera/aa;->a:Lcom/android/camera/MonitoredActivity;

    return-object v0
.end method

.method static synthetic b(Lcom/android/camera/aa;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter

    .prologue
    .line 357
    iget-object v0, p0, Lcom/android/camera/aa;->b:Landroid/app/ProgressDialog;

    return-object v0
.end method


# virtual methods
.method public b(Lcom/android/camera/MonitoredActivity;)V
    .locals 2
    .parameter

    .prologue
    .line 393
    iget-object v0, p0, Lcom/android/camera/aa;->e:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 394
    iget-object v0, p0, Lcom/android/camera/aa;->d:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/aa;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 395
    return-void
.end method

.method public c(Lcom/android/camera/MonitoredActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 404
    iget-object v0, p0, Lcom/android/camera/aa;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 405
    return-void
.end method

.method public d(Lcom/android/camera/MonitoredActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 399
    iget-object v0, p0, Lcom/android/camera/aa;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V

    .line 400
    return-void
.end method

.method public run()V
    .locals 3

    .prologue
    .line 382
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/aa;->c:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 384
    iget-object v0, p0, Lcom/android/camera/aa;->d:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/aa;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 386
    return-void

    .line 384
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/camera/aa;->d:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/camera/aa;->e:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    throw v0
.end method
