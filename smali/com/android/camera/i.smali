.class Lcom/android/camera/i;
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
    .line 351
    iput-object p1, p0, Lcom/android/camera/i;->b:Lcom/android/camera/CropImage;

    iput-object p2, p0, Lcom/android/camera/i;->a:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 354
    iget-object v0, p0, Lcom/android/camera/i;->b:Lcom/android/camera/CropImage;

    iget-object v1, p0, Lcom/android/camera/i;->a:Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Lcom/android/camera/CropImage;->b(Lcom/android/camera/CropImage;Landroid/graphics/Bitmap;)V

    .line 355
    return-void
.end method
