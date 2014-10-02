.class public Lit/sephiroth/android/library/widget/at;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static f:F

.field private static g:F


# instance fields
.field private a:I

.field private final b:Lit/sephiroth/android/library/widget/au;

.field private final c:Lit/sephiroth/android/library/widget/au;

.field private d:Landroid/view/animation/Interpolator;

.field private final e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/high16 v1, 0x3f80

    .line 51
    const/high16 v0, 0x4100

    sput v0, Lit/sephiroth/android/library/widget/at;->f:F

    .line 52
    sput v1, Lit/sephiroth/android/library/widget/at;->g:F

    .line 53
    invoke-static {v1}, Lit/sephiroth/android/library/widget/at;->a(F)F

    move-result v0

    div-float v0, v1, v0

    sput v0, Lit/sephiroth/android/library/widget/at;->g:F

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lit/sephiroth/android/library/widget/at;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 86
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lit/sephiroth/android/library/widget/at;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    .line 87
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-object p2, p0, Lit/sephiroth/android/library/widget/at;->d:Landroid/view/animation/Interpolator;

    .line 99
    iput-boolean p3, p0, Lit/sephiroth/android/library/widget/at;->e:Z

    .line 100
    new-instance v0, Lit/sephiroth/android/library/widget/au;

    invoke-direct {v0, p1}, Lit/sephiroth/android/library/widget/au;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lit/sephiroth/android/library/widget/at;->b:Lit/sephiroth/android/library/widget/au;

    .line 101
    new-instance v0, Lit/sephiroth/android/library/widget/au;

    invoke-direct {v0, p1}, Lit/sephiroth/android/library/widget/au;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lit/sephiroth/android/library/widget/at;->c:Lit/sephiroth/android/library/widget/au;

    .line 102
    return-void
.end method

.method public static a(F)F
    .locals 5
    .parameter

    .prologue
    const/high16 v4, 0x3f80

    .line 67
    sget v0, Lit/sephiroth/android/library/widget/at;->f:F

    mul-float/2addr v0, p0

    .line 68
    cmpg-float v1, v0, v4

    if-gez v1, :cond_0

    .line 69
    neg-float v1, v0

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->exp(D)D

    move-result-wide v1

    double-to-float v1, v1

    sub-float v1, v4, v1

    sub-float/2addr v0, v1

    .line 75
    :goto_0
    sget v1, Lit/sephiroth/android/library/widget/at;->g:F

    mul-float/2addr v0, v1

    .line 76
    return v0

    .line 71
    :cond_0
    const v1, 0x3ebc5ab2

    .line 72
    sub-float v0, v4, v0

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    double-to-float v0, v2

    sub-float v0, v4, v0

    .line 73
    sub-float v2, v4, v1

    mul-float/2addr v0, v2

    add-float/2addr v0, v1

    goto :goto_0
.end method


# virtual methods
.method public a(III)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 490
    iget-object v0, p0, Lit/sephiroth/android/library/widget/at;->b:Lit/sephiroth/android/library/widget/au;

    invoke-virtual {v0, p1, p2, p3}, Lit/sephiroth/android/library/widget/au;->c(III)V

    .line 491
    return-void
.end method

.method public a(IIIII)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 400
    const/4 v0, 0x0

    iput v0, p0, Lit/sephiroth/android/library/widget/at;->a:I

    .line 401
    iget-object v0, p0, Lit/sephiroth/android/library/widget/at;->b:Lit/sephiroth/android/library/widget/au;

    invoke-virtual {v0, p1, p3, p5}, Lit/sephiroth/android/library/widget/au;->a(III)V

    .line 402
    iget-object v0, p0, Lit/sephiroth/android/library/widget/at;->c:Lit/sephiroth/android/library/widget/au;

    invoke-virtual {v0, p2, p4, p5}, Lit/sephiroth/android/library/widget/au;->a(III)V

    .line 403
    return-void
.end method

.method public a(IIIIIIII)V
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 428
    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v10}, Lit/sephiroth/android/library/widget/at;->a(IIIIIIIIII)V

    .line 429
    return-void
.end method

.method public a(IIIIIIIIII)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 461
    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/at;->e:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/at;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 462
    iget-object v0, p0, Lit/sephiroth/android/library/widget/at;->b:Lit/sephiroth/android/library/widget/au;

    invoke-static {v0}, Lit/sephiroth/android/library/widget/au;->c(Lit/sephiroth/android/library/widget/au;)F

    move-result v0

    .line 463
    iget-object v1, p0, Lit/sephiroth/android/library/widget/at;->c:Lit/sephiroth/android/library/widget/au;

    invoke-static {v1}, Lit/sephiroth/android/library/widget/au;->c(Lit/sephiroth/android/library/widget/au;)F

    move-result v1

    .line 464
    int-to-float v2, p3

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v3

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    int-to-float v2, p4

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v3

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    .line 466
    int-to-float v2, p3

    add-float/2addr v0, v2

    float-to-int p3, v0

    .line 467
    int-to-float v0, p4

    add-float/2addr v0, v1

    float-to-int p4, v0

    move v2, p3

    .line 471
    :goto_0
    const/4 v0, 0x1

    iput v0, p0, Lit/sephiroth/android/library/widget/at;->a:I

    .line 472
    iget-object v0, p0, Lit/sephiroth/android/library/widget/at;->b:Lit/sephiroth/android/library/widget/au;

    move v1, p1

    move v3, p5

    move v4, p6

    move v5, p9

    invoke-virtual/range {v0 .. v5}, Lit/sephiroth/android/library/widget/au;->a(IIIII)V

    .line 473
    iget-object v0, p0, Lit/sephiroth/android/library/widget/at;->c:Lit/sephiroth/android/library/widget/au;

    move v1, p2

    move v2, p4

    move v3, p7

    move v4, p8

    move/from16 v5, p10

    invoke-virtual/range {v0 .. v5}, Lit/sephiroth/android/library/widget/au;->a(IIIII)V

    .line 474
    return-void

    :cond_0
    move v2, p3

    goto :goto_0
.end method

.method a(Landroid/view/animation/Interpolator;)V
    .locals 0
    .parameter

    .prologue
    .line 140
    iput-object p1, p0, Lit/sephiroth/android/library/widget/at;->d:Landroid/view/animation/Interpolator;

    .line 141
    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lit/sephiroth/android/library/widget/at;->b:Lit/sephiroth/android/library/widget/au;

    invoke-static {v0}, Lit/sephiroth/android/library/widget/au;->a(Lit/sephiroth/android/library/widget/au;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lit/sephiroth/android/library/widget/at;->c:Lit/sephiroth/android/library/widget/au;

    invoke-static {v0}, Lit/sephiroth/android/library/widget/au;->a(Lit/sephiroth/android/library/widget/au;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(FF)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 559
    iget-object v0, p0, Lit/sephiroth/android/library/widget/at;->b:Lit/sephiroth/android/library/widget/au;

    invoke-static {v0}, Lit/sephiroth/android/library/widget/au;->e(Lit/sephiroth/android/library/widget/au;)I

    move-result v0

    iget-object v1, p0, Lit/sephiroth/android/library/widget/at;->b:Lit/sephiroth/android/library/widget/au;

    invoke-static {v1}, Lit/sephiroth/android/library/widget/au;->d(Lit/sephiroth/android/library/widget/au;)I

    move-result v1

    sub-int/2addr v0, v1

    .line 560
    iget-object v1, p0, Lit/sephiroth/android/library/widget/at;->c:Lit/sephiroth/android/library/widget/au;

    invoke-static {v1}, Lit/sephiroth/android/library/widget/au;->e(Lit/sephiroth/android/library/widget/au;)I

    move-result v1

    iget-object v2, p0, Lit/sephiroth/android/library/widget/at;->c:Lit/sephiroth/android/library/widget/au;

    invoke-static {v2}, Lit/sephiroth/android/library/widget/au;->d(Lit/sephiroth/android/library/widget/au;)I

    move-result v2

    sub-int/2addr v1, v2

    .line 561
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/at;->a()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result v2

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    cmpl-float v0, v2, v0

    if-nez v0, :cond_0

    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    move-result v0

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(IIIIII)Z
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 418
    iput v0, p0, Lit/sephiroth/android/library/widget/at;->a:I

    .line 421
    iget-object v1, p0, Lit/sephiroth/android/library/widget/at;->b:Lit/sephiroth/android/library/widget/au;

    invoke-virtual {v1, p1, p3, p4}, Lit/sephiroth/android/library/widget/au;->b(III)Z

    move-result v1

    .line 422
    iget-object v2, p0, Lit/sephiroth/android/library/widget/at;->c:Lit/sephiroth/android/library/widget/au;

    invoke-virtual {v2, p2, p5, p6}, Lit/sephiroth/android/library/widget/au;->b(III)Z

    move-result v2

    .line 423
    if-nez v1, :cond_0

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lit/sephiroth/android/library/widget/at;->b:Lit/sephiroth/android/library/widget/au;

    invoke-static {v0}, Lit/sephiroth/android/library/widget/au;->b(Lit/sephiroth/android/library/widget/au;)I

    move-result v0

    return v0
.end method

.method public final b(F)V
    .locals 1
    .parameter

    .prologue
    .line 151
    iget-object v0, p0, Lit/sephiroth/android/library/widget/at;->b:Lit/sephiroth/android/library/widget/au;

    invoke-virtual {v0, p1}, Lit/sephiroth/android/library/widget/au;->a(F)V

    .line 152
    iget-object v0, p0, Lit/sephiroth/android/library/widget/at;->c:Lit/sephiroth/android/library/widget/au;

    invoke-virtual {v0, p1}, Lit/sephiroth/android/library/widget/au;->a(F)V

    .line 153
    return-void
.end method

.method public c()F
    .locals 3

    .prologue
    .line 201
    iget-object v0, p0, Lit/sephiroth/android/library/widget/at;->b:Lit/sephiroth/android/library/widget/au;

    invoke-static {v0}, Lit/sephiroth/android/library/widget/au;->c(Lit/sephiroth/android/library/widget/au;)F

    move-result v0

    iget-object v1, p0, Lit/sephiroth/android/library/widget/at;->b:Lit/sephiroth/android/library/widget/au;

    invoke-static {v1}, Lit/sephiroth/android/library/widget/au;->c(Lit/sephiroth/android/library/widget/au;)F

    move-result v1

    mul-float/2addr v0, v1

    .line 202
    iget-object v1, p0, Lit/sephiroth/android/library/widget/at;->c:Lit/sephiroth/android/library/widget/au;

    invoke-static {v1}, Lit/sephiroth/android/library/widget/au;->c(Lit/sephiroth/android/library/widget/au;)F

    move-result v1

    iget-object v2, p0, Lit/sephiroth/android/library/widget/at;->c:Lit/sephiroth/android/library/widget/au;

    invoke-static {v2}, Lit/sephiroth/android/library/widget/au;->c(Lit/sephiroth/android/library/widget/au;)F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 203
    invoke-static {v0}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v0

    return v0
.end method

.method public d()Z
    .locals 5

    .prologue
    .line 317
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/at;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 318
    const/4 v0, 0x0

    .line 365
    :goto_0
    return v0

    .line 321
    :cond_0
    iget v0, p0, Lit/sephiroth/android/library/widget/at;->a:I

    packed-switch v0, :pswitch_data_0

    .line 365
    :cond_1
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 323
    :pswitch_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    .line 326
    iget-object v2, p0, Lit/sephiroth/android/library/widget/at;->b:Lit/sephiroth/android/library/widget/au;

    invoke-static {v2}, Lit/sephiroth/android/library/widget/au;->g(Lit/sephiroth/android/library/widget/au;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 328
    iget-object v2, p0, Lit/sephiroth/android/library/widget/at;->b:Lit/sephiroth/android/library/widget/au;

    invoke-static {v2}, Lit/sephiroth/android/library/widget/au;->f(Lit/sephiroth/android/library/widget/au;)I

    move-result v2

    .line 329
    int-to-long v3, v2

    cmp-long v3, v0, v3

    if-gez v3, :cond_3

    .line 330
    long-to-float v0, v0

    int-to-float v1, v2

    div-float/2addr v0, v1

    .line 332
    iget-object v1, p0, Lit/sephiroth/android/library/widget/at;->d:Landroid/view/animation/Interpolator;

    if-nez v1, :cond_2

    .line 333
    invoke-static {v0}, Lit/sephiroth/android/library/widget/at;->a(F)F

    move-result v0

    .line 338
    :goto_2
    iget-object v1, p0, Lit/sephiroth/android/library/widget/at;->b:Lit/sephiroth/android/library/widget/au;

    invoke-virtual {v1, v0}, Lit/sephiroth/android/library/widget/au;->b(F)V

    .line 339
    iget-object v1, p0, Lit/sephiroth/android/library/widget/at;->c:Lit/sephiroth/android/library/widget/au;

    invoke-virtual {v1, v0}, Lit/sephiroth/android/library/widget/au;->b(F)V

    goto :goto_1

    .line 335
    :cond_2
    iget-object v1, p0, Lit/sephiroth/android/library/widget/at;->d:Landroid/view/animation/Interpolator;

    invoke-interface {v1, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    goto :goto_2

    .line 341
    :cond_3
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/at;->e()V

    goto :goto_1

    .line 346
    :pswitch_1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/at;->b:Lit/sephiroth/android/library/widget/au;

    invoke-static {v0}, Lit/sephiroth/android/library/widget/au;->a(Lit/sephiroth/android/library/widget/au;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 347
    iget-object v0, p0, Lit/sephiroth/android/library/widget/at;->b:Lit/sephiroth/android/library/widget/au;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/au;->c()Z

    move-result v0

    if-nez v0, :cond_4

    .line 348
    iget-object v0, p0, Lit/sephiroth/android/library/widget/at;->b:Lit/sephiroth/android/library/widget/au;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/au;->b()Z

    move-result v0

    if-nez v0, :cond_4

    .line 349
    iget-object v0, p0, Lit/sephiroth/android/library/widget/at;->b:Lit/sephiroth/android/library/widget/au;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/au;->a()V

    .line 354
    :cond_4
    iget-object v0, p0, Lit/sephiroth/android/library/widget/at;->c:Lit/sephiroth/android/library/widget/au;

    invoke-static {v0}, Lit/sephiroth/android/library/widget/au;->a(Lit/sephiroth/android/library/widget/au;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 355
    iget-object v0, p0, Lit/sephiroth/android/library/widget/at;->c:Lit/sephiroth/android/library/widget/au;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/au;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 356
    iget-object v0, p0, Lit/sephiroth/android/library/widget/at;->c:Lit/sephiroth/android/library/widget/au;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/au;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 357
    iget-object v0, p0, Lit/sephiroth/android/library/widget/at;->c:Lit/sephiroth/android/library/widget/au;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/au;->a()V

    goto :goto_1

    .line 321
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public e()V
    .locals 1

    .prologue
    .line 538
    iget-object v0, p0, Lit/sephiroth/android/library/widget/at;->b:Lit/sephiroth/android/library/widget/au;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/au;->a()V

    .line 539
    iget-object v0, p0, Lit/sephiroth/android/library/widget/at;->c:Lit/sephiroth/android/library/widget/au;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/au;->a()V

    .line 540
    return-void
.end method
