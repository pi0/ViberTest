.class public Lcom/slidingmenu/lib/f;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:Lcom/slidingmenu/lib/a;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:I

.field private f:I

.field private g:Lcom/slidingmenu/lib/j;

.field private h:Z

.field private i:I

.field private j:Z

.field private final k:Landroid/graphics/Paint;

.field private l:F

.field private m:Landroid/graphics/drawable/Drawable;

.field private n:Landroid/graphics/drawable/Drawable;

.field private o:I

.field private p:F

.field private q:Z

.field private r:Landroid/graphics/Bitmap;

.field private s:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/slidingmenu/lib/f;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 40
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lcom/slidingmenu/lib/f;->a:I

    .line 151
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/slidingmenu/lib/f;->k:Landroid/graphics/Paint;

    .line 413
    iput-boolean v2, p0, Lcom/slidingmenu/lib/f;->q:Z

    .line 41
    const/high16 v0, 0x4240

    invoke-virtual {p0}, Lcom/slidingmenu/lib/f;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v2, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/slidingmenu/lib/f;->e:I

    .line 43
    return-void
.end method

.method private getSelectorTop()I
    .locals 3

    .prologue
    .line 458
    iget-object v0, p0, Lcom/slidingmenu/lib/f;->s:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    .line 459
    iget-object v1, p0, Lcom/slidingmenu/lib/f;->s:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/slidingmenu/lib/f;->r:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 460
    return v0
.end method


# virtual methods
.method public a(I)I
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 225
    if-le p1, v3, :cond_1

    move p1, v0

    .line 226
    :cond_0
    :goto_0
    iget v2, p0, Lcom/slidingmenu/lib/f;->i:I

    if-nez v2, :cond_2

    if-le p1, v3, :cond_2

    .line 231
    :goto_1
    return v1

    .line 225
    :cond_1
    if-ge p1, v3, :cond_0

    move p1, v1

    goto :goto_0

    .line 228
    :cond_2
    iget v1, p0, Lcom/slidingmenu/lib/f;->i:I

    if-ne v1, v3, :cond_3

    if-ge p1, v3, :cond_3

    move v1, v0

    .line 229
    goto :goto_1

    :cond_3
    move v1, p1

    .line 231
    goto :goto_1
.end method

.method public a(Landroid/view/View;)I
    .locals 2
    .parameter

    .prologue
    .line 287
    iget v0, p0, Lcom/slidingmenu/lib/f;->i:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/slidingmenu/lib/f;->i:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 288
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/slidingmenu/lib/f;->getBehindWidth()I

    move-result v1

    sub-int/2addr v0, v1

    .line 292
    :goto_0
    return v0

    .line 289
    :cond_1
    iget v0, p0, Lcom/slidingmenu/lib/f;->i:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 290
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    goto :goto_0

    .line 292
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Landroid/view/View;I)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 261
    iget v0, p0, Lcom/slidingmenu/lib/f;->i:I

    if-nez v0, :cond_1

    .line 262
    packed-switch p2, :pswitch_data_0

    .line 283
    :cond_0
    :goto_0
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    :goto_1
    return v0

    .line 264
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/slidingmenu/lib/f;->getBehindWidth()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_1

    .line 266
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    goto :goto_1

    .line 268
    :cond_1
    iget v0, p0, Lcom/slidingmenu/lib/f;->i:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 269
    packed-switch p2, :pswitch_data_1

    :pswitch_3
    goto :goto_0

    .line 271
    :pswitch_4
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    goto :goto_1

    .line 273
    :pswitch_5
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/slidingmenu/lib/f;->getBehindWidth()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_1

    .line 275
    :cond_2
    iget v0, p0, Lcom/slidingmenu/lib/f;->i:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 276
    packed-switch p2, :pswitch_data_2

    :pswitch_6
    goto :goto_0

    .line 278
    :pswitch_7
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/slidingmenu/lib/f;->getBehindWidth()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_1

    .line 280
    :pswitch_8
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/slidingmenu/lib/f;->getBehindWidth()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_1

    .line 262
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 269
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_5
    .end packed-switch

    .line 276
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_8
    .end packed-switch
.end method

.method public a(Landroid/view/View;II)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x4

    .line 236
    .line 237
    iget v2, p0, Lcom/slidingmenu/lib/f;->i:I

    if-nez v2, :cond_3

    .line 238
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    if-lt p2, v2, :cond_0

    move v0, v1

    .line 239
    :cond_0
    invoke-virtual {p0}, Lcom/slidingmenu/lib/f;->getBehindWidth()I

    move-result v2

    add-int/2addr v2, p2

    int-to-float v2, v2

    iget v3, p0, Lcom/slidingmenu/lib/f;->l:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {p0, v2, p3}, Lcom/slidingmenu/lib/f;->scrollTo(II)V

    .line 255
    :cond_1
    :goto_0
    if-ne v0, v1, :cond_2

    .line 256
    const-string/jumbo v1, "CustomViewBehind"

    const-string/jumbo v2, "behind INVISIBLE"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    :cond_2
    invoke-virtual {p0, v0}, Lcom/slidingmenu/lib/f;->setVisibility(I)V

    .line 258
    return-void

    .line 240
    :cond_3
    iget v2, p0, Lcom/slidingmenu/lib/f;->i:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    .line 241
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    if-gt p2, v2, :cond_4

    move v0, v1

    .line 242
    :cond_4
    invoke-virtual {p0}, Lcom/slidingmenu/lib/f;->getBehindWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/slidingmenu/lib/f;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/slidingmenu/lib/f;->getBehindWidth()I

    move-result v3

    sub-int v3, p2, v3

    int-to-float v3, v3

    iget v4, p0, Lcom/slidingmenu/lib/f;->l:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {p0, v2, p3}, Lcom/slidingmenu/lib/f;->scrollTo(II)V

    goto :goto_0

    .line 244
    :cond_5
    iget v2, p0, Lcom/slidingmenu/lib/f;->i:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 245
    iget-object v3, p0, Lcom/slidingmenu/lib/f;->c:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    if-lt p2, v2, :cond_7

    move v2, v1

    :goto_1
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 246
    iget-object v3, p0, Lcom/slidingmenu/lib/f;->d:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    if-gt p2, v2, :cond_8

    move v2, v1

    :goto_2
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 247
    if-nez p2, :cond_6

    move v0, v1

    .line 248
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    if-gt p2, v2, :cond_9

    .line 249
    invoke-virtual {p0}, Lcom/slidingmenu/lib/f;->getBehindWidth()I

    move-result v2

    add-int/2addr v2, p2

    int-to-float v2, v2

    iget v3, p0, Lcom/slidingmenu/lib/f;->l:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {p0, v2, p3}, Lcom/slidingmenu/lib/f;->scrollTo(II)V

    goto :goto_0

    :cond_7
    move v2, v0

    .line 245
    goto :goto_1

    :cond_8
    move v2, v0

    .line 246
    goto :goto_2

    .line 251
    :cond_9
    invoke-virtual {p0}, Lcom/slidingmenu/lib/f;->getBehindWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/slidingmenu/lib/f;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/slidingmenu/lib/f;->getBehindWidth()I

    move-result v3

    sub-int v3, p2, v3

    int-to-float v3, v3

    iget v4, p0, Lcom/slidingmenu/lib/f;->l:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {p0, v2, p3}, Lcom/slidingmenu/lib/f;->scrollTo(II)V

    goto/16 :goto_0
.end method

.method public a(Landroid/view/View;Landroid/graphics/Canvas;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 364
    iget-object v0, p0, Lcom/slidingmenu/lib/f;->m:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/slidingmenu/lib/f;->o:I

    if-gtz v0, :cond_1

    .line 389
    :cond_0
    :goto_0
    return-void

    .line 366
    :cond_1
    iget v0, p0, Lcom/slidingmenu/lib/f;->i:I

    if-nez v0, :cond_2

    .line 367
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    iget v2, p0, Lcom/slidingmenu/lib/f;->o:I

    sub-int/2addr v0, v2

    .line 387
    :goto_1
    iget-object v2, p0, Lcom/slidingmenu/lib/f;->m:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lcom/slidingmenu/lib/f;->o:I

    add-int/2addr v3, v0

    invoke-virtual {p0}, Lcom/slidingmenu/lib/f;->getHeight()I

    move-result v4

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 388
    iget-object v0, p0, Lcom/slidingmenu/lib/f;->m:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 368
    :cond_2
    iget v0, p0, Lcom/slidingmenu/lib/f;->i:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_5

    .line 369
    iget-object v0, p0, Lcom/slidingmenu/lib/f;->d:Landroid/view/View;

    if-nez v0, :cond_3

    .line 370
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    goto :goto_1

    .line 372
    :cond_3
    iget-object v0, p0, Lcom/slidingmenu/lib/f;->n:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    .line 373
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    .line 374
    iget-object v2, p0, Lcom/slidingmenu/lib/f;->n:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lcom/slidingmenu/lib/f;->o:I

    add-int/2addr v3, v0

    invoke-virtual {p0}, Lcom/slidingmenu/lib/f;->getHeight()I

    move-result v4

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 375
    iget-object v0, p0, Lcom/slidingmenu/lib/f;->n:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 377
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    iget v2, p0, Lcom/slidingmenu/lib/f;->o:I

    sub-int/2addr v0, v2

    goto :goto_1

    .line 379
    :cond_5
    iget v0, p0, Lcom/slidingmenu/lib/f;->i:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_7

    .line 380
    iget-object v0, p0, Lcom/slidingmenu/lib/f;->n:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_6

    .line 381
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    .line 382
    iget-object v2, p0, Lcom/slidingmenu/lib/f;->n:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lcom/slidingmenu/lib/f;->o:I

    add-int/2addr v3, v0

    invoke-virtual {p0}, Lcom/slidingmenu/lib/f;->getHeight()I

    move-result v4

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 383
    iget-object v0, p0, Lcom/slidingmenu/lib/f;->n:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 385
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    iget v2, p0, Lcom/slidingmenu/lib/f;->o:I

    sub-int/2addr v0, v2

    goto :goto_1

    :cond_7
    move v0, v1

    goto :goto_1
.end method

.method public a(Landroid/view/View;Landroid/graphics/Canvas;F)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 392
    iget-boolean v1, p0, Lcom/slidingmenu/lib/f;->j:Z

    if-nez v1, :cond_0

    .line 411
    :goto_0
    return-void

    .line 393
    :cond_0
    iget v1, p0, Lcom/slidingmenu/lib/f;->p:F

    const/high16 v3, 0x437f

    mul-float/2addr v1, v3

    const/high16 v3, 0x3f80

    sub-float/2addr v3, p3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    mul-float/2addr v1, v3

    float-to-int v1, v1

    .line 394
    iget-object v3, p0, Lcom/slidingmenu/lib/f;->k:Landroid/graphics/Paint;

    invoke-static {v1, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 397
    iget v1, p0, Lcom/slidingmenu/lib/f;->i:I

    if-nez v1, :cond_1

    .line 398
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/slidingmenu/lib/f;->getBehindWidth()I

    move-result v1

    sub-int v1, v0, v1

    .line 399
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    .line 410
    :goto_1
    int-to-float v1, v1

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/slidingmenu/lib/f;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/slidingmenu/lib/f;->k:Landroid/graphics/Paint;

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 400
    :cond_1
    iget v1, p0, Lcom/slidingmenu/lib/f;->i:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    .line 401
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v1

    .line 402
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    invoke-virtual {p0}, Lcom/slidingmenu/lib/f;->getBehindWidth()I

    move-result v3

    add-int/2addr v0, v3

    goto :goto_1

    .line 403
    :cond_2
    iget v1, p0, Lcom/slidingmenu/lib/f;->i:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_3

    .line 404
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/slidingmenu/lib/f;->getBehindWidth()I

    move-result v1

    sub-int/2addr v0, v1

    .line 405
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v3

    .line 406
    int-to-float v1, v0

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/slidingmenu/lib/f;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/slidingmenu/lib/f;->k:Landroid/graphics/Paint;

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 407
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v1

    .line 408
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    invoke-virtual {p0}, Lcom/slidingmenu/lib/f;->getBehindWidth()I

    move-result v3

    add-int/2addr v0, v3

    goto :goto_1

    :cond_3
    move v1, v0

    goto :goto_1
.end method

.method public a(F)Z
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 342
    iget v2, p0, Lcom/slidingmenu/lib/f;->i:I

    if-nez v2, :cond_2

    .line 343
    cmpl-float v2, p1, v3

    if-lez v2, :cond_1

    .line 349
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 343
    goto :goto_0

    .line 344
    :cond_2
    iget v2, p0, Lcom/slidingmenu/lib/f;->i:I

    if-ne v2, v0, :cond_3

    .line 345
    cmpg-float v2, p1, v3

    if-ltz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 346
    :cond_3
    iget v2, p0, Lcom/slidingmenu/lib/f;->i:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    move v0, v1

    .line 349
    goto :goto_0
.end method

.method public a(Landroid/view/View;IF)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 323
    iget v0, p0, Lcom/slidingmenu/lib/f;->a:I

    packed-switch v0, :pswitch_data_0

    .line 329
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 325
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 327
    :pswitch_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/slidingmenu/lib/f;->b(Landroid/view/View;IF)Z

    move-result v0

    goto :goto_0

    .line 323
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public b(Landroid/view/View;)I
    .locals 2
    .parameter

    .prologue
    .line 296
    iget v0, p0, Lcom/slidingmenu/lib/f;->i:I

    if-nez v0, :cond_0

    .line 297
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    .line 301
    :goto_0
    return v0

    .line 298
    :cond_0
    iget v0, p0, Lcom/slidingmenu/lib/f;->i:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/slidingmenu/lib/f;->i:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 299
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/slidingmenu/lib/f;->getBehindWidth()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    .line 301
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Landroid/view/View;Landroid/graphics/Canvas;F)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 418
    iget-boolean v0, p0, Lcom/slidingmenu/lib/f;->q:Z

    if-nez v0, :cond_1

    .line 439
    :cond_0
    :goto_0
    return-void

    .line 419
    :cond_1
    iget-object v0, p0, Lcom/slidingmenu/lib/f;->r:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/slidingmenu/lib/f;->s:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 420
    iget-object v0, p0, Lcom/slidingmenu/lib/f;->s:Landroid/view/View;

    const v1, 0x7f070051

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 421
    const-string/jumbo v1, "CustomViewBehindSelectedView"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 422
    invoke-virtual {p2}, Landroid/graphics/Canvas;->save()I

    .line 424
    iget-object v0, p0, Lcom/slidingmenu/lib/f;->r:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p3

    float-to-int v0, v0

    .line 425
    iget v1, p0, Lcom/slidingmenu/lib/f;->i:I

    if-nez v1, :cond_3

    .line 426
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 427
    sub-int v0, v1, v0

    .line 428
    invoke-virtual {p0}, Lcom/slidingmenu/lib/f;->getHeight()I

    move-result v2

    invoke-virtual {p2, v0, v3, v1, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 429
    iget-object v1, p0, Lcom/slidingmenu/lib/f;->r:Landroid/graphics/Bitmap;

    int-to-float v0, v0

    invoke-direct {p0}, Lcom/slidingmenu/lib/f;->getSelectorTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p2, v1, v0, v2, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 436
    :cond_2
    :goto_1
    invoke-virtual {p2}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    .line 430
    :cond_3
    iget v1, p0, Lcom/slidingmenu/lib/f;->i:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 431
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v1

    .line 432
    add-int/2addr v0, v1

    .line 433
    invoke-virtual {p0}, Lcom/slidingmenu/lib/f;->getHeight()I

    move-result v2

    invoke-virtual {p2, v1, v3, v0, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 434
    iget-object v1, p0, Lcom/slidingmenu/lib/f;->r:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/slidingmenu/lib/f;->r:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    invoke-direct {p0}, Lcom/slidingmenu/lib/f;->getSelectorTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p2, v1, v0, v2, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_1
.end method

.method public b(F)Z
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 353
    iget v2, p0, Lcom/slidingmenu/lib/f;->i:I

    if-nez v2, :cond_2

    .line 354
    cmpg-float v2, p1, v3

    if-gez v2, :cond_1

    .line 360
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 354
    goto :goto_0

    .line 355
    :cond_2
    iget v2, p0, Lcom/slidingmenu/lib/f;->i:I

    if-ne v2, v0, :cond_3

    .line 356
    cmpl-float v2, p1, v3

    if-gtz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 357
    :cond_3
    iget v2, p0, Lcom/slidingmenu/lib/f;->i:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    move v0, v1

    .line 360
    goto :goto_0
.end method

.method public b(Landroid/view/View;I)Z
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 305
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    .line 306
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v3

    .line 307
    iget v4, p0, Lcom/slidingmenu/lib/f;->i:I

    if-nez v4, :cond_2

    .line 308
    if-lt p2, v2, :cond_1

    iget v3, p0, Lcom/slidingmenu/lib/f;->e:I

    add-int/2addr v2, v3

    if-gt p2, v2, :cond_1

    .line 315
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 308
    goto :goto_0

    .line 309
    :cond_2
    iget v4, p0, Lcom/slidingmenu/lib/f;->i:I

    if-ne v4, v0, :cond_4

    .line 310
    if-gt p2, v3, :cond_3

    iget v2, p0, Lcom/slidingmenu/lib/f;->e:I

    sub-int v2, v3, v2

    if-ge p2, v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0

    .line 311
    :cond_4
    iget v4, p0, Lcom/slidingmenu/lib/f;->i:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_7

    .line 312
    if-lt p2, v2, :cond_5

    iget v4, p0, Lcom/slidingmenu/lib/f;->e:I

    add-int/2addr v2, v4

    if-le p2, v2, :cond_0

    :cond_5
    if-gt p2, v3, :cond_6

    iget v2, p0, Lcom/slidingmenu/lib/f;->e:I

    sub-int v2, v3, v2

    if-ge p2, v2, :cond_0

    :cond_6
    move v0, v1

    goto :goto_0

    :cond_7
    move v0, v1

    .line 315
    goto :goto_0
.end method

.method public b(Landroid/view/View;IF)Z
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 333
    iget v2, p0, Lcom/slidingmenu/lib/f;->i:I

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/slidingmenu/lib/f;->i:I

    if-ne v2, v3, :cond_3

    if-nez p2, :cond_3

    .line 334
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, p3, v2

    if-ltz v2, :cond_2

    .line 338
    :cond_1
    :goto_0
    return v0

    :cond_2
    move v0, v1

    .line 334
    goto :goto_0

    .line 335
    :cond_3
    iget v2, p0, Lcom/slidingmenu/lib/f;->i:I

    if-eq v2, v0, :cond_4

    iget v2, p0, Lcom/slidingmenu/lib/f;->i:I

    if-ne v2, v3, :cond_5

    if-ne p2, v3, :cond_5

    .line 336
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v2, p3, v2

    if-lez v2, :cond_1

    move v0, v1

    goto :goto_0

    :cond_5
    move v0, v1

    .line 338
    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter

    .prologue
    .line 119
    iget-object v0, p0, Lcom/slidingmenu/lib/f;->g:Lcom/slidingmenu/lib/j;

    if-eqz v0, :cond_0

    .line 120
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 121
    iget-object v0, p0, Lcom/slidingmenu/lib/f;->g:Lcom/slidingmenu/lib/j;

    iget-object v1, p0, Lcom/slidingmenu/lib/f;->b:Lcom/slidingmenu/lib/a;

    invoke-virtual {v1}, Lcom/slidingmenu/lib/a;->getPercentOpen()F

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/slidingmenu/lib/j;->a(Landroid/graphics/Canvas;F)V

    .line 122
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 123
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 126
    :goto_0
    return-void

    .line 125
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public getBehindWidth()I
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/slidingmenu/lib/f;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    return v0
.end method

.method public getContent()Landroid/view/View;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/slidingmenu/lib/f;->c:Landroid/view/View;

    return-object v0
.end method

.method public getMarginThreshold()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/slidingmenu/lib/f;->e:I

    return v0
.end method

.method public getMode()I
    .locals 1

    .prologue
    .line 188
    iget v0, p0, Lcom/slidingmenu/lib/f;->i:I

    return v0
.end method

.method public getScrollScale()F
    .locals 1

    .prologue
    .line 196
    iget v0, p0, Lcom/slidingmenu/lib/f;->l:F

    return v0
.end method

.method public getSecondaryContent()Landroid/view/View;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/slidingmenu/lib/f;->d:Landroid/view/View;

    return-object v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/slidingmenu/lib/f;->h:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 130
    sub-int v0, p4, p2

    .line 131
    sub-int v1, p5, p3

    .line 132
    iget-object v2, p0, Lcom/slidingmenu/lib/f;->c:Landroid/view/View;

    iget v3, p0, Lcom/slidingmenu/lib/f;->f:I

    sub-int v3, v0, v3

    invoke-virtual {v2, v4, v4, v3, v1}, Landroid/view/View;->layout(IIII)V

    .line 133
    iget-object v2, p0, Lcom/slidingmenu/lib/f;->d:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 134
    iget-object v2, p0, Lcom/slidingmenu/lib/f;->d:Landroid/view/View;

    iget v3, p0, Lcom/slidingmenu/lib/f;->f:I

    sub-int/2addr v0, v3

    invoke-virtual {v2, v4, v4, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 135
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 139
    invoke-static {v3, p1}, Lcom/slidingmenu/lib/f;->getDefaultSize(II)I

    move-result v0

    .line 140
    invoke-static {v3, p2}, Lcom/slidingmenu/lib/f;->getDefaultSize(II)I

    move-result v1

    .line 141
    invoke-virtual {p0, v0, v1}, Lcom/slidingmenu/lib/f;->setMeasuredDimension(II)V

    .line 142
    iget v2, p0, Lcom/slidingmenu/lib/f;->f:I

    sub-int/2addr v0, v2

    invoke-static {p1, v3, v0}, Lcom/slidingmenu/lib/f;->getChildMeasureSpec(III)I

    move-result v0

    .line 143
    invoke-static {p2, v3, v1}, Lcom/slidingmenu/lib/f;->getChildMeasureSpec(III)I

    move-result v1

    .line 144
    iget-object v2, p0, Lcom/slidingmenu/lib/f;->c:Landroid/view/View;

    invoke-virtual {v2, v0, v1}, Landroid/view/View;->measure(II)V

    .line 145
    iget-object v2, p0, Lcom/slidingmenu/lib/f;->d:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 146
    iget-object v2, p0, Lcom/slidingmenu/lib/f;->d:Landroid/view/View;

    invoke-virtual {v2, v0, v1}, Landroid/view/View;->measure(II)V

    .line 147
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/slidingmenu/lib/f;->h:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public scrollTo(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 102
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 103
    iget-object v0, p0, Lcom/slidingmenu/lib/f;->g:Lcom/slidingmenu/lib/j;

    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {p0}, Lcom/slidingmenu/lib/f;->invalidate()V

    .line 105
    :cond_0
    return-void
.end method

.method public setCanvasTransformer(Lcom/slidingmenu/lib/j;)V
    .locals 0
    .parameter

    .prologue
    .line 50
    iput-object p1, p0, Lcom/slidingmenu/lib/f;->g:Lcom/slidingmenu/lib/j;

    .line 51
    return-void
.end method

.method public setChildrenEnabled(Z)V
    .locals 0
    .parameter

    .prologue
    .line 97
    iput-boolean p1, p0, Lcom/slidingmenu/lib/f;->h:Z

    .line 98
    return-void
.end method

.method public setContent(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Lcom/slidingmenu/lib/f;->c:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/slidingmenu/lib/f;->c:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/slidingmenu/lib/f;->removeView(Landroid/view/View;)V

    .line 73
    :cond_0
    iput-object p1, p0, Lcom/slidingmenu/lib/f;->c:Landroid/view/View;

    .line 74
    iget-object v0, p0, Lcom/slidingmenu/lib/f;->c:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/slidingmenu/lib/f;->addView(Landroid/view/View;)V

    .line 75
    return-void
.end method

.method public setCustomViewAbove(Lcom/slidingmenu/lib/a;)V
    .locals 0
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lcom/slidingmenu/lib/f;->b:Lcom/slidingmenu/lib/a;

    .line 47
    return-void
.end method

.method public setFadeDegree(F)V
    .locals 2
    .parameter

    .prologue
    .line 219
    const/high16 v0, 0x3f80

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    .line 220
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "The BehindFadeDegree must be between 0.0f and 1.0f"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 221
    :cond_1
    iput p1, p0, Lcom/slidingmenu/lib/f;->p:F

    .line 222
    return-void
.end method

.method public setFadeEnabled(Z)V
    .locals 0
    .parameter

    .prologue
    .line 215
    iput-boolean p1, p0, Lcom/slidingmenu/lib/f;->j:Z

    .line 216
    return-void
.end method

.method public setMarginThreshold(I)V
    .locals 0
    .parameter

    .prologue
    .line 59
    iput p1, p0, Lcom/slidingmenu/lib/f;->e:I

    .line 60
    return-void
.end method

.method public setMode(I)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 159
    packed-switch p1, :pswitch_data_0

    .line 184
    :cond_0
    :goto_0
    iput p1, p0, Lcom/slidingmenu/lib/f;->i:I

    .line 185
    return-void

    .line 161
    :pswitch_0
    iget-object v0, p0, Lcom/slidingmenu/lib/f;->c:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 162
    iget-object v0, p0, Lcom/slidingmenu/lib/f;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 163
    :cond_1
    iget-object v0, p0, Lcom/slidingmenu/lib/f;->d:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/slidingmenu/lib/f;->d:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 169
    :pswitch_1
    iget-object v0, p0, Lcom/slidingmenu/lib/f;->c:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/slidingmenu/lib/f;->d:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 170
    iget-object v0, p0, Lcom/slidingmenu/lib/f;->c:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 171
    iget-object v0, p0, Lcom/slidingmenu/lib/f;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 173
    :cond_2
    iget-object v0, p0, Lcom/slidingmenu/lib/f;->c:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 174
    iget-object v0, p0, Lcom/slidingmenu/lib/f;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 175
    :cond_3
    iget-object v0, p0, Lcom/slidingmenu/lib/f;->d:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/slidingmenu/lib/f;->d:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 159
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setScrollScale(F)V
    .locals 0
    .parameter

    .prologue
    .line 192
    iput p1, p0, Lcom/slidingmenu/lib/f;->l:F

    .line 193
    return-void
.end method

.method public setSecondaryContent(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 86
    iget-object v0, p0, Lcom/slidingmenu/lib/f;->d:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/slidingmenu/lib/f;->d:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/slidingmenu/lib/f;->removeView(Landroid/view/View;)V

    .line 88
    :cond_0
    iput-object p1, p0, Lcom/slidingmenu/lib/f;->d:Landroid/view/View;

    .line 89
    iget-object v0, p0, Lcom/slidingmenu/lib/f;->d:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/slidingmenu/lib/f;->addView(Landroid/view/View;)V

    .line 90
    return-void
.end method

.method public setSecondaryShadowDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter

    .prologue
    .line 205
    iput-object p1, p0, Lcom/slidingmenu/lib/f;->n:Landroid/graphics/drawable/Drawable;

    .line 206
    invoke-virtual {p0}, Lcom/slidingmenu/lib/f;->invalidate()V

    .line 207
    return-void
.end method

.method public setSelectedView(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x0

    const v2, 0x7f070051

    .line 446
    iget-object v0, p0, Lcom/slidingmenu/lib/f;->s:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 447
    iget-object v0, p0, Lcom/slidingmenu/lib/f;->s:Landroid/view/View;

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 448
    iput-object v1, p0, Lcom/slidingmenu/lib/f;->s:Landroid/view/View;

    .line 450
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 451
    iput-object p1, p0, Lcom/slidingmenu/lib/f;->s:Landroid/view/View;

    .line 452
    iget-object v0, p0, Lcom/slidingmenu/lib/f;->s:Landroid/view/View;

    const-string/jumbo v1, "CustomViewBehindSelectedView"

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 453
    invoke-virtual {p0}, Lcom/slidingmenu/lib/f;->invalidate()V

    .line 455
    :cond_1
    return-void
.end method

.method public setSelectorBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter

    .prologue
    .line 464
    iput-object p1, p0, Lcom/slidingmenu/lib/f;->r:Landroid/graphics/Bitmap;

    .line 465
    invoke-virtual {p0}, Lcom/slidingmenu/lib/f;->refreshDrawableState()V

    .line 466
    return-void
.end method

.method public setSelectorEnabled(Z)V
    .locals 0
    .parameter

    .prologue
    .line 442
    iput-boolean p1, p0, Lcom/slidingmenu/lib/f;->q:Z

    .line 443
    return-void
.end method

.method public setShadowDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter

    .prologue
    .line 200
    iput-object p1, p0, Lcom/slidingmenu/lib/f;->m:Landroid/graphics/drawable/Drawable;

    .line 201
    invoke-virtual {p0}, Lcom/slidingmenu/lib/f;->invalidate()V

    .line 202
    return-void
.end method

.method public setShadowWidth(I)V
    .locals 0
    .parameter

    .prologue
    .line 210
    iput p1, p0, Lcom/slidingmenu/lib/f;->o:I

    .line 211
    invoke-virtual {p0}, Lcom/slidingmenu/lib/f;->invalidate()V

    .line 212
    return-void
.end method

.method public setTouchMode(I)V
    .locals 0
    .parameter

    .prologue
    .line 319
    iput p1, p0, Lcom/slidingmenu/lib/f;->a:I

    .line 320
    return-void
.end method

.method public setWidthOffset(I)V
    .locals 0
    .parameter

    .prologue
    .line 54
    iput p1, p0, Lcom/slidingmenu/lib/f;->f:I

    .line 55
    invoke-virtual {p0}, Lcom/slidingmenu/lib/f;->requestLayout()V

    .line 56
    return-void
.end method
