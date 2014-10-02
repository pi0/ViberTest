.class public Lcom/android/camera/b/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Activity;Landroid/graphics/Bitmap;Landroid/graphics/Rect;ZZ)Landroid/net/Uri;
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 32
    const/4 v6, 0x0

    .line 34
    :try_start_0
    invoke-static {p0}, Lcom/viber/voip/messages/extras/image/h;->a(Landroid/content/Context;)[I

    move-result-object v1

    .line 35
    const/4 v2, 0x0

    aget v4, v1, v2

    .line 36
    const/4 v2, 0x1

    aget v2, v1, v2

    .line 37
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "landscapeCrop:cropped (left, top) = ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "), width: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ", height: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/b/a;->a(Ljava/lang/String;)V

    .line 38
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "landscapeCrop:bitmap width: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ", height: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ", display width: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ", height: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/b/a;->a(Ljava/lang/String;)V

    .line 40
    iget v7, p2, Landroid/graphics/Rect;->right:I

    .line 41
    iget v8, p2, Landroid/graphics/Rect;->left:I

    .line 42
    iget v9, p2, Landroid/graphics/Rect;->top:I

    .line 44
    sub-int v1, v7, v8

    .line 46
    invoke-static {p0}, Lcom/viber/voip/messages/extras/image/g;->b(Landroid/app/Activity;)I

    move-result v3

    sub-int v3, v4, v3

    .line 48
    int-to-float v5, v2

    int-to-float v10, v3

    div-float/2addr v5, v10

    .line 51
    int-to-float v1, v1

    int-to-float v10, v3

    int-to-float v4, v4

    div-float v4, v10, v4

    mul-float/2addr v1, v4

    float-to-int v4, v1

    .line 52
    int-to-float v1, v4

    mul-float/2addr v1, v5

    float-to-int v1, v1

    .line 54
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    if-le v1, v5, :cond_3

    .line 55
    int-to-float v4, v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    int-to-float v1, v1

    div-float v1, v5, v1

    mul-float/2addr v1, v4

    float-to-int v4, v1

    .line 56
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    move v5, v4

    move v4, v1

    .line 59
    :goto_0
    add-int v1, v8, v7

    sub-int/2addr v1, v4

    div-int/lit8 v1, v1, 0x2

    .line 62
    if-gez v1, :cond_1

    .line 68
    :goto_1
    invoke-static {p1, v0, v9, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 69
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "landscapeCrop:create new bitmap cropX: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v7, ", cropY: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v7, ", width: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, ", height: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/b/a;->a(Ljava/lang/String;)V

    .line 71
    if-eqz p3, :cond_0

    .line 72
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    const/4 v5, 0x1

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/android/camera/z;->a(Landroid/graphics/Matrix;Landroid/graphics/Bitmap;IIZZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 76
    :cond_0
    sget-object v0, Lcom/viber/voip/messages/extras/image/l;->d:Lcom/viber/voip/messages/extras/image/l;

    invoke-static {v1, v0}, Lcom/viber/voip/messages/extras/image/h;->a(Landroid/graphics/Bitmap;Lcom/viber/voip/messages/extras/image/l;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 77
    :try_start_1
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 81
    :goto_2
    return-object v0

    .line 64
    :cond_1
    add-int v0, v1, v4

    :try_start_2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    if-le v0, v7, :cond_2

    .line 65
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v0

    sub-int/2addr v0, v4

    goto :goto_1

    .line 78
    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v0, v6

    .line 79
    :goto_3
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/b/a;->a(Ljava/lang/String;)V

    goto :goto_2

    .line 78
    :catch_1
    move-exception v1

    goto :goto_3

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    move v5, v4

    move v4, v1

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 85
    const/4 v0, 0x3

    const-class v1, Lcom/android/camera/b/a;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 86
    return-void
.end method
