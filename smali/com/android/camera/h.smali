.class Lcom/android/camera/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/graphics/Bitmap;

.field final synthetic b:Ljava/util/concurrent/CountDownLatch;

.field final synthetic c:Lcom/android/camera/g;


# direct methods
.method constructor <init>(Lcom/android/camera/g;Landroid/graphics/Bitmap;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 223
    iput-object p1, p0, Lcom/android/camera/h;->c:Lcom/android/camera/g;

    iput-object p2, p0, Lcom/android/camera/h;->a:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/android/camera/h;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 226
    iget-object v0, p0, Lcom/android/camera/h;->a:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/camera/h;->c:Lcom/android/camera/g;

    iget-object v1, v1, Lcom/android/camera/g;->a:Lcom/android/camera/CropImage;

    invoke-static {v1}, Lcom/android/camera/CropImage;->c(Lcom/android/camera/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/h;->a:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/android/camera/h;->c:Lcom/android/camera/g;

    iget-object v0, v0, Lcom/android/camera/g;->a:Lcom/android/camera/CropImage;

    invoke-static {v0}, Lcom/android/camera/CropImage;->d(Lcom/android/camera/CropImage;)Lcom/android/camera/CropImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/h;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/CropImageView;->a(Landroid/graphics/Bitmap;Z)V

    .line 228
    iget-object v0, p0, Lcom/android/camera/h;->c:Lcom/android/camera/g;

    iget-object v0, v0, Lcom/android/camera/g;->a:Lcom/android/camera/CropImage;

    invoke-static {v0}, Lcom/android/camera/CropImage;->c(Lcom/android/camera/CropImage;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 229
    iget-object v0, p0, Lcom/android/camera/h;->c:Lcom/android/camera/g;

    iget-object v0, v0, Lcom/android/camera/g;->a:Lcom/android/camera/CropImage;

    iget-object v1, p0, Lcom/android/camera/h;->a:Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Lcom/android/camera/CropImage;->a(Lcom/android/camera/CropImage;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/android/camera/h;->c:Lcom/android/camera/g;

    iget-object v0, v0, Lcom/android/camera/g;->a:Lcom/android/camera/CropImage;

    invoke-static {v0}, Lcom/android/camera/CropImage;->d(Lcom/android/camera/CropImage;)Lcom/android/camera/CropImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CropImageView;->b()F

    move-result v0

    const/high16 v1, 0x3f80

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 232
    iget-object v0, p0, Lcom/android/camera/h;->c:Lcom/android/camera/g;

    iget-object v0, v0, Lcom/android/camera/g;->a:Lcom/android/camera/CropImage;

    invoke-static {v0}, Lcom/android/camera/CropImage;->d(Lcom/android/camera/CropImage;)Lcom/android/camera/CropImageView;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Lcom/android/camera/CropImageView;->a(ZZ)V

    .line 234
    :cond_1
    iget-object v0, p0, Lcom/android/camera/h;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 235
    return-void
.end method
