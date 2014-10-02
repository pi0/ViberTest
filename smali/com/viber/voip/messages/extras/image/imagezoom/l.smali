.class public Lcom/viber/voip/messages/extras/image/imagezoom/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/viber/voip/messages/extras/image/imagezoom/m;

.field private c:Z

.field private d:Landroid/view/MotionEvent;

.field private e:Landroid/view/MotionEvent;

.field private f:F

.field private g:F

.field private h:F

.field private i:F

.field private j:F

.field private k:F

.field private l:F

.field private m:F

.field private n:F

.field private o:F

.field private p:F

.field private q:J

.field private final r:F

.field private s:F

.field private t:F

.field private u:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/viber/voip/messages/extras/image/imagezoom/m;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 176
    iput-object p1, p0, Lcom/viber/voip/messages/extras/image/imagezoom/l;->a:Landroid/content/Context;

    .line 177
    iput-object p2, p0, Lcom/viber/voip/messages/extras/image/imagezoom/l;->b:Lcom/viber/voip/messages/extras/image/imagezoom/m;

    .line 178
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledEdgeSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/viber/voip/messages/extras/image/imagezoom/l;->r:F

    .line 179
    return-void
.end method

.method private static a(Landroid/view/MotionEvent;I)F
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 360
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 361
    :goto_0
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    sub-float/2addr v0, v1

    .line 362
    invoke-virtual {p0, p1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    add-float/2addr v0, v1

    return v0

    .line 360
    :cond_0
    const/4 p1, 0x0

    goto :goto_0
.end method

.method private static b(Landroid/view/MotionEvent;I)F
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 369
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 370
    :goto_0
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    sub-float/2addr v0, v1

    .line 371
    invoke-virtual {p0, p1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    add-float/2addr v0, v1

    return v0

    .line 369
    :cond_0
    const/4 p1, 0x0

    goto :goto_0
.end method

.method private b(Landroid/view/MotionEvent;)V
    .locals 12
    .parameter

    .prologue
    const/high16 v11, 0x3f00

    const/high16 v1, -0x4080

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 376
    iget-object v0, p0, Lcom/viber/voip/messages/extras/image/imagezoom/l;->e:Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    .line 377
    iget-object v0, p0, Lcom/viber/voip/messages/extras/image/imagezoom/l;->e:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 379
    :cond_0
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/extras/image/imagezoom/l;->e:Landroid/view/MotionEvent;

    .line 382
    iput v1, p0, Lcom/viber/voip/messages/extras/image/imagezoom/l;->l:F

    .line 383
    iput v1, p0, Lcom/viber/voip/messages/extras/image/imagezoom/l;->m:F

    .line 384
    iput v1, p0, Lcom/viber/voip/messages/extras/image/imagezoom/l;->n:F

    .line 387
    iget-object v0, p0, Lcom/viber/voip/messages/extras/image/imagezoom/l;->d:Landroid/view/MotionEvent;

    .line 390
    invoke-virtual {v0, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    .line 391
    invoke-virtual {v0, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    .line 392
    invoke-virtual {v0, v10}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 393
    invoke-virtual {v0, v10}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    .line 394
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    .line 395
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    .line 396
    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    .line 397
    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    .line 400
    sub-float v1, v3, v1

    .line 401
    sub-float v2, v4, v2

    .line 402
    sub-float v3, v7, v5

    .line 403
    sub-float v4, v8, v6

    .line 404
    iput v1, p0, Lcom/viber/voip/messages/extras/image/imagezoom/l;->h:F

    .line 405
    iput v2, p0, Lcom/viber/voip/messages/extras/image/imagezoom/l;->i:F

    .line 406
    iput v3, p0, Lcom/viber/voip/messages/extras/image/imagezoom/l;->j:F

    .line 407
    iput v4, p0, Lcom/viber/voip/messages/extras/image/imagezoom/l;->k:F

    .line 410
    mul-float v1, v3, v11

    add-float/2addr v1, v5

    iput v1, p0, Lcom/viber/voip/messages/extras/image/imagezoom/l;->f:F

    .line 411
    mul-float v1, v4, v11

    add-float/2addr v1, v6

    iput v1, p0, Lcom/viber/voip/messages/extras/image/imagezoom/l;->g:F

    .line 412
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v1

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/viber/voip/messages/extras/image/imagezoom/l;->q:J

    .line 413
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v1

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v2

    add-float/2addr v1, v2

    iput v1, p0, Lcom/viber/voip/messages/extras/image/imagezoom/l;->o:F

    .line 414
    invoke-virtual {v0, v9}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v1

    invoke-virtual {v0, v10}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v0

    add-float/2addr v0, v1

    iput v0, p0, Lcom/viber/voip/messages/extras/image/imagezoom/l;->p:F

    .line 415
    return-void
.end method

.method private g()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 419
    iget-object v0, p0, Lcom/viber/voip/messages/extras/image/imagezoom/l;->d:Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    .line 420
    iget-object v0, p0, Lcom/viber/voip/messages/extras/image/imagezoom/l;->d:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 421
    iput-object v2, p0, Lcom/viber/voip/messages/extras/image/imagezoom/l;->d:Landroid/view/MotionEvent;

    .line 423
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/extras/image/imagezoom/l;->e:Landroid/view/MotionEvent;

    if-eqz v0, :cond_1

    .line 424
    iget-object v0, p0, Lcom/viber/voip/messages/extras/image/imagezoom/l;->e:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 425
    iput-object v2, p0, Lcom/viber/voip/messages/extras/image/imagezoom/l;->e:Landroid/view/MotionEvent;

    .line 427
    :cond_1
    iput-boolean v1, p0, Lcom/viber/voip/messages/extras/image/imagezoom/l;->u:Z

    .line 428
    iput-boolean v1, p0, Lcom/viber/voip/messages/extras/image/imagezoom/l;->c:Z

    .line 429
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 437
    iget-boolean v0, p0, Lcom/viber/voip/messages/extras/image/imagezoom/l;->c:Z

    return v0
.end method

.method public a(Landroid/view/MotionEvent;)Z
    .locals 11
    .parameter

    .prologue
    const v4, 0xff00

    const/high16 v10, -0x4080

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 183
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 187
    iget-boolean v3, p0, Lcom/viber/voip/messages/extras/image/imagezoom/l;->c:Z

    if-nez v3, :cond_10

    .line 188
    and-int/lit16 v3, v2, 0xff

    packed-switch v3, :pswitch_data_0

    .line 353
    :cond_0
    :goto_0
    :pswitch_0
    return v1

    .line 194
    :pswitch_1
    iget-object v2, p0, Lcom/viber/voip/messages/extras/image/imagezoom/l;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 195
    iget v3, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v3, v3

    iget v4, p0, Lcom/viber/voip/messages/extras/image/imagezoom/l;->r:F

    sub-float/2addr v3, v4

    iput v3, p0, Lcom/viber/voip/messages/extras/image/imagezoom/l;->s:F

    .line 196
    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v2, v2

    iget v3, p0, Lcom/viber/voip/messages/extras/image/imagezoom/l;->r:F

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/viber/voip/messages/extras/image/imagezoom/l;->t:F

    .line 200
    invoke-direct {p0}, Lcom/viber/voip/messages/extras/image/imagezoom/l;->g()V

    .line 203
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    iput-object v2, p0, Lcom/viber/voip/messages/extras/image/imagezoom/l;->d:Landroid/view/MotionEvent;

    .line 204
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/viber/voip/messages/extras/image/imagezoom/l;->q:J

    .line 208
    :try_start_0
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/extras/image/imagezoom/l;->b(Landroid/view/MotionEvent;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    :goto_1
    iget v2, p0, Lcom/viber/voip/messages/extras/image/imagezoom/l;->r:F

    .line 218
    iget v4, p0, Lcom/viber/voip/messages/extras/image/imagezoom/l;->s:F

    .line 219
    iget v5, p0, Lcom/viber/voip/messages/extras/image/imagezoom/l;->t:F

    .line 220
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    .line 221
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    .line 222
    invoke-static {p1, v1}, Lcom/viber/voip/messages/extras/image/imagezoom/l;->a(Landroid/view/MotionEvent;I)F

    move-result v7

    .line 223
    invoke-static {p1, v1}, Lcom/viber/voip/messages/extras/image/imagezoom/l;->b(Landroid/view/MotionEvent;I)F

    move-result v8

    .line 226
    cmpg-float v9, v3, v2

    if-ltz v9, :cond_1

    cmpg-float v9, v6, v2

    if-ltz v9, :cond_1

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_1

    cmpl-float v3, v6, v5

    if-lez v3, :cond_3

    :cond_1
    move v3, v1

    .line 228
    :goto_2
    cmpg-float v6, v7, v2

    if-ltz v6, :cond_2

    cmpg-float v2, v8, v2

    if-ltz v2, :cond_2

    cmpl-float v2, v7, v4

    if-gtz v2, :cond_2

    cmpl-float v2, v8, v5

    if-lez v2, :cond_4

    :cond_2
    move v2, v1

    .line 232
    :goto_3
    if-eqz v3, :cond_5

    if-eqz v2, :cond_5

    .line 233
    iput v10, p0, Lcom/viber/voip/messages/extras/image/imagezoom/l;->f:F

    .line 234
    iput v10, p0, Lcom/viber/voip/messages/extras/image/imagezoom/l;->g:F

    .line 235
    iput-boolean v1, p0, Lcom/viber/voip/messages/extras/image/imagezoom/l;->u:Z

    goto :goto_0

    :cond_3
    move v3, v0

    .line 226
    goto :goto_2

    :cond_4
    move v2, v0

    .line 228
    goto :goto_3

    .line 236
    :cond_5
    if-eqz v3, :cond_6

    .line 237
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/extras/image/imagezoom/l;->f:F

    .line 238
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/extras/image/imagezoom/l;->g:F

    .line 239
    iput-boolean v1, p0, Lcom/viber/voip/messages/extras/image/imagezoom/l;->u:Z

    goto/16 :goto_0

    .line 240
    :cond_6
    if-eqz v2, :cond_7

    .line 241
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    iput v2, p0, Lcom/viber/voip/messages/extras/image/imagezoom/l;->f:F

    .line 242
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/extras/image/imagezoom/l;->g:F

    .line 243
    iput-boolean v1, p0, Lcom/viber/voip/messages/extras/image/imagezoom/l;->u:Z

    goto/16 :goto_0

    .line 245
    :cond_7
    iget-object v0, p0, Lcom/viber/voip/messages/extras/image/imagezoom/l;->b:Lcom/viber/voip/messages/extras/image/imagezoom/m;

    invoke-interface {v0, p0}, Lcom/viber/voip/messages/extras/image/imagezoom/m;->b(Lcom/viber/voip/messages/extras/image/imagezoom/l;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/viber/voip/messages/extras/image/imagezoom/l;->c:Z

    goto/16 :goto_0

    .line 251
    :pswitch_2
    iget-boolean v2, p0, Lcom/viber/voip/messages/extras/image/imagezoom/l;->u:Z

    if-eqz v2, :cond_0

    .line 253
    iget v2, p0, Lcom/viber/voip/messages/extras/image/imagezoom/l;->r:F

    .line 254
    iget v4, p0, Lcom/viber/voip/messages/extras/image/imagezoom/l;->s:F

    .line 255
    iget v5, p0, Lcom/viber/voip/messages/extras/image/imagezoom/l;->t:F

    .line 256
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    .line 257
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    .line 258
    invoke-static {p1, v1}, Lcom/viber/voip/messages/extras/image/imagezoom/l;->a(Landroid/view/MotionEvent;I)F

    move-result v7

    .line 259
    invoke-static {p1, v1}, Lcom/viber/voip/messages/extras/image/imagezoom/l;->b(Landroid/view/MotionEvent;I)F

    move-result v8

    .line 262
    cmpg-float v9, v3, v2

    if-ltz v9, :cond_8

    cmpg-float v9, v6, v2

    if-ltz v9, :cond_8

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_8

    cmpl-float v3, v6, v5

    if-lez v3, :cond_a

    :cond_8
    move v3, v1

    .line 264
    :goto_4
    cmpg-float v6, v7, v2

    if-ltz v6, :cond_9

    cmpg-float v2, v8, v2

    if-ltz v2, :cond_9

    cmpl-float v2, v7, v4

    if-gtz v2, :cond_9

    cmpl-float v2, v8, v5

    if-lez v2, :cond_b

    :cond_9
    move v2, v1

    .line 268
    :goto_5
    if-eqz v3, :cond_c

    if-eqz v2, :cond_c

    .line 269
    iput v10, p0, Lcom/viber/voip/messages/extras/image/imagezoom/l;->f:F

    .line 270
    iput v10, p0, Lcom/viber/voip/messages/extras/image/imagezoom/l;->g:F

    goto/16 :goto_0

    :cond_a
    move v3, v0

    .line 262
    goto :goto_4

    :cond_b
    move v2, v0

    .line 264
    goto :goto_5

    .line 271
    :cond_c
    if-eqz v3, :cond_d

    .line 272
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/extras/image/imagezoom/l;->f:F

    .line 273
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/extras/image/imagezoom/l;->g:F

    goto/16 :goto_0

    .line 274
    :cond_d
    if-eqz v2, :cond_e

    .line 275
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    iput v2, p0, Lcom/viber/voip/messages/extras/image/imagezoom/l;->f:F

    .line 276
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/extras/image/imagezoom/l;->g:F

    goto/16 :goto_0

    .line 278
    :cond_e
    iput-boolean v0, p0, Lcom/viber/voip/messages/extras/image/imagezoom/l;->u:Z

    .line 279
    iget-object v0, p0, Lcom/viber/voip/messages/extras/image/imagezoom/l;->b:Lcom/viber/voip/messages/extras/image/imagezoom/m;

    invoke-interface {v0, p0}, Lcom/viber/voip/messages/extras/image/imagezoom/m;->b(Lcom/viber/voip/messages/extras/image/imagezoom/l;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/viber/voip/messages/extras/image/imagezoom/l;->c:Z

    goto/16 :goto_0

    .line 285
    :pswitch_3
    iget-boolean v3, p0, Lcom/viber/voip/messages/extras/image/imagezoom/l;->u:Z

    if-eqz v3, :cond_0

    .line 287
    and-int/2addr v2, v4

    shr-int/lit8 v2, v2, 0x8

    if-nez v2, :cond_f

    move v0, v1

    .line 289
    :cond_f
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    iput v2, p0, Lcom/viber/voip/messages/extras/image/imagezoom/l;->f:F

    .line 290
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/extras/image/imagezoom/l;->g:F

    goto/16 :goto_0

    .line 296
    :cond_10
    and-int/lit16 v3, v2, 0xff

    packed-switch v3, :pswitch_data_1

    :pswitch_4
    goto/16 :goto_0

    .line 333
    :pswitch_5
    :try_start_1
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/extras/image/imagezoom/l;->b(Landroid/view/MotionEvent;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2

    .line 341
    :goto_6
    iget v0, p0, Lcom/viber/voip/messages/extras/image/imagezoom/l;->o:F

    iget v2, p0, Lcom/viber/voip/messages/extras/image/imagezoom/l;->p:F

    div-float/2addr v0, v2

    const v2, 0x3f2b851f

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    .line 342
    iget-object v0, p0, Lcom/viber/voip/messages/extras/image/imagezoom/l;->b:Lcom/viber/voip/messages/extras/image/imagezoom/m;

    invoke-interface {v0, p0}, Lcom/viber/voip/messages/extras/image/imagezoom/m;->a(Lcom/viber/voip/messages/extras/image/imagezoom/l;)Z

    move-result v0

    .line 345
    if-eqz v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/viber/voip/messages/extras/image/imagezoom/l;->d:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 347
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/extras/image/imagezoom/l;->d:Landroid/view/MotionEvent;

    goto/16 :goto_0

    .line 300
    :pswitch_6
    :try_start_2
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/extras/image/imagezoom/l;->b(Landroid/view/MotionEvent;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    .line 306
    :goto_7
    and-int/2addr v2, v4

    shr-int/lit8 v2, v2, 0x8

    if-nez v2, :cond_11

    move v0, v1

    .line 308
    :cond_11
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    iput v2, p0, Lcom/viber/voip/messages/extras/image/imagezoom/l;->f:F

    .line 309
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/extras/image/imagezoom/l;->g:F

    .line 312
    iget-boolean v0, p0, Lcom/viber/voip/messages/extras/image/imagezoom/l;->u:Z

    if-nez v0, :cond_12

    .line 313
    iget-object v0, p0, Lcom/viber/voip/messages/extras/image/imagezoom/l;->b:Lcom/viber/voip/messages/extras/image/imagezoom/m;

    invoke-interface {v0, p0}, Lcom/viber/voip/messages/extras/image/imagezoom/m;->c(Lcom/viber/voip/messages/extras/image/imagezoom/l;)V

    .line 317
    :cond_12
    invoke-direct {p0}, Lcom/viber/voip/messages/extras/image/imagezoom/l;->g()V

    goto/16 :goto_0

    .line 322
    :pswitch_7
    iget-boolean v0, p0, Lcom/viber/voip/messages/extras/image/imagezoom/l;->u:Z

    if-nez v0, :cond_13

    .line 323
    iget-object v0, p0, Lcom/viber/voip/messages/extras/image/imagezoom/l;->b:Lcom/viber/voip/messages/extras/image/imagezoom/m;

    invoke-interface {v0, p0}, Lcom/viber/voip/messages/extras/image/imagezoom/m;->c(Lcom/viber/voip/messages/extras/image/imagezoom/l;)V

    .line 327
    :cond_13
    invoke-direct {p0}, Lcom/viber/voip/messages/extras/image/imagezoom/l;->g()V

    goto/16 :goto_0

    .line 209
    :catch_0
    move-exception v2

    goto/16 :goto_1

    .line 301
    :catch_1
    move-exception v3

    goto :goto_7

    .line 334
    :catch_2
    move-exception v0

    goto :goto_6

    .line 188
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch

    .line 296
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_5
        :pswitch_7
        :pswitch_4
        :pswitch_4
        :pswitch_6
    .end packed-switch
.end method

.method public b()F
    .locals 1

    .prologue
    .line 453
    iget v0, p0, Lcom/viber/voip/messages/extras/image/imagezoom/l;->f:F

    return v0
.end method

.method public c()F
    .locals 1

    .prologue
    .line 469
    iget v0, p0, Lcom/viber/voip/messages/extras/image/imagezoom/l;->g:F

    return v0
.end method

.method public d()F
    .locals 2

    .prologue
    .line 480
    iget v0, p0, Lcom/viber/voip/messages/extras/image/imagezoom/l;->l:F

    const/high16 v1, -0x4080

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 481
    iget v0, p0, Lcom/viber/voip/messages/extras/image/imagezoom/l;->j:F

    .line 482
    iget v1, p0, Lcom/viber/voip/messages/extras/image/imagezoom/l;->k:F

    .line 483
    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    invoke-static {v0}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/extras/image/imagezoom/l;->l:F

    .line 485
    :cond_0
    iget v0, p0, Lcom/viber/voip/messages/extras/image/imagezoom/l;->l:F

    return v0
.end method

.method public e()F
    .locals 2

    .prologue
    .line 496
    iget v0, p0, Lcom/viber/voip/messages/extras/image/imagezoom/l;->m:F

    const/high16 v1, -0x4080

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 497
    iget v0, p0, Lcom/viber/voip/messages/extras/image/imagezoom/l;->h:F

    .line 498
    iget v1, p0, Lcom/viber/voip/messages/extras/image/imagezoom/l;->i:F

    .line 499
    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    invoke-static {v0}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/extras/image/imagezoom/l;->m:F

    .line 501
    :cond_0
    iget v0, p0, Lcom/viber/voip/messages/extras/image/imagezoom/l;->m:F

    return v0
.end method

.method public f()F
    .locals 2

    .prologue
    .line 513
    iget v0, p0, Lcom/viber/voip/messages/extras/image/imagezoom/l;->n:F

    const/high16 v1, -0x4080

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 514
    invoke-virtual {p0}, Lcom/viber/voip/messages/extras/image/imagezoom/l;->d()F

    move-result v0

    invoke-virtual {p0}, Lcom/viber/voip/messages/extras/image/imagezoom/l;->e()F

    move-result v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/viber/voip/messages/extras/image/imagezoom/l;->n:F

    .line 516
    :cond_0
    iget v0, p0, Lcom/viber/voip/messages/extras/image/imagezoom/l;->n:F

    return v0
.end method
