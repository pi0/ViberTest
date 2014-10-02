.class Lcom/android/camera/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/graphics/Bitmap;

.field final synthetic b:Lcom/android/camera/CropImage;


# direct methods
.method constructor <init>(Lcom/android/camera/CropImage;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 446
    iput-object p1, p0, Lcom/android/camera/j;->b:Lcom/android/camera/CropImage;

    iput-object p2, p0, Lcom/android/camera/j;->a:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 449
    iget-object v0, p0, Lcom/android/camera/j;->b:Lcom/android/camera/CropImage;

    invoke-static {v0}, Lcom/android/camera/CropImage;->d(Lcom/android/camera/CropImage;)Lcom/android/camera/CropImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CropImageView;->a()V

    .line 450
    iget-object v0, p0, Lcom/android/camera/j;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 451
    return-void
.end method
