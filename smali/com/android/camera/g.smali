.class Lcom/android/camera/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/android/camera/CropImage;


# direct methods
.method constructor <init>(Lcom/android/camera/CropImage;)V
    .locals 0
    .parameter

    .prologue
    .line 218
    iput-object p1, p0, Lcom/android/camera/g;->a:Lcom/android/camera/CropImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 221
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 222
    iget-object v1, p0, Lcom/android/camera/g;->a:Lcom/android/camera/CropImage;

    iget-object v2, p0, Lcom/android/camera/g;->a:Lcom/android/camera/CropImage;

    invoke-static {v2}, Lcom/android/camera/CropImage;->b(Lcom/android/camera/CropImage;)Lcom/android/camera/a/c;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/g;->a:Lcom/android/camera/CropImage;

    invoke-static {v3}, Lcom/android/camera/CropImage;->c(Lcom/android/camera/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/camera/CropImage;->a(Lcom/android/camera/CropImage;Lcom/android/camera/a/c;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 223
    iget-object v2, p0, Lcom/android/camera/g;->a:Lcom/android/camera/CropImage;

    invoke-static {v2}, Lcom/android/camera/CropImage;->e(Lcom/android/camera/CropImage;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/camera/h;

    invoke-direct {v3, p0, v1, v0}, Lcom/android/camera/h;-><init>(Lcom/android/camera/g;Landroid/graphics/Bitmap;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 238
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 242
    iget-object v0, p0, Lcom/android/camera/g;->a:Lcom/android/camera/CropImage;

    iget-object v0, v0, Lcom/android/camera/CropImage;->d:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 243
    return-void

    .line 239
    :catch_0
    move-exception v0

    .line 240
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
