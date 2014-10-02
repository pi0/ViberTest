.class public abstract Lcom/c/a/b;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# static fields
.field private static synthetic B:[I


# instance fields
.field private A:Z

.field protected final a:Landroid/graphics/Paint;

.field private b:[Ljava/lang/String;

.field private c:[Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Z

.field private f:Z

.field private g:D

.field private h:D

.field private final i:Landroid/view/View;

.field private j:Lcom/c/a/a/b;

.field private k:Z

.field private final l:[Ljava/text/NumberFormat;

.field private final m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/c/a/h;",
            ">;"
        }
    .end annotation
.end field

.field private n:Z

.field private o:F

.field private p:Lcom/c/a/f;

.field private q:Z

.field private r:D

.field private s:D

.field private t:Lcom/c/a/j;

.field private final u:Lcom/c/a/d;

.field private v:Lcom/c/a/a;

.field private w:Ljava/lang/Integer;

.field private x:Ljava/lang/Integer;

.field private final y:Landroid/graphics/Rect;

.field private z:Z


# direct methods
.method static synthetic a(Lcom/c/a/b;)Ljava/lang/Integer;
    .locals 1
    .parameter

    .prologue
    .line 334
    iget-object v0, p0, Lcom/c/a/b;->w:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic a(Lcom/c/a/b;D)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 318
    iput-wide p1, p0, Lcom/c/a/b;->g:D

    return-void
.end method

.method static synthetic a(Lcom/c/a/b;Ljava/lang/Integer;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 334
    iput-object p1, p0, Lcom/c/a/b;->w:Ljava/lang/Integer;

    return-void
.end method

.method static synthetic a(Lcom/c/a/b;[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 313
    iput-object p1, p0, Lcom/c/a/b;->b:[Ljava/lang/String;

    return-void
.end method

.method private a(I)[Lcom/c/a/g;
    .locals 10
    .parameter

    .prologue
    const/4 v2, 0x0

    const-wide/16 v5, 0x0

    .line 373
    iget-object v0, p0, Lcom/c/a/b;->m:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/c/a/h;

    iget-object v1, v0, Lcom/c/a/h;->c:[Lcom/c/a/g;

    .line 374
    monitor-enter v1

    .line 375
    :try_start_0
    iget-wide v3, p0, Lcom/c/a/b;->g:D

    cmpl-double v0, v3, v5

    if-nez v0, :cond_0

    iget-wide v3, p0, Lcom/c/a/b;->h:D

    cmpl-double v0, v3, v5

    if-nez v0, :cond_0

    .line 377
    monitor-exit v1

    move-object v0, v1

    .line 396
    :goto_0
    return-object v0

    .line 380
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v0, v2

    .line 381
    :goto_1
    array-length v2, v1

    if-lt v0, v2, :cond_1

    .line 396
    :goto_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/c/a/g;

    invoke-interface {v3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/c/a/g;

    monitor-exit v1

    goto :goto_0

    .line 374
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 382
    :cond_1
    :try_start_1
    aget-object v2, v1, v0

    invoke-interface {v2}, Lcom/c/a/g;->a()D

    move-result-wide v4

    iget-wide v6, p0, Lcom/c/a/b;->g:D

    cmpl-double v2, v4, v6

    if-ltz v2, :cond_3

    .line 383
    aget-object v2, v1, v0

    invoke-interface {v2}, Lcom/c/a/g;->a()D

    move-result-wide v4

    iget-wide v6, p0, Lcom/c/a/b;->g:D

    iget-wide v8, p0, Lcom/c/a/b;->h:D

    add-double/2addr v6, v8

    cmpl-double v2, v4, v6

    if-lez v2, :cond_2

    .line 384
    aget-object v0, v1, v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 387
    :cond_2
    aget-object v2, v1, v0

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 381
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 390
    :cond_3
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 391
    aget-object v2, v1, v0

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 393
    :cond_4
    const/4 v2, 0x0

    aget-object v4, v1, v0

    invoke-interface {v3, v2, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3
.end method

.method static synthetic a(Lcom/c/a/b;I)[Lcom/c/a/g;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 372
    invoke-direct {p0, p1}, Lcom/c/a/b;->a(I)[Lcom/c/a/g;

    move-result-object v0

    return-object v0
.end method

.method private a(F)[Ljava/lang/String;
    .locals 11
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 484
    invoke-virtual {p0}, Lcom/c/a/b;->getGraphViewStyle()Lcom/c/a/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/c/a/j;->c()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 485
    if-gez v0, :cond_0

    .line 486
    iget-object v0, p0, Lcom/c/a/b;->x:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    div-float v0, p1, v0

    float-to-int v0, v0

    .line 489
    :cond_0
    add-int/lit8 v2, v0, 0x1

    new-array v2, v2, [Ljava/lang/String;

    .line 490
    invoke-virtual {p0, v1}, Lcom/c/a/b;->b(Z)D

    move-result-wide v3

    .line 491
    invoke-virtual {p0, v1}, Lcom/c/a/b;->a(Z)D

    move-result-wide v5

    .line 492
    :goto_0
    if-le v1, v0, :cond_1

    .line 495
    return-object v2

    .line 493
    :cond_1
    sub-double v7, v5, v3

    int-to-double v9, v1

    mul-double/2addr v7, v9

    int-to-double v9, v0

    div-double/2addr v7, v9

    add-double/2addr v7, v3

    const/4 v9, 0x1

    invoke-virtual {p0, v7, v8, v9}, Lcom/c/a/b;->a(DZ)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v1

    .line 492
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method static synthetic a(Lcom/c/a/b;F)[Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 483
    invoke-direct {p0, p1}, Lcom/c/a/b;->a(F)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/c/a/b;)Ljava/lang/Integer;
    .locals 1
    .parameter

    .prologue
    .line 335
    iget-object v0, p0, Lcom/c/a/b;->x:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic b(Lcom/c/a/b;Ljava/lang/Integer;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 335
    iput-object p1, p0, Lcom/c/a/b;->x:Ljava/lang/Integer;

    return-void
.end method

.method static synthetic b(Lcom/c/a/b;[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 314
    iput-object p1, p0, Lcom/c/a/b;->c:[Ljava/lang/String;

    return-void
.end method

.method private declared-synchronized b(F)[Ljava/lang/String;
    .locals 13
    .parameter

    .prologue
    const/4 v6, 0x0

    const-wide/16 v2, 0x0

    .line 499
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/c/a/b;->getGraphViewStyle()Lcom/c/a/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/c/a/j;->d()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 500
    if-gez v0, :cond_3

    .line 501
    iget-object v0, p0, Lcom/c/a/b;->w:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    int-to-float v0, v0

    div-float v0, p1, v0

    float-to-int v0, v0

    move v7, v0

    .line 503
    :goto_0
    add-int/lit8 v0, v7, 0x1

    new-array v8, v0, [Ljava/lang/String;

    .line 504
    invoke-virtual {p0}, Lcom/c/a/b;->getMinY()D

    move-result-wide v4

    .line 505
    invoke-virtual {p0}, Lcom/c/a/b;->getMaxY()D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 506
    cmpl-double v9, v0, v4

    if-nez v9, :cond_2

    .line 508
    cmpl-double v9, v0, v2

    if-nez v9, :cond_0

    .line 510
    const-wide/high16 v0, 0x3ff0

    :goto_1
    move v4, v6

    .line 518
    :goto_2
    if-le v4, v7, :cond_1

    .line 521
    monitor-exit p0

    return-object v8

    .line 513
    :cond_0
    const-wide v2, 0x3ff0cccccccccccdL

    mul-double/2addr v0, v2

    .line 514
    const-wide v2, 0x3fee666666666666L

    mul-double/2addr v2, v4

    goto :goto_1

    .line 519
    :cond_1
    sub-int v5, v7, v4

    sub-double v9, v0, v2

    int-to-double v11, v4

    mul-double/2addr v9, v11

    int-to-double v11, v7

    div-double/2addr v9, v11

    add-double/2addr v9, v2

    const/4 v6, 0x0

    :try_start_1
    invoke-virtual {p0, v9, v10, v6}, Lcom/c/a/b;->a(DZ)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v8, v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 518
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 499
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    move-wide v2, v4

    goto :goto_1

    :cond_3
    move v7, v0

    goto :goto_0
.end method

.method static synthetic b(Lcom/c/a/b;F)[Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 498
    invoke-direct {p0, p1}, Lcom/c/a/b;->b(F)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/c/a/b;)Landroid/graphics/Rect;
    .locals 1
    .parameter

    .prologue
    .line 336
    iget-object v0, p0, Lcom/c/a/b;->y:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic d(Lcom/c/a/b;)[Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 313
    iget-object v0, p0, Lcom/c/a/b;->b:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e()[I
    .locals 3

    .prologue
    .line 53
    sget-object v0, Lcom/c/a/b;->B:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/c/a/f;->values()[Lcom/c/a/f;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/c/a/f;->c:Lcom/c/a/f;

    invoke-virtual {v1}, Lcom/c/a/f;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    sget-object v1, Lcom/c/a/f;->b:Lcom/c/a/f;

    invoke-virtual {v1}, Lcom/c/a/f;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Lcom/c/a/f;->a:Lcom/c/a/f;

    invoke-virtual {v1}, Lcom/c/a/f;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    sput-object v0, Lcom/c/a/b;->B:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method static synthetic e(Lcom/c/a/b;)[Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 314
    iget-object v0, p0, Lcom/c/a/b;->c:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/c/a/b;)Lcom/c/a/j;
    .locals 1
    .parameter

    .prologue
    .line 331
    iget-object v0, p0, Lcom/c/a/b;->t:Lcom/c/a/j;

    return-object v0
.end method

.method static synthetic g(Lcom/c/a/b;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 315
    iget-object v0, p0, Lcom/c/a/b;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h(Lcom/c/a/b;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 324
    iget-object v0, p0, Lcom/c/a/b;->m:Ljava/util/List;

    return-object v0
.end method

.method static synthetic i(Lcom/c/a/b;)Z
    .locals 1
    .parameter

    .prologue
    .line 325
    iget-boolean v0, p0, Lcom/c/a/b;->n:Z

    return v0
.end method

.method static synthetic j(Lcom/c/a/b;)D
    .locals 2
    .parameter

    .prologue
    .line 319
    iget-wide v0, p0, Lcom/c/a/b;->h:D

    return-wide v0
.end method

.method static synthetic k(Lcom/c/a/b;)D
    .locals 2
    .parameter

    .prologue
    .line 318
    iget-wide v0, p0, Lcom/c/a/b;->g:D

    return-wide v0
.end method

.method static synthetic l(Lcom/c/a/b;)Z
    .locals 1
    .parameter

    .prologue
    .line 337
    iget-boolean v0, p0, Lcom/c/a/b;->z:Z

    return v0
.end method

.method static synthetic m(Lcom/c/a/b;)Z
    .locals 1
    .parameter

    .prologue
    .line 338
    iget-boolean v0, p0, Lcom/c/a/b;->A:Z

    return v0
.end method

.method static synthetic n(Lcom/c/a/b;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 320
    iget-object v0, p0, Lcom/c/a/b;->i:Landroid/view/View;

    return-object v0
.end method

.method static synthetic o(Lcom/c/a/b;)Z
    .locals 1
    .parameter

    .prologue
    .line 322
    iget-boolean v0, p0, Lcom/c/a/b;->k:Z

    return v0
.end method

.method static synthetic p(Lcom/c/a/b;)Lcom/c/a/a/b;
    .locals 1
    .parameter

    .prologue
    .line 321
    iget-object v0, p0, Lcom/c/a/b;->j:Lcom/c/a/a/b;

    return-object v0
.end method


# virtual methods
.method protected a(Z)D
    .locals 7
    .parameter

    .prologue
    const-wide/16 v1, 0x0

    .line 562
    if-nez p1, :cond_1

    iget-wide v3, p0, Lcom/c/a/b;->h:D

    cmpl-double v0, v3, v1

    if-eqz v0, :cond_1

    .line 563
    iget-wide v0, p0, Lcom/c/a/b;->g:D

    iget-wide v2, p0, Lcom/c/a/b;->h:D

    add-double/2addr v2, v0

    .line 582
    :cond_0
    :goto_0
    return-wide v2

    .line 568
    :cond_1
    iget-object v0, p0, Lcom/c/a/b;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 569
    iget-object v0, p0, Lcom/c/a/b;->m:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/c/a/h;

    iget-object v0, v0, Lcom/c/a/h;->c:[Lcom/c/a/g;

    .line 570
    array-length v3, v0

    if-nez v3, :cond_3

    move-wide v0, v1

    .line 575
    :goto_1
    const/4 v2, 0x1

    move v6, v2

    move-wide v2, v0

    move v1, v6

    :goto_2
    iget-object v0, p0, Lcom/c/a/b;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 576
    iget-object v0, p0, Lcom/c/a/b;->m:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/c/a/h;

    iget-object v0, v0, Lcom/c/a/h;->c:[Lcom/c/a/g;

    .line 577
    array-length v4, v0

    if-lez v4, :cond_2

    .line 578
    array-length v4, v0

    add-int/lit8 v4, v4, -0x1

    aget-object v0, v0, v4

    invoke-interface {v0}, Lcom/c/a/g;->a()D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    .line 575
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 573
    :cond_3
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    invoke-interface {v0}, Lcom/c/a/g;->a()D

    move-result-wide v0

    goto :goto_1

    :cond_4
    move-wide v2, v1

    goto :goto_0
.end method

.method protected a(DZ)Ljava/lang/String;
    .locals 11
    .parameter
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 457
    iget-object v0, p0, Lcom/c/a/b;->v:Lcom/c/a/a;

    if-eqz v0, :cond_0

    .line 458
    iget-object v0, p0, Lcom/c/a/b;->v:Lcom/c/a/a;

    invoke-interface {v0, p1, p2, p3}, Lcom/c/a/a;->a(DZ)Ljava/lang/String;

    move-result-object v0

    .line 459
    if-eqz v0, :cond_0

    .line 480
    :goto_0
    return-object v0

    .line 463
    :cond_0
    if-eqz p3, :cond_2

    move v0, v1

    .line 464
    :goto_1
    iget-object v3, p0, Lcom/c/a/b;->l:[Ljava/text/NumberFormat;

    aget-object v3, v3, v0

    if-nez v3, :cond_1

    .line 465
    iget-object v3, p0, Lcom/c/a/b;->l:[Ljava/text/NumberFormat;

    invoke-static {}, Ljava/text/NumberFormat;->getNumberInstance()Ljava/text/NumberFormat;

    move-result-object v4

    aput-object v4, v3, v0

    .line 466
    if-eqz p3, :cond_3

    invoke-virtual {p0, v2}, Lcom/c/a/b;->a(Z)D

    move-result-wide v3

    move-wide v5, v3

    .line 467
    :goto_2
    if-eqz p3, :cond_4

    invoke-virtual {p0, v2}, Lcom/c/a/b;->b(Z)D

    move-result-wide v3

    .line 468
    :goto_3
    sub-double v7, v5, v3

    const-wide v9, 0x3fb999999999999aL

    cmpg-double v7, v7, v9

    if-gez v7, :cond_5

    .line 469
    iget-object v1, p0, Lcom/c/a/b;->l:[Ljava/text/NumberFormat;

    aget-object v1, v1, v0

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    .line 480
    :cond_1
    :goto_4
    iget-object v1, p0, Lcom/c/a/b;->l:[Ljava/text/NumberFormat;

    aget-object v0, v1, v0

    invoke-virtual {v0, p1, p2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    move v0, v2

    .line 463
    goto :goto_1

    .line 466
    :cond_3
    invoke-virtual {p0}, Lcom/c/a/b;->getMaxY()D

    move-result-wide v3

    move-wide v5, v3

    goto :goto_2

    .line 467
    :cond_4
    invoke-virtual {p0}, Lcom/c/a/b;->getMinY()D

    move-result-wide v3

    goto :goto_3

    .line 470
    :cond_5
    sub-double v7, v5, v3

    const-wide/high16 v9, 0x3ff0

    cmpg-double v7, v7, v9

    if-gez v7, :cond_6

    .line 471
    iget-object v1, p0, Lcom/c/a/b;->l:[Ljava/text/NumberFormat;

    aget-object v1, v1, v0

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    goto :goto_4

    .line 472
    :cond_6
    sub-double v7, v5, v3

    const-wide/high16 v9, 0x4034

    cmpg-double v7, v7, v9

    if-gez v7, :cond_7

    .line 473
    iget-object v1, p0, Lcom/c/a/b;->l:[Ljava/text/NumberFormat;

    aget-object v1, v1, v0

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    goto :goto_4

    .line 474
    :cond_7
    sub-double v3, v5, v3

    const-wide/high16 v5, 0x4059

    cmpg-double v3, v3, v5

    if-gez v3, :cond_8

    .line 475
    iget-object v2, p0, Lcom/c/a/b;->l:[Ljava/text/NumberFormat;

    aget-object v2, v2, v0

    invoke-virtual {v2, v1}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    goto :goto_4

    .line 477
    :cond_8
    iget-object v1, p0, Lcom/c/a/b;->l:[Ljava/text/NumberFormat;

    aget-object v1, v1, v0

    invoke-virtual {v1, v2}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    goto :goto_4
.end method

.method protected a(Landroid/graphics/Canvas;FF)V
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v7, 0x4100

    const/high16 v6, 0x4000

    const/16 v4, 0x64

    const/high16 v0, 0x4120

    const/high16 v9, 0x40a0

    .line 412
    const/16 v3, 0xf

    .line 415
    iget-object v1, p0, Lcom/c/a/b;->a:Landroid/graphics/Paint;

    const/16 v2, 0xb4

    invoke-virtual {v1, v2, v4, v4, v4}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 416
    iget-object v1, p0, Lcom/c/a/b;->m:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x14

    add-int/lit8 v1, v1, 0x5

    int-to-float v2, v1

    .line 417
    iget v1, p0, Lcom/c/a/b;->o:F

    sub-float v1, p3, v1

    sub-float v4, v1, v0

    .line 419
    invoke-static {}, Lcom/c/a/b;->e()[I

    move-result-object v1

    iget-object v5, p0, Lcom/c/a/b;->p:Lcom/c/a/f;

    invoke-virtual {v5}, Lcom/c/a/f;->ordinal()I

    move-result v5

    aget v1, v1, v5

    packed-switch v1, :pswitch_data_0

    .line 427
    const/high16 v1, 0x41a0

    sub-float v1, p2, v1

    sub-float/2addr v1, v2

    sub-float v0, v1, v0

    move v1, v0

    .line 429
    :goto_0
    iget v0, p0, Lcom/c/a/b;->o:F

    add-float/2addr v0, v4

    .line 430
    add-float/2addr v2, v1

    .line 431
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5, v4, v1, v0, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v0, p0, Lcom/c/a/b;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v7, v7, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 433
    const/4 v0, 0x0

    move v2, v0

    :goto_1
    iget-object v0, p0, Lcom/c/a/b;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v2, v0, :cond_0

    .line 442
    return-void

    :pswitch_0
    move v1, v0

    .line 422
    goto :goto_0

    .line 424
    :pswitch_1
    div-float v0, p2, v6

    div-float v1, v2, v6

    sub-float/2addr v0, v1

    move v1, v0

    .line 425
    goto :goto_0

    .line 434
    :cond_0
    iget-object v5, p0, Lcom/c/a/b;->a:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/c/a/b;->m:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/c/a/h;

    iget-object v0, v0, Lcom/c/a/h;->b:Lcom/c/a/i;

    iget v0, v0, Lcom/c/a/i;->a:I

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 435
    new-instance v0, Landroid/graphics/RectF;

    add-float v5, v4, v9

    add-float v6, v1, v9

    mul-int/lit8 v7, v2, 0x14

    int-to-float v7, v7

    add-float/2addr v6, v7

    add-float v7, v4, v9

    int-to-float v8, v3

    add-float/2addr v7, v8

    add-int/lit8 v8, v2, 0x1

    mul-int/lit8 v8, v8, 0x14

    int-to-float v8, v8

    add-float/2addr v8, v1

    invoke-direct {v0, v5, v6, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v5, p0, Lcom/c/a/b;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 436
    iget-object v0, p0, Lcom/c/a/b;->m:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/c/a/h;

    iget-object v0, v0, Lcom/c/a/h;->a:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 437
    iget-object v0, p0, Lcom/c/a/b;->a:Landroid/graphics/Paint;

    const/4 v5, -0x1

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 438
    iget-object v0, p0, Lcom/c/a/b;->a:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 439
    iget-object v0, p0, Lcom/c/a/b;->m:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/c/a/h;

    iget-object v0, v0, Lcom/c/a/h;->a:Ljava/lang/String;

    add-float v5, v4, v9

    int-to-float v6, v3

    add-float/2addr v5, v6

    add-float/2addr v5, v9

    int-to-float v6, v3

    add-float/2addr v6, v1

    mul-int/lit8 v7, v2, 0x14

    int-to-float v7, v7

    add-float/2addr v6, v7

    iget-object v7, p0, Lcom/c/a/b;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v5, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 433
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 419
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected abstract a(Landroid/graphics/Canvas;[Lcom/c/a/g;FFFDDDDFLcom/c/a/i;)V
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 662
    iget-boolean v0, p0, Lcom/c/a/b;->f:Z

    return v0
.end method

.method protected b(Z)D
    .locals 8
    .parameter

    .prologue
    const/4 v6, 0x0

    const-wide/16 v1, 0x0

    .line 616
    if-nez p1, :cond_1

    iget-wide v3, p0, Lcom/c/a/b;->h:D

    cmpl-double v0, v3, v1

    if-eqz v0, :cond_1

    .line 617
    iget-wide v2, p0, Lcom/c/a/b;->g:D

    .line 636
    :cond_0
    :goto_0
    return-wide v2

    .line 622
    :cond_1
    iget-object v0, p0, Lcom/c/a/b;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 623
    iget-object v0, p0, Lcom/c/a/b;->m:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/c/a/h;

    iget-object v0, v0, Lcom/c/a/h;->c:[Lcom/c/a/g;

    .line 624
    array-length v3, v0

    if-nez v3, :cond_3

    move-wide v0, v1

    .line 629
    :goto_1
    const/4 v2, 0x1

    move v7, v2

    move-wide v2, v0

    move v1, v7

    :goto_2
    iget-object v0, p0, Lcom/c/a/b;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 630
    iget-object v0, p0, Lcom/c/a/b;->m:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/c/a/h;

    iget-object v0, v0, Lcom/c/a/h;->c:[Lcom/c/a/g;

    .line 631
    array-length v4, v0

    if-lez v4, :cond_2

    .line 632
    aget-object v0, v0, v6

    invoke-interface {v0}, Lcom/c/a/g;->a()D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    .line 629
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 627
    :cond_3
    aget-object v0, v0, v6

    invoke-interface {v0}, Lcom/c/a/g;->a()D

    move-result-wide v0

    goto :goto_1

    :cond_4
    move-wide v2, v1

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 666
    iget-boolean v0, p0, Lcom/c/a/b;->e:Z

    return v0
.end method

.method public c()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 678
    iget-boolean v0, p0, Lcom/c/a/b;->A:Z

    if-nez v0, :cond_0

    iput-object v2, p0, Lcom/c/a/b;->c:[Ljava/lang/String;

    .line 679
    :cond_0
    iget-boolean v0, p0, Lcom/c/a/b;->z:Z

    if-nez v0, :cond_1

    iput-object v2, p0, Lcom/c/a/b;->b:[Ljava/lang/String;

    .line 680
    :cond_1
    iget-object v0, p0, Lcom/c/a/b;->l:[Ljava/text/NumberFormat;

    const/4 v1, 0x0

    aput-object v2, v0, v1

    .line 681
    iget-object v0, p0, Lcom/c/a/b;->l:[Ljava/text/NumberFormat;

    const/4 v1, 0x1

    aput-object v2, v0, v1

    .line 682
    iput-object v2, p0, Lcom/c/a/b;->w:Ljava/lang/Integer;

    .line 683
    iput-object v2, p0, Lcom/c/a/b;->x:Ljava/lang/Integer;

    .line 685
    invoke-virtual {p0}, Lcom/c/a/b;->invalidate()V

    .line 686
    iget-object v0, p0, Lcom/c/a/b;->i:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 687
    iget-object v0, p0, Lcom/c/a/b;->u:Lcom/c/a/d;

    invoke-virtual {v0}, Lcom/c/a/d;->invalidate()V

    .line 688
    return-void
.end method

.method public d()V
    .locals 4

    .prologue
    .line 730
    iget-boolean v0, p0, Lcom/c/a/b;->e:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "This GraphView is not scrollable."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 731
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/c/a/b;->a(Z)D

    move-result-wide v0

    .line 732
    iget-wide v2, p0, Lcom/c/a/b;->h:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lcom/c/a/b;->g:D

    .line 733
    invoke-virtual {p0}, Lcom/c/a/b;->c()V

    .line 734
    return-void
.end method

.method public getCustomLabelFormatter()Lcom/c/a/a;
    .locals 1

    .prologue
    .line 528
    iget-object v0, p0, Lcom/c/a/b;->v:Lcom/c/a/a;

    return-object v0
.end method

.method public getGraphViewStyle()Lcom/c/a/j;
    .locals 1

    .prologue
    .line 535
    iget-object v0, p0, Lcom/c/a/b;->t:Lcom/c/a/j;

    return-object v0
.end method

.method public getLegendAlign()Lcom/c/a/f;
    .locals 1

    .prologue
    .line 543
    iget-object v0, p0, Lcom/c/a/b;->p:Lcom/c/a/f;

    return-object v0
.end method

.method public getLegendWidth()F
    .locals 1

    .prologue
    .line 550
    iget v0, p0, Lcom/c/a/b;->o:F

    return v0
.end method

.method protected getMaxY()D
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 593
    iget-boolean v0, p0, Lcom/c/a/b;->q:Z

    if-eqz v0, :cond_1

    .line 594
    iget-wide v2, p0, Lcom/c/a/b;->r:D

    .line 604
    :cond_0
    return-wide v2

    .line 596
    :cond_1
    const-wide/high16 v2, -0x3e20

    move v0, v1

    .line 597
    :goto_0
    iget-object v4, p0, Lcom/c/a/b;->m:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 598
    invoke-direct {p0, v0}, Lcom/c/a/b;->a(I)[Lcom/c/a/g;

    move-result-object v7

    move v4, v1

    .line 599
    :goto_1
    array-length v5, v7

    if-lt v4, v5, :cond_2

    .line 597
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 600
    :cond_2
    aget-object v5, v7, v4

    invoke-interface {v5}, Lcom/c/a/g;->b()D

    move-result-wide v5

    cmpl-double v5, v5, v2

    if-lez v5, :cond_3

    .line 601
    aget-object v2, v7, v4

    invoke-interface {v2}, Lcom/c/a/g;->b()D

    move-result-wide v5

    .line 599
    :goto_2
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move-wide v2, v5

    goto :goto_1

    :cond_3
    move-wide v5, v2

    goto :goto_2
.end method

.method protected getMinY()D
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 647
    iget-boolean v0, p0, Lcom/c/a/b;->q:Z

    if-eqz v0, :cond_1

    .line 648
    iget-wide v2, p0, Lcom/c/a/b;->s:D

    .line 658
    :cond_0
    return-wide v2

    .line 650
    :cond_1
    const-wide v2, 0x41dfffffffc00000L

    move v0, v1

    .line 651
    :goto_0
    iget-object v4, p0, Lcom/c/a/b;->m:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 652
    invoke-direct {p0, v0}, Lcom/c/a/b;->a(I)[Lcom/c/a/g;

    move-result-object v7

    move v4, v1

    .line 653
    :goto_1
    array-length v5, v7

    if-lt v4, v5, :cond_2

    .line 651
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 654
    :cond_2
    aget-object v5, v7, v4

    invoke-interface {v5}, Lcom/c/a/g;->b()D

    move-result-wide v5

    cmpg-double v5, v5, v2

    if-gez v5, :cond_3

    .line 655
    aget-object v2, v7, v4

    invoke-interface {v2}, Lcom/c/a/g;->b()D

    move-result-wide v5

    .line 653
    :goto_2
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move-wide v2, v5

    goto :goto_1

    :cond_3
    move-wide v5, v2

    goto :goto_2
.end method

.method public setCustomLabelFormatter(Lcom/c/a/a;)V
    .locals 0
    .parameter

    .prologue
    .line 741
    iput-object p1, p0, Lcom/c/a/b;->v:Lcom/c/a/a;

    .line 742
    return-void
.end method

.method public setDisableTouch(Z)V
    .locals 0
    .parameter

    .prologue
    .line 749
    iput-boolean p1, p0, Lcom/c/a/b;->f:Z

    .line 750
    return-void
.end method

.method public setGraphViewStyle(Lcom/c/a/j;)V
    .locals 1
    .parameter

    .prologue
    .line 757
    iput-object p1, p0, Lcom/c/a/b;->t:Lcom/c/a/j;

    .line 758
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/c/a/b;->w:Ljava/lang/Integer;

    .line 759
    return-void
.end method

.method public setHorizontalLabels([Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 766
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/c/a/b;->z:Z

    .line 767
    iput-object p1, p0, Lcom/c/a/b;->b:[Ljava/lang/String;

    .line 768
    return-void

    .line 766
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setLegendAlign(Lcom/c/a/f;)V
    .locals 0
    .parameter

    .prologue
    .line 775
    iput-object p1, p0, Lcom/c/a/b;->p:Lcom/c/a/f;

    .line 776
    return-void
.end method

.method public setLegendWidth(F)V
    .locals 0
    .parameter

    .prologue
    .line 783
    iput p1, p0, Lcom/c/a/b;->o:F

    .line 784
    return-void
.end method

.method public setManualYAxis(Z)V
    .locals 0
    .parameter

    .prologue
    .line 792
    iput-boolean p1, p0, Lcom/c/a/b;->q:Z

    .line 793
    return-void
.end method

.method public declared-synchronized setScalable(Z)V
    .locals 3
    .parameter

    .prologue
    .line 811
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/c/a/b;->k:Z

    .line 812
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/c/a/b;->j:Lcom/c/a/a/b;

    if-nez v0, :cond_0

    .line 813
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/c/a/b;->e:Z

    .line 814
    new-instance v0, Lcom/c/a/a/b;

    invoke-virtual {p0}, Lcom/c/a/b;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/c/a/c;

    invoke-direct {v2, p0}, Lcom/c/a/c;-><init>(Lcom/c/a/b;)V

    invoke-direct {v0, v1, v2}, Lcom/c/a/a/b;-><init>(Landroid/content/Context;Lcom/c/a/a/c;)V

    iput-object v0, p0, Lcom/c/a/b;->j:Lcom/c/a/a/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 845
    :cond_0
    monitor-exit p0

    return-void

    .line 811
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setScrollable(Z)V
    .locals 0
    .parameter

    .prologue
    .line 852
    iput-boolean p1, p0, Lcom/c/a/b;->e:Z

    .line 853
    return-void
.end method

.method public setShowLegend(Z)V
    .locals 0
    .parameter

    .prologue
    .line 856
    iput-boolean p1, p0, Lcom/c/a/b;->n:Z

    .line 857
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 864
    iput-object p1, p0, Lcom/c/a/b;->d:Ljava/lang/String;

    .line 865
    return-void
.end method

.method public setVerticalLabels([Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 872
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/c/a/b;->A:Z

    .line 873
    iput-object p1, p0, Lcom/c/a/b;->c:[Ljava/lang/String;

    .line 874
    return-void

    .line 872
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
