.class public Lcom/slidingmenu/lib/a;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# static fields
.field private static final e:Landroid/view/animation/Interpolator;


# instance fields
.field private A:Z

.field private B:F

.field protected a:I

.field protected b:Landroid/view/VelocityTracker;

.field protected c:I

.field protected d:I

.field private f:Landroid/view/View;

.field private g:I

.field private h:Landroid/widget/Scroller;

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:I

.field private n:F

.field private o:F

.field private p:F

.field private q:I

.field private r:I

.field private s:Lcom/slidingmenu/lib/f;

.field private t:Z

.field private u:Lcom/slidingmenu/lib/d;

.field private v:Lcom/slidingmenu/lib/d;

.field private w:Lcom/slidingmenu/lib/l;

.field private x:Lcom/slidingmenu/lib/n;

.field private y:Lcom/slidingmenu/lib/p;

.field private z:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    new-instance v0, Lcom/slidingmenu/lib/b;

    invoke-direct {v0}, Lcom/slidingmenu/lib/b;-><init>()V

    sput-object v0, Lcom/slidingmenu/lib/a;->e:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 154
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/slidingmenu/lib/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 155
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 158
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 74
    const/4 v0, -0x1

    iput v0, p0, Lcom/slidingmenu/lib/a;->a:I

    .line 91
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/slidingmenu/lib/a;->t:Z

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/slidingmenu/lib/a;->z:Ljava/util/List;

    .line 570
    iput v1, p0, Lcom/slidingmenu/lib/a;->d:I

    .line 618
    iput-boolean v1, p0, Lcom/slidingmenu/lib/a;->A:Z

    .line 854
    const/4 v0, 0x0

    iput v0, p0, Lcom/slidingmenu/lib/a;->B:F

    .line 159
    invoke-virtual {p0}, Lcom/slidingmenu/lib/a;->a()V

    .line 160
    return-void
.end method

.method private a(FII)I
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 826
    iget v0, p0, Lcom/slidingmenu/lib/a;->g:I

    .line 827
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lcom/slidingmenu/lib/a;->r:I

    if-le v1, v2, :cond_2

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lcom/slidingmenu/lib/a;->q:I

    if-le v1, v2, :cond_2

    .line 828
    if-lez p2, :cond_1

    if-lez p3, :cond_1

    .line 829
    add-int/lit8 v0, v0, -0x1

    .line 836
    :cond_0
    :goto_0
    return v0

    .line 830
    :cond_1
    if-gez p2, :cond_0

    if-gez p3, :cond_0

    .line 831
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 834
    :cond_2
    iget v0, p0, Lcom/slidingmenu/lib/a;->g:I

    int-to-float v0, v0

    add-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_0
.end method

.method private a(Landroid/view/MotionEvent;I)I
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, -0x1

    .line 612
    invoke-static {p1, p2}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 613
    if-ne v0, v1, :cond_0

    .line 614
    iput v1, p0, Lcom/slidingmenu/lib/a;->a:I

    .line 615
    :cond_0
    return v0
.end method

.method static synthetic a(Lcom/slidingmenu/lib/a;)Lcom/slidingmenu/lib/f;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/slidingmenu/lib/a;->s:Lcom/slidingmenu/lib/f;

    return-object v0
.end method

.method private a(Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 336
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 337
    iget-object v0, p0, Lcom/slidingmenu/lib/a;->z:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 338
    const/4 v5, 0x2

    new-array v5, v5, [I

    .line 339
    invoke-virtual {v0, v5}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 340
    invoke-virtual {v0, v3}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 341
    aget v6, v5, v2

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v7

    sub-int/2addr v6, v7

    aget v5, v5, v1

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v7

    sub-int/2addr v5, v7

    invoke-virtual {v3, v6, v5}, Landroid/graphics/Rect;->offset(II)V

    .line 342
    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v3, v0, v5}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 344
    :goto_0
    return v0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method private b(Landroid/view/MotionEvent;I)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v2, -0x1

    .line 794
    iget v0, p0, Lcom/slidingmenu/lib/a;->a:I

    .line 795
    invoke-direct {p0, p1, v0}, Lcom/slidingmenu/lib/a;->a(Landroid/view/MotionEvent;I)I

    move-result v1

    .line 796
    if-eq v0, v2, :cond_0

    if-ne v1, v2, :cond_1

    .line 814
    :cond_0
    :goto_0
    return-void

    .line 798
    :cond_1
    invoke-static {p1, v1}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v2

    .line 799
    iget v0, p0, Lcom/slidingmenu/lib/a;->o:F

    sub-float v3, v2, v0

    .line 800
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 801
    invoke-static {p1, v1}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v1

    .line 802
    iget v0, p0, Lcom/slidingmenu/lib/a;->p:F

    sub-float v0, v1, v0

    .line 803
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 804
    invoke-virtual {p0}, Lcom/slidingmenu/lib/a;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/slidingmenu/lib/a;->m:I

    div-int/lit8 v0, v0, 0x2

    :goto_1
    int-to-float v0, v0

    cmpl-float v0, v4, v0

    if-lez v0, :cond_4

    cmpl-float v0, v4, v5

    if-lez v0, :cond_4

    invoke-direct {p0, v3}, Lcom/slidingmenu/lib/a;->b(F)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 805
    invoke-direct {p0}, Lcom/slidingmenu/lib/a;->f()V

    .line 806
    iget-object v0, p0, Lcom/slidingmenu/lib/a;->y:Lcom/slidingmenu/lib/p;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/slidingmenu/lib/a;->y:Lcom/slidingmenu/lib/p;

    invoke-interface {v0, p2}, Lcom/slidingmenu/lib/p;->d_(I)V

    .line 807
    :cond_2
    iput v2, p0, Lcom/slidingmenu/lib/a;->o:F

    .line 808
    iput v1, p0, Lcom/slidingmenu/lib/a;->p:F

    .line 809
    invoke-direct {p0, v6}, Lcom/slidingmenu/lib/a;->setScrollingCacheEnabled(Z)V

    goto :goto_0

    .line 804
    :cond_3
    iget v0, p0, Lcom/slidingmenu/lib/a;->m:I

    goto :goto_1

    .line 811
    :cond_4
    iget v0, p0, Lcom/slidingmenu/lib/a;->m:I

    int-to-float v0, v0

    cmpl-float v0, v4, v0

    if-lez v0, :cond_0

    .line 812
    iput-boolean v6, p0, Lcom/slidingmenu/lib/a;->l:Z

    goto :goto_0
.end method

.method private b(F)Z
    .locals 1
    .parameter

    .prologue
    .line 600
    .line 601
    invoke-virtual {p0}, Lcom/slidingmenu/lib/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 602
    iget-object v0, p0, Lcom/slidingmenu/lib/a;->s:Lcom/slidingmenu/lib/f;

    invoke-virtual {v0, p1}, Lcom/slidingmenu/lib/f;->b(F)Z

    move-result v0

    .line 608
    :goto_0
    return v0

    .line 604
    :cond_0
    iget-object v0, p0, Lcom/slidingmenu/lib/a;->s:Lcom/slidingmenu/lib/f;

    invoke-virtual {v0, p1}, Lcom/slidingmenu/lib/f;->a(F)Z

    move-result v0

    goto :goto_0
.end method

.method private b(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 582
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget v3, p0, Lcom/slidingmenu/lib/a;->B:F

    add-float/2addr v2, v3

    float-to-int v2, v2

    .line 583
    invoke-virtual {p0}, Lcom/slidingmenu/lib/a;->b()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 584
    iget-object v0, p0, Lcom/slidingmenu/lib/a;->s:Lcom/slidingmenu/lib/f;

    iget-object v1, p0, Lcom/slidingmenu/lib/a;->f:Landroid/view/View;

    iget v3, p0, Lcom/slidingmenu/lib/a;->g:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v3, v2}, Lcom/slidingmenu/lib/f;->a(Landroid/view/View;IF)Z

    move-result v0

    .line 595
    :cond_0
    :goto_0
    return v0

    .line 586
    :cond_1
    iget v3, p0, Lcom/slidingmenu/lib/a;->d:I

    packed-switch v3, :pswitch_data_0

    move v0, v1

    .line 595
    goto :goto_0

    .line 588
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/slidingmenu/lib/a;->a(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :pswitch_1
    move v0, v1

    .line 590
    goto :goto_0

    .line 592
    :pswitch_2
    iget-object v3, p0, Lcom/slidingmenu/lib/a;->s:Lcom/slidingmenu/lib/f;

    iget-object v4, p0, Lcom/slidingmenu/lib/a;->f:Landroid/view/View;

    invoke-virtual {v3, v4, v2}, Lcom/slidingmenu/lib/f;->b(Landroid/view/View;I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0, p1}, Lcom/slidingmenu/lib/a;->a(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    .line 586
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private c(I)V
    .locals 4
    .parameter

    .prologue
    .line 517
    invoke-virtual {p0}, Lcom/slidingmenu/lib/a;->getWidth()I

    move-result v0

    .line 518
    div-int v1, p1, v0

    .line 519
    rem-int v2, p1, v0

    .line 520
    int-to-float v3, v2

    int-to-float v0, v0

    div-float v0, v3, v0

    .line 522
    invoke-virtual {p0, v1, v0, v2}, Lcom/slidingmenu/lib/a;->a(IFI)V

    .line 523
    return-void
.end method

.method private c(Landroid/view/MotionEvent;)V
    .locals 3
    .parameter

    .prologue
    .line 858
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v0

    .line 859
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v1

    .line 860
    iget v2, p0, Lcom/slidingmenu/lib/a;->a:I

    if-ne v1, v2, :cond_0

    .line 863
    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 864
    :goto_0
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v1

    iput v1, p0, Lcom/slidingmenu/lib/a;->o:F

    .line 865
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lcom/slidingmenu/lib/a;->a:I

    .line 866
    iget-object v0, p0, Lcom/slidingmenu/lib/a;->b:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 867
    iget-object v0, p0, Lcom/slidingmenu/lib/a;->b:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 870
    :cond_0
    return-void

    .line 863
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private e()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 547
    iget-boolean v0, p0, Lcom/slidingmenu/lib/a;->j:Z

    .line 548
    if-eqz v0, :cond_2

    .line 550
    invoke-direct {p0, v4}, Lcom/slidingmenu/lib/a;->setScrollingCacheEnabled(Z)V

    .line 551
    iget-object v0, p0, Lcom/slidingmenu/lib/a;->h:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 552
    invoke-virtual {p0}, Lcom/slidingmenu/lib/a;->getScrollX()I

    move-result v0

    .line 553
    invoke-virtual {p0}, Lcom/slidingmenu/lib/a;->getScrollY()I

    move-result v1

    .line 554
    iget-object v2, p0, Lcom/slidingmenu/lib/a;->h:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    .line 555
    iget-object v3, p0, Lcom/slidingmenu/lib/a;->h:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    .line 556
    if-ne v0, v2, :cond_0

    if-eq v1, v3, :cond_1

    .line 557
    :cond_0
    invoke-virtual {p0, v2, v3}, Lcom/slidingmenu/lib/a;->scrollTo(II)V

    .line 559
    :cond_1
    invoke-virtual {p0}, Lcom/slidingmenu/lib/a;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 560
    iget-object v0, p0, Lcom/slidingmenu/lib/a;->x:Lcom/slidingmenu/lib/n;

    if-eqz v0, :cond_2

    .line 561
    iget-object v0, p0, Lcom/slidingmenu/lib/a;->x:Lcom/slidingmenu/lib/n;

    invoke-interface {v0}, Lcom/slidingmenu/lib/n;->b()V

    .line 567
    :cond_2
    :goto_0
    iput-boolean v4, p0, Lcom/slidingmenu/lib/a;->j:Z

    .line 568
    return-void

    .line 563
    :cond_3
    iget-object v0, p0, Lcom/slidingmenu/lib/a;->w:Lcom/slidingmenu/lib/l;

    if-eqz v0, :cond_2

    .line 564
    iget-object v0, p0, Lcom/slidingmenu/lib/a;->w:Lcom/slidingmenu/lib/l;

    invoke-interface {v0}, Lcom/slidingmenu/lib/l;->a()V

    goto :goto_0
.end method

.method private f()V
    .locals 1

    .prologue
    .line 873
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/slidingmenu/lib/a;->k:Z

    .line 874
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/slidingmenu/lib/a;->A:Z

    .line 875
    return-void
.end method

.method private g()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 878
    iput-boolean v0, p0, Lcom/slidingmenu/lib/a;->A:Z

    .line 879
    iput-boolean v0, p0, Lcom/slidingmenu/lib/a;->k:Z

    .line 880
    iput-boolean v0, p0, Lcom/slidingmenu/lib/a;->l:Z

    .line 881
    const/4 v0, -0x1

    iput v0, p0, Lcom/slidingmenu/lib/a;->a:I

    .line 883
    iget-object v0, p0, Lcom/slidingmenu/lib/a;->b:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 884
    iget-object v0, p0, Lcom/slidingmenu/lib/a;->b:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 885
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/slidingmenu/lib/a;->b:Landroid/view/VelocityTracker;

    .line 887
    :cond_0
    return-void
.end method

.method private getLeftBound()I
    .locals 2

    .prologue
    .line 320
    iget-object v0, p0, Lcom/slidingmenu/lib/a;->s:Lcom/slidingmenu/lib/f;

    iget-object v1, p0, Lcom/slidingmenu/lib/a;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/slidingmenu/lib/f;->a(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method private getRightBound()I
    .locals 2

    .prologue
    .line 324
    iget-object v0, p0, Lcom/slidingmenu/lib/a;->s:Lcom/slidingmenu/lib/f;

    iget-object v1, p0, Lcom/slidingmenu/lib/a;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/slidingmenu/lib/f;->b(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method private setScrollingCacheEnabled(Z)V
    .locals 1
    .parameter

    .prologue
    .line 890
    iget-boolean v0, p0, Lcom/slidingmenu/lib/a;->i:Z

    if-eq v0, p1, :cond_0

    .line 891
    iput-boolean p1, p0, Lcom/slidingmenu/lib/a;->i:Z

    .line 902
    :cond_0
    return-void
.end method


# virtual methods
.method a(F)F
    .locals 4
    .parameter

    .prologue
    .line 303
    const/high16 v0, 0x3f00

    sub-float v0, p1, v0

    .line 304
    float-to-double v0, v0

    const-wide v2, 0x3fde28c7460698c7L

    mul-double/2addr v0, v2

    double-to-float v0, v0

    .line 305
    invoke-static {v0}, Landroid/util/FloatMath;->sin(F)F

    move-result v0

    return v0
.end method

.method public a(I)I
    .locals 2
    .parameter

    .prologue
    .line 309
    packed-switch p1, :pswitch_data_0

    .line 316
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 312
    :pswitch_0
    iget-object v0, p0, Lcom/slidingmenu/lib/a;->s:Lcom/slidingmenu/lib/f;

    iget-object v1, p0, Lcom/slidingmenu/lib/a;->f:Landroid/view/View;

    invoke-virtual {v0, v1, p1}, Lcom/slidingmenu/lib/f;->a(Landroid/view/View;I)I

    move-result v0

    goto :goto_0

    .line 314
    :pswitch_1
    iget-object v0, p0, Lcom/slidingmenu/lib/a;->f:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    goto :goto_0

    .line 309
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method a(Lcom/slidingmenu/lib/d;)Lcom/slidingmenu/lib/d;
    .locals 1
    .parameter

    .prologue
    .line 279
    iget-object v0, p0, Lcom/slidingmenu/lib/a;->v:Lcom/slidingmenu/lib/d;

    .line 280
    iput-object p1, p0, Lcom/slidingmenu/lib/a;->v:Lcom/slidingmenu/lib/d;

    .line 281
    return-object v0
.end method

.method a()V
    .locals 3

    .prologue
    .line 163
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/slidingmenu/lib/a;->setWillNotDraw(Z)V

    .line 164
    const/high16 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/slidingmenu/lib/a;->setDescendantFocusability(I)V

    .line 165
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/slidingmenu/lib/a;->setFocusable(Z)V

    .line 166
    invoke-virtual {p0}, Lcom/slidingmenu/lib/a;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 167
    new-instance v1, Landroid/widget/Scroller;

    sget-object v2, Lcom/slidingmenu/lib/a;->e:Landroid/view/animation/Interpolator;

    invoke-direct {v1, v0, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v1, p0, Lcom/slidingmenu/lib/a;->h:Landroid/widget/Scroller;

    .line 168
    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    .line 169
    invoke-static {v1}, Landroid/support/v4/view/ViewConfigurationCompat;->getScaledPagingTouchSlop(Landroid/view/ViewConfiguration;)I

    move-result v2

    iput v2, p0, Lcom/slidingmenu/lib/a;->m:I

    .line 170
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v2

    iput v2, p0, Lcom/slidingmenu/lib/a;->q:I

    .line 171
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/slidingmenu/lib/a;->c:I

    .line 172
    new-instance v1, Lcom/slidingmenu/lib/c;

    invoke-direct {v1, p0}, Lcom/slidingmenu/lib/c;-><init>(Lcom/slidingmenu/lib/a;)V

    invoke-virtual {p0, v1}, Lcom/slidingmenu/lib/a;->a(Lcom/slidingmenu/lib/d;)Lcom/slidingmenu/lib/d;

    .line 188
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 189
    const/high16 v1, 0x41c8

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/slidingmenu/lib/a;->r:I

    .line 190
    return-void
.end method

.method protected a(IFI)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 538
    iget-object v0, p0, Lcom/slidingmenu/lib/a;->u:Lcom/slidingmenu/lib/d;

    if-eqz v0, :cond_0

    .line 539
    iget-object v0, p0, Lcom/slidingmenu/lib/a;->u:Lcom/slidingmenu/lib/d;

    invoke-interface {v0, p1, p2, p3}, Lcom/slidingmenu/lib/d;->a(IFI)V

    .line 541
    :cond_0
    iget-object v0, p0, Lcom/slidingmenu/lib/a;->v:Lcom/slidingmenu/lib/d;

    if-eqz v0, :cond_1

    .line 542
    iget-object v0, p0, Lcom/slidingmenu/lib/a;->v:Lcom/slidingmenu/lib/d;

    invoke-interface {v0, p1, p2, p3}, Lcom/slidingmenu/lib/d;->a(IFI)V

    .line 544
    :cond_1
    return-void
.end method

.method a(III)V
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v5, 0x258

    const/4 v6, 0x1

    const/high16 v9, 0x3f80

    .line 392
    invoke-virtual {p0}, Lcom/slidingmenu/lib/a;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 394
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/slidingmenu/lib/a;->setScrollingCacheEnabled(Z)V

    .line 435
    :cond_0
    :goto_0
    return-void

    .line 397
    :cond_1
    invoke-virtual {p0}, Lcom/slidingmenu/lib/a;->getScrollX()I

    move-result v1

    .line 398
    invoke-virtual {p0}, Lcom/slidingmenu/lib/a;->getScrollY()I

    move-result v2

    .line 399
    sub-int v3, p1, v1

    .line 400
    sub-int v4, p2, v2

    .line 401
    if-nez v3, :cond_3

    if-nez v4, :cond_3

    .line 402
    invoke-direct {p0}, Lcom/slidingmenu/lib/a;->e()V

    .line 403
    invoke-virtual {p0}, Lcom/slidingmenu/lib/a;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 404
    iget-object v0, p0, Lcom/slidingmenu/lib/a;->x:Lcom/slidingmenu/lib/n;

    if-eqz v0, :cond_0

    .line 405
    iget-object v0, p0, Lcom/slidingmenu/lib/a;->x:Lcom/slidingmenu/lib/n;

    invoke-interface {v0}, Lcom/slidingmenu/lib/n;->b()V

    goto :goto_0

    .line 407
    :cond_2
    iget-object v0, p0, Lcom/slidingmenu/lib/a;->w:Lcom/slidingmenu/lib/l;

    if-eqz v0, :cond_0

    .line 408
    iget-object v0, p0, Lcom/slidingmenu/lib/a;->w:Lcom/slidingmenu/lib/l;

    invoke-interface {v0}, Lcom/slidingmenu/lib/l;->a()V

    goto :goto_0

    .line 413
    :cond_3
    invoke-direct {p0, v6}, Lcom/slidingmenu/lib/a;->setScrollingCacheEnabled(Z)V

    .line 414
    iput-boolean v6, p0, Lcom/slidingmenu/lib/a;->j:Z

    .line 416
    invoke-virtual {p0}, Lcom/slidingmenu/lib/a;->getBehindWidth()I

    move-result v0

    .line 417
    div-int/lit8 v6, v0, 0x2

    .line 418
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v9

    int-to-float v8, v0

    div-float/2addr v7, v8

    invoke-static {v9, v7}, Ljava/lang/Math;->min(FF)F

    move-result v7

    .line 419
    int-to-float v8, v6

    int-to-float v6, v6

    invoke-virtual {p0, v7}, Lcom/slidingmenu/lib/a;->a(F)F

    move-result v7

    mul-float/2addr v6, v7

    add-float/2addr v6, v8

    .line 423
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v7

    .line 424
    if-lez v7, :cond_4

    .line 425
    const/high16 v0, 0x447a

    int-to-float v7, v7

    div-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    mul-float/2addr v0, v6

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    .line 431
    :goto_1
    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 433
    iget-object v0, p0, Lcom/slidingmenu/lib/a;->h:Landroid/widget/Scroller;

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 434
    invoke-virtual {p0}, Lcom/slidingmenu/lib/a;->invalidate()V

    goto :goto_0

    .line 427
    :cond_4
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-float v6, v6

    int-to-float v0, v0

    div-float v0, v6, v0

    .line 428
    add-float/2addr v0, v9

    const/high16 v6, 0x42c8

    mul-float/2addr v0, v6

    float-to-int v0, v0

    move v0, v5

    .line 429
    goto :goto_1
.end method

.method public a(IZ)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 210
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/slidingmenu/lib/a;->a(IZZ)V

    .line 211
    return-void
.end method

.method a(IZZ)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 218
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/slidingmenu/lib/a;->a(IZZI)V

    .line 219
    return-void
.end method

.method a(IZZI)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 222
    if-nez p3, :cond_0

    iget v0, p0, Lcom/slidingmenu/lib/a;->g:I

    if-ne v0, p1, :cond_0

    .line 223
    invoke-direct {p0, v1}, Lcom/slidingmenu/lib/a;->setScrollingCacheEnabled(Z)V

    .line 244
    :goto_0
    return-void

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/slidingmenu/lib/a;->s:Lcom/slidingmenu/lib/f;

    invoke-virtual {v0, p1}, Lcom/slidingmenu/lib/f;->a(I)I

    move-result v2

    .line 229
    iget v0, p0, Lcom/slidingmenu/lib/a;->g:I

    if-eq v0, v2, :cond_3

    const/4 v0, 0x1

    .line 230
    :goto_1
    iput v2, p0, Lcom/slidingmenu/lib/a;->g:I

    .line 231
    iget v3, p0, Lcom/slidingmenu/lib/a;->g:I

    invoke-virtual {p0, v3}, Lcom/slidingmenu/lib/a;->a(I)I

    move-result v3

    .line 232
    if-eqz v0, :cond_1

    iget-object v4, p0, Lcom/slidingmenu/lib/a;->u:Lcom/slidingmenu/lib/d;

    if-eqz v4, :cond_1

    .line 233
    iget-object v4, p0, Lcom/slidingmenu/lib/a;->u:Lcom/slidingmenu/lib/d;

    invoke-interface {v4, v2}, Lcom/slidingmenu/lib/d;->a(I)V

    .line 235
    :cond_1
    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/slidingmenu/lib/a;->v:Lcom/slidingmenu/lib/d;

    if-eqz v0, :cond_2

    .line 236
    iget-object v0, p0, Lcom/slidingmenu/lib/a;->v:Lcom/slidingmenu/lib/d;

    invoke-interface {v0, v2}, Lcom/slidingmenu/lib/d;->a(I)V

    .line 238
    :cond_2
    if-eqz p2, :cond_4

    .line 239
    invoke-virtual {p0, v3, v1, p4}, Lcom/slidingmenu/lib/a;->a(III)V

    goto :goto_0

    :cond_3
    move v0, v1

    .line 229
    goto :goto_1

    .line 241
    :cond_4
    invoke-direct {p0}, Lcom/slidingmenu/lib/a;->e()V

    .line 242
    invoke-virtual {p0, v3, v1}, Lcom/slidingmenu/lib/a;->scrollTo(II)V

    goto :goto_0
.end method

.method public a(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 285
    iget-object v0, p0, Lcom/slidingmenu/lib/a;->z:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/slidingmenu/lib/a;->z:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 288
    :cond_0
    return-void
.end method

.method public a(Landroid/view/KeyEvent;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 952
    const/4 v0, 0x0

    .line 953
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 954
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 974
    :cond_0
    :goto_0
    return v0

    .line 956
    :sswitch_0
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/slidingmenu/lib/a;->b(I)Z

    move-result v0

    goto :goto_0

    .line 959
    :sswitch_1
    const/16 v0, 0x42

    invoke-virtual {p0, v0}, Lcom/slidingmenu/lib/a;->b(I)Z

    move-result v0

    goto :goto_0

    .line 962
    :sswitch_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    .line 965
    invoke-static {p1}, Landroid/support/v4/view/KeyEventCompat;->hasNoModifiers(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 966
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/slidingmenu/lib/a;->b(I)Z

    move-result v0

    goto :goto_0

    .line 967
    :cond_1
    invoke-static {p1, v3}, Landroid/support/v4/view/KeyEventCompat;->hasModifiers(Landroid/view/KeyEvent;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 968
    invoke-virtual {p0, v3}, Lcom/slidingmenu/lib/a;->b(I)Z

    move-result v0

    goto :goto_0

    .line 954
    nop

    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x3d -> :sswitch_2
    .end sparse-switch
.end method

.method public b()Z
    .locals 2

    .prologue
    .line 332
    iget v0, p0, Lcom/slidingmenu/lib/a;->g:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/slidingmenu/lib/a;->g:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(I)Z
    .locals 5
    .parameter

    .prologue
    const/16 v4, 0x42

    const/16 v3, 0x11

    .line 978
    invoke-virtual {p0}, Lcom/slidingmenu/lib/a;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 979
    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    .line 981
    :cond_0
    const/4 v1, 0x0

    .line 983
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v2

    invoke-virtual {v2, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    .line 985
    if-eqz v2, :cond_4

    if-eq v2, v0, :cond_4

    .line 986
    if-ne p1, v3, :cond_2

    .line 987
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    move-result v0

    .line 1004
    :goto_0
    if-eqz v0, :cond_1

    .line 1005
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/slidingmenu/lib/a;->playSoundEffect(I)V

    .line 1007
    :cond_1
    return v0

    .line 988
    :cond_2
    if-ne p1, v4, :cond_8

    .line 991
    if-eqz v0, :cond_3

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    if-gt v1, v0, :cond_3

    .line 992
    invoke-virtual {p0}, Lcom/slidingmenu/lib/a;->d()Z

    move-result v0

    goto :goto_0

    .line 994
    :cond_3
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    move-result v0

    goto :goto_0

    .line 997
    :cond_4
    if-eq p1, v3, :cond_5

    const/4 v0, 0x1

    if-ne p1, v0, :cond_6

    .line 999
    :cond_5
    invoke-virtual {p0}, Lcom/slidingmenu/lib/a;->c()Z

    move-result v0

    goto :goto_0

    .line 1000
    :cond_6
    if-eq p1, v4, :cond_7

    const/4 v0, 0x2

    if-ne p1, v0, :cond_8

    .line 1002
    :cond_7
    invoke-virtual {p0}, Lcom/slidingmenu/lib/a;->d()Z

    move-result v0

    goto :goto_0

    :cond_8
    move v0, v1

    goto :goto_0
.end method

.method c()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1011
    iget v1, p0, Lcom/slidingmenu/lib/a;->g:I

    if-lez v1, :cond_0

    .line 1012
    iget v1, p0, Lcom/slidingmenu/lib/a;->g:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/slidingmenu/lib/a;->a(IZ)V

    .line 1015
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public computeScroll()V
    .locals 4

    .prologue
    .line 494
    iget-object v0, p0, Lcom/slidingmenu/lib/a;->h:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    .line 495
    iget-object v0, p0, Lcom/slidingmenu/lib/a;->h:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 496
    invoke-virtual {p0}, Lcom/slidingmenu/lib/a;->getScrollX()I

    move-result v0

    .line 497
    invoke-virtual {p0}, Lcom/slidingmenu/lib/a;->getScrollY()I

    move-result v1

    .line 498
    iget-object v2, p0, Lcom/slidingmenu/lib/a;->h:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    .line 499
    iget-object v3, p0, Lcom/slidingmenu/lib/a;->h:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    .line 501
    if-ne v0, v2, :cond_0

    if-eq v1, v3, :cond_1

    .line 502
    :cond_0
    invoke-virtual {p0, v2, v3}, Lcom/slidingmenu/lib/a;->scrollTo(II)V

    .line 503
    invoke-direct {p0, v2}, Lcom/slidingmenu/lib/a;->c(I)V

    .line 507
    :cond_1
    invoke-virtual {p0}, Lcom/slidingmenu/lib/a;->invalidate()V

    .line 514
    :goto_0
    return-void

    .line 513
    :cond_2
    invoke-direct {p0}, Lcom/slidingmenu/lib/a;->e()V

    goto :goto_0
.end method

.method d()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1019
    iget v1, p0, Lcom/slidingmenu/lib/a;->g:I

    if-ge v1, v0, :cond_0

    .line 1020
    iget v1, p0, Lcom/slidingmenu/lib/a;->g:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/slidingmenu/lib/a;->a(IZ)V

    .line 1023
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter

    .prologue
    .line 846
    iget-object v0, p0, Lcom/slidingmenu/lib/a;->s:Lcom/slidingmenu/lib/f;

    iget-object v1, p0, Lcom/slidingmenu/lib/a;->f:Landroid/view/View;

    invoke-virtual {v0, v1, p1}, Lcom/slidingmenu/lib/f;->a(Landroid/view/View;Landroid/graphics/Canvas;)V

    .line 847
    iget-object v0, p0, Lcom/slidingmenu/lib/a;->s:Lcom/slidingmenu/lib/f;

    iget-object v1, p0, Lcom/slidingmenu/lib/a;->f:Landroid/view/View;

    invoke-virtual {p0}, Lcom/slidingmenu/lib/a;->getPercentOpen()F

    move-result v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/slidingmenu/lib/f;->a(Landroid/view/View;Landroid/graphics/Canvas;F)V

    .line 848
    iget-object v0, p0, Lcom/slidingmenu/lib/a;->s:Lcom/slidingmenu/lib/f;

    iget-object v1, p0, Lcom/slidingmenu/lib/a;->f:Landroid/view/View;

    invoke-virtual {p0}, Lcom/slidingmenu/lib/a;->getPercentOpen()F

    move-result v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/slidingmenu/lib/f;->b(Landroid/view/View;Landroid/graphics/Canvas;F)V

    .line 850
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 851
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter

    .prologue
    .line 940
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/slidingmenu/lib/a;->a(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBehindWidth()I
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lcom/slidingmenu/lib/a;->s:Lcom/slidingmenu/lib/f;

    if-nez v0, :cond_0

    .line 349
    const/4 v0, 0x0

    .line 351
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/slidingmenu/lib/a;->s:Lcom/slidingmenu/lib/f;

    invoke-virtual {v0}, Lcom/slidingmenu/lib/f;->getBehindWidth()I

    move-result v0

    goto :goto_0
.end method

.method public getContent()Landroid/view/View;
    .locals 1

    .prologue
    .line 445
    iget-object v0, p0, Lcom/slidingmenu/lib/a;->f:Landroid/view/View;

    return-object v0
.end method

.method public getContentLeft()I
    .locals 2

    .prologue
    .line 328
    iget-object v0, p0, Lcom/slidingmenu/lib/a;->f:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iget-object v1, p0, Lcom/slidingmenu/lib/a;->f:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getCurrentItem()I
    .locals 1

    .prologue
    .line 214
    iget v0, p0, Lcom/slidingmenu/lib/a;->g:I

    return v0
.end method

.method protected getPercentOpen()F
    .locals 2

    .prologue
    .line 840
    iget v0, p0, Lcom/slidingmenu/lib/a;->B:F

    iget-object v1, p0, Lcom/slidingmenu/lib/a;->f:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {p0}, Lcom/slidingmenu/lib/a;->getBehindWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public getTouchMode()I
    .locals 1

    .prologue
    .line 577
    iget v0, p0, Lcom/slidingmenu/lib/a;->d:I

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 623
    iget-boolean v2, p0, Lcom/slidingmenu/lib/a;->t:Z

    if-nez v2, :cond_1

    .line 674
    :cond_0
    :goto_0
    return v0

    .line 628
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    .line 634
    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    if-eq v2, v1, :cond_2

    if-eqz v2, :cond_3

    iget-boolean v3, p0, Lcom/slidingmenu/lib/a;->l:Z

    if-eqz v3, :cond_3

    .line 636
    :cond_2
    invoke-direct {p0}, Lcom/slidingmenu/lib/a;->g()V

    goto :goto_0

    .line 640
    :cond_3
    sparse-switch v2, :sswitch_data_0

    .line 666
    :cond_4
    :goto_1
    iget-boolean v2, p0, Lcom/slidingmenu/lib/a;->k:Z

    if-nez v2, :cond_6

    .line 667
    iget-object v2, p0, Lcom/slidingmenu/lib/a;->b:Landroid/view/VelocityTracker;

    if-nez v2, :cond_5

    .line 668
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, p0, Lcom/slidingmenu/lib/a;->b:Landroid/view/VelocityTracker;

    .line 670
    :cond_5
    iget-object v2, p0, Lcom/slidingmenu/lib/a;->b:Landroid/view/VelocityTracker;

    invoke-virtual {v2, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 674
    :cond_6
    iget-boolean v2, p0, Lcom/slidingmenu/lib/a;->k:Z

    if-nez v2, :cond_7

    iget-boolean v2, p0, Lcom/slidingmenu/lib/a;->A:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/slidingmenu/lib/a;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_7
    move v0, v1

    goto :goto_0

    .line 642
    :sswitch_0
    invoke-direct {p0, p1, v0}, Lcom/slidingmenu/lib/a;->b(Landroid/view/MotionEvent;I)V

    goto :goto_1

    .line 645
    :sswitch_1
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v2

    .line 646
    invoke-static {p1, v2}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v3

    iput v3, p0, Lcom/slidingmenu/lib/a;->a:I

    .line 647
    iget v3, p0, Lcom/slidingmenu/lib/a;->a:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_4

    .line 649
    invoke-static {p1, v2}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v3

    iput v3, p0, Lcom/slidingmenu/lib/a;->n:F

    iput v3, p0, Lcom/slidingmenu/lib/a;->o:F

    .line 650
    invoke-static {p1, v2}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v2

    iput v2, p0, Lcom/slidingmenu/lib/a;->p:F

    .line 651
    invoke-direct {p0, p1}, Lcom/slidingmenu/lib/a;->b(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 652
    iput-boolean v0, p0, Lcom/slidingmenu/lib/a;->k:Z

    .line 653
    iput-boolean v0, p0, Lcom/slidingmenu/lib/a;->l:Z

    .line 654
    invoke-virtual {p0}, Lcom/slidingmenu/lib/a;->b()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/slidingmenu/lib/a;->s:Lcom/slidingmenu/lib/f;

    iget-object v3, p0, Lcom/slidingmenu/lib/a;->f:Landroid/view/View;

    iget v4, p0, Lcom/slidingmenu/lib/a;->g:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iget v6, p0, Lcom/slidingmenu/lib/a;->B:F

    add-float/2addr v5, v6

    invoke-virtual {v2, v3, v4, v5}, Lcom/slidingmenu/lib/f;->b(Landroid/view/View;IF)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 655
    iput-boolean v1, p0, Lcom/slidingmenu/lib/a;->A:Z

    goto :goto_1

    .line 658
    :cond_8
    iput-boolean v1, p0, Lcom/slidingmenu/lib/a;->l:Z

    goto :goto_1

    .line 662
    :sswitch_2
    invoke-direct {p0, p1}, Lcom/slidingmenu/lib/a;->c(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 640
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x2 -> :sswitch_0
        0x6 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 479
    sub-int v0, p4, p2

    .line 480
    sub-int v1, p5, p3

    .line 481
    iget-object v2, p0, Lcom/slidingmenu/lib/a;->f:Landroid/view/View;

    invoke-virtual {v2, v3, v3, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 482
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 455
    invoke-static {v2, p1}, Lcom/slidingmenu/lib/a;->getDefaultSize(II)I

    move-result v0

    .line 456
    invoke-static {v2, p2}, Lcom/slidingmenu/lib/a;->getDefaultSize(II)I

    move-result v1

    .line 457
    invoke-virtual {p0, v0, v1}, Lcom/slidingmenu/lib/a;->setMeasuredDimension(II)V

    .line 459
    invoke-static {p1, v2, v0}, Lcom/slidingmenu/lib/a;->getChildMeasureSpec(III)I

    move-result v0

    .line 460
    invoke-static {p2, v2, v1}, Lcom/slidingmenu/lib/a;->getChildMeasureSpec(III)I

    move-result v1

    .line 461
    iget-object v2, p0, Lcom/slidingmenu/lib/a;->f:Landroid/view/View;

    invoke-virtual {v2, v0, v1}, Landroid/view/View;->measure(II)V

    .line 462
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 466
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 468
    if-eq p1, p3, :cond_0

    .line 472
    invoke-direct {p0}, Lcom/slidingmenu/lib/a;->e()V

    .line 473
    iget v0, p0, Lcom/slidingmenu/lib/a;->g:I

    invoke-virtual {p0, v0}, Lcom/slidingmenu/lib/a;->a(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/slidingmenu/lib/a;->getScrollY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/slidingmenu/lib/a;->scrollTo(II)V

    .line 475
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v5, -0x1

    const/4 v3, 0x1

    .line 680
    iget-boolean v1, p0, Lcom/slidingmenu/lib/a;->t:Z

    if-nez v1, :cond_1

    .line 790
    :cond_0
    :goto_0
    return v0

    .line 684
    :cond_1
    iget-boolean v1, p0, Lcom/slidingmenu/lib/a;->k:Z

    if-nez v1, :cond_2

    invoke-direct {p0, p1}, Lcom/slidingmenu/lib/a;->b(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 691
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 693
    iget-object v2, p0, Lcom/slidingmenu/lib/a;->b:Landroid/view/VelocityTracker;

    if-nez v2, :cond_3

    .line 694
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, p0, Lcom/slidingmenu/lib/a;->b:Landroid/view/VelocityTracker;

    .line 696
    :cond_3
    iget-object v2, p0, Lcom/slidingmenu/lib/a;->b:Landroid/view/VelocityTracker;

    invoke-virtual {v2, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 698
    and-int/lit16 v1, v1, 0xff

    packed-switch v1, :pswitch_data_0

    :cond_4
    :goto_1
    :pswitch_0
    move v0, v3

    .line 790
    goto :goto_0

    .line 704
    :pswitch_1
    invoke-direct {p0}, Lcom/slidingmenu/lib/a;->e()V

    .line 707
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v0

    .line 708
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lcom/slidingmenu/lib/a;->a:I

    .line 709
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/slidingmenu/lib/a;->n:F

    iput v0, p0, Lcom/slidingmenu/lib/a;->o:F

    goto :goto_1

    .line 712
    :pswitch_2
    iget-boolean v1, p0, Lcom/slidingmenu/lib/a;->k:Z

    if-nez v1, :cond_5

    .line 713
    invoke-direct {p0, p1, v3}, Lcom/slidingmenu/lib/a;->b(Landroid/view/MotionEvent;I)V

    .line 714
    iget-boolean v1, p0, Lcom/slidingmenu/lib/a;->l:Z

    if-nez v1, :cond_0

    .line 718
    :cond_5
    iget-boolean v0, p0, Lcom/slidingmenu/lib/a;->k:Z

    if-eqz v0, :cond_4

    .line 720
    iget v0, p0, Lcom/slidingmenu/lib/a;->a:I

    invoke-direct {p0, p1, v0}, Lcom/slidingmenu/lib/a;->a(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 721
    iget v1, p0, Lcom/slidingmenu/lib/a;->a:I

    if-eq v1, v5, :cond_4

    .line 723
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v0

    .line 724
    iget v1, p0, Lcom/slidingmenu/lib/a;->o:F

    sub-float/2addr v1, v0

    .line 725
    iput v0, p0, Lcom/slidingmenu/lib/a;->o:F

    .line 726
    invoke-virtual {p0}, Lcom/slidingmenu/lib/a;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    .line 727
    add-float v2, v0, v1

    .line 728
    invoke-direct {p0}, Lcom/slidingmenu/lib/a;->getLeftBound()I

    move-result v0

    int-to-float v0, v0

    .line 729
    invoke-direct {p0}, Lcom/slidingmenu/lib/a;->getRightBound()I

    move-result v1

    int-to-float v1, v1

    .line 730
    cmpg-float v4, v2, v0

    if-gez v4, :cond_6

    .line 736
    :goto_2
    iget v1, p0, Lcom/slidingmenu/lib/a;->o:F

    float-to-int v2, v0

    int-to-float v2, v2

    sub-float v2, v0, v2

    add-float/2addr v1, v2

    iput v1, p0, Lcom/slidingmenu/lib/a;->o:F

    .line 737
    float-to-int v1, v0

    invoke-virtual {p0}, Lcom/slidingmenu/lib/a;->getScrollY()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/slidingmenu/lib/a;->scrollTo(II)V

    .line 738
    float-to-int v0, v0

    invoke-direct {p0, v0}, Lcom/slidingmenu/lib/a;->c(I)V

    goto :goto_1

    .line 732
    :cond_6
    cmpl-float v0, v2, v1

    if-lez v0, :cond_9

    move v0, v1

    .line 733
    goto :goto_2

    .line 742
    :pswitch_3
    iget-boolean v0, p0, Lcom/slidingmenu/lib/a;->k:Z

    if-eqz v0, :cond_8

    .line 743
    iget-object v0, p0, Lcom/slidingmenu/lib/a;->b:Landroid/view/VelocityTracker;

    .line 744
    const/16 v1, 0x3e8

    iget v2, p0, Lcom/slidingmenu/lib/a;->c:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 745
    iget v1, p0, Lcom/slidingmenu/lib/a;->a:I

    invoke-static {v0, v1}, Landroid/support/v4/view/VelocityTrackerCompat;->getXVelocity(Landroid/view/VelocityTracker;I)F

    move-result v0

    float-to-int v0, v0

    .line 747
    invoke-virtual {p0}, Lcom/slidingmenu/lib/a;->getScrollX()I

    move-result v1

    .line 751
    iget v2, p0, Lcom/slidingmenu/lib/a;->g:I

    invoke-virtual {p0, v2}, Lcom/slidingmenu/lib/a;->a(I)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/slidingmenu/lib/a;->getBehindWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 752
    iget v2, p0, Lcom/slidingmenu/lib/a;->a:I

    invoke-direct {p0, p1, v2}, Lcom/slidingmenu/lib/a;->a(Landroid/view/MotionEvent;I)I

    move-result v2

    .line 753
    iget v4, p0, Lcom/slidingmenu/lib/a;->a:I

    if-eq v4, v5, :cond_7

    .line 754
    invoke-static {p1, v2}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v2

    .line 755
    iget v4, p0, Lcom/slidingmenu/lib/a;->n:F

    sub-float/2addr v2, v4

    float-to-int v2, v2

    .line 756
    invoke-direct {p0, v1, v0, v2}, Lcom/slidingmenu/lib/a;->a(FII)I

    move-result v1

    .line 757
    invoke-virtual {p0, v1, v3, v3, v0}, Lcom/slidingmenu/lib/a;->a(IZZI)V

    .line 761
    :goto_3
    iput v5, p0, Lcom/slidingmenu/lib/a;->a:I

    .line 762
    invoke-direct {p0}, Lcom/slidingmenu/lib/a;->g()V

    goto/16 :goto_1

    .line 759
    :cond_7
    iget v1, p0, Lcom/slidingmenu/lib/a;->g:I

    invoke-virtual {p0, v1, v3, v3, v0}, Lcom/slidingmenu/lib/a;->a(IZZI)V

    goto :goto_3

    .line 763
    :cond_8
    iget-boolean v0, p0, Lcom/slidingmenu/lib/a;->A:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/slidingmenu/lib/a;->s:Lcom/slidingmenu/lib/f;

    iget-object v1, p0, Lcom/slidingmenu/lib/a;->f:Landroid/view/View;

    iget v2, p0, Lcom/slidingmenu/lib/a;->g:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iget v5, p0, Lcom/slidingmenu/lib/a;->B:F

    add-float/2addr v4, v5

    invoke-virtual {v0, v1, v2, v4}, Lcom/slidingmenu/lib/f;->b(Landroid/view/View;IF)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 765
    invoke-virtual {p0, v3}, Lcom/slidingmenu/lib/a;->setCurrentItem(I)V

    .line 766
    invoke-direct {p0}, Lcom/slidingmenu/lib/a;->g()V

    goto/16 :goto_1

    .line 770
    :pswitch_4
    iget-boolean v0, p0, Lcom/slidingmenu/lib/a;->k:Z

    if-eqz v0, :cond_4

    .line 771
    iget v0, p0, Lcom/slidingmenu/lib/a;->g:I

    invoke-virtual {p0, v0, v3, v3}, Lcom/slidingmenu/lib/a;->a(IZZ)V

    .line 772
    iput v5, p0, Lcom/slidingmenu/lib/a;->a:I

    .line 773
    invoke-direct {p0}, Lcom/slidingmenu/lib/a;->g()V

    goto/16 :goto_1

    .line 777
    :pswitch_5
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v0

    .line 778
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v1

    iput v1, p0, Lcom/slidingmenu/lib/a;->o:F

    .line 779
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lcom/slidingmenu/lib/a;->a:I

    goto/16 :goto_1

    .line 783
    :pswitch_6
    invoke-direct {p0, p1}, Lcom/slidingmenu/lib/a;->c(Landroid/view/MotionEvent;)V

    .line 784
    iget v0, p0, Lcom/slidingmenu/lib/a;->a:I

    invoke-direct {p0, p1, v0}, Lcom/slidingmenu/lib/a;->a(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 785
    iget v1, p0, Lcom/slidingmenu/lib/a;->a:I

    if-eq v1, v5, :cond_4

    .line 787
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v0

    iput v0, p0, Lcom/slidingmenu/lib/a;->o:F

    goto/16 :goto_1

    :cond_9
    move v0, v2

    goto/16 :goto_2

    .line 698
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public scrollTo(II)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 818
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 819
    int-to-float v0, p1

    iput v0, p0, Lcom/slidingmenu/lib/a;->B:F

    .line 820
    iget-boolean v0, p0, Lcom/slidingmenu/lib/a;->t:Z

    if-eqz v0, :cond_0

    .line 821
    iget-object v0, p0, Lcom/slidingmenu/lib/a;->s:Lcom/slidingmenu/lib/f;

    iget-object v1, p0, Lcom/slidingmenu/lib/a;->f:Landroid/view/View;

    invoke-virtual {v0, v1, p1, p2}, Lcom/slidingmenu/lib/f;->a(Landroid/view/View;II)V

    .line 822
    :cond_0
    invoke-virtual {p0}, Lcom/slidingmenu/lib/a;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/slidingmenu/lib/SlidingMenu;

    invoke-virtual {p0}, Lcom/slidingmenu/lib/a;->getPercentOpen()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/slidingmenu/lib/SlidingMenu;->a(F)V

    .line 823
    return-void
.end method

.method public setAboveOffset(I)V
    .locals 4
    .parameter

    .prologue
    .line 487
    iget-object v0, p0, Lcom/slidingmenu/lib/a;->f:Landroid/view/View;

    iget-object v1, p0, Lcom/slidingmenu/lib/a;->f:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    iget-object v2, p0, Lcom/slidingmenu/lib/a;->f:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    iget-object v3, p0, Lcom/slidingmenu/lib/a;->f:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 489
    return-void
.end method

.method public setContent(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 438
    iget-object v0, p0, Lcom/slidingmenu/lib/a;->f:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 439
    iget-object v0, p0, Lcom/slidingmenu/lib/a;->f:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/slidingmenu/lib/a;->removeView(Landroid/view/View;)V

    .line 440
    :cond_0
    iput-object p1, p0, Lcom/slidingmenu/lib/a;->f:Landroid/view/View;

    .line 441
    iget-object v0, p0, Lcom/slidingmenu/lib/a;->f:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/slidingmenu/lib/a;->addView(Landroid/view/View;)V

    .line 442
    return-void
.end method

.method public setCurrentItem(I)V
    .locals 2
    .parameter

    .prologue
    .line 200
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/slidingmenu/lib/a;->a(IZZ)V

    .line 201
    return-void
.end method

.method public setCustomViewBehind(Lcom/slidingmenu/lib/f;)V
    .locals 0
    .parameter

    .prologue
    .line 449
    iput-object p1, p0, Lcom/slidingmenu/lib/a;->s:Lcom/slidingmenu/lib/f;

    .line 450
    return-void
.end method

.method public setDragListener(Lcom/slidingmenu/lib/p;)V
    .locals 0
    .parameter

    .prologue
    .line 1027
    iput-object p1, p0, Lcom/slidingmenu/lib/a;->y:Lcom/slidingmenu/lib/p;

    .line 1028
    return-void
.end method

.method public setOnClosedListener(Lcom/slidingmenu/lib/l;)V
    .locals 0
    .parameter

    .prologue
    .line 269
    iput-object p1, p0, Lcom/slidingmenu/lib/a;->w:Lcom/slidingmenu/lib/l;

    .line 270
    return-void
.end method

.method public setOnOpenedListener(Lcom/slidingmenu/lib/n;)V
    .locals 0
    .parameter

    .prologue
    .line 265
    iput-object p1, p0, Lcom/slidingmenu/lib/a;->x:Lcom/slidingmenu/lib/n;

    .line 266
    return-void
.end method

.method public setOnPageChangeListener(Lcom/slidingmenu/lib/d;)V
    .locals 0
    .parameter

    .prologue
    .line 253
    iput-object p1, p0, Lcom/slidingmenu/lib/a;->u:Lcom/slidingmenu/lib/d;

    .line 254
    return-void
.end method

.method public setSlidingEnabled(Z)V
    .locals 0
    .parameter

    .prologue
    .line 371
    iput-boolean p1, p0, Lcom/slidingmenu/lib/a;->t:Z

    .line 372
    return-void
.end method

.method public setTouchMode(I)V
    .locals 0
    .parameter

    .prologue
    .line 573
    iput p1, p0, Lcom/slidingmenu/lib/a;->d:I

    .line 574
    return-void
.end method
