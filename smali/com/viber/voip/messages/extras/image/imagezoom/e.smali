.class public Lcom/viber/voip/messages/extras/image/imagezoom/e;
.super Landroid/widget/ImageView;
.source "SourceFile"


# instance fields
.field private a:F

.field private b:F

.field private c:F

.field private d:F

.field private e:Lcom/viber/voip/messages/extras/image/imagezoom/j;

.field protected l:I

.field protected m:Landroid/graphics/Matrix;

.field protected n:Landroid/graphics/Matrix;

.field protected o:Landroid/os/Handler;

.field protected p:Ljava/lang/Runnable;

.field protected q:F

.field protected final r:Landroid/graphics/Matrix;

.field protected final s:[F

.field protected t:I

.field protected u:I

.field protected final v:Lcom/viber/voip/messages/extras/image/imagezoom/k;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 50
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 28
    iput v0, p0, Lcom/viber/voip/messages/extras/image/imagezoom/e;->a:F

    .line 29
    iput v0, p0, Lcom/viber/voip/messages/extras/image/imagezoom/e;->b:F

    .line 30
    iput v0, p0, Lcom/viber/voip/messages/extras/image/imagezoom/e;->c:F

    .line 31
    iput v0, p0, Lcom/viber/voip/messages/extras/image/imagezoom/e;->d:F

    .line 35
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/messages/extras/image/imagezoom/e;->m:Landroid/graphics/Matrix;

    .line 36
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/messages/extras/image/imagezoom/e;->n:Landroid/graphics/Matrix;

    .line 37
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/messages/extras/image/imagezoom/e;->o:Landroid/os/Handler;

    .line 38
    iput-object v2, p0, Lcom/viber/voip/messages/extras/image/imagezoom/e;->p:Ljava/lang/Runnable;

    .line 40
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/messages/extras/image/imagezoom/e;->r:Landroid/graphics/Matrix;

    .line 41
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/viber/voip/messages/extras/image/imagezoom/e;->s:[F

    .line 42
    iput v1, p0, Lcom/viber/voip/messages/extras/image/imagezoom/e;->t:I

    iput v1, p0, Lcom/viber/voip/messages/extras/image/imagezoom/e;->u:I

    .line 44
    new-instance v0, Lcom/viber/voip/messages/extras/image/imagezoom/k;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v1}, Lcom/viber/voip/messages/extras/image/imagezoom/k;-><init>(Landroid/graphics/Bitmap;I)V

    iput-object v0, p0, Lcom/viber/voip/messages/extras/image/imagezoom/e;->v:Lcom/viber/voip/messages/extras/image/imagezoom/k;

    .line 51
    invoke-virtual {p0}, Lcom/viber/voip/messages/extras/image/imagezoom/e;->a()V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 55
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    iput v0, p0, Lcom/viber/voip/messages/extras/image/imagezoom/e;->a:F

    .line 29
    iput v0, p0, Lcom/viber/voip/messages/extras/image/imagezoom/e;->b:F

    .line 30
    iput v0, p0, Lcom/viber/voip/messages/extras/image/imagezoom/e;->c:F

    .line 31
    iput v0, p0, Lcom/viber/voip/messages/extras/image/imagezoom/e;->d:F

    .line 35
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/messages/extras/image/imagezoom/e;->m:Landroid/graphics/Matrix;

    .line 36
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/messages/extras/image/imagezoom/e;->n:Landroid/graphics/Matrix;

    .line 37
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/messages/extras/image/imagezoom/e;->o:Landroid/os/Handler;

    .line 38
    iput-object v3, p0, Lcom/viber/voip/messages/extras/image/imagezoom/e;->p:Ljava/lang/Runnable;

    .line 40
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/messages/extras/image/imagezoom/e;->r:Landroid/graphics/Matrix;

    .line 41
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/viber/voip/messages/extras/image/imagezoom/e;->s:[F

    .line 42
    iput v1, p0, Lcom/viber/voip/messages/extras/image/imagezoom/e;->t:I

    iput v1, p0, Lcom/viber/voip/messages/extras/image/imagezoom/e;->u:I

    .line 44
    new-instance v0, Lcom/viber/voip/messages/extras/image/imagezoom/k;

    invoke-direct {v0, v3, v2}, Lcom/viber/voip/messages/extras/image/imagezoom/k;-><init>(Landroid/graphics/Bitmap;I)V

    iput-object v0, p0, Lcom/viber/voip/messages/extras/image/imagezoom/e;->v:Lcom/viber/voip/messages/extras/image/imagezoom/k;

    .line 56
    sget-object v0, Lcom/viber/voip/bb;->ImageViewTouch:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 58
    const/4 v0, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    invoke-virtual {p0, v0, v2, v3, v4}, Lcom/viber/voip/messages/extras/image/imagezoom/e;->a(FFFF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 65
    invoke-virtual {p0}, Lcom/viber/voip/messages/extras/image/imagezoom/e;->a()V

    .line 66
    return-void

    .line 63
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method


# virtual methods
.method protected a(Landroid/graphics/Matrix;)F
    .locals 1
    .parameter

    .prologue
    .line 236
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/viber/voip/messages/extras/image/imagezoom/e;->a(Landroid/graphics/Matrix;I)F

    move-result v0

    return v0
.end method

.method protected a(Landroid/graphics/Matrix;I)F
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 223
    iget-object v0, p0, Lcom/viber/voip/messages/extras/image/imagezoom/e;->s:[F

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 224
    iget-object v0, p0, Lcom/viber/voip/messages/extras/image/imagezoom/e;->s:[F

    aget v0, v0, p2

    return v0
.end method

.method protected a()V
    .locals 1

    .prologue
    .line 73
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/extras/image/imagezoom/e;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 74
    return-void
.end method

.method protected a(F)V
    .locals 0
    .parameter

    .prologue
    .line 316
    return-void
.end method

.method protected a(FFF)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 290
    iget-object v0, p0, Lcom/viber/voip/messages/extras/image/imagezoom/e;->n:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p1, p2, p3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 291
    sget-object v0, Lcom/viber/voip/messages/extras/image/imagezoom/i;->c:Lcom/viber/voip/messages/extras/image/imagezoom/i;

    invoke-virtual {p0}, Lcom/viber/voip/messages/extras/image/imagezoom/e;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/viber/voip/messages/extras/image/imagezoom/e;->a(Lcom/viber/voip/messages/extras/image/imagezoom/i;Landroid/graphics/Matrix;)V

    .line 292
    return-void
.end method

.method public a(FFFF)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 103
    iput p1, p0, Lcom/viber/voip/messages/extras/image/imagezoom/e;->a:F

    .line 104
    iput p2, p0, Lcom/viber/voip/messages/extras/image/imagezoom/e;->b:F

    .line 105
    iput p3, p0, Lcom/viber/voip/messages/extras/image/imagezoom/e;->c:F

    .line 106
    iput p4, p0, Lcom/viber/voip/messages/extras/image/imagezoom/e;->d:F

    .line 107
    return-void
.end method

.method protected a(Landroid/graphics/Bitmap;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 182
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 183
    invoke-virtual {p0}, Lcom/viber/voip/messages/extras/image/imagezoom/e;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 184
    if-eqz v0, :cond_0

    .line 185
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/extras/image/imagezoom/e;->v:Lcom/viber/voip/messages/extras/image/imagezoom/k;

    invoke-virtual {v0, p1}, Lcom/viber/voip/messages/extras/image/imagezoom/k;->a(Landroid/graphics/Bitmap;)V

    .line 188
    iget-object v0, p0, Lcom/viber/voip/messages/extras/image/imagezoom/e;->v:Lcom/viber/voip/messages/extras/image/imagezoom/k;

    invoke-virtual {v0, p2}, Lcom/viber/voip/messages/extras/image/imagezoom/k;->a(I)V

    .line 189
    return-void
.end method

.method public a(Landroid/graphics/Bitmap;IZ)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 114
    new-instance v0, Lcom/viber/voip/messages/extras/image/imagezoom/k;

    invoke-direct {v0, p1, p2}, Lcom/viber/voip/messages/extras/image/imagezoom/k;-><init>(Landroid/graphics/Bitmap;I)V

    invoke-virtual {p0, v0, p3}, Lcom/viber/voip/messages/extras/image/imagezoom/e;->a(Lcom/viber/voip/messages/extras/image/imagezoom/k;Z)V

    .line 115
    return-void
.end method

.method public a(Landroid/graphics/Bitmap;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 110
    new-instance v0, Lcom/viber/voip/messages/extras/image/imagezoom/k;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/viber/voip/messages/extras/image/imagezoom/k;-><init>(Landroid/graphics/Bitmap;I)V

    invoke-virtual {p0, v0, p2}, Lcom/viber/voip/messages/extras/image/imagezoom/e;->a(Lcom/viber/voip/messages/extras/image/imagezoom/k;Z)V

    .line 111
    return-void
.end method

.method protected a(Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 332
    invoke-virtual {p0}, Lcom/viber/voip/messages/extras/image/imagezoom/e;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 333
    invoke-virtual {p0}, Lcom/viber/voip/messages/extras/image/imagezoom/e;->getHeight()I

    move-result v1

    int-to-float v1, v1

    .line 335
    iget v2, p1, Landroid/graphics/RectF;->top:F

    cmpl-float v2, v2, v4

    if-ltz v2, :cond_0

    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    cmpg-float v2, v2, v1

    if-gtz v2, :cond_0

    iput v4, p2, Landroid/graphics/RectF;->top:F

    .line 336
    :cond_0
    iget v2, p1, Landroid/graphics/RectF;->left:F

    cmpl-float v2, v2, v4

    if-ltz v2, :cond_1

    iget v2, p1, Landroid/graphics/RectF;->right:F

    cmpg-float v2, v2, v0

    if-gtz v2, :cond_1

    iput v4, p2, Landroid/graphics/RectF;->left:F

    .line 337
    :cond_1
    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p2, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, v3

    cmpl-float v2, v2, v4

    if-ltz v2, :cond_2

    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    cmpl-float v2, v2, v1

    if-lez v2, :cond_2

    .line 338
    iget v2, p1, Landroid/graphics/RectF;->top:F

    sub-float v2, v4, v2

    float-to-int v2, v2

    int-to-float v2, v2

    iput v2, p2, Landroid/graphics/RectF;->top:F

    .line 339
    :cond_2
    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    iget v3, p2, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, v3

    sub-float v3, v1, v4

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_3

    iget v2, p1, Landroid/graphics/RectF;->top:F

    cmpg-float v2, v2, v4

    if-gez v2, :cond_3

    .line 340
    sub-float/2addr v1, v4

    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v1, v2

    float-to-int v1, v1

    int-to-float v1, v1

    iput v1, p2, Landroid/graphics/RectF;->top:F

    .line 341
    :cond_3
    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p2, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, v2

    cmpl-float v1, v1, v4

    if-ltz v1, :cond_4

    iget v1, p1, Landroid/graphics/RectF;->left:F

    sub-float v1, v4, v1

    float-to-int v1, v1

    int-to-float v1, v1

    iput v1, p2, Landroid/graphics/RectF;->left:F

    .line 342
    :cond_4
    iget v1, p1, Landroid/graphics/RectF;->right:F

    iget v2, p2, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, v2

    sub-float v2, v0, v4

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_5

    sub-float/2addr v0, v4

    iget v1, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v1

    float-to-int v0, v0

    int-to-float v0, v0

    iput v0, p2, Landroid/graphics/RectF;->left:F

    .line 344
    :cond_5
    return-void
.end method

.method protected a(Lcom/viber/voip/messages/extras/image/imagezoom/i;Landroid/graphics/Matrix;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 252
    invoke-virtual {p0, p2}, Lcom/viber/voip/messages/extras/image/imagezoom/e;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 253
    return-void
.end method

.method protected a(Lcom/viber/voip/messages/extras/image/imagezoom/k;Landroid/graphics/Matrix;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/high16 v4, 0x4000

    .line 209
    invoke-virtual {p0}, Lcom/viber/voip/messages/extras/image/imagezoom/e;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/viber/voip/messages/extras/image/imagezoom/e;->a:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/viber/voip/messages/extras/image/imagezoom/e;->c:F

    sub-float/2addr v0, v1

    .line 210
    invoke-virtual {p0}, Lcom/viber/voip/messages/extras/image/imagezoom/e;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/viber/voip/messages/extras/image/imagezoom/e;->b:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/viber/voip/messages/extras/image/imagezoom/e;->d:F

    sub-float/2addr v1, v2

    .line 211
    invoke-virtual {p1}, Lcom/viber/voip/messages/extras/image/imagezoom/k;->e()I

    move-result v2

    int-to-float v2, v2

    .line 212
    invoke-virtual {p1}, Lcom/viber/voip/messages/extras/image/imagezoom/k;->d()I

    move-result v3

    int-to-float v3, v3

    .line 213
    invoke-virtual {p2}, Landroid/graphics/Matrix;->reset()V

    .line 214
    div-float/2addr v0, v2

    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 215
    div-float/2addr v1, v3

    invoke-static {v1, v4}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 216
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 217
    invoke-virtual {p1}, Lcom/viber/voip/messages/extras/image/imagezoom/k;->c()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 218
    invoke-virtual {p2, v0, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 219
    invoke-virtual {p0}, Lcom/viber/voip/messages/extras/image/imagezoom/e;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v2, v0

    sub-float/2addr v1, v2

    div-float/2addr v1, v4

    invoke-virtual {p0}, Lcom/viber/voip/messages/extras/image/imagezoom/e;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v0, v3

    sub-float v0, v2, v0

    div-float/2addr v0, v4

    invoke-virtual {p2, v1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 220
    return-void
.end method

.method public a(Lcom/viber/voip/messages/extras/image/imagezoom/k;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 118
    const-string/jumbo v0, "image"

    const-string/jumbo v1, "setImageRotateBitmapReset"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    invoke-virtual {p0}, Lcom/viber/voip/messages/extras/image/imagezoom/e;->getWidth()I

    move-result v0

    .line 121
    if-gtz v0, :cond_1

    .line 122
    new-instance v0, Lcom/viber/voip/messages/extras/image/imagezoom/f;

    invoke-direct {v0, p0, p1, p2}, Lcom/viber/voip/messages/extras/image/imagezoom/f;-><init>(Lcom/viber/voip/messages/extras/image/imagezoom/e;Lcom/viber/voip/messages/extras/image/imagezoom/k;Z)V

    iput-object v0, p0, Lcom/viber/voip/messages/extras/image/imagezoom/e;->p:Ljava/lang/Runnable;

    .line 150
    :cond_0
    :goto_0
    return-void

    .line 132
    :cond_1
    invoke-virtual {p1}, Lcom/viber/voip/messages/extras/image/imagezoom/k;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 133
    iget-object v0, p0, Lcom/viber/voip/messages/extras/image/imagezoom/e;->m:Landroid/graphics/Matrix;

    invoke-virtual {p0, p1, v0}, Lcom/viber/voip/messages/extras/image/imagezoom/e;->a(Lcom/viber/voip/messages/extras/image/imagezoom/k;Landroid/graphics/Matrix;)V

    .line 134
    invoke-virtual {p1}, Lcom/viber/voip/messages/extras/image/imagezoom/k;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1}, Lcom/viber/voip/messages/extras/image/imagezoom/k;->a()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/viber/voip/messages/extras/image/imagezoom/e;->a(Landroid/graphics/Bitmap;I)V

    .line 140
    :goto_1
    if-eqz p2, :cond_2

    .line 141
    iget-object v0, p0, Lcom/viber/voip/messages/extras/image/imagezoom/e;->n:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 144
    :cond_2
    sget-object v0, Lcom/viber/voip/messages/extras/image/imagezoom/i;->e:Lcom/viber/voip/messages/extras/image/imagezoom/i;

    invoke-virtual {p0}, Lcom/viber/voip/messages/extras/image/imagezoom/e;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/viber/voip/messages/extras/image/imagezoom/e;->a(Lcom/viber/voip/messages/extras/image/imagezoom/i;Landroid/graphics/Matrix;)V

    .line 145
    invoke-virtual {p0}, Lcom/viber/voip/messages/extras/image/imagezoom/e;->b()F

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/extras/image/imagezoom/e;->q:F

    .line 147
    iget-object v0, p0, Lcom/viber/voip/messages/extras/image/imagezoom/e;->e:Lcom/viber/voip/messages/extras/image/imagezoom/j;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/viber/voip/messages/extras/image/imagezoom/e;->e:Lcom/viber/voip/messages/extras/image/imagezoom/j;

    invoke-virtual {p1}, Lcom/viber/voip/messages/extras/image/imagezoom/k;->b()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/viber/voip/messages/extras/image/imagezoom/j;->a(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 136
    :cond_3
    iget-object v0, p0, Lcom/viber/voip/messages/extras/image/imagezoom/e;->m:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 137
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/extras/image/imagezoom/e;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1
.end method

.method protected a(ZZ)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 244
    iget-object v0, p0, Lcom/viber/voip/messages/extras/image/imagezoom/e;->v:Lcom/viber/voip/messages/extras/image/imagezoom/k;

    invoke-virtual {v0}, Lcom/viber/voip/messages/extras/image/imagezoom/k;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_1

    .line 249
    :cond_0
    :goto_0
    return-void

    .line 245
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/viber/voip/messages/extras/image/imagezoom/e;->b(ZZ)Landroid/graphics/RectF;

    move-result-object v0

    .line 246
    iget v1, v0, Landroid/graphics/RectF;->left:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_2

    iget v1, v0, Landroid/graphics/RectF;->top:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    .line 247
    :cond_2
    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget v0, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0, v1, v0}, Lcom/viber/voip/messages/extras/image/imagezoom/e;->b(FF)V

    goto :goto_0
.end method

.method protected b()F
    .locals 3

    .prologue
    .line 153
    iget-object v0, p0, Lcom/viber/voip/messages/extras/image/imagezoom/e;->v:Lcom/viber/voip/messages/extras/image/imagezoom/k;

    invoke-virtual {v0}, Lcom/viber/voip/messages/extras/image/imagezoom/k;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    .line 154
    const/high16 v0, 0x3f80

    .line 159
    :goto_0
    return v0

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/extras/image/imagezoom/e;->v:Lcom/viber/voip/messages/extras/image/imagezoom/k;

    invoke-virtual {v0}, Lcom/viber/voip/messages/extras/image/imagezoom/k;->e()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/viber/voip/messages/extras/image/imagezoom/e;->t:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 157
    iget-object v1, p0, Lcom/viber/voip/messages/extras/image/imagezoom/e;->v:Lcom/viber/voip/messages/extras/image/imagezoom/k;

    invoke-virtual {v1}, Lcom/viber/voip/messages/extras/image/imagezoom/k;->d()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/viber/voip/messages/extras/image/imagezoom/e;->u:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 158
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/high16 v1, 0x4080

    mul-float/2addr v0, v1

    .line 159
    goto :goto_0
.end method

.method protected b(ZZ)Landroid/graphics/RectF;
    .locals 7
    .parameter
    .parameter

    .prologue
    const/high16 v6, 0x4000

    const/4 v1, 0x0

    .line 256
    iget-object v0, p0, Lcom/viber/voip/messages/extras/image/imagezoom/e;->v:Lcom/viber/voip/messages/extras/image/imagezoom/k;

    invoke-virtual {v0}, Lcom/viber/voip/messages/extras/image/imagezoom/k;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 281
    :goto_0
    return-object v0

    .line 257
    :cond_0
    invoke-virtual {p0}, Lcom/viber/voip/messages/extras/image/imagezoom/e;->getBitmapRect()Landroid/graphics/RectF;

    move-result-object v2

    .line 258
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v0

    .line 259
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v4

    .line 261
    if-eqz p2, :cond_6

    .line 262
    invoke-virtual {p0}, Lcom/viber/voip/messages/extras/image/imagezoom/e;->getHeight()I

    move-result v3

    .line 263
    int-to-float v5, v3

    cmpg-float v5, v0, v5

    if-gez v5, :cond_1

    .line 264
    int-to-float v3, v3

    sub-float v0, v3, v0

    div-float/2addr v0, v6

    iget v3, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v3

    move v3, v0

    .line 271
    :goto_1
    if-eqz p1, :cond_5

    .line 272
    invoke-virtual {p0}, Lcom/viber/voip/messages/extras/image/imagezoom/e;->getWidth()I

    move-result v0

    .line 273
    int-to-float v5, v0

    cmpg-float v5, v4, v5

    if-gez v5, :cond_3

    .line 274
    int-to-float v0, v0

    sub-float/2addr v0, v4

    div-float/2addr v0, v6

    iget v2, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v2

    .line 281
    :goto_2
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, v0, v3, v1, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object v0, v2

    goto :goto_0

    .line 265
    :cond_1
    iget v0, v2, Landroid/graphics/RectF;->top:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 266
    iget v0, v2, Landroid/graphics/RectF;->top:F

    neg-float v0, v0

    move v3, v0

    goto :goto_1

    .line 267
    :cond_2
    iget v0, v2, Landroid/graphics/RectF;->bottom:F

    int-to-float v3, v3

    cmpg-float v0, v0, v3

    if-gez v0, :cond_6

    .line 268
    invoke-virtual {p0}, Lcom/viber/voip/messages/extras/image/imagezoom/e;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v3

    move v3, v0

    goto :goto_1

    .line 275
    :cond_3
    iget v4, v2, Landroid/graphics/RectF;->left:F

    cmpl-float v4, v4, v1

    if-lez v4, :cond_4

    .line 276
    iget v0, v2, Landroid/graphics/RectF;->left:F

    neg-float v0, v0

    goto :goto_2

    .line 277
    :cond_4
    iget v4, v2, Landroid/graphics/RectF;->right:F

    int-to-float v5, v0

    cmpg-float v4, v4, v5

    if-gez v4, :cond_5

    .line 278
    int-to-float v0, v0

    iget v2, v2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v2

    goto :goto_2

    :cond_5
    move v0, v1

    goto :goto_2

    :cond_6
    move v3, v1

    goto :goto_1
.end method

.method public b(F)V
    .locals 3
    .parameter

    .prologue
    const/high16 v2, 0x4000

    .line 295
    invoke-virtual {p0}, Lcom/viber/voip/messages/extras/image/imagezoom/e;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    .line 296
    invoke-virtual {p0}, Lcom/viber/voip/messages/extras/image/imagezoom/e;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    .line 297
    invoke-virtual {p0, p1, v0, v1}, Lcom/viber/voip/messages/extras/image/imagezoom/e;->b(FFF)V

    .line 298
    return-void
.end method

.method protected b(FF)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 285
    iget-object v0, p0, Lcom/viber/voip/messages/extras/image/imagezoom/e;->n:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 286
    sget-object v0, Lcom/viber/voip/messages/extras/image/imagezoom/i;->b:Lcom/viber/voip/messages/extras/image/imagezoom/i;

    invoke-virtual {p0}, Lcom/viber/voip/messages/extras/image/imagezoom/e;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/viber/voip/messages/extras/image/imagezoom/e;->a(Lcom/viber/voip/messages/extras/image/imagezoom/i;Landroid/graphics/Matrix;)V

    .line 287
    return-void
.end method

.method public b(FFF)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 307
    iget v0, p0, Lcom/viber/voip/messages/extras/image/imagezoom/e;->q:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    iget p1, p0, Lcom/viber/voip/messages/extras/image/imagezoom/e;->q:F

    .line 308
    :cond_0
    invoke-virtual {p0}, Lcom/viber/voip/messages/extras/image/imagezoom/e;->getScale()F

    move-result v0

    .line 309
    div-float v0, p1, v0

    .line 310
    invoke-virtual {p0, v0, p2, p3}, Lcom/viber/voip/messages/extras/image/imagezoom/e;->a(FFF)V

    .line 311
    invoke-virtual {p0}, Lcom/viber/voip/messages/extras/image/imagezoom/e;->getScale()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/extras/image/imagezoom/e;->a(F)V

    .line 312
    invoke-virtual {p0, v1, v1}, Lcom/viber/voip/messages/extras/image/imagezoom/e;->a(ZZ)V

    .line 313
    return-void
.end method

.method protected b(FFFF)V
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 376
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 377
    invoke-virtual {p0}, Lcom/viber/voip/messages/extras/image/imagezoom/e;->getScale()F

    move-result v0

    sub-float v0, p1, v0

    div-float v6, v0, p4

    .line 378
    invoke-virtual {p0}, Lcom/viber/voip/messages/extras/image/imagezoom/e;->getScale()F

    move-result v5

    .line 379
    iget-object v9, p0, Lcom/viber/voip/messages/extras/image/imagezoom/e;->o:Landroid/os/Handler;

    new-instance v0, Lcom/viber/voip/messages/extras/image/imagezoom/h;

    move-object v1, p0

    move v2, p4

    move v7, p2

    move v8, p3

    invoke-direct/range {v0 .. v8}, Lcom/viber/voip/messages/extras/image/imagezoom/h;-><init>(Lcom/viber/voip/messages/extras/image/imagezoom/e;FJFFFF)V

    invoke-virtual {v9, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 394
    return-void
.end method

.method public c(FF)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/high16 v2, 0x4000

    .line 301
    invoke-virtual {p0}, Lcom/viber/voip/messages/extras/image/imagezoom/e;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    .line 302
    invoke-virtual {p0}, Lcom/viber/voip/messages/extras/image/imagezoom/e;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    .line 303
    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/viber/voip/messages/extras/image/imagezoom/e;->b(FFFF)V

    .line 304
    return-void
.end method

.method protected c(FFF)V
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 347
    .line 349
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 350
    iget-object v7, p0, Lcom/viber/voip/messages/extras/image/imagezoom/e;->o:Landroid/os/Handler;

    new-instance v0, Lcom/viber/voip/messages/extras/image/imagezoom/g;

    move-object v1, p0

    move v2, p3

    move v5, p1

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/viber/voip/messages/extras/image/imagezoom/g;-><init>(Lcom/viber/voip/messages/extras/image/imagezoom/e;FJFF)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 372
    return-void
.end method

.method public d(FF)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 319
    invoke-virtual {p0, p1, p2}, Lcom/viber/voip/messages/extras/image/imagezoom/e;->e(FF)V

    .line 320
    return-void
.end method

.method protected e(FF)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 323
    invoke-virtual {p0}, Lcom/viber/voip/messages/extras/image/imagezoom/e;->getBitmapRect()Landroid/graphics/RectF;

    move-result-object v0

    .line 324
    if-nez v0, :cond_0

    .line 329
    :goto_0
    return-void

    .line 325
    :cond_0
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, p1, p2, v2, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 326
    invoke-virtual {p0, v0, v1}, Lcom/viber/voip/messages/extras/image/imagezoom/e;->a(Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    .line 327
    iget v0, v1, Landroid/graphics/RectF;->left:F

    iget v1, v1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0, v0, v1}, Lcom/viber/voip/messages/extras/image/imagezoom/e;->b(FF)V

    .line 328
    invoke-virtual {p0, v3, v3}, Lcom/viber/voip/messages/extras/image/imagezoom/e;->a(ZZ)V

    goto :goto_0
.end method

.method protected getBitmapRect()Landroid/graphics/RectF;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 228
    iget-object v0, p0, Lcom/viber/voip/messages/extras/image/imagezoom/e;->v:Lcom/viber/voip/messages/extras/image/imagezoom/k;

    invoke-virtual {v0}, Lcom/viber/voip/messages/extras/image/imagezoom/k;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 232
    :goto_0
    return-object v0

    .line 229
    :cond_0
    invoke-virtual {p0}, Lcom/viber/voip/messages/extras/image/imagezoom/e;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    .line 230
    new-instance v0, Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/viber/voip/messages/extras/image/imagezoom/e;->v:Lcom/viber/voip/messages/extras/image/imagezoom/k;

    invoke-virtual {v2}, Lcom/viber/voip/messages/extras/image/imagezoom/k;->b()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/viber/voip/messages/extras/image/imagezoom/e;->v:Lcom/viber/voip/messages/extras/image/imagezoom/k;

    invoke-virtual {v3}, Lcom/viber/voip/messages/extras/image/imagezoom/k;->b()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-direct {v0, v4, v4, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 231
    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    goto :goto_0
.end method

.method public getDisplayBitmap()Lcom/viber/voip/messages/extras/image/imagezoom/k;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/viber/voip/messages/extras/image/imagezoom/e;->v:Lcom/viber/voip/messages/extras/image/imagezoom/k;

    return-object v0
.end method

.method protected getImageViewMatrix()Landroid/graphics/Matrix;
    .locals 2

    .prologue
    .line 192
    iget-object v0, p0, Lcom/viber/voip/messages/extras/image/imagezoom/e;->r:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/viber/voip/messages/extras/image/imagezoom/e;->m:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 193
    iget-object v0, p0, Lcom/viber/voip/messages/extras/image/imagezoom/e;->r:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/viber/voip/messages/extras/image/imagezoom/e;->n:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 194
    iget-object v0, p0, Lcom/viber/voip/messages/extras/image/imagezoom/e;->r:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public getMaxZoom()F
    .locals 1

    .prologue
    .line 167
    iget v0, p0, Lcom/viber/voip/messages/extras/image/imagezoom/e;->q:F

    return v0
.end method

.method public getScale()F
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/viber/voip/messages/extras/image/imagezoom/e;->n:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/extras/image/imagezoom/e;->a(Landroid/graphics/Matrix;)F

    move-result v0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 82
    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    .line 83
    sub-int v0, p4, p2

    iput v0, p0, Lcom/viber/voip/messages/extras/image/imagezoom/e;->t:I

    .line 84
    sub-int v0, p5, p3

    iput v0, p0, Lcom/viber/voip/messages/extras/image/imagezoom/e;->u:I

    .line 85
    iget-object v0, p0, Lcom/viber/voip/messages/extras/image/imagezoom/e;->p:Ljava/lang/Runnable;

    .line 86
    if-eqz v0, :cond_0

    .line 87
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/viber/voip/messages/extras/image/imagezoom/e;->p:Ljava/lang/Runnable;

    .line 88
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/extras/image/imagezoom/e;->v:Lcom/viber/voip/messages/extras/image/imagezoom/k;

    invoke-virtual {v0}, Lcom/viber/voip/messages/extras/image/imagezoom/k;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 91
    iget-object v0, p0, Lcom/viber/voip/messages/extras/image/imagezoom/e;->v:Lcom/viber/voip/messages/extras/image/imagezoom/k;

    iget-object v1, p0, Lcom/viber/voip/messages/extras/image/imagezoom/e;->m:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0, v1}, Lcom/viber/voip/messages/extras/image/imagezoom/e;->a(Lcom/viber/voip/messages/extras/image/imagezoom/k;Landroid/graphics/Matrix;)V

    .line 92
    sget-object v0, Lcom/viber/voip/messages/extras/image/imagezoom/i;->d:Lcom/viber/voip/messages/extras/image/imagezoom/i;

    invoke-virtual {p0}, Lcom/viber/voip/messages/extras/image/imagezoom/e;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/viber/voip/messages/extras/image/imagezoom/e;->a(Lcom/viber/voip/messages/extras/image/imagezoom/i;Landroid/graphics/Matrix;)V

    .line 94
    :cond_1
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 98
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->onSizeChanged(IIII)V

    .line 99
    int-to-double v0, p1

    const-wide v2, 0x3fd3333333333333L

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/viber/voip/messages/extras/image/imagezoom/e;->l:I

    .line 100
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter

    .prologue
    .line 172
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/viber/voip/messages/extras/image/imagezoom/e;->a(Landroid/graphics/Bitmap;I)V

    .line 173
    return-void
.end method

.method public setOnBitmapChangedListener(Lcom/viber/voip/messages/extras/image/imagezoom/j;)V
    .locals 0
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lcom/viber/voip/messages/extras/image/imagezoom/e;->e:Lcom/viber/voip/messages/extras/image/imagezoom/j;

    .line 70
    return-void
.end method
