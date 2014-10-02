.class public Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;
.super Landroid/view/View;
.source "SourceFile"


# static fields
.field static a:I

.field private static w:F

.field private static x:F

.field private static y:F

.field private static z:D


# instance fields
.field private b:Landroid/graphics/Bitmap;

.field private c:Landroid/graphics/Bitmap;

.field private d:Landroid/graphics/Canvas;

.field private e:Landroid/graphics/Path;

.field private f:Landroid/graphics/Path;

.field private g:Landroid/graphics/Paint;

.field private h:Landroid/graphics/Paint;

.field private i:Landroid/graphics/Paint;

.field private j:Landroid/graphics/Paint;

.field private k:I

.field private l:I

.field private m:F

.field private n:Z

.field private o:Lcom/viber/voip/messages/extras/doodle/b;

.field private p:Landroid/graphics/Bitmap;

.field private q:Lcom/viber/voip/messages/extras/doodle/c;

.field private r:Landroid/graphics/MaskFilter;

.field private s:Landroid/graphics/Matrix;

.field private t:F

.field private u:F

.field private v:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 412
    const/high16 v0, 0x4120

    sput v0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->w:F

    .line 417
    sget v0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->w:F

    sput v0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->x:F

    .line 419
    const/high16 v0, 0x4080

    sput v0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->y:F

    .line 421
    const-wide/high16 v0, 0x3ff8

    sput-wide v0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->z:D

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 108
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 109
    invoke-direct {p0}, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->f()V

    .line 110
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 113
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 114
    invoke-direct {p0}, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->f()V

    .line 115
    return-void
.end method

.method private a(III)Landroid/graphics/Bitmap;
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 297
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "createBitmap width = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", height = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", angle = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->a(Ljava/lang/String;)V

    .line 298
    const/4 v1, 0x0

    .line 300
    if-nez p3, :cond_1

    .line 301
    :try_start_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 305
    :goto_0
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "bitmap size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/viber/voip/messages/extras/image/h;->d(Landroid/graphics/Bitmap;)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x4980

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    .line 312
    :cond_0
    :goto_1
    return-object v0

    .line 303
    :cond_1
    :try_start_2
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    goto :goto_0

    .line 306
    :catch_0
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    .line 307
    :goto_2
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 309
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "createBitmap: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->a(Ljava/lang/String;)V

    .line 310
    iget-object v1, p0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->o:Lcom/viber/voip/messages/extras/doodle/b;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->o:Lcom/viber/voip/messages/extras/doodle/b;

    invoke-interface {v1}, Lcom/viber/voip/messages/extras/doodle/b;->c()V

    goto :goto_1

    .line 306
    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 712
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 716
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 717
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 721
    :goto_0
    return-object v0

    .line 718
    :catch_0
    move-exception v0

    .line 719
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(FF)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 424
    sget-object v0, Lcom/viber/voip/messages/extras/doodle/a;->a:[I

    iget-object v1, p0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->q:Lcom/viber/voip/messages/extras/doodle/c;

    invoke-virtual {v1}, Lcom/viber/voip/messages/extras/doodle/c;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 438
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->v:Z

    .line 439
    iput p1, p0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->t:F

    .line 440
    iput p2, p0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->u:F

    .line 441
    return-void

    .line 428
    :pswitch_0
    iget-object v0, p0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->e:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 429
    iget-object v0, p0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->f:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 431
    iget-object v0, p0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->e:Landroid/graphics/Path;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 432
    iget-object v0, p0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->f:Landroid/graphics/Path;

    iget v1, p0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->m:F

    div-float v1, p1, v1

    iget v2, p0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->m:F

    div-float v2, p2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_0

    .line 435
    :pswitch_1
    invoke-direct {p0, p1, p2}, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->c(FF)V

    goto :goto_0

    .line 424
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private a(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter

    .prologue
    .line 602
    if-eqz p1, :cond_0

    .line 603
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 605
    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 725
    const/4 v0, 0x3

    const-string/jumbo v1, "DoodleDrawingPanel"

    invoke-static {v0, v1, p1}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 726
    return-void
.end method

.method private a(Z)V
    .locals 1
    .parameter

    .prologue
    .line 382
    iget-boolean v0, p0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->n:Z

    if-eq p1, v0, :cond_0

    .line 383
    iput-boolean p1, p0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->n:Z

    .line 384
    iget-boolean v0, p0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->n:Z

    if-eqz v0, :cond_1

    .line 385
    iget-object v0, p0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->o:Lcom/viber/voip/messages/extras/doodle/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->o:Lcom/viber/voip/messages/extras/doodle/b;

    invoke-interface {v0}, Lcom/viber/voip/messages/extras/doodle/b;->a()V

    .line 390
    :cond_0
    :goto_0
    return-void

    .line 387
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->o:Lcom/viber/voip/messages/extras/doodle/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->o:Lcom/viber/voip/messages/extras/doodle/b;

    invoke-interface {v0}, Lcom/viber/voip/messages/extras/doodle/b;->b()V

    goto :goto_0
.end method

.method private b(FF)V
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/high16 v7, 0x4000

    .line 444
    iget v0, p0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->t:F

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 445
    iget v2, p0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->u:F

    sub-float v2, p2, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 446
    sget v3, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->x:F

    cmpl-float v3, v0, v3

    if-gez v3, :cond_0

    sget v3, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->x:F

    cmpl-float v3, v2, v3

    if-ltz v3, :cond_1

    .line 447
    :cond_0
    iget v3, p0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->t:F

    iget v4, p0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->m:F

    div-float/2addr v3, v4

    .line 448
    iget v4, p0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->u:F

    iget v5, p0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->m:F

    div-float/2addr v4, v5

    .line 449
    iput-boolean v1, p0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->v:Z

    .line 451
    sget-object v5, Lcom/viber/voip/messages/extras/doodle/a;->a:[I

    iget-object v6, p0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->q:Lcom/viber/voip/messages/extras/doodle/c;

    invoke-virtual {v6}, Lcom/viber/voip/messages/extras/doodle/c;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 499
    :goto_0
    iput p1, p0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->t:F

    .line 500
    iput p2, p0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->u:F

    .line 502
    :cond_1
    return-void

    .line 454
    :pswitch_0
    iget-object v0, p0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->e:Landroid/graphics/Path;

    iget v1, p0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->t:F

    iget v2, p0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->u:F

    iget v5, p0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->t:F

    add-float/2addr v5, p1

    div-float/2addr v5, v7

    iget v6, p0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->u:F

    add-float/2addr v6, p2

    div-float/2addr v6, v7

    invoke-virtual {v0, v1, v2, v5, v6}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 455
    iget-object v0, p0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->f:Landroid/graphics/Path;

    iget v1, p0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->m:F

    div-float v1, p1, v1

    add-float/2addr v1, v3

    div-float/2addr v1, v7

    iget v2, p0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->m:F

    div-float v2, p2, v2

    add-float/2addr v2, v4

    div-float/2addr v2, v7

    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/graphics/Path;->quadTo(FFFF)V

    goto :goto_0

    .line 458
    :pswitch_1
    iget-object v0, p0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->f:Landroid/graphics/Path;

    iget v1, p0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->m:F

    div-float v1, p1, v1

    add-float/2addr v1, v3

    div-float/2addr v1, v7

    iget v2, p0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->m:F

    div-float v2, p2, v2

    add-float/2addr v2, v4

    div-float/2addr v2, v7

    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 459
    iget-object v0, p0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->d:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->f:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->j:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 465
    :pswitch_2
    float-to-double v3, v0

    sget v0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->x:F

    float-to-double v5, v0

    sget-wide v7, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->z:D

    mul-double/2addr v5, v7

    cmpl-double v0, v3, v5

    if-gez v0, :cond_2

    float-to-double v2, v2

    sget v0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->x:F

    float-to-double v4, v0

    sget-wide v6, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->z:D

    mul-double/2addr v4, v6

    cmpl-double v0, v2, v4

    if-ltz v0, :cond_6

    .line 467
    :cond_2
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 468
    iget v2, p0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->t:F

    iget v3, p0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->u:F

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 469
    iget v2, p0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->t:F

    iget v3, p0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->u:F

    invoke-virtual {v0, v2, v3, p1, p2}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 471
    new-instance v2, Landroid/graphics/PathMeasure;

    invoke-direct {v2, v0, v1}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    move v0, v1

    .line 476
    :goto_1
    int-to-float v3, v0

    invoke-virtual {v2}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_5

    .line 477
    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    .line 478
    int-to-float v4, v0

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v3, v5}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    .line 480
    aget v4, v3, v1

    .line 481
    const/4 v5, 0x1

    aget v3, v3, v5

    .line 483
    iget v5, p0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->t:F

    sub-float v5, v4, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 484
    iget v6, p0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->u:F

    sub-float v6, v3, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    .line 486
    sget v7, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->x:F

    cmpl-float v5, v5, v7

    if-gez v5, :cond_3

    sget v5, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->x:F

    cmpl-float v5, v6, v5

    if-ltz v5, :cond_4

    .line 487
    :cond_3
    invoke-direct {p0, v4, v3}, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->c(FF)V

    .line 488
    iput v4, p0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->t:F

    .line 489
    iput v3, p0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->u:F

    .line 476
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 492
    :cond_5
    iget p1, p0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->t:F

    .line 493
    iget p2, p0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->u:F

    goto/16 :goto_0

    .line 495
    :cond_6
    invoke-direct {p0, p1, p2}, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->c(FF)V

    goto/16 :goto_0

    .line 451
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 477
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private c(FF)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 505
    iget-object v0, p0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->d:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->p:Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->m:F

    div-float v2, p1, v2

    iget-object v3, p0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->p:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->m:F

    div-float v3, p2, v3

    iget-object v4, p0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->p:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->h:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 507
    return-void
.end method

.method private f()V
    .locals 3

    .prologue
    .line 118
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->e:Landroid/graphics/Path;

    .line 119
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->f:Landroid/graphics/Path;

    .line 121
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->n:Z

    .line 123
    invoke-direct {p0}, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->h()Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->i:Landroid/graphics/Paint;

    .line 124
    invoke-direct {p0}, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->h()Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->j:Landroid/graphics/Paint;

    .line 125
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->g:Landroid/graphics/Paint;

    .line 127
    sget-object v0, Lcom/viber/voip/messages/extras/doodle/c;->a:Lcom/viber/voip/messages/extras/doodle/c;

    iput-object v0, p0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->q:Lcom/viber/voip/messages/extras/doodle/c;

    .line 129
    new-instance v0, Landroid/graphics/BlurMaskFilter;

    const/high16 v1, 0x4120

    sget-object v2, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v0, v1, v2}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    iput-object v0, p0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->r:Landroid/graphics/MaskFilter;

    .line 131
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->s:Landroid/graphics/Matrix;

    .line 132
    return-void
.end method

.method private g()V
    .locals 4

    .prologue
    .line 161
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->m:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->m:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 163
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->b:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->d:Landroid/graphics/Canvas;

    .line 164
    return-void
.end method

.method private getDeviceRotationAngle()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 610
    invoke-virtual {p0}, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 611
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v3, 0x7

    if-le v2, v3, :cond_0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 614
    :goto_0
    packed-switch v0, :pswitch_data_0

    move v0, v1

    .line 630
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getDeviceRotationAngle = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->a(Ljava/lang/String;)V

    .line 631
    return v0

    .line 611
    :cond_0
    invoke-virtual {v0}, Landroid/view/Display;->getOrientation()I

    move-result v0

    goto :goto_0

    .line 617
    :pswitch_0
    sget v0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->a:I

    rsub-int/lit8 v0, v0, 0x0

    .line 618
    sput v1, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->a:I

    goto :goto_1

    .line 621
    :pswitch_1
    const/16 v0, 0x10e

    .line 622
    sput v0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->a:I

    goto :goto_1

    .line 625
    :pswitch_2
    const/16 v0, 0x5a

    .line 626
    sput v0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->a:I

    goto :goto_1

    .line 614
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private h()Landroid/graphics/Paint;
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 316
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 317
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 318
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 319
    const/high16 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 320
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 321
    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 322
    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 323
    const/high16 v1, 0x4150

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 324
    return-object v0
.end method

.method private i()V
    .locals 4

    .prologue
    const/high16 v3, 0x3f80

    .line 510
    sget-object v0, Lcom/viber/voip/messages/extras/doodle/a;->a:[I

    iget-object v1, p0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->q:Lcom/viber/voip/messages/extras/doodle/c;

    invoke-virtual {v1}, Lcom/viber/voip/messages/extras/doodle/c;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 522
    :goto_0
    return-void

    .line 514
    :pswitch_0
    iget-object v0, p0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->e:Landroid/graphics/Path;

    iget v1, p0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->t:F

    add-float/2addr v1, v3

    iget v2, p0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->u:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 515
    iget-object v0, p0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->f:Landroid/graphics/Path;

    iget v1, p0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->t:F

    add-float/2addr v1, v3

    iget v2, p0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->m:F

    div-float/2addr v1, v2

    iget v2, p0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->u:F

    iget v3, p0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->m:F

    div-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 516
    iget-object v0, p0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->d:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->f:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->j:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 510
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private j()V
    .locals 4

    .prologue
    .line 525
    sget-object v0, Lcom/viber/voip/messages/extras/doodle/a;->a:[I

    iget-object v1, p0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->q:Lcom/viber/voip/messages/extras/doodle/c;

    invoke-virtual {v1}, Lcom/viber/voip/messages/extras/doodle/c;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 535
    :goto_0
    return-void

    .line 528
    :pswitch_0
    iget-object v0, p0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->e:Landroid/graphics/Path;

    iget v1, p0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->t:F

    iget v2, p0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->u:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 529
    iget-object v0, p0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->f:Landroid/graphics/Path;

    iget v1, p0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->t:F

    iget v2, p0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->m:F

    div-float/2addr v1, v2

    iget v2, p0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->u:F

    iget v3, p0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->m:F

    div-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 530
    iget-object v0, p0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->d:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->f:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->j:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 525
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private k()V
    .locals 1

    .prologue
    .line 538
    iget-boolean v0, p0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->v:Z

    if-eqz v0, :cond_0

    .line 539
    invoke-direct {p0}, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->i()V

    .line 543
    :goto_0
    iget-object v0, p0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->e:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 544
    iget-object v0, p0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->f:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 545
    return-void

    .line 541
    :cond_0
    invoke-direct {p0}, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->j()V

    goto :goto_0
.end method

.method private l()V
    .locals 3

    .prologue
    .line 579
    invoke-virtual {p0}, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 580
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 583
    int-to-float v1, v0

    iget-object v2, p0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->m:F

    .line 585
    invoke-virtual {p0}, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/viber/voip/util/gl;->e(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 586
    sget v1, Lcom/viber/voip/messages/extras/image/g;->a:I

    sub-int/2addr v0, v1

    .line 587
    int-to-float v0, v0

    iget-object v1, p0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->m:F

    .line 590
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->s:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 591
    iget-object v0, p0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->s:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->m:F

    iget v2, p0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->m:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 599
    return-void
.end method

.method private setPaintSize(I)V
    .locals 3
    .parameter

    .prologue
    .line 209
    int-to-float v0, p1

    iget v1, p0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->m:F

    mul-float/2addr v0, v1

    .line 210
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPaintSize: sizeInPx = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " , size on Canvas = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->a(Ljava/lang/String;)V

    .line 211
    iget-object v1, p0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->i:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 212
    iget-object v0, p0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->j:Landroid/graphics/Paint;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 214
    sget v0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->w:F

    sput v0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->x:F

    .line 215
    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;Z)Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 182
    iget-object v0, p0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->c:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->a(Landroid/graphics/Bitmap;)V

    .line 183
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->c:Landroid/graphics/Bitmap;

    .line 187
    invoke-virtual {p0}, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/util/gl;->e(Landroid/content/Context;)Z

    move-result v0

    .line 188
    if-eqz p2, :cond_1

    if-nez v0, :cond_1

    .line 189
    const/16 v0, 0x5a

    .line 196
    :goto_0
    invoke-static {p1, v0}, Lcom/viber/voip/messages/extras/image/h;->a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->c:Landroid/graphics/Bitmap;

    .line 198
    iget-object v1, p0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->o:Lcom/viber/voip/messages/extras/doodle/b;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->o:Lcom/viber/voip/messages/extras/doodle/b;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/viber/voip/messages/extras/doodle/b;->a(Z)V

    .line 200
    :cond_0
    invoke-virtual {p0}, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->invalidate()V

    .line 201
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setBackgroundImage rotate bitmap on angle = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " image size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->c:Landroid/graphics/Bitmap;

    invoke-static {v1}, Lcom/viber/voip/messages/extras/image/h;->d(Landroid/graphics/Bitmap;)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x4980

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->a(Ljava/lang/String;)V

    .line 202
    return-object p0

    .line 190
    :cond_1
    if-nez p2, :cond_2

    if-eqz v0, :cond_2

    .line 191
    const/16 v0, -0x5a

    goto :goto_0

    .line 193
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(I)V
    .locals 3
    .parameter

    .prologue
    .line 223
    sget-object v0, Lcom/viber/voip/messages/extras/doodle/c;->b:Lcom/viber/voip/messages/extras/doodle/c;

    iput-object v0, p0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->q:Lcom/viber/voip/messages/extras/doodle/c;

    .line 224
    iget-object v0, p0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->i:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 225
    iget-object v0, p0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->j:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 226
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->setPaintSize(I)V

    .line 227
    return-void
.end method

.method public a(II)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 280
    sget-object v0, Lcom/viber/voip/messages/extras/doodle/c;->a:Lcom/viber/voip/messages/extras/doodle/c;

    iput-object v0, p0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->q:Lcom/viber/voip/messages/extras/doodle/c;

    .line 281
    iget-object v0, p0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->i:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 282
    iget-object v0, p0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->j:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 284
    iget-object v0, p0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->i:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 285
    iget-object v0, p0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->j:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 287
    invoke-virtual {p0, p2}, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->setPaintColor(I)V

    .line 288
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->setPaintSize(I)V

    .line 289
    return-void
.end method

.method public a(IIZ)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 142
    iput p1, p0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->k:I

    .line 143
    iput p2, p0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->l:I

    .line 145
    iget-object v0, p0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->b:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    if-eqz p3, :cond_1

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->b:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->a(Landroid/graphics/Bitmap;)V

    .line 148
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->b:Landroid/graphics/Bitmap;

    .line 150
    invoke-direct {p0}, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->getDeviceRotationAngle()I

    move-result v0

    .line 151
    iget v1, p0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->k:I

    iget v2, p0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->l:I

    invoke-direct {p0, v1, v2, v0}, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->a(III)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->b:Landroid/graphics/Bitmap;

    .line 153
    iget-object v0, p0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->b:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 154
    invoke-direct {p0}, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->l()V

    .line 155
    invoke-direct {p0}, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->g()V

    .line 158
    :cond_1
    return-void
.end method

.method public a(ILjava/lang/String;I)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 262
    iget-object v0, p0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->p:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->a(Landroid/graphics/Bitmap;)V

    .line 263
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->p:Landroid/graphics/Bitmap;

    .line 265
    new-instance v0, Landroid/graphics/LightingColorFilter;

    invoke-direct {v0, p1, v2}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    .line 267
    sget-object v1, Lcom/viber/voip/messages/extras/doodle/c;->c:Lcom/viber/voip/messages/extras/doodle/c;

    iput-object v1, p0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->q:Lcom/viber/voip/messages/extras/doodle/c;

    .line 269
    invoke-virtual {p0}, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 271
    invoke-static {v1, p3, v2, v2}, Lcom/viber/voip/messages/extras/image/h;->b(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->p:Landroid/graphics/Bitmap;

    .line 273
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, p1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->h:Landroid/graphics/Paint;

    .line 274
    iget-object v1, p0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->h:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 276
    int-to-float v0, p3

    sget v1, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->y:F

    div-float/2addr v0, v1

    sput v0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->x:F

    .line 277
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->c:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 171
    iget-object v0, p0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->o:Lcom/viber/voip/messages/extras/doodle/b;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->o:Lcom/viber/voip/messages/extras/doodle/b;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/viber/voip/messages/extras/doodle/b;->a(Z)V

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->c:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->a(Landroid/graphics/Bitmap;)V

    .line 176
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->c:Landroid/graphics/Bitmap;

    .line 177
    invoke-virtual {p0}, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->invalidate()V

    .line 178
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 355
    iput-object v1, p0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->o:Lcom/viber/voip/messages/extras/doodle/b;

    .line 356
    iput-object v1, p0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->d:Landroid/graphics/Canvas;

    .line 358
    iget-object v0, p0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->b:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->a(Landroid/graphics/Bitmap;)V

    .line 359
    iget-object v0, p0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->c:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->a(Landroid/graphics/Bitmap;)V

    .line 360
    iget-object v0, p0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->p:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->a(Landroid/graphics/Bitmap;)V

    .line 362
    iput-object v1, p0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->b:Landroid/graphics/Bitmap;

    .line 363
    iput-object v1, p0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->c:Landroid/graphics/Bitmap;

    .line 364
    iput-object v1, p0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->p:Landroid/graphics/Bitmap;

    .line 366
    const/4 v0, 0x0

    sput v0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->a:I

    .line 368
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 369
    return-void
.end method

.method public d()V
    .locals 3

    .prologue
    .line 372
    iget v0, p0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->k:I

    iget v1, p0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->l:I

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->a(IIZ)V

    .line 373
    invoke-virtual {p0}, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->invalidate()V

    .line 374
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->a(Z)V

    .line 375
    return-void
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 378
    iget-boolean v0, p0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->n:Z

    return v0
.end method

.method public getDoodle()Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 328
    iget-object v1, p0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->b:Landroid/graphics/Bitmap;

    if-nez v1, :cond_1

    .line 346
    :cond_0
    :goto_0
    return-object v0

    .line 332
    :cond_1
    iget-object v1, p0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3}, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->a(III)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 334
    if-eqz v1, :cond_0

    .line 336
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 337
    invoke-virtual {p0}, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0900c9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 339
    iget-object v2, p0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->c:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_2

    .line 340
    iget-object v2, p0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->c:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->g:Landroid/graphics/Paint;

    invoke-virtual {v0, v2, v4, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 343
    :cond_2
    iget-object v2, p0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->b:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->g:Landroid/graphics/Paint;

    invoke-virtual {v0, v2, v4, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    move-object v0, v1

    .line 346
    goto :goto_0
.end method

.method public getPaintType()Lcom/viber/voip/messages/extras/doodle/c;
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->q:Lcom/viber/voip/messages/extras/doodle/c;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter

    .prologue
    .line 394
    invoke-virtual {p0}, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0900c9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 397
    iget-object v0, p0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->c:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 398
    iget-object v0, p0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->c:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->s:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->g:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 401
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->b:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 402
    iget-object v0, p0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->b:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->s:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->g:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 403
    iget-object v0, p0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->q:Lcom/viber/voip/messages/extras/doodle/c;

    sget-object v1, Lcom/viber/voip/messages/extras/doodle/c;->b:Lcom/viber/voip/messages/extras/doodle/c;

    if-eq v0, v1, :cond_1

    .line 404
    iget-object v0, p0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->e:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->i:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 407
    :cond_1
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .parameter

    .prologue
    .line 656
    instance-of v0, p1, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel$SavedState;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 657
    check-cast v0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel$SavedState;

    invoke-virtual {v0}, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel$SavedState;->a()Landroid/os/Bundle;

    move-result-object v1

    .line 658
    invoke-direct {p0}, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->getDeviceRotationAngle()I

    move-result v2

    .line 660
    const-string/jumbo v0, "drawing_bitmap"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-static {v0, v2}, Lcom/viber/voip/messages/extras/image/h;->a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->b:Landroid/graphics/Bitmap;

    .line 661
    const-string/jumbo v0, "background_bitmap"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-static {v0, v2}, Lcom/viber/voip/messages/extras/image/h;->a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->c:Landroid/graphics/Bitmap;

    .line 663
    invoke-direct {p0}, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->l()V

    .line 664
    invoke-direct {p0}, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->g()V

    .line 665
    const-string/jumbo v0, "is_drawn"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->a(Z)V

    .line 666
    check-cast p1, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel$SavedState;

    invoke-virtual {p1}, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 670
    :goto_0
    return-void

    .line 668
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .prologue
    .line 642
    const-string/jumbo v0, "onSaveInstanceState"

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->a(Ljava/lang/String;)V

    .line 643
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 645
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 646
    const-string/jumbo v2, "drawing_bitmap"

    iget-object v3, p0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 647
    const-string/jumbo v2, "background_bitmap"

    iget-object v3, p0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 648
    const-string/jumbo v2, "is_drawn"

    iget-boolean v3, p0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->n:Z

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 650
    new-instance v2, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel$SavedState;

    invoke-direct {v2, v0, v1}, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel$SavedState;-><init>(Landroid/os/Parcelable;Landroid/os/Bundle;)V

    .line 651
    return-object v2
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 636
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 637
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onSizeChanged: w = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " , h = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->a(Ljava/lang/String;)V

    .line 638
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 550
    iget-object v0, p0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->d:Landroid/graphics/Canvas;

    if-nez v0, :cond_1

    .line 551
    iget-object v0, p0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->o:Lcom/viber/voip/messages/extras/doodle/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->o:Lcom/viber/voip/messages/extras/doodle/b;

    invoke-interface {v0}, Lcom/viber/voip/messages/extras/doodle/b;->c()V

    .line 574
    :cond_0
    :goto_0
    return v3

    .line 555
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 556
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 558
    invoke-direct {p0, v3}, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->a(Z)V

    .line 560
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 562
    :pswitch_0
    invoke-direct {p0, v0, v1}, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->a(FF)V

    .line 563
    invoke-virtual {p0}, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->invalidate()V

    goto :goto_0

    .line 566
    :pswitch_1
    invoke-direct {p0, v0, v1}, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->b(FF)V

    .line 567
    invoke-virtual {p0}, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->invalidate()V

    goto :goto_0

    .line 570
    :pswitch_2
    invoke-direct {p0}, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->k()V

    .line 571
    invoke-virtual {p0}, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->invalidate()V

    goto :goto_0

    .line 560
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setDrawListener(Lcom/viber/voip/messages/extras/doodle/b;)V
    .locals 1
    .parameter

    .prologue
    .line 292
    iput-object p1, p0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->o:Lcom/viber/voip/messages/extras/doodle/b;

    .line 293
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->a(Z)V

    .line 294
    return-void
.end method

.method public setPaintColor(I)V
    .locals 1
    .parameter

    .prologue
    .line 218
    iget-object v0, p0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->i:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 219
    iget-object v0, p0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->j:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 220
    return-void
.end method
