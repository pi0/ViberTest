.class Lcom/android/camera/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/android/camera/k;


# direct methods
.method constructor <init>(Lcom/android/camera/k;)V
    .locals 0
    .parameter

    .prologue
    .line 586
    iput-object p1, p0, Lcom/android/camera/l;->a:Lcom/android/camera/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 589
    iget-object v0, p0, Lcom/android/camera/l;->a:Lcom/android/camera/k;

    iget-object v3, v0, Lcom/android/camera/k;->e:Lcom/android/camera/CropImage;

    iget-object v0, p0, Lcom/android/camera/l;->a:Lcom/android/camera/k;

    iget v0, v0, Lcom/android/camera/k;->d:I

    if-le v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, v3, Lcom/android/camera/CropImage;->a:Z

    .line 590
    iget-object v0, p0, Lcom/android/camera/l;->a:Lcom/android/camera/k;

    iget v0, v0, Lcom/android/camera/k;->d:I

    if-lez v0, :cond_1

    move v0, v2

    .line 591
    :goto_1
    iget-object v3, p0, Lcom/android/camera/l;->a:Lcom/android/camera/k;

    iget v3, v3, Lcom/android/camera/k;->d:I

    if-ge v0, v3, :cond_2

    .line 592
    iget-object v3, p0, Lcom/android/camera/l;->a:Lcom/android/camera/k;

    iget-object v4, p0, Lcom/android/camera/l;->a:Lcom/android/camera/k;

    iget-object v4, v4, Lcom/android/camera/k;->c:[Landroid/media/FaceDetector$Face;

    aget-object v4, v4, v0

    invoke-static {v3, v4}, Lcom/android/camera/k;->a(Lcom/android/camera/k;Landroid/media/FaceDetector$Face;)V

    .line 591
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    move v0, v2

    .line 589
    goto :goto_0

    .line 595
    :cond_1
    iget-object v0, p0, Lcom/android/camera/l;->a:Lcom/android/camera/k;

    invoke-static {v0}, Lcom/android/camera/k;->a(Lcom/android/camera/k;)V

    .line 597
    :cond_2
    iget-object v0, p0, Lcom/android/camera/l;->a:Lcom/android/camera/k;

    iget-object v0, v0, Lcom/android/camera/k;->e:Lcom/android/camera/CropImage;

    invoke-static {v0}, Lcom/android/camera/CropImage;->d(Lcom/android/camera/CropImage;)Lcom/android/camera/CropImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CropImageView;->invalidate()V

    .line 598
    iget-object v0, p0, Lcom/android/camera/l;->a:Lcom/android/camera/k;

    iget-object v0, v0, Lcom/android/camera/k;->e:Lcom/android/camera/CropImage;

    invoke-static {v0}, Lcom/android/camera/CropImage;->d(Lcom/android/camera/CropImage;)Lcom/android/camera/CropImageView;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/CropImageView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v1, :cond_3

    .line 599
    iget-object v0, p0, Lcom/android/camera/l;->a:Lcom/android/camera/k;

    iget-object v3, v0, Lcom/android/camera/k;->e:Lcom/android/camera/CropImage;

    iget-object v0, p0, Lcom/android/camera/l;->a:Lcom/android/camera/k;

    iget-object v0, v0, Lcom/android/camera/k;->e:Lcom/android/camera/CropImage;

    invoke-static {v0}, Lcom/android/camera/CropImage;->d(Lcom/android/camera/CropImage;)Lcom/android/camera/CropImageView;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/CropImageView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/m;

    iput-object v0, v3, Lcom/android/camera/CropImage;->c:Lcom/android/camera/m;

    .line 600
    iget-object v0, p0, Lcom/android/camera/l;->a:Lcom/android/camera/k;

    iget-object v0, v0, Lcom/android/camera/k;->e:Lcom/android/camera/CropImage;

    iget-object v0, v0, Lcom/android/camera/CropImage;->c:Lcom/android/camera/m;

    invoke-virtual {v0, v1}, Lcom/android/camera/m;->a(Z)V

    .line 603
    :cond_3
    iget-object v0, p0, Lcom/android/camera/l;->a:Lcom/android/camera/k;

    iget v0, v0, Lcom/android/camera/k;->d:I

    if-le v0, v1, :cond_4

    .line 604
    iget-object v0, p0, Lcom/android/camera/l;->a:Lcom/android/camera/k;

    iget-object v0, v0, Lcom/android/camera/k;->e:Lcom/android/camera/CropImage;

    const v1, 0x7f0c04b8

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 607
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 609
    :cond_4
    return-void
.end method
