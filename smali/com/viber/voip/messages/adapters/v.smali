.class Lcom/viber/voip/messages/adapters/v;
.super Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorListenerAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/adapters/q;

.field private b:Z

.field private c:Z

.field private d:Lcom/viber/voip/stickers/c/a;

.field private e:Lcom/viber/voip/messages/adapters/y;

.field private f:Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;

.field private g:I


# direct methods
.method public constructor <init>(Lcom/viber/voip/messages/adapters/q;Lcom/viber/voip/stickers/c/a;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 396
    iput-object p1, p0, Lcom/viber/voip/messages/adapters/v;->a:Lcom/viber/voip/messages/adapters/q;

    invoke-direct {p0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/AnimatorListenerAdapter;-><init>()V

    .line 394
    const/4 v0, 0x0

    iput v0, p0, Lcom/viber/voip/messages/adapters/v;->g:I

    .line 397
    iput-object p2, p0, Lcom/viber/voip/messages/adapters/v;->d:Lcom/viber/voip/stickers/c/a;

    .line 398
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/messages/adapters/v;)Lcom/viber/voip/stickers/c/a;
    .locals 1
    .parameter

    .prologue
    .line 386
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/v;->d:Lcom/viber/voip/stickers/c/a;

    return-object v0
.end method

.method static synthetic a(Lcom/viber/voip/messages/adapters/v;Lcom/viber/voip/messages/adapters/y;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 386
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/adapters/v;->a(Lcom/viber/voip/messages/adapters/y;)V

    return-void
.end method

.method static synthetic a(Lcom/viber/voip/messages/adapters/v;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 386
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/adapters/v;->a(Z)V

    return-void
.end method

.method private a(Lcom/viber/voip/messages/adapters/y;)V
    .locals 5
    .parameter

    .prologue
    const/16 v4, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 405
    iput-object p1, p0, Lcom/viber/voip/messages/adapters/v;->e:Lcom/viber/voip/messages/adapters/y;

    .line 406
    iget v0, p0, Lcom/viber/voip/messages/adapters/v;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/viber/voip/messages/adapters/v;->g:I

    .line 408
    iget-object v0, p1, Lcom/viber/voip/messages/adapters/y;->b:Lcom/viber/voip/stickers/ui/b;

    iget-object v3, p0, Lcom/viber/voip/messages/adapters/v;->d:Lcom/viber/voip/stickers/c/a;

    invoke-virtual {v0, v3}, Lcom/viber/voip/stickers/ui/b;->a(Lcom/viber/voip/stickers/c/a;)V

    .line 409
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/v;->d:Lcom/viber/voip/stickers/c/a;

    invoke-virtual {v0}, Lcom/viber/voip/stickers/c/a;->g()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 410
    iget-object v0, p1, Lcom/viber/voip/messages/adapters/y;->e:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 411
    iget-object v0, p1, Lcom/viber/voip/messages/adapters/y;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 412
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/v;->a:Lcom/viber/voip/messages/adapters/q;

    invoke-static {v0}, Lcom/viber/voip/messages/adapters/q;->h(Lcom/viber/voip/messages/adapters/q;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-direct {p0, v2, v0}, Lcom/viber/voip/messages/adapters/v;->a(ZZ)V

    .line 414
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/v;->f:Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;

    if-eqz v0, :cond_2

    .line 415
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/v;->a:Lcom/viber/voip/messages/adapters/q;

    invoke-static {v0}, Lcom/viber/voip/messages/adapters/q;->h(Lcom/viber/voip/messages/adapters/q;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    invoke-direct {p0, v1, v0}, Lcom/viber/voip/messages/adapters/v;->a(ZZ)V

    .line 416
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/v;->f:Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/adapters/v;->onAnimationUpdate(Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;)V

    .line 417
    iget-object v0, p1, Lcom/viber/voip/messages/adapters/y;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 430
    :goto_2
    return-void

    :cond_0
    move v0, v2

    .line 412
    goto :goto_0

    :cond_1
    move v0, v2

    .line 415
    goto :goto_1

    .line 419
    :cond_2
    iget-object v0, p1, Lcom/viber/voip/messages/adapters/y;->c:Landroid/widget/ImageView;

    const/16 v2, 0xff

    invoke-static {v0, v2}, Lcom/viber/voip/util/gl;->a(Landroid/widget/ImageView;I)V

    .line 420
    iget-object v0, p1, Lcom/viber/voip/messages/adapters/y;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 421
    iget-object v0, p1, Lcom/viber/voip/messages/adapters/y;->b:Lcom/viber/voip/stickers/ui/b;

    invoke-virtual {v0, v1}, Lcom/viber/voip/stickers/ui/b;->a(Z)V

    goto :goto_2

    .line 424
    :cond_3
    iget-object v0, p1, Lcom/viber/voip/messages/adapters/y;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 425
    iget-object v0, p1, Lcom/viber/voip/messages/adapters/y;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 426
    iget-object v0, p1, Lcom/viber/voip/messages/adapters/y;->e:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 427
    iget-object v0, p1, Lcom/viber/voip/messages/adapters/y;->b:Lcom/viber/voip/stickers/ui/b;

    invoke-virtual {v0, v2}, Lcom/viber/voip/stickers/ui/b;->a(Z)V

    .line 428
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/v;->a:Lcom/viber/voip/messages/adapters/q;

    invoke-static {v0}, Lcom/viber/voip/messages/adapters/q;->h(Lcom/viber/voip/messages/adapters/q;)Z

    move-result v0

    if-nez v0, :cond_4

    move v2, v1

    :cond_4
    invoke-direct {p0, v1, v2}, Lcom/viber/voip/messages/adapters/v;->a(ZZ)V

    goto :goto_2
.end method

.method private a(Z)V
    .locals 3
    .parameter

    .prologue
    .line 504
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/viber/voip/messages/adapters/v;->c:Z

    .line 507
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/v;->f:Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 508
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/v;->f:Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->removeAllListeners()V

    .line 509
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/v;->f:Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 510
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/v;->f:Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->cancel()V

    .line 513
    :cond_0
    new-instance v0, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;

    invoke-direct {v0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/messages/adapters/v;->f:Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;

    .line 514
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/v;->f:Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 515
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/v;->f:Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, v1, v2}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->setDuration(J)Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;

    .line 516
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/v;->f:Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->setIntValues([I)V

    .line 517
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/v;->f:Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;

    invoke-virtual {v0, p0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->addUpdateListener(Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 518
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/v;->f:Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;

    invoke-virtual {v0, p0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->addListener(Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator$AnimatorListener;)V

    .line 519
    if-eqz p1, :cond_1

    .line 520
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/v;->f:Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->setStartDelay(J)V

    .line 522
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/v;->f:Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->start()V

    .line 523
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/v;->f:Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/adapters/v;->onAnimationUpdate(Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;)V

    .line 524
    return-void

    .line 516
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xfft 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private a(ZZ)V
    .locals 7
    .parameter
    .parameter
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .prologue
    .line 441
    iget v2, p0, Lcom/viber/voip/messages/adapters/v;->g:I

    .line 442
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/v;->e:Lcom/viber/voip/messages/adapters/y;

    iget-object v0, v0, Lcom/viber/voip/messages/adapters/y;->b:Lcom/viber/voip/stickers/ui/b;

    const/4 v1, 0x1

    iget-object v3, p0, Lcom/viber/voip/messages/adapters/v;->a:Lcom/viber/voip/messages/adapters/q;

    invoke-static {v3}, Lcom/viber/voip/messages/adapters/q;->a(Lcom/viber/voip/messages/adapters/q;)Z

    move-result v4

    sget-object v5, Lcom/viber/voip/stickers/ba;->a:Lcom/viber/voip/stickers/ba;

    new-instance v6, Lcom/viber/voip/messages/adapters/w;

    invoke-direct {v6, p0, v2}, Lcom/viber/voip/messages/adapters/w;-><init>(Lcom/viber/voip/messages/adapters/v;I)V

    move v2, p1

    move v3, p2

    invoke-virtual/range {v0 .. v6}, Lcom/viber/voip/stickers/ui/b;->a(ZZZZLcom/viber/voip/stickers/ba;Lcom/viber/voip/stickers/ui/c;)Z

    .line 448
    return-void
.end method

.method static synthetic b(Lcom/viber/voip/messages/adapters/v;)I
    .locals 1
    .parameter

    .prologue
    .line 386
    iget v0, p0, Lcom/viber/voip/messages/adapters/v;->g:I

    return v0
.end method

.method static synthetic b(Lcom/viber/voip/messages/adapters/v;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 386
    iput-boolean p1, p0, Lcom/viber/voip/messages/adapters/v;->b:Z

    return p1
.end method

.method static synthetic c(Lcom/viber/voip/messages/adapters/v;)Lcom/viber/voip/messages/adapters/y;
    .locals 1
    .parameter

    .prologue
    .line 386
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/v;->e:Lcom/viber/voip/messages/adapters/y;

    return-object v0
.end method

.method static synthetic c(Lcom/viber/voip/messages/adapters/v;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 386
    iput-boolean p1, p0, Lcom/viber/voip/messages/adapters/v;->c:Z

    return p1
.end method

.method static synthetic d(Lcom/viber/voip/messages/adapters/v;)Z
    .locals 1
    .parameter

    .prologue
    .line 386
    iget-boolean v0, p0, Lcom/viber/voip/messages/adapters/v;->c:Z

    return v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/v;->d:Lcom/viber/voip/stickers/c/a;

    invoke-virtual {v0}, Lcom/viber/voip/stickers/c/a;->h()V

    .line 402
    return-void
.end method

.method public a(Landroid/view/MotionEvent;)V
    .locals 7
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 451
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/v;->d:Lcom/viber/voip/stickers/c/a;

    invoke-virtual {v0}, Lcom/viber/voip/stickers/c/a;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/adapters/v;->f:Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 501
    :cond_0
    :goto_0
    return-void

    .line 453
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_3

    .line 454
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/v;->e:Lcom/viber/voip/messages/adapters/y;

    iput-boolean v2, v0, Lcom/viber/voip/messages/adapters/y;->g:Z

    .line 455
    iget v6, p0, Lcom/viber/voip/messages/adapters/v;->g:I

    .line 456
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/v;->e:Lcom/viber/voip/messages/adapters/y;

    iget-object v0, v0, Lcom/viber/voip/messages/adapters/y;->b:Lcom/viber/voip/stickers/ui/b;

    iget-object v3, p0, Lcom/viber/voip/messages/adapters/v;->a:Lcom/viber/voip/messages/adapters/q;

    invoke-static {v3}, Lcom/viber/voip/messages/adapters/q;->a(Lcom/viber/voip/messages/adapters/q;)Z

    move-result v3

    sget-object v4, Lcom/viber/voip/stickers/ba;->a:Lcom/viber/voip/stickers/ba;

    new-instance v5, Lcom/viber/voip/messages/adapters/x;

    invoke-direct {v5, p0, v6}, Lcom/viber/voip/messages/adapters/x;-><init>(Lcom/viber/voip/messages/adapters/v;I)V

    invoke-virtual/range {v0 .. v5}, Lcom/viber/voip/stickers/ui/b;->a(ZZZLcom/viber/voip/stickers/ba;Lcom/viber/voip/stickers/ui/c;)Z

    move-result v0

    .line 475
    if-eqz v0, :cond_2

    .line 476
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/v;->e:Lcom/viber/voip/messages/adapters/y;

    iget-object v0, v0, Lcom/viber/voip/messages/adapters/y;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 478
    :cond_2
    iput-boolean v2, p0, Lcom/viber/voip/messages/adapters/v;->b:Z

    goto :goto_0

    .line 481
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_5

    .line 482
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/v;->e:Lcom/viber/voip/messages/adapters/y;

    if-eqz v0, :cond_0

    .line 483
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/v;->e:Lcom/viber/voip/messages/adapters/y;

    iput-boolean v1, v0, Lcom/viber/voip/messages/adapters/y;->g:Z

    .line 484
    iget-boolean v0, p0, Lcom/viber/voip/messages/adapters/v;->b:Z

    if-eqz v0, :cond_4

    .line 485
    iput-boolean v2, p0, Lcom/viber/voip/messages/adapters/v;->c:Z

    .line 489
    :goto_1
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/v;->a:Lcom/viber/voip/messages/adapters/q;

    invoke-static {v0}, Lcom/viber/voip/messages/adapters/q;->i(Lcom/viber/voip/messages/adapters/q;)Lcom/viber/voip/messages/ui/u;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/adapters/v;->d:Lcom/viber/voip/stickers/c/a;

    iget v1, v1, Lcom/viber/voip/stickers/c/a;->b:I

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/messages/ui/u;->a(J)V

    goto :goto_0

    .line 487
    :cond_4
    invoke-direct {p0, v2}, Lcom/viber/voip/messages/adapters/v;->a(Z)V

    goto :goto_1

    .line 491
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_0

    .line 492
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/v;->e:Lcom/viber/voip/messages/adapters/y;

    if-eqz v0, :cond_6

    .line 493
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/v;->e:Lcom/viber/voip/messages/adapters/y;

    iput-boolean v1, v0, Lcom/viber/voip/messages/adapters/y;->g:Z

    .line 495
    :cond_6
    iput-boolean v1, p0, Lcom/viber/voip/messages/adapters/v;->c:Z

    .line 496
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/v;->f:Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/adapters/v;->e:Lcom/viber/voip/messages/adapters/y;

    if-eqz v0, :cond_0

    .line 497
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/v;->e:Lcom/viber/voip/messages/adapters/y;

    iget-object v0, v0, Lcom/viber/voip/messages/adapters/y;->d:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 498
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/v;->e:Lcom/viber/voip/messages/adapters/y;

    iget-object v0, v0, Lcom/viber/voip/messages/adapters/y;->b:Lcom/viber/voip/stickers/ui/b;

    invoke-virtual {v0, v2}, Lcom/viber/voip/stickers/ui/b;->a(Z)V

    goto :goto_0
.end method

.method public b()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 433
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/v;->e:Lcom/viber/voip/messages/adapters/y;

    iget-object v0, v0, Lcom/viber/voip/messages/adapters/y;->b:Lcom/viber/voip/stickers/ui/b;

    invoke-virtual {v0, v2}, Lcom/viber/voip/stickers/ui/b;->a(Lcom/viber/voip/stickers/c/a;)V

    .line 434
    iput-object v2, p0, Lcom/viber/voip/messages/adapters/v;->e:Lcom/viber/voip/messages/adapters/y;

    .line 435
    iput-boolean v1, p0, Lcom/viber/voip/messages/adapters/v;->b:Z

    .line 436
    iput-boolean v1, p0, Lcom/viber/voip/messages/adapters/v;->c:Z

    .line 437
    return-void
.end method

.method public onAnimationEnd(Lcom/actionbarsherlock/internal/nineoldandroids/animation/Animator;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 536
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/v;->e:Lcom/viber/voip/messages/adapters/y;

    if-eqz v0, :cond_0

    .line 537
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/v;->e:Lcom/viber/voip/messages/adapters/y;

    iget-object v0, v0, Lcom/viber/voip/messages/adapters/y;->d:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 538
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/v;->e:Lcom/viber/voip/messages/adapters/y;

    iget-object v0, v0, Lcom/viber/voip/messages/adapters/y;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 540
    :cond_0
    iput-object v2, p0, Lcom/viber/voip/messages/adapters/v;->f:Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;

    .line 541
    return-void
.end method

.method public onAnimationUpdate(Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;)V
    .locals 2
    .parameter

    .prologue
    .line 528
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/v;->e:Lcom/viber/voip/messages/adapters/y;

    if-eqz v0, :cond_0

    .line 529
    invoke-virtual {p1}, Lcom/actionbarsherlock/internal/nineoldandroids/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 530
    iget-object v1, p0, Lcom/viber/voip/messages/adapters/v;->e:Lcom/viber/voip/messages/adapters/y;

    iget-object v1, v1, Lcom/viber/voip/messages/adapters/y;->c:Landroid/widget/ImageView;

    invoke-static {v1, v0}, Lcom/viber/voip/util/gl;->a(Landroid/widget/ImageView;I)V

    .line 532
    :cond_0
    return-void
.end method
