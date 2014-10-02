.class public Lcom/viber/voip/widget/PhotoDoodleView;
.super Lcom/viber/voip/messages/extras/image/imagezoom/ImageViewTouch;
.source "SourceFile"


# static fields
.field private static w:F


# instance fields
.field private A:Landroid/graphics/Bitmap;

.field private B:Landroid/graphics/Canvas;

.field private C:Landroid/graphics/Path;

.field private D:Landroid/graphics/Path;

.field private E:Landroid/graphics/Paint;

.field private F:Landroid/graphics/Paint;

.field private G:Landroid/graphics/Paint;

.field private H:Landroid/graphics/Paint;

.field private final I:Landroid/graphics/RectF;

.field private J:F

.field private K:F

.field private L:Landroid/graphics/Bitmap;

.field private M:F

.field private N:F

.field private O:Z

.field private P:Lcom/viber/voip/widget/s;

.field private x:Z

.field private y:Z

.field private z:Lcom/viber/voip/widget/t;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const/high16 v0, 0x4120

    sput v0, Lcom/viber/voip/widget/PhotoDoodleView;->w:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/extras/image/imagezoom/ImageViewTouch;-><init>(Landroid/content/Context;)V

    .line 68
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/widget/PhotoDoodleView;->I:Landroid/graphics/RectF;

    .line 87
    invoke-direct {p0, p1}, Lcom/viber/voip/widget/PhotoDoodleView;->a(Landroid/content/Context;)V

    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 81
    invoke-direct {p0, p1, p2}, Lcom/viber/voip/messages/extras/image/imagezoom/ImageViewTouch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 68
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/widget/PhotoDoodleView;->I:Landroid/graphics/RectF;

    .line 82
    invoke-direct {p0, p1}, Lcom/viber/voip/widget/PhotoDoodleView;->a(Landroid/content/Context;)V

    .line 83
    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 513
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 517
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 518
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 522
    :goto_0
    return-object v0

    .line 519
    :catch_0
    move-exception v0

    .line 520
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 91
    sget-object v0, Lcom/viber/voip/widget/t;->a:Lcom/viber/voip/widget/t;

    iput-object v0, p0, Lcom/viber/voip/widget/PhotoDoodleView;->z:Lcom/viber/voip/widget/t;

    .line 93
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/widget/PhotoDoodleView;->C:Landroid/graphics/Path;

    .line 94
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/widget/PhotoDoodleView;->D:Landroid/graphics/Path;

    .line 96
    invoke-static {}, Lcom/viber/voip/widget/PhotoDoodleView;->m()Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/widget/PhotoDoodleView;->G:Landroid/graphics/Paint;

    .line 97
    invoke-static {}, Lcom/viber/voip/widget/PhotoDoodleView;->m()Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/widget/PhotoDoodleView;->H:Landroid/graphics/Paint;

    .line 98
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/viber/voip/widget/PhotoDoodleView;->E:Landroid/graphics/Paint;

    .line 100
    invoke-virtual {p0}, Lcom/viber/voip/widget/PhotoDoodleView;->f()V

    .line 101
    return-void
.end method

.method private static a(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter

    .prologue
    .line 526
    if-eqz p0, :cond_0

    .line 527
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 529
    :cond_0
    return-void
.end method

.method private a(Z)V
    .locals 2
    .parameter

    .prologue
    .line 225
    invoke-virtual {p0}, Lcom/viber/voip/widget/PhotoDoodleView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 226
    if-nez v0, :cond_0

    .line 240
    :goto_0
    return-void

    .line 228
    :cond_0
    iget-object v1, p0, Lcom/viber/voip/widget/PhotoDoodleView;->A:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/viber/voip/widget/PhotoDoodleView;->A:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz p1, :cond_2

    .line 229
    :cond_1
    iget-object v1, p0, Lcom/viber/voip/widget/PhotoDoodleView;->A:Landroid/graphics/Bitmap;

    invoke-static {v1}, Lcom/viber/voip/widget/PhotoDoodleView;->a(Landroid/graphics/Bitmap;)V

    .line 230
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/viber/voip/widget/PhotoDoodleView;->A:Landroid/graphics/Bitmap;

    .line 232
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 233
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-direct {p0, v1, v0}, Lcom/viber/voip/widget/PhotoDoodleView;->b(II)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/widget/PhotoDoodleView;->A:Landroid/graphics/Bitmap;

    .line 236
    :cond_2
    iget-object v0, p0, Lcom/viber/voip/widget/PhotoDoodleView;->A:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    .line 237
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/viber/voip/widget/PhotoDoodleView;->A:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/viber/voip/widget/PhotoDoodleView;->B:Landroid/graphics/Canvas;

    .line 239
    :cond_3
    invoke-direct {p0}, Lcom/viber/voip/widget/PhotoDoodleView;->l()V

    goto :goto_0
.end method

.method private b(II)Landroid/graphics/Bitmap;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 489
    const/4 v0, 0x0

    .line 491
    :try_start_0
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 499
    :cond_0
    :goto_0
    return-object v0

    .line 493
    :catch_0
    move-exception v1

    .line 494
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 497
    iget-object v1, p0, Lcom/viber/voip/widget/PhotoDoodleView;->P:Lcom/viber/voip/widget/s;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/viber/voip/widget/PhotoDoodleView;->P:Lcom/viber/voip/widget/s;

    invoke-interface {v1}, Lcom/viber/voip/widget/s;->e()V

    goto :goto_0
.end method

.method private f(FF)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 297
    sget-object v0, Lcom/viber/voip/widget/r;->a:[I

    iget-object v1, p0, Lcom/viber/voip/widget/PhotoDoodleView;->z:Lcom/viber/voip/widget/t;

    invoke-virtual {v1}, Lcom/viber/voip/widget/t;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 314
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/viber/voip/widget/PhotoDoodleView;->O:Z

    .line 315
    iput p1, p0, Lcom/viber/voip/widget/PhotoDoodleView;->M:F

    .line 316
    iput p2, p0, Lcom/viber/voip/widget/PhotoDoodleView;->N:F

    .line 317
    return-void

    .line 300
    :pswitch_0
    iget-object v0, p0, Lcom/viber/voip/widget/PhotoDoodleView;->C:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 301
    iget-object v0, p0, Lcom/viber/voip/widget/PhotoDoodleView;->D:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 302
    invoke-virtual {p0}, Lcom/viber/voip/widget/PhotoDoodleView;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 303
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/viber/voip/widget/PhotoDoodleView;->a(Landroid/graphics/Matrix;I)F

    move-result v1

    .line 304
    const/4 v2, 0x5

    invoke-virtual {p0, v0, v2}, Lcom/viber/voip/widget/PhotoDoodleView;->a(Landroid/graphics/Matrix;I)F

    move-result v0

    .line 306
    iget-object v2, p0, Lcom/viber/voip/widget/PhotoDoodleView;->C:Landroid/graphics/Path;

    invoke-virtual {v2, p1, p2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 307
    iget-object v2, p0, Lcom/viber/voip/widget/PhotoDoodleView;->D:Landroid/graphics/Path;

    sub-float v1, p1, v1

    iget v3, p0, Lcom/viber/voip/widget/PhotoDoodleView;->K:F

    div-float/2addr v1, v3

    sub-float v0, p2, v0

    iget v3, p0, Lcom/viber/voip/widget/PhotoDoodleView;->K:F

    div-float/2addr v0, v3

    invoke-virtual {v2, v1, v0}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_0

    .line 310
    :pswitch_1
    invoke-direct {p0, p1, p2}, Lcom/viber/voip/widget/PhotoDoodleView;->h(FF)V

    goto :goto_0

    .line 297
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private g(FF)V
    .locals 13
    .parameter
    .parameter

    .prologue
    const/4 v12, 0x2

    const-wide/high16 v10, 0x3ff8

    const/4 v8, 0x0

    const/high16 v9, 0x4000

    .line 320
    iget v0, p0, Lcom/viber/voip/widget/PhotoDoodleView;->M:F

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 321
    iget v1, p0, Lcom/viber/voip/widget/PhotoDoodleView;->N:F

    sub-float v1, p2, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 322
    sget v2, Lcom/viber/voip/widget/PhotoDoodleView;->w:F

    cmpl-float v2, v0, v2

    if-gez v2, :cond_0

    sget v2, Lcom/viber/voip/widget/PhotoDoodleView;->w:F

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_1

    .line 323
    :cond_0
    invoke-virtual {p0}, Lcom/viber/voip/widget/PhotoDoodleView;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    .line 324
    invoke-virtual {p0, v2, v12}, Lcom/viber/voip/widget/PhotoDoodleView;->a(Landroid/graphics/Matrix;I)F

    move-result v3

    .line 325
    const/4 v4, 0x5

    invoke-virtual {p0, v2, v4}, Lcom/viber/voip/widget/PhotoDoodleView;->a(Landroid/graphics/Matrix;I)F

    move-result v2

    .line 326
    iget v4, p0, Lcom/viber/voip/widget/PhotoDoodleView;->M:F

    sub-float/2addr v4, v3

    iget v5, p0, Lcom/viber/voip/widget/PhotoDoodleView;->K:F

    div-float/2addr v4, v5

    .line 327
    iget v5, p0, Lcom/viber/voip/widget/PhotoDoodleView;->N:F

    sub-float/2addr v5, v2

    iget v6, p0, Lcom/viber/voip/widget/PhotoDoodleView;->K:F

    div-float/2addr v5, v6

    .line 328
    iput-boolean v8, p0, Lcom/viber/voip/widget/PhotoDoodleView;->O:Z

    .line 330
    sget-object v6, Lcom/viber/voip/widget/r;->a:[I

    iget-object v7, p0, Lcom/viber/voip/widget/PhotoDoodleView;->z:Lcom/viber/voip/widget/t;

    invoke-virtual {v7}, Lcom/viber/voip/widget/t;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 377
    :goto_0
    iput p1, p0, Lcom/viber/voip/widget/PhotoDoodleView;->M:F

    .line 378
    iput p2, p0, Lcom/viber/voip/widget/PhotoDoodleView;->N:F

    .line 380
    :cond_1
    return-void

    .line 332
    :pswitch_0
    iget-object v0, p0, Lcom/viber/voip/widget/PhotoDoodleView;->C:Landroid/graphics/Path;

    iget v1, p0, Lcom/viber/voip/widget/PhotoDoodleView;->M:F

    iget v6, p0, Lcom/viber/voip/widget/PhotoDoodleView;->N:F

    iget v7, p0, Lcom/viber/voip/widget/PhotoDoodleView;->M:F

    add-float/2addr v7, p1

    div-float/2addr v7, v9

    iget v8, p0, Lcom/viber/voip/widget/PhotoDoodleView;->N:F

    add-float/2addr v8, p2

    div-float/2addr v8, v9

    invoke-virtual {v0, v1, v6, v7, v8}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 333
    iget-object v0, p0, Lcom/viber/voip/widget/PhotoDoodleView;->D:Landroid/graphics/Path;

    sub-float v1, p1, v3

    iget v3, p0, Lcom/viber/voip/widget/PhotoDoodleView;->K:F

    div-float/2addr v1, v3

    add-float/2addr v1, v4

    div-float/2addr v1, v9

    sub-float v2, p2, v2

    iget v3, p0, Lcom/viber/voip/widget/PhotoDoodleView;->K:F

    div-float/2addr v2, v3

    add-float/2addr v2, v5

    div-float/2addr v2, v9

    invoke-virtual {v0, v4, v5, v1, v2}, Landroid/graphics/Path;->quadTo(FFFF)V

    goto :goto_0

    .line 338
    :pswitch_1
    iget-object v0, p0, Lcom/viber/voip/widget/PhotoDoodleView;->D:Landroid/graphics/Path;

    sub-float v1, p1, v3

    iget v3, p0, Lcom/viber/voip/widget/PhotoDoodleView;->K:F

    div-float/2addr v1, v3

    add-float/2addr v1, v4

    div-float/2addr v1, v9

    sub-float v2, p2, v2

    iget v3, p0, Lcom/viber/voip/widget/PhotoDoodleView;->K:F

    div-float/2addr v2, v3

    add-float/2addr v2, v5

    div-float/2addr v2, v9

    invoke-virtual {v0, v4, v5, v1, v2}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 340
    iget-object v0, p0, Lcom/viber/voip/widget/PhotoDoodleView;->B:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/viber/voip/widget/PhotoDoodleView;->D:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/viber/voip/widget/PhotoDoodleView;->H:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 344
    :pswitch_2
    float-to-double v2, v0

    sget v0, Lcom/viber/voip/widget/PhotoDoodleView;->w:F

    float-to-double v4, v0

    mul-double/2addr v4, v10

    cmpl-double v0, v2, v4

    if-gez v0, :cond_2

    float-to-double v0, v1

    sget v2, Lcom/viber/voip/widget/PhotoDoodleView;->w:F

    float-to-double v2, v2

    mul-double/2addr v2, v10

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_6

    .line 346
    :cond_2
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 347
    iget v1, p0, Lcom/viber/voip/widget/PhotoDoodleView;->M:F

    iget v2, p0, Lcom/viber/voip/widget/PhotoDoodleView;->N:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 348
    iget v1, p0, Lcom/viber/voip/widget/PhotoDoodleView;->M:F

    iget v2, p0, Lcom/viber/voip/widget/PhotoDoodleView;->N:F

    invoke-virtual {v0, v1, v2, p1, p2}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 350
    new-instance v1, Landroid/graphics/PathMeasure;

    invoke-direct {v1, v0, v8}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    .line 353
    const/4 v0, 0x0

    invoke-virtual {v1}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v2

    :goto_1
    cmpg-float v3, v0, v2

    if-gez v3, :cond_5

    .line 354
    new-array v3, v12, [F

    fill-array-data v3, :array_0

    .line 355
    const/4 v4, 0x0

    invoke-virtual {v1, v0, v3, v4}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    .line 357
    aget v4, v3, v8

    .line 358
    const/4 v5, 0x1

    aget v3, v3, v5

    .line 360
    iget v5, p0, Lcom/viber/voip/widget/PhotoDoodleView;->M:F

    sub-float v5, v4, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 361
    iget v6, p0, Lcom/viber/voip/widget/PhotoDoodleView;->N:F

    sub-float v6, v3, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    .line 363
    sget v7, Lcom/viber/voip/widget/PhotoDoodleView;->w:F

    cmpl-float v5, v5, v7

    if-gez v5, :cond_3

    sget v5, Lcom/viber/voip/widget/PhotoDoodleView;->w:F

    cmpl-float v5, v6, v5

    if-ltz v5, :cond_4

    .line 364
    :cond_3
    invoke-direct {p0, v4, v3}, Lcom/viber/voip/widget/PhotoDoodleView;->h(FF)V

    .line 365
    iput v4, p0, Lcom/viber/voip/widget/PhotoDoodleView;->M:F

    .line 366
    iput v3, p0, Lcom/viber/voip/widget/PhotoDoodleView;->N:F

    .line 353
    :cond_4
    const/high16 v3, 0x3f80

    add-float/2addr v0, v3

    goto :goto_1

    .line 369
    :cond_5
    iget p1, p0, Lcom/viber/voip/widget/PhotoDoodleView;->M:F

    .line 370
    iget p2, p0, Lcom/viber/voip/widget/PhotoDoodleView;->N:F

    goto/16 :goto_0

    .line 372
    :cond_6
    invoke-direct {p0, p1, p2}, Lcom/viber/voip/widget/PhotoDoodleView;->h(FF)V

    goto/16 :goto_0

    .line 330
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 354
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private h()V
    .locals 1

    .prologue
    .line 383
    iget-boolean v0, p0, Lcom/viber/voip/widget/PhotoDoodleView;->O:Z

    if-eqz v0, :cond_0

    .line 384
    invoke-direct {p0}, Lcom/viber/voip/widget/PhotoDoodleView;->i()V

    .line 388
    :goto_0
    iget-object v0, p0, Lcom/viber/voip/widget/PhotoDoodleView;->C:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 389
    iget-object v0, p0, Lcom/viber/voip/widget/PhotoDoodleView;->D:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 390
    return-void

    .line 386
    :cond_0
    invoke-direct {p0}, Lcom/viber/voip/widget/PhotoDoodleView;->j()V

    goto :goto_0
.end method

.method private h(FF)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 393
    invoke-virtual {p0}, Lcom/viber/voip/widget/PhotoDoodleView;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 394
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/viber/voip/widget/PhotoDoodleView;->a(Landroid/graphics/Matrix;I)F

    move-result v1

    .line 395
    const/4 v2, 0x5

    invoke-virtual {p0, v0, v2}, Lcom/viber/voip/widget/PhotoDoodleView;->a(Landroid/graphics/Matrix;I)F

    move-result v0

    .line 397
    iget-object v2, p0, Lcom/viber/voip/widget/PhotoDoodleView;->B:Landroid/graphics/Canvas;

    iget-object v3, p0, Lcom/viber/voip/widget/PhotoDoodleView;->L:Landroid/graphics/Bitmap;

    sub-float v1, p1, v1

    iget v4, p0, Lcom/viber/voip/widget/PhotoDoodleView;->K:F

    div-float/2addr v1, v4

    iget-object v4, p0, Lcom/viber/voip/widget/PhotoDoodleView;->L:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float/2addr v1, v4

    sub-float v0, p2, v0

    iget v4, p0, Lcom/viber/voip/widget/PhotoDoodleView;->K:F

    div-float/2addr v0, v4

    iget-object v4, p0, Lcom/viber/voip/widget/PhotoDoodleView;->L:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float/2addr v0, v4

    iget-object v4, p0, Lcom/viber/voip/widget/PhotoDoodleView;->F:Landroid/graphics/Paint;

    invoke-virtual {v2, v3, v1, v0, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 399
    return-void
.end method

.method private i()V
    .locals 6

    .prologue
    const/high16 v5, 0x3f80

    .line 402
    invoke-virtual {p0}, Lcom/viber/voip/widget/PhotoDoodleView;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 403
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/viber/voip/widget/PhotoDoodleView;->a(Landroid/graphics/Matrix;I)F

    move-result v1

    .line 404
    const/4 v2, 0x5

    invoke-virtual {p0, v0, v2}, Lcom/viber/voip/widget/PhotoDoodleView;->a(Landroid/graphics/Matrix;I)F

    move-result v0

    .line 405
    sget-object v2, Lcom/viber/voip/widget/r;->a:[I

    iget-object v3, p0, Lcom/viber/voip/widget/PhotoDoodleView;->z:Lcom/viber/voip/widget/t;

    invoke-virtual {v3}, Lcom/viber/voip/widget/t;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 416
    :goto_0
    return-void

    .line 408
    :pswitch_0
    iget-object v2, p0, Lcom/viber/voip/widget/PhotoDoodleView;->C:Landroid/graphics/Path;

    iget v3, p0, Lcom/viber/voip/widget/PhotoDoodleView;->M:F

    add-float/2addr v3, v5

    iget v4, p0, Lcom/viber/voip/widget/PhotoDoodleView;->N:F

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 409
    iget-object v2, p0, Lcom/viber/voip/widget/PhotoDoodleView;->D:Landroid/graphics/Path;

    iget v3, p0, Lcom/viber/voip/widget/PhotoDoodleView;->M:F

    add-float/2addr v3, v5

    sub-float v1, v3, v1

    iget v3, p0, Lcom/viber/voip/widget/PhotoDoodleView;->K:F

    div-float/2addr v1, v3

    iget v3, p0, Lcom/viber/voip/widget/PhotoDoodleView;->N:F

    sub-float v0, v3, v0

    iget v3, p0, Lcom/viber/voip/widget/PhotoDoodleView;->K:F

    div-float/2addr v0, v3

    invoke-virtual {v2, v1, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 410
    iget-object v0, p0, Lcom/viber/voip/widget/PhotoDoodleView;->B:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/viber/voip/widget/PhotoDoodleView;->D:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/viber/voip/widget/PhotoDoodleView;->H:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 405
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private j()V
    .locals 5

    .prologue
    .line 419
    invoke-virtual {p0}, Lcom/viber/voip/widget/PhotoDoodleView;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 420
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/viber/voip/widget/PhotoDoodleView;->a(Landroid/graphics/Matrix;I)F

    move-result v1

    .line 421
    const/4 v2, 0x5

    invoke-virtual {p0, v0, v2}, Lcom/viber/voip/widget/PhotoDoodleView;->a(Landroid/graphics/Matrix;I)F

    move-result v0

    .line 422
    sget-object v2, Lcom/viber/voip/widget/r;->a:[I

    iget-object v3, p0, Lcom/viber/voip/widget/PhotoDoodleView;->z:Lcom/viber/voip/widget/t;

    invoke-virtual {v3}, Lcom/viber/voip/widget/t;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 431
    :goto_0
    return-void

    .line 424
    :pswitch_0
    iget-object v2, p0, Lcom/viber/voip/widget/PhotoDoodleView;->C:Landroid/graphics/Path;

    iget v3, p0, Lcom/viber/voip/widget/PhotoDoodleView;->M:F

    iget v4, p0, Lcom/viber/voip/widget/PhotoDoodleView;->N:F

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 425
    iget-object v2, p0, Lcom/viber/voip/widget/PhotoDoodleView;->D:Landroid/graphics/Path;

    iget v3, p0, Lcom/viber/voip/widget/PhotoDoodleView;->M:F

    sub-float v1, v3, v1

    iget v3, p0, Lcom/viber/voip/widget/PhotoDoodleView;->K:F

    div-float/2addr v1, v3

    iget v3, p0, Lcom/viber/voip/widget/PhotoDoodleView;->N:F

    sub-float v0, v3, v0

    iget v3, p0, Lcom/viber/voip/widget/PhotoDoodleView;->K:F

    div-float/2addr v0, v3

    invoke-virtual {v2, v1, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 426
    iget-object v0, p0, Lcom/viber/voip/widget/PhotoDoodleView;->B:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/viber/voip/widget/PhotoDoodleView;->D:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/viber/voip/widget/PhotoDoodleView;->H:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 422
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private k()V
    .locals 1

    .prologue
    .line 434
    iget-boolean v0, p0, Lcom/viber/voip/widget/PhotoDoodleView;->x:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/viber/voip/widget/PhotoDoodleView;->f()V

    .line 436
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/widget/PhotoDoodleView;->P:Lcom/viber/voip/widget/s;

    if-eqz v0, :cond_1

    .line 437
    iget-boolean v0, p0, Lcom/viber/voip/widget/PhotoDoodleView;->x:Z

    if-eqz v0, :cond_2

    .line 438
    iget-object v0, p0, Lcom/viber/voip/widget/PhotoDoodleView;->P:Lcom/viber/voip/widget/s;

    invoke-interface {v0}, Lcom/viber/voip/widget/s;->c()V

    .line 443
    :cond_1
    :goto_0
    return-void

    .line 440
    :cond_2
    iget-object v0, p0, Lcom/viber/voip/widget/PhotoDoodleView;->P:Lcom/viber/voip/widget/s;

    invoke-interface {v0}, Lcom/viber/voip/widget/s;->d()V

    goto :goto_0
.end method

.method private l()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 476
    iget-object v0, p0, Lcom/viber/voip/widget/PhotoDoodleView;->A:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 485
    :goto_0
    return-void

    .line 479
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/widget/PhotoDoodleView;->I:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/viber/voip/widget/PhotoDoodleView;->A:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/viber/voip/widget/PhotoDoodleView;->A:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 480
    invoke-virtual {p0}, Lcom/viber/voip/widget/PhotoDoodleView;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/widget/PhotoDoodleView;->I:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 482
    iget-object v0, p0, Lcom/viber/voip/widget/PhotoDoodleView;->I:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p0, Lcom/viber/voip/widget/PhotoDoodleView;->A:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/viber/voip/widget/PhotoDoodleView;->K:F

    .line 484
    iget v0, p0, Lcom/viber/voip/widget/PhotoDoodleView;->J:F

    invoke-direct {p0, v0}, Lcom/viber/voip/widget/PhotoDoodleView;->setPaintSize(F)V

    goto :goto_0
.end method

.method private static m()Landroid/graphics/Paint;
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 503
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 504
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 505
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 506
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 507
    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 508
    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 509
    return-object v0
.end method

.method private setPaintSize(F)V
    .locals 2
    .parameter

    .prologue
    .line 180
    iput p1, p0, Lcom/viber/voip/widget/PhotoDoodleView;->J:F

    .line 181
    iget v0, p0, Lcom/viber/voip/widget/PhotoDoodleView;->J:F

    iget v1, p0, Lcom/viber/voip/widget/PhotoDoodleView;->K:F

    mul-float/2addr v0, v1

    .line 183
    iget-object v1, p0, Lcom/viber/voip/widget/PhotoDoodleView;->G:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 184
    iget-object v0, p0, Lcom/viber/voip/widget/PhotoDoodleView;->H:Landroid/graphics/Paint;

    iget v1, p0, Lcom/viber/voip/widget/PhotoDoodleView;->J:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 186
    const/high16 v0, 0x4120

    sput v0, Lcom/viber/voip/widget/PhotoDoodleView;->w:F

    .line 187
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 3
    .parameter

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/viber/voip/widget/PhotoDoodleView;->g()V

    .line 128
    sget-object v0, Lcom/viber/voip/widget/t;->b:Lcom/viber/voip/widget/t;

    iput-object v0, p0, Lcom/viber/voip/widget/PhotoDoodleView;->z:Lcom/viber/voip/widget/t;

    .line 129
    iget-object v0, p0, Lcom/viber/voip/widget/PhotoDoodleView;->G:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 130
    iget-object v0, p0, Lcom/viber/voip/widget/PhotoDoodleView;->H:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 131
    int-to-float v0, p1

    invoke-direct {p0, v0}, Lcom/viber/voip/widget/PhotoDoodleView;->setPaintSize(F)V

    .line 132
    return-void
.end method

.method public a(II)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 153
    invoke-virtual {p0}, Lcom/viber/voip/widget/PhotoDoodleView;->g()V

    .line 154
    sget-object v0, Lcom/viber/voip/widget/t;->a:Lcom/viber/voip/widget/t;

    iput-object v0, p0, Lcom/viber/voip/widget/PhotoDoodleView;->z:Lcom/viber/voip/widget/t;

    .line 155
    iget-object v0, p0, Lcom/viber/voip/widget/PhotoDoodleView;->G:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 156
    iget-object v0, p0, Lcom/viber/voip/widget/PhotoDoodleView;->H:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 158
    iget-object v0, p0, Lcom/viber/voip/widget/PhotoDoodleView;->G:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 159
    iget-object v0, p0, Lcom/viber/voip/widget/PhotoDoodleView;->H:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 161
    invoke-virtual {p0, p2}, Lcom/viber/voip/widget/PhotoDoodleView;->setPaintColor(I)V

    .line 162
    int-to-float v0, p1

    invoke-direct {p0, v0}, Lcom/viber/voip/widget/PhotoDoodleView;->setPaintSize(F)V

    .line 163
    return-void
.end method

.method public a(ILjava/lang/String;I)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 135
    invoke-virtual {p0}, Lcom/viber/voip/widget/PhotoDoodleView;->g()V

    .line 136
    sget-object v0, Lcom/viber/voip/widget/t;->c:Lcom/viber/voip/widget/t;

    iput-object v0, p0, Lcom/viber/voip/widget/PhotoDoodleView;->z:Lcom/viber/voip/widget/t;

    .line 137
    iget-object v0, p0, Lcom/viber/voip/widget/PhotoDoodleView;->L:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/viber/voip/widget/PhotoDoodleView;->a(Landroid/graphics/Bitmap;)V

    .line 138
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/viber/voip/widget/PhotoDoodleView;->L:Landroid/graphics/Bitmap;

    .line 140
    new-instance v0, Landroid/graphics/LightingColorFilter;

    invoke-direct {v0, p1, v2}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    .line 142
    invoke-virtual {p0}, Lcom/viber/voip/widget/PhotoDoodleView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/viber/voip/widget/PhotoDoodleView;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 144
    invoke-static {v1, p3, v2, v2}, Lcom/viber/voip/messages/extras/image/h;->b(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/viber/voip/widget/PhotoDoodleView;->L:Landroid/graphics/Bitmap;

    .line 146
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, p1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/viber/voip/widget/PhotoDoodleView;->F:Landroid/graphics/Paint;

    .line 147
    iget-object v1, p0, Lcom/viber/voip/widget/PhotoDoodleView;->F:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 149
    int-to-float v0, p3

    const/high16 v1, 0x4080

    div-float/2addr v0, v1

    sput v0, Lcom/viber/voip/widget/PhotoDoodleView;->w:F

    .line 150
    return-void
.end method

.method protected a(Landroid/graphics/Bitmap;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 244
    invoke-super {p0, p1, p2}, Lcom/viber/voip/messages/extras/image/imagezoom/ImageViewTouch;->a(Landroid/graphics/Bitmap;I)V

    .line 246
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/viber/voip/widget/PhotoDoodleView;->a(Z)V

    .line 247
    return-void
.end method

.method public a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 113
    iput-object p1, p0, Lcom/viber/voip/widget/PhotoDoodleView;->A:Landroid/graphics/Bitmap;

    .line 114
    const/4 v0, 0x1

    invoke-virtual {p0, p2, v0}, Lcom/viber/voip/widget/PhotoDoodleView;->a(Landroid/graphics/Bitmap;Z)V

    .line 115
    return-void
.end method

.method protected a(Lcom/viber/voip/messages/extras/image/imagezoom/i;Landroid/graphics/Matrix;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 220
    invoke-super {p0, p1, p2}, Lcom/viber/voip/messages/extras/image/imagezoom/ImageViewTouch;->a(Lcom/viber/voip/messages/extras/image/imagezoom/i;Landroid/graphics/Matrix;)V

    .line 221
    invoke-direct {p0}, Lcom/viber/voip/widget/PhotoDoodleView;->l()V

    .line 222
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/viber/voip/widget/PhotoDoodleView;->a(Z)V

    .line 105
    invoke-virtual {p0}, Lcom/viber/voip/widget/PhotoDoodleView;->invalidate()V

    .line 106
    iget-boolean v0, p0, Lcom/viber/voip/widget/PhotoDoodleView;->x:Z

    if-eqz v0, :cond_0

    .line 107
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/viber/voip/widget/PhotoDoodleView;->x:Z

    .line 108
    invoke-direct {p0}, Lcom/viber/voip/widget/PhotoDoodleView;->k()V

    .line 110
    :cond_0
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 167
    iput-object v1, p0, Lcom/viber/voip/widget/PhotoDoodleView;->P:Lcom/viber/voip/widget/s;

    .line 168
    iput-object v1, p0, Lcom/viber/voip/widget/PhotoDoodleView;->B:Landroid/graphics/Canvas;

    .line 170
    iget-object v0, p0, Lcom/viber/voip/widget/PhotoDoodleView;->A:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/viber/voip/widget/PhotoDoodleView;->a(Landroid/graphics/Bitmap;)V

    .line 171
    iget-object v0, p0, Lcom/viber/voip/widget/PhotoDoodleView;->L:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/viber/voip/widget/PhotoDoodleView;->a(Landroid/graphics/Bitmap;)V

    .line 173
    iput-object v1, p0, Lcom/viber/voip/widget/PhotoDoodleView;->A:Landroid/graphics/Bitmap;

    .line 174
    iput-object v1, p0, Lcom/viber/voip/widget/PhotoDoodleView;->L:Landroid/graphics/Bitmap;

    .line 176
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 177
    return-void
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 190
    iget-boolean v0, p0, Lcom/viber/voip/widget/PhotoDoodleView;->x:Z

    return v0
.end method

.method public f()V
    .locals 1

    .prologue
    .line 204
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/viber/voip/widget/PhotoDoodleView;->y:Z

    .line 205
    return-void
.end method

.method public g()V
    .locals 1

    .prologue
    .line 211
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/viber/voip/widget/PhotoDoodleView;->y:Z

    .line 212
    return-void
.end method

.method public getDoodle()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/viber/voip/widget/PhotoDoodleView;->A:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter

    .prologue
    .line 251
    invoke-super {p0, p1}, Lcom/viber/voip/messages/extras/image/imagezoom/ImageViewTouch;->onDraw(Landroid/graphics/Canvas;)V

    .line 253
    invoke-virtual {p0}, Lcom/viber/voip/widget/PhotoDoodleView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 254
    iget-object v1, p0, Lcom/viber/voip/widget/PhotoDoodleView;->A:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/viber/voip/widget/PhotoDoodleView;->A:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/viber/voip/widget/PhotoDoodleView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/widget/PhotoDoodleView;->E:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 257
    iget-object v0, p0, Lcom/viber/voip/widget/PhotoDoodleView;->z:Lcom/viber/voip/widget/t;

    sget-object v1, Lcom/viber/voip/widget/t;->b:Lcom/viber/voip/widget/t;

    if-eq v0, v1, :cond_0

    .line 258
    iget-object v0, p0, Lcom/viber/voip/widget/PhotoDoodleView;->C:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/viber/voip/widget/PhotoDoodleView;->G:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 261
    :cond_0
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1
    .parameter

    .prologue
    .line 464
    check-cast p1, Lcom/viber/voip/widget/PhotoDoodleView$SavedState;

    .line 467
    iget-object v0, p1, Lcom/viber/voip/widget/PhotoDoodleView$SavedState;->a:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/viber/voip/widget/PhotoDoodleView;->L:Landroid/graphics/Bitmap;

    .line 468
    iget-boolean v0, p1, Lcom/viber/voip/widget/PhotoDoodleView$SavedState;->c:Z

    iput-boolean v0, p0, Lcom/viber/voip/widget/PhotoDoodleView;->y:Z

    .line 469
    iget-object v0, p1, Lcom/viber/voip/widget/PhotoDoodleView$SavedState;->e:Lcom/viber/voip/widget/t;

    iput-object v0, p0, Lcom/viber/voip/widget/PhotoDoodleView;->z:Lcom/viber/voip/widget/t;

    .line 470
    iget v0, p1, Lcom/viber/voip/widget/PhotoDoodleView$SavedState;->f:F

    iput v0, p0, Lcom/viber/voip/widget/PhotoDoodleView;->J:F

    .line 472
    invoke-virtual {p1}, Lcom/viber/voip/widget/PhotoDoodleView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/viber/voip/messages/extras/image/imagezoom/ImageViewTouch;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 473
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 447
    new-instance v0, Lcom/viber/voip/widget/PhotoDoodleView$SavedState;

    invoke-super {p0}, Lcom/viber/voip/messages/extras/image/imagezoom/ImageViewTouch;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/viber/voip/widget/PhotoDoodleView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 454
    iget-object v1, p0, Lcom/viber/voip/widget/PhotoDoodleView;->L:Landroid/graphics/Bitmap;

    iput-object v1, v0, Lcom/viber/voip/widget/PhotoDoodleView$SavedState;->a:Landroid/graphics/Bitmap;

    .line 455
    iget-boolean v1, p0, Lcom/viber/voip/widget/PhotoDoodleView;->y:Z

    iput-boolean v1, v0, Lcom/viber/voip/widget/PhotoDoodleView$SavedState;->c:Z

    .line 456
    iget-object v1, p0, Lcom/viber/voip/widget/PhotoDoodleView;->z:Lcom/viber/voip/widget/t;

    iput-object v1, v0, Lcom/viber/voip/widget/PhotoDoodleView$SavedState;->e:Lcom/viber/voip/widget/t;

    .line 457
    iget v1, p0, Lcom/viber/voip/widget/PhotoDoodleView;->J:F

    iput v1, v0, Lcom/viber/voip/widget/PhotoDoodleView$SavedState;->f:F

    .line 459
    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 265
    iget-boolean v0, p0, Lcom/viber/voip/widget/PhotoDoodleView;->y:Z

    if-eqz v0, :cond_0

    .line 266
    invoke-super {p0, p1}, Lcom/viber/voip/messages/extras/image/imagezoom/ImageViewTouch;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 293
    :goto_0
    return v0

    .line 269
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/widget/PhotoDoodleView;->k:Landroid/view/View$OnTouchListener;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/viber/voip/widget/PhotoDoodleView;->k:Landroid/view/View$OnTouchListener;

    invoke-virtual {p0}, Lcom/viber/voip/widget/PhotoDoodleView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-interface {v2, v0, p1}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 271
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 272
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 274
    iget-boolean v3, p0, Lcom/viber/voip/widget/PhotoDoodleView;->x:Z

    if-nez v3, :cond_2

    .line 275
    iput-boolean v1, p0, Lcom/viber/voip/widget/PhotoDoodleView;->x:Z

    .line 276
    invoke-direct {p0}, Lcom/viber/voip/widget/PhotoDoodleView;->k()V

    .line 279
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :goto_1
    move v0, v1

    .line 293
    goto :goto_0

    .line 281
    :pswitch_0
    invoke-direct {p0, v0, v2}, Lcom/viber/voip/widget/PhotoDoodleView;->f(FF)V

    .line 282
    invoke-virtual {p0}, Lcom/viber/voip/widget/PhotoDoodleView;->invalidate()V

    goto :goto_1

    .line 285
    :pswitch_1
    invoke-direct {p0, v0, v2}, Lcom/viber/voip/widget/PhotoDoodleView;->g(FF)V

    .line 286
    invoke-virtual {p0}, Lcom/viber/voip/widget/PhotoDoodleView;->invalidate()V

    goto :goto_1

    .line 289
    :pswitch_2
    invoke-direct {p0}, Lcom/viber/voip/widget/PhotoDoodleView;->h()V

    .line 290
    invoke-virtual {p0}, Lcom/viber/voip/widget/PhotoDoodleView;->invalidate()V

    goto :goto_1

    .line 279
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setCanvasDirty(Z)V
    .locals 1
    .parameter

    .prologue
    .line 194
    iget-boolean v0, p0, Lcom/viber/voip/widget/PhotoDoodleView;->x:Z

    if-eq v0, p1, :cond_0

    .line 195
    iput-boolean p1, p0, Lcom/viber/voip/widget/PhotoDoodleView;->x:Z

    .line 196
    invoke-direct {p0}, Lcom/viber/voip/widget/PhotoDoodleView;->k()V

    .line 198
    :cond_0
    return-void
.end method

.method public setDoodleListener(Lcom/viber/voip/widget/s;)V
    .locals 0
    .parameter

    .prologue
    .line 215
    iput-object p1, p0, Lcom/viber/voip/widget/PhotoDoodleView;->P:Lcom/viber/voip/widget/s;

    .line 216
    return-void
.end method

.method public setPaintColor(I)V
    .locals 1
    .parameter

    .prologue
    .line 122
    iget-object v0, p0, Lcom/viber/voip/widget/PhotoDoodleView;->G:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 123
    iget-object v0, p0, Lcom/viber/voip/widget/PhotoDoodleView;->H:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 124
    return-void
.end method
