.class abstract Lcom/android/camera/s;
.super Landroid/widget/ImageView;
.source "SourceFile"


# instance fields
.field private final a:Landroid/graphics/Matrix;

.field private final b:[F

.field private c:Lcom/android/camera/v;

.field private d:Ljava/lang/Runnable;

.field protected f:Landroid/graphics/Matrix;

.field protected g:Landroid/graphics/Matrix;

.field protected final h:Lcom/android/camera/y;

.field i:I

.field j:I

.field k:F

.field protected l:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 231
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 41
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/camera/s;->f:Landroid/graphics/Matrix;

    .line 48
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/camera/s;->g:Landroid/graphics/Matrix;

    .line 52
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/camera/s;->a:Landroid/graphics/Matrix;

    .line 55
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/camera/s;->b:[F

    .line 58
    new-instance v0, Lcom/android/camera/y;

    invoke-direct {v0, v2}, Lcom/android/camera/y;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/android/camera/s;->h:Lcom/android/camera/y;

    .line 60
    iput v1, p0, Lcom/android/camera/s;->i:I

    iput v1, p0, Lcom/android/camera/s;->j:I

    .line 117
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/camera/s;->l:Landroid/os/Handler;

    .line 144
    iput-object v2, p0, Lcom/android/camera/s;->d:Ljava/lang/Runnable;

    .line 232
    invoke-direct {p0}, Lcom/android/camera/s;->e()V

    .line 233
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 236
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/camera/s;->f:Landroid/graphics/Matrix;

    .line 48
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/camera/s;->g:Landroid/graphics/Matrix;

    .line 52
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/camera/s;->a:Landroid/graphics/Matrix;

    .line 55
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/camera/s;->b:[F

    .line 58
    new-instance v0, Lcom/android/camera/y;

    invoke-direct {v0, v2}, Lcom/android/camera/y;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/android/camera/s;->h:Lcom/android/camera/y;

    .line 60
    iput v1, p0, Lcom/android/camera/s;->i:I

    iput v1, p0, Lcom/android/camera/s;->j:I

    .line 117
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/camera/s;->l:Landroid/os/Handler;

    .line 144
    iput-object v2, p0, Lcom/android/camera/s;->d:Ljava/lang/Runnable;

    .line 237
    invoke-direct {p0}, Lcom/android/camera/s;->e()V

    .line 238
    return-void
.end method

.method private a(Landroid/graphics/Bitmap;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 125
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 126
    invoke-virtual {p0}, Lcom/android/camera/s;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 127
    if-eqz v0, :cond_0

    .line 128
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/android/camera/s;->h:Lcom/android/camera/y;

    invoke-virtual {v0}, Lcom/android/camera/y;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 132
    iget-object v1, p0, Lcom/android/camera/s;->h:Lcom/android/camera/y;

    invoke-virtual {v1, p1}, Lcom/android/camera/y;->a(Landroid/graphics/Bitmap;)V

    .line 133
    iget-object v1, p0, Lcom/android/camera/s;->h:Lcom/android/camera/y;

    invoke-virtual {v1, p2}, Lcom/android/camera/y;->a(I)V

    .line 135
    if-eqz v0, :cond_1

    if-eq v0, p1, :cond_1

    iget-object v1, p0, Lcom/android/camera/s;->c:Lcom/android/camera/v;

    if-eqz v1, :cond_1

    .line 136
    iget-object v1, p0, Lcom/android/camera/s;->c:Lcom/android/camera/v;

    invoke-interface {v1, v0}, Lcom/android/camera/v;->a(Landroid/graphics/Bitmap;)V

    .line 138
    :cond_1
    return-void
.end method

.method private a(Lcom/android/camera/y;Landroid/graphics/Matrix;)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const/high16 v7, 0x4040

    const/high16 v6, 0x4000

    .line 260
    invoke-virtual {p0}, Lcom/android/camera/s;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 261
    invoke-virtual {p0}, Lcom/android/camera/s;->getHeight()I

    move-result v1

    int-to-float v1, v1

    .line 263
    invoke-virtual {p1}, Lcom/android/camera/y;->f()I

    move-result v2

    int-to-float v2, v2

    .line 264
    invoke-virtual {p1}, Lcom/android/camera/y;->e()I

    move-result v3

    int-to-float v3, v3

    .line 265
    invoke-virtual {p2}, Landroid/graphics/Matrix;->reset()V

    .line 269
    div-float v4, v0, v2

    invoke-static {v4, v7}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 270
    div-float v5, v1, v3

    invoke-static {v5, v7}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 271
    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 273
    invoke-virtual {p1}, Lcom/android/camera/y;->c()Landroid/graphics/Matrix;

    move-result-object v5

    invoke-virtual {p2, v5}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 274
    invoke-virtual {p2, v4, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 276
    mul-float/2addr v2, v4

    sub-float/2addr v0, v2

    div-float/2addr v0, v6

    mul-float v2, v3, v4

    sub-float/2addr v1, v2

    div-float/2addr v1, v6

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 279
    return-void
.end method

.method private e()V
    .locals 1

    .prologue
    .line 241
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/android/camera/s;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 242
    return-void
.end method


# virtual methods
.method protected a(Landroid/graphics/Matrix;)F
    .locals 1
    .parameter

    .prologue
    .line 251
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/s;->a(Landroid/graphics/Matrix;I)F

    move-result v0

    return v0
.end method

.method protected a(Landroid/graphics/Matrix;I)F
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 245
    iget-object v0, p0, Lcom/android/camera/s;->b:[F

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 246
    iget-object v0, p0, Lcom/android/camera/s;->b:[F

    aget v0, v0, p2

    return v0
.end method

.method public a()V
    .locals 2

    .prologue
    .line 141
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/s;->a(Landroid/graphics/Bitmap;Z)V

    .line 142
    return-void
.end method

.method protected a(F)V
    .locals 3
    .parameter

    .prologue
    const/high16 v2, 0x4000

    .line 341
    invoke-virtual {p0}, Lcom/android/camera/s;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    .line 342
    invoke-virtual {p0}, Lcom/android/camera/s;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    .line 344
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/camera/s;->a(FFF)V

    .line 345
    return-void
.end method

.method protected a(FF)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 400
    iget-object v0, p0, Lcom/android/camera/s;->g:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 401
    return-void
.end method

.method protected a(FFF)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 308
    iget v0, p0, Lcom/android/camera/s;->k:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 309
    iget p1, p0, Lcom/android/camera/s;->k:F

    .line 312
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/s;->b()F

    move-result v0

    .line 313
    div-float v0, p1, v0

    .line 315
    iget-object v1, p0, Lcom/android/camera/s;->g:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0, v0, p2, p3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 316
    invoke-virtual {p0}, Lcom/android/camera/s;->c()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/s;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 317
    invoke-virtual {p0, v2, v2}, Lcom/android/camera/s;->a(ZZ)V

    .line 318
    return-void
.end method

.method protected a(FFFF)V
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 322
    invoke-virtual {p0}, Lcom/android/camera/s;->b()F

    move-result v0

    sub-float v0, p1, v0

    div-float v6, v0, p4

    .line 323
    invoke-virtual {p0}, Lcom/android/camera/s;->b()F

    move-result v5

    .line 324
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 326
    iget-object v9, p0, Lcom/android/camera/s;->l:Landroid/os/Handler;

    new-instance v0, Lcom/android/camera/u;

    move-object v1, p0

    move v2, p4

    move v7, p2

    move v8, p3

    invoke-direct/range {v0 .. v8}, Lcom/android/camera/u;-><init>(Lcom/android/camera/s;FJFFFF)V

    invoke-virtual {v9, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 338
    return-void
.end method

.method public a(Landroid/graphics/Bitmap;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 150
    new-instance v0, Lcom/android/camera/y;

    invoke-direct {v0, p1}, Lcom/android/camera/y;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v0, p2}, Lcom/android/camera/s;->a(Lcom/android/camera/y;Z)V

    .line 151
    return-void
.end method

.method public a(Lcom/android/camera/y;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 155
    invoke-virtual {p0}, Lcom/android/camera/s;->getWidth()I

    move-result v0

    .line 157
    if-gtz v0, :cond_0

    .line 158
    new-instance v0, Lcom/android/camera/t;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/camera/t;-><init>(Lcom/android/camera/s;Lcom/android/camera/y;Z)V

    iput-object v0, p0, Lcom/android/camera/s;->d:Ljava/lang/Runnable;

    .line 179
    :goto_0
    return-void

    .line 166
    :cond_0
    invoke-virtual {p1}, Lcom/android/camera/y;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 167
    iget-object v0, p0, Lcom/android/camera/s;->f:Landroid/graphics/Matrix;

    invoke-direct {p0, p1, v0}, Lcom/android/camera/s;->a(Lcom/android/camera/y;Landroid/graphics/Matrix;)V

    .line 168
    invoke-virtual {p1}, Lcom/android/camera/y;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/camera/y;->a()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/camera/s;->a(Landroid/graphics/Bitmap;I)V

    .line 174
    :goto_1
    if-eqz p2, :cond_1

    .line 175
    iget-object v0, p0, Lcom/android/camera/s;->g:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 177
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/s;->c()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/s;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 178
    invoke-virtual {p0}, Lcom/android/camera/s;->d()F

    move-result v0

    iput v0, p0, Lcom/android/camera/s;->k:F

    goto :goto_0

    .line 170
    :cond_2
    iget-object v0, p0, Lcom/android/camera/s;->f:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 171
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/s;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1
.end method

.method protected a(ZZ)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/high16 v6, 0x4000

    const/4 v0, 0x0

    .line 187
    iget-object v1, p0, Lcom/android/camera/s;->h:Lcom/android/camera/y;

    invoke-virtual {v1}, Lcom/android/camera/y;->b()Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_0

    .line 228
    :goto_0
    return-void

    .line 191
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/s;->c()Landroid/graphics/Matrix;

    move-result-object v1

    .line 193
    new-instance v2, Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/android/camera/s;->h:Lcom/android/camera/y;

    invoke-virtual {v3}, Lcom/android/camera/y;->b()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/camera/s;->h:Lcom/android/camera/y;

    invoke-virtual {v4}, Lcom/android/camera/y;->b()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v2, v0, v0, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 197
    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 199
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v1

    .line 200
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v3

    .line 204
    if-eqz p2, :cond_6

    .line 205
    invoke-virtual {p0}, Lcom/android/camera/s;->getHeight()I

    move-result v4

    .line 206
    int-to-float v5, v4

    cmpg-float v5, v1, v5

    if-gez v5, :cond_2

    .line 207
    int-to-float v4, v4

    sub-float v1, v4, v1

    div-float/2addr v1, v6

    iget v4, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, v4

    .line 215
    :goto_1
    if-eqz p1, :cond_1

    .line 216
    invoke-virtual {p0}, Lcom/android/camera/s;->getWidth()I

    move-result v4

    .line 217
    int-to-float v5, v4

    cmpg-float v5, v3, v5

    if-gez v5, :cond_4

    .line 218
    int-to-float v0, v4

    sub-float/2addr v0, v3

    div-float/2addr v0, v6

    iget v2, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v2

    .line 226
    :cond_1
    :goto_2
    invoke-virtual {p0, v0, v1}, Lcom/android/camera/s;->a(FF)V

    .line 227
    invoke-virtual {p0}, Lcom/android/camera/s;->c()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/s;->setImageMatrix(Landroid/graphics/Matrix;)V

    goto :goto_0

    .line 208
    :cond_2
    iget v1, v2, Landroid/graphics/RectF;->top:F

    cmpl-float v1, v1, v0

    if-lez v1, :cond_3

    .line 209
    iget v1, v2, Landroid/graphics/RectF;->top:F

    neg-float v1, v1

    goto :goto_1

    .line 210
    :cond_3
    iget v1, v2, Landroid/graphics/RectF;->bottom:F

    int-to-float v4, v4

    cmpg-float v1, v1, v4

    if-gez v1, :cond_6

    .line 211
    invoke-virtual {p0}, Lcom/android/camera/s;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v4, v2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v1, v4

    goto :goto_1

    .line 219
    :cond_4
    iget v3, v2, Landroid/graphics/RectF;->left:F

    cmpl-float v3, v3, v0

    if-lez v3, :cond_5

    .line 220
    iget v0, v2, Landroid/graphics/RectF;->left:F

    neg-float v0, v0

    goto :goto_2

    .line 221
    :cond_5
    iget v3, v2, Landroid/graphics/RectF;->right:F

    int-to-float v5, v4

    cmpg-float v3, v3, v5

    if-gez v3, :cond_1

    .line 222
    int-to-float v0, v4

    iget v2, v2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v2

    goto :goto_2

    :cond_6
    move v1, v0

    goto :goto_1
.end method

.method protected b()F
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/android/camera/s;->g:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lcom/android/camera/s;->a(Landroid/graphics/Matrix;)F

    move-result v0

    return v0
.end method

.method protected b(FF)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 404
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/s;->a(FF)V

    .line 405
    invoke-virtual {p0}, Lcom/android/camera/s;->c()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/s;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 406
    return-void
.end method

.method protected c()Landroid/graphics/Matrix;
    .locals 2

    .prologue
    .line 285
    iget-object v0, p0, Lcom/android/camera/s;->a:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/android/camera/s;->f:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 286
    iget-object v0, p0, Lcom/android/camera/s;->a:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/android/camera/s;->g:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 287
    iget-object v0, p0, Lcom/android/camera/s;->a:Landroid/graphics/Matrix;

    return-object v0
.end method

.method protected d()F
    .locals 3

    .prologue
    .line 297
    iget-object v0, p0, Lcom/android/camera/s;->h:Lcom/android/camera/y;

    invoke-virtual {v0}, Lcom/android/camera/y;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    .line 298
    const/high16 v0, 0x3f80

    .line 304
    :goto_0
    return v0

    .line 301
    :cond_0
    iget-object v0, p0, Lcom/android/camera/s;->h:Lcom/android/camera/y;

    invoke-virtual {v0}, Lcom/android/camera/y;->f()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/s;->i:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 302
    iget-object v1, p0, Lcom/android/camera/s;->h:Lcom/android/camera/y;

    invoke-virtual {v1}, Lcom/android/camera/y;->e()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/android/camera/s;->j:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 303
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/high16 v1, 0x4080

    mul-float/2addr v0, v1

    .line 304
    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 95
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 97
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    .line 98
    const/4 v0, 0x1

    .line 100
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    const/high16 v1, 0x3f80

    .line 105
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 107
    invoke-virtual {p0}, Lcom/android/camera/s;->b()F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 110
    invoke-virtual {p0, v1}, Lcom/android/camera/s;->a(F)V

    .line 111
    const/4 v0, 0x1

    .line 114
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 79
    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    .line 80
    sub-int v0, p4, p2

    iput v0, p0, Lcom/android/camera/s;->i:I

    .line 81
    sub-int v0, p5, p3

    iput v0, p0, Lcom/android/camera/s;->j:I

    .line 82
    iget-object v0, p0, Lcom/android/camera/s;->d:Ljava/lang/Runnable;

    .line 83
    if-eqz v0, :cond_0

    .line 84
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/s;->d:Ljava/lang/Runnable;

    .line 85
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/android/camera/s;->h:Lcom/android/camera/y;

    invoke-virtual {v0}, Lcom/android/camera/y;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 88
    iget-object v0, p0, Lcom/android/camera/s;->h:Lcom/android/camera/y;

    iget-object v1, p0, Lcom/android/camera/s;->f:Landroid/graphics/Matrix;

    invoke-direct {p0, v0, v1}, Lcom/android/camera/s;->a(Lcom/android/camera/y;Landroid/graphics/Matrix;)V

    .line 89
    invoke-virtual {p0}, Lcom/android/camera/s;->c()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/s;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 91
    :cond_1
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter

    .prologue
    .line 121
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/camera/s;->a(Landroid/graphics/Bitmap;I)V

    .line 122
    return-void
.end method
