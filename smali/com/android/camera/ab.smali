.class Lcom/android/camera/ab;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/android/camera/aa;


# direct methods
.method constructor <init>(Lcom/android/camera/aa;)V
    .locals 0
    .parameter

    .prologue
    .line 364
    iput-object p1, p0, Lcom/android/camera/ab;->a:Lcom/android/camera/aa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 366
    iget-object v0, p0, Lcom/android/camera/ab;->a:Lcom/android/camera/aa;

    invoke-static {v0}, Lcom/android/camera/aa;->a(Lcom/android/camera/aa;)Lcom/android/camera/MonitoredActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ab;->a:Lcom/android/camera/aa;

    invoke-virtual {v0, v1}, Lcom/android/camera/MonitoredActivity;->b(Lcom/android/camera/x;)V

    .line 367
    iget-object v0, p0, Lcom/android/camera/ab;->a:Lcom/android/camera/aa;

    invoke-static {v0}, Lcom/android/camera/aa;->b(Lcom/android/camera/aa;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ab;->a:Lcom/android/camera/aa;

    invoke-static {v0}, Lcom/android/camera/aa;->b(Lcom/android/camera/aa;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 368
    :cond_0
    return-void
.end method
