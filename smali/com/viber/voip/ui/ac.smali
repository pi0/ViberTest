.class public abstract Lcom/viber/voip/ui/ac;
.super Lcom/viber/voip/ui/ViberListView;
.source "SourceFile"


# static fields
.field public static final h:Ljava/lang/String;


# instance fields
.field private A:Landroid/widget/AdapterView$OnItemClickListener;

.field private a:Z

.field private b:F

.field private c:F

.field private d:[F

.field private e:[I

.field private f:Ljava/lang/Runnable;

.field private g:Landroid/widget/AdapterView$OnItemLongClickListener;

.field protected i:Z

.field protected j:Z

.field protected k:Z

.field protected l:Z

.field protected m:Z

.field protected n:Z

.field protected o:Lcom/viber/voip/ui/ai;

.field protected p:I

.field protected q:I

.field protected r:I

.field protected s:F

.field t:Landroid/widget/AbsListView$RecyclerListener;

.field u:Landroid/os/Handler;

.field protected v:Landroid/widget/AdapterView$OnItemLongClickListener;

.field protected w:Landroid/view/View$OnCreateContextMenuListener;

.field protected x:Landroid/widget/AdapterView$OnItemClickListener;

.field private z:Landroid/view/View$OnCreateContextMenuListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-class v0, Lcom/viber/voip/ui/ac;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/ui/ac;->h:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    const/high16 v1, -0x4080

    .line 99
    invoke-direct {p0, p1}, Lcom/viber/voip/ui/ViberListView;-><init>(Landroid/content/Context;)V

    .line 71
    const v0, 0x111111

    iput v0, p0, Lcom/viber/voip/ui/ac;->r:I

    .line 73
    iput v1, p0, Lcom/viber/voip/ui/ac;->b:F

    .line 74
    iput v1, p0, Lcom/viber/voip/ui/ac;->c:F

    .line 76
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/viber/voip/ui/ac;->d:[F

    .line 490
    new-instance v0, Lcom/viber/voip/ui/ad;

    invoke-direct {v0, p0}, Lcom/viber/voip/ui/ad;-><init>(Lcom/viber/voip/ui/ac;)V

    iput-object v0, p0, Lcom/viber/voip/ui/ac;->t:Landroid/widget/AbsListView$RecyclerListener;

    .line 604
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/ui/ac;->u:Landroid/os/Handler;

    .line 625
    new-instance v0, Lcom/viber/voip/ui/ae;

    invoke-direct {v0, p0}, Lcom/viber/voip/ui/ae;-><init>(Lcom/viber/voip/ui/ac;)V

    iput-object v0, p0, Lcom/viber/voip/ui/ac;->f:Ljava/lang/Runnable;

    .line 686
    new-instance v0, Lcom/viber/voip/ui/af;

    invoke-direct {v0, p0}, Lcom/viber/voip/ui/af;-><init>(Lcom/viber/voip/ui/ac;)V

    iput-object v0, p0, Lcom/viber/voip/ui/ac;->g:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 705
    new-instance v0, Lcom/viber/voip/ui/ag;

    invoke-direct {v0, p0}, Lcom/viber/voip/ui/ag;-><init>(Lcom/viber/voip/ui/ac;)V

    iput-object v0, p0, Lcom/viber/voip/ui/ac;->z:Landroid/view/View$OnCreateContextMenuListener;

    .line 723
    new-instance v0, Lcom/viber/voip/ui/ah;

    invoke-direct {v0, p0}, Lcom/viber/voip/ui/ah;-><init>(Lcom/viber/voip/ui/ac;)V

    iput-object v0, p0, Lcom/viber/voip/ui/ac;->A:Landroid/widget/AdapterView$OnItemClickListener;

    .line 100
    invoke-direct {p0}, Lcom/viber/voip/ui/ac;->a()V

    .line 101
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/high16 v1, -0x4080

    .line 94
    invoke-direct {p0, p1, p2}, Lcom/viber/voip/ui/ViberListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 71
    const v0, 0x111111

    iput v0, p0, Lcom/viber/voip/ui/ac;->r:I

    .line 73
    iput v1, p0, Lcom/viber/voip/ui/ac;->b:F

    .line 74
    iput v1, p0, Lcom/viber/voip/ui/ac;->c:F

    .line 76
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/viber/voip/ui/ac;->d:[F

    .line 490
    new-instance v0, Lcom/viber/voip/ui/ad;

    invoke-direct {v0, p0}, Lcom/viber/voip/ui/ad;-><init>(Lcom/viber/voip/ui/ac;)V

    iput-object v0, p0, Lcom/viber/voip/ui/ac;->t:Landroid/widget/AbsListView$RecyclerListener;

    .line 604
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/ui/ac;->u:Landroid/os/Handler;

    .line 625
    new-instance v0, Lcom/viber/voip/ui/ae;

    invoke-direct {v0, p0}, Lcom/viber/voip/ui/ae;-><init>(Lcom/viber/voip/ui/ac;)V

    iput-object v0, p0, Lcom/viber/voip/ui/ac;->f:Ljava/lang/Runnable;

    .line 686
    new-instance v0, Lcom/viber/voip/ui/af;

    invoke-direct {v0, p0}, Lcom/viber/voip/ui/af;-><init>(Lcom/viber/voip/ui/ac;)V

    iput-object v0, p0, Lcom/viber/voip/ui/ac;->g:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 705
    new-instance v0, Lcom/viber/voip/ui/ag;

    invoke-direct {v0, p0}, Lcom/viber/voip/ui/ag;-><init>(Lcom/viber/voip/ui/ac;)V

    iput-object v0, p0, Lcom/viber/voip/ui/ac;->z:Landroid/view/View$OnCreateContextMenuListener;

    .line 723
    new-instance v0, Lcom/viber/voip/ui/ah;

    invoke-direct {v0, p0}, Lcom/viber/voip/ui/ah;-><init>(Lcom/viber/voip/ui/ac;)V

    iput-object v0, p0, Lcom/viber/voip/ui/ac;->A:Landroid/widget/AdapterView$OnItemClickListener;

    .line 95
    invoke-direct {p0}, Lcom/viber/voip/ui/ac;->a()V

    .line 96
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v1, -0x4080

    .line 89
    invoke-direct {p0, p1, p2, p3}, Lcom/viber/voip/ui/ViberListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 71
    const v0, 0x111111

    iput v0, p0, Lcom/viber/voip/ui/ac;->r:I

    .line 73
    iput v1, p0, Lcom/viber/voip/ui/ac;->b:F

    .line 74
    iput v1, p0, Lcom/viber/voip/ui/ac;->c:F

    .line 76
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/viber/voip/ui/ac;->d:[F

    .line 490
    new-instance v0, Lcom/viber/voip/ui/ad;

    invoke-direct {v0, p0}, Lcom/viber/voip/ui/ad;-><init>(Lcom/viber/voip/ui/ac;)V

    iput-object v0, p0, Lcom/viber/voip/ui/ac;->t:Landroid/widget/AbsListView$RecyclerListener;

    .line 604
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/ui/ac;->u:Landroid/os/Handler;

    .line 625
    new-instance v0, Lcom/viber/voip/ui/ae;

    invoke-direct {v0, p0}, Lcom/viber/voip/ui/ae;-><init>(Lcom/viber/voip/ui/ac;)V

    iput-object v0, p0, Lcom/viber/voip/ui/ac;->f:Ljava/lang/Runnable;

    .line 686
    new-instance v0, Lcom/viber/voip/ui/af;

    invoke-direct {v0, p0}, Lcom/viber/voip/ui/af;-><init>(Lcom/viber/voip/ui/ac;)V

    iput-object v0, p0, Lcom/viber/voip/ui/ac;->g:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 705
    new-instance v0, Lcom/viber/voip/ui/ag;

    invoke-direct {v0, p0}, Lcom/viber/voip/ui/ag;-><init>(Lcom/viber/voip/ui/ac;)V

    iput-object v0, p0, Lcom/viber/voip/ui/ac;->z:Landroid/view/View$OnCreateContextMenuListener;

    .line 723
    new-instance v0, Lcom/viber/voip/ui/ah;

    invoke-direct {v0, p0}, Lcom/viber/voip/ui/ah;-><init>(Lcom/viber/voip/ui/ac;)V

    iput-object v0, p0, Lcom/viber/voip/ui/ac;->A:Landroid/widget/AdapterView$OnItemClickListener;

    .line 90
    invoke-direct {p0}, Lcom/viber/voip/ui/ac;->a()V

    .line 91
    return-void
.end method

.method private a([F)F
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 394
    move v1, v0

    move v2, v3

    .line 397
    :goto_0
    const/4 v4, 0x3

    if-ge v1, v4, :cond_1

    .line 398
    aget v4, p1, v1

    add-float/2addr v2, v4

    .line 399
    aget v4, p1, v1

    cmpl-float v4, v4, v3

    if-eqz v4, :cond_0

    .line 400
    add-int/lit8 v0, v0, 0x1

    .line 397
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 404
    :cond_1
    int-to-float v0, v0

    div-float v0, v2, v0

    return v0
.end method

.method private a()V
    .locals 1

    .prologue
    .line 104
    invoke-static {}, Lcom/viber/voip/util/gl;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/viber/voip/ui/ac;->setOverScrollMode(I)V

    .line 108
    :cond_0
    const/high16 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/viber/voip/ui/ac;->setDescendantFocusability(I)V

    .line 109
    invoke-virtual {p0}, Lcom/viber/voip/ui/ac;->c()Lcom/viber/voip/ui/ai;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/ui/ac;->o:Lcom/viber/voip/ui/ai;

    .line 111
    return-void
.end method

.method private declared-synchronized a(F)V
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 329
    monitor-enter p0

    move v1, v0

    .line 330
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/viber/voip/ui/ac;->getLastVisiblePosition()I

    move-result v2

    invoke-virtual {p0}, Lcom/viber/voip/ui/ac;->getFirstVisiblePosition()I

    move-result v3

    sub-int/2addr v2, v3

    if-gt v1, v2, :cond_1

    .line 331
    invoke-virtual {p0, v1}, Lcom/viber/voip/ui/ac;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 332
    if-eqz v2, :cond_0

    .line 333
    float-to-int v3, p1

    int-to-float v3, v3

    invoke-static {v2, v3}, Lcom/nineoldandroids/view/ViewHelper;->setTranslationY(Landroid/view/View;F)V

    .line 334
    invoke-static {v2}, Lcom/nineoldandroids/view/ViewHelper;->getY(Landroid/view/View;)F

    move-result v3

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v3

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    .line 335
    add-int/lit8 v0, v0, 0x1

    .line 330
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 339
    :cond_1
    iput v0, p0, Lcom/viber/voip/ui/ac;->q:I

    .line 340
    iput p1, p0, Lcom/viber/voip/ui/ac;->s:F

    .line 341
    invoke-virtual {p0}, Lcom/viber/voip/ui/ac;->invalidate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 342
    monitor-exit p0

    return-void

    .line 329
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private a(Landroid/view/MotionEvent;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x2

    .line 414
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_0

    .line 415
    iget-object v1, p0, Lcom/viber/voip/ui/ac;->d:[F

    iget-object v2, p0, Lcom/viber/voip/ui/ac;->d:[F

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    aput v2, v1, v0

    .line 414
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 417
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    .line 418
    iget-object v1, p0, Lcom/viber/voip/ui/ac;->d:[F

    iget v2, p0, Lcom/viber/voip/ui/ac;->s:F

    sub-float/2addr v0, v2

    aput v0, v1, v4

    .line 419
    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 309
    iget-object v0, p0, Lcom/viber/voip/ui/ac;->o:Lcom/viber/voip/ui/ai;

    iget-object v0, v0, Lcom/viber/voip/ui/ai;->e:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/viber/voip/ui/ac;->o:Lcom/viber/voip/ui/ai;

    iget v0, v0, Lcom/viber/voip/ui/ai;->h:I

    const/high16 v1, 0x4000

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 312
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 315
    iget-object v2, p0, Lcom/viber/voip/ui/ac;->o:Lcom/viber/voip/ui/ai;

    iget-object v2, v2, Lcom/viber/voip/ui/ai;->e:Landroid/view/View;

    invoke-virtual {v2, v0, v1}, Landroid/view/View;->measure(II)V

    .line 316
    iget-object v0, p0, Lcom/viber/voip/ui/ac;->o:Lcom/viber/voip/ui/ai;

    iget-object v0, v0, Lcom/viber/voip/ui/ai;->e:Landroid/view/View;

    iget-object v1, p0, Lcom/viber/voip/ui/ac;->o:Lcom/viber/voip/ui/ai;

    iget-object v1, v1, Lcom/viber/voip/ui/ai;->e:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcom/viber/voip/ui/ac;->o:Lcom/viber/voip/ui/ai;

    iget-object v2, v2, Lcom/viber/voip/ui/ai;->e:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 320
    :cond_0
    return-void
.end method

.method private b()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 372
    invoke-direct {p0}, Lcom/viber/voip/ui/ac;->getOverscrollDirection()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/ui/ac;->b(I)V

    .line 373
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/high16 v5, 0x3f80

    iget-object v6, p0, Lcom/viber/voip/ui/ac;->d:[F

    const/4 v7, 0x2

    aget v6, v6, v7

    move v7, v4

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    .line 377
    invoke-virtual {p0}, Lcom/viber/voip/ui/ac;->s()V

    .line 378
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/viber/voip/ui/ac;->a:Z

    .line 379
    invoke-virtual {p0, v0}, Lcom/viber/voip/ui/ac;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 380
    invoke-direct {p0, v4}, Lcom/viber/voip/ui/ac;->setOverscrolled(Z)V

    .line 381
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 382
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/viber/voip/ui/ac;->setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V

    .line 383
    return-void
.end method

.method private b(Landroid/view/MotionEvent;)V
    .locals 5
    .parameter

    .prologue
    const/high16 v4, 0x40a0

    .line 515
    invoke-virtual {p0}, Lcom/viber/voip/ui/ac;->u()Z

    move-result v0

    if-nez v0, :cond_1

    .line 516
    invoke-direct {p0}, Lcom/viber/voip/ui/ac;->e()Z

    move-result v0

    .line 517
    invoke-virtual {p0}, Lcom/viber/voip/ui/ac;->t()Z

    move-result v1

    .line 518
    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    .line 519
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 538
    :cond_1
    :goto_0
    :pswitch_0
    return-void

    .line 521
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/viber/voip/ui/ac;->c:F

    goto :goto_0

    .line 524
    :pswitch_2
    iget v2, p0, Lcom/viber/voip/ui/ac;->c:F

    const/high16 v3, -0x4080

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2

    .line 525
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Lcom/viber/voip/ui/ac;->c:F

    .line 527
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v3, p0, Lcom/viber/voip/ui/ac;->c:F

    sub-float/2addr v2, v3

    .line 528
    if-eqz v0, :cond_3

    cmpl-float v0, v2, v4

    if-lez v0, :cond_3

    iget-boolean v0, p0, Lcom/viber/voip/ui/ac;->n:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/viber/voip/ui/ac;->m:Z

    if-nez v0, :cond_4

    :cond_3
    if-eqz v1, :cond_5

    neg-float v0, v2

    cmpl-float v0, v0, v4

    if-lez v0, :cond_5

    iget-boolean v0, p0, Lcom/viber/voip/ui/ac;->m:Z

    if-eqz v0, :cond_5

    .line 529
    :cond_4
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/viber/voip/ui/ac;->setOverscrolled(Z)V

    goto :goto_0

    .line 531
    :cond_5
    iget-boolean v0, p0, Lcom/viber/voip/ui/ac;->i:Z

    if-eqz v0, :cond_1

    .line 532
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/viber/voip/ui/ac;->setOverscrolled(Z)V

    goto :goto_0

    .line 519
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private b(F)Z
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 346
    iget-object v0, p0, Lcom/viber/voip/ui/ac;->d:[F

    invoke-direct {p0, v0}, Lcom/viber/voip/ui/ac;->a([F)F

    move-result v0

    .line 347
    sub-float/2addr v0, p1

    .line 349
    cmpg-float v1, v0, v3

    if-gez v1, :cond_0

    invoke-virtual {p0}, Lcom/viber/voip/ui/ac;->t()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 350
    const v1, 0x101010

    invoke-direct {p0, v1}, Lcom/viber/voip/ui/ac;->setOverscrollDirection(I)V

    .line 351
    :cond_0
    cmpl-float v1, v0, v3

    if-lez v1, :cond_1

    invoke-direct {p0}, Lcom/viber/voip/ui/ac;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 352
    const v1, 0x10101

    invoke-direct {p0, v1}, Lcom/viber/voip/ui/ac;->setOverscrollDirection(I)V

    .line 357
    :cond_1
    cmpl-float v1, v0, v3

    if-lez v1, :cond_2

    invoke-virtual {p0}, Lcom/viber/voip/ui/ac;->t()Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    cmpg-float v1, v0, v3

    if-gez v1, :cond_4

    invoke-direct {p0}, Lcom/viber/voip/ui/ac;->e()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    invoke-virtual {p0}, Lcom/viber/voip/ui/ac;->t()Z

    move-result v1

    invoke-direct {p0}, Lcom/viber/voip/ui/ac;->e()Z

    move-result v2

    if-eq v1, v2, :cond_4

    .line 359
    invoke-direct {p0}, Lcom/viber/voip/ui/ac;->b()V

    .line 360
    invoke-direct {p0}, Lcom/viber/voip/ui/ac;->getOverscrollDirection()I

    move-result v0

    invoke-virtual {p0, v0, v3}, Lcom/viber/voip/ui/ac;->a(IF)F

    move-result v0

    invoke-direct {p0, v0}, Lcom/viber/voip/ui/ac;->a(F)V

    .line 361
    const/4 v0, 0x0

    .line 364
    :goto_0
    return v0

    .line 363
    :cond_4
    invoke-direct {p0}, Lcom/viber/voip/ui/ac;->getOverscrollDirection()I

    move-result v1

    invoke-virtual {p0, v1, v0}, Lcom/viber/voip/ui/ac;->a(IF)F

    move-result v0

    invoke-direct {p0, v0}, Lcom/viber/voip/ui/ac;->a(F)V

    .line 364
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private d()V
    .locals 3

    .prologue
    .line 408
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 409
    iget-object v1, p0, Lcom/viber/voip/ui/ac;->d:[F

    const/4 v2, 0x0

    aput v2, v1, v0

    .line 408
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 411
    :cond_0
    return-void
.end method

.method private e()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 430
    invoke-virtual {p0}, Lcom/viber/voip/ui/ac;->getCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 435
    :cond_0
    :goto_0
    return v0

    .line 432
    :cond_1
    invoke-virtual {p0}, Lcom/viber/voip/ui/ac;->getFirstVisiblePosition()I

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0, v1}, Lcom/viber/voip/ui/ac;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 433
    invoke-virtual {p0, v1}, Lcom/viber/voip/ui/ac;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    if-gez v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 435
    goto :goto_0
.end method

.method private f()V
    .locals 3

    .prologue
    .line 501
    iget-object v0, p0, Lcom/viber/voip/ui/ac;->t:Landroid/widget/AbsListView$RecyclerListener;

    invoke-virtual {p0, v0}, Lcom/viber/voip/ui/ac;->setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V

    .line 502
    invoke-virtual {p0}, Lcom/viber/voip/ui/ac;->getLastVisiblePosition()I

    move-result v0

    invoke-virtual {p0}, Lcom/viber/voip/ui/ac;->getFirstVisiblePosition()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/viber/voip/ui/ac;->e:[I

    .line 503
    const/4 v0, 0x0

    .line 504
    :goto_0
    invoke-virtual {p0}, Lcom/viber/voip/ui/ac;->getLastVisiblePosition()I

    move-result v1

    invoke-virtual {p0}, Lcom/viber/voip/ui/ac;->getFirstVisiblePosition()I

    move-result v2

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_1

    .line 505
    invoke-virtual {p0, v0}, Lcom/viber/voip/ui/ac;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 506
    iget-object v1, p0, Lcom/viber/voip/ui/ac;->e:[I

    invoke-virtual {p0, v0}, Lcom/viber/voip/ui/ac;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    aput v2, v1, v0

    .line 504
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 509
    :cond_1
    return-void
.end method

.method private getOverscrollDirection()I
    .locals 1

    .prologue
    .line 386
    iget v0, p0, Lcom/viber/voip/ui/ac;->r:I

    return v0
.end method

.method private setOverscrollDirection(I)V
    .locals 0
    .parameter

    .prologue
    .line 390
    iput p1, p0, Lcom/viber/voip/ui/ac;->r:I

    .line 391
    return-void
.end method

.method private setOverscrolled(Z)V
    .locals 8
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 131
    iget-boolean v0, p0, Lcom/viber/voip/ui/ac;->i:Z

    if-nez v0, :cond_0

    if-ne p1, v4, :cond_0

    .line 132
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v7, 0x0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    .line 136
    iput-boolean v4, p0, Lcom/viber/voip/ui/ac;->a:Z

    .line 137
    invoke-virtual {p0, v0}, Lcom/viber/voip/ui/ac;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 138
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 141
    :cond_0
    iput-boolean p1, p0, Lcom/viber/voip/ui/ac;->i:Z

    .line 142
    return-void
.end method


# virtual methods
.method protected abstract a(IF)F
.end method

.method protected a(II)V
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v9, -0x1

    const/4 v8, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 236
    iget-object v0, p0, Lcom/viber/voip/ui/ac;->o:Lcom/viber/voip/ui/ai;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/ui/ac;->o:Lcom/viber/voip/ui/ai;

    iget-object v0, v0, Lcom/viber/voip/ui/ai;->e:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/viber/voip/ui/ac;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/viber/voip/ui/ac;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 302
    :cond_0
    :goto_0
    return-void

    .line 241
    :cond_1
    invoke-virtual {p0, p2}, Lcom/viber/voip/ui/ac;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 242
    invoke-virtual {p0}, Lcom/viber/voip/ui/ac;->getChildCount()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_8

    move v0, p2

    .line 243
    :goto_1
    invoke-virtual {p0, v0}, Lcom/viber/voip/ui/ac;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 247
    iget v1, p0, Lcom/viber/voip/ui/ac;->p:I

    if-eq v1, p1, :cond_9

    move v1, v2

    :goto_2
    iput-boolean v1, p0, Lcom/viber/voip/ui/ac;->l:Z

    .line 249
    iget-boolean v1, p0, Lcom/viber/voip/ui/ac;->l:Z

    if-eqz v1, :cond_2

    .line 250
    iput p1, p0, Lcom/viber/voip/ui/ac;->p:I

    .line 251
    invoke-virtual {p0, p2, v4}, Lcom/viber/voip/ui/ac;->a(ILandroid/view/View;)V

    .line 254
    :cond_2
    if-eqz v4, :cond_0

    if-eqz v5, :cond_0

    .line 257
    new-instance v6, Lcom/viber/voip/ui/ak;

    invoke-virtual {p0}, Lcom/viber/voip/ui/ac;->getHeaderTag()I

    move-result v1

    if-ne v1, v9, :cond_a

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    :goto_3
    invoke-direct {v6, v1}, Lcom/viber/voip/ui/ak;-><init>(Ljava/lang/Object;)V

    .line 261
    new-instance v7, Lcom/viber/voip/ui/ak;

    invoke-virtual {p0}, Lcom/viber/voip/ui/ac;->getHeaderTag()I

    move-result v1

    if-ne v1, v9, :cond_b

    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    :goto_4
    invoke-direct {v7, v1}, Lcom/viber/voip/ui/ak;-><init>(Ljava/lang/Object;)V

    .line 265
    iput-boolean v2, p0, Lcom/viber/voip/ui/ac;->j:Z

    .line 266
    if-nez p1, :cond_3

    invoke-static {v6}, Lcom/viber/voip/ui/ak;->a(Lcom/viber/voip/ui/ak;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 267
    iput-boolean v3, p0, Lcom/viber/voip/ui/ac;->j:Z

    .line 271
    :cond_3
    invoke-static {v6}, Lcom/viber/voip/ui/ak;->b(Lcom/viber/voip/ui/ak;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 272
    iput-boolean v3, p0, Lcom/viber/voip/ui/ac;->j:Z

    .line 275
    :cond_4
    invoke-virtual {v7}, Lcom/viber/voip/ui/ak;->a()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-virtual {p0, v0}, Lcom/viber/voip/ui/ac;->d(I)Z

    move-result v0

    if-eq v0, v2, :cond_c

    .line 276
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-static {v4}, Lcom/nineoldandroids/view/ViewHelper;->getY(Landroid/view/View;)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/viber/voip/ui/ac;->getDividerHeight()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/viber/voip/ui/ac;->o:Lcom/viber/voip/ui/ai;

    iget-object v1, v1, Lcom/viber/voip/ui/ai;->e:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 284
    :goto_5
    invoke-virtual {v6}, Lcom/viber/voip/ui/ak;->a()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-static {v4}, Lcom/nineoldandroids/view/ViewHelper;->getY(Landroid/view/View;)F

    move-result v1

    iget-object v5, p0, Lcom/viber/voip/ui/ac;->o:Lcom/viber/voip/ui/ai;

    iget v5, v5, Lcom/viber/voip/ui/ai;->d:I

    int-to-float v5, v5

    add-float/2addr v1, v5

    cmpl-float v1, v1, v8

    if-lez v1, :cond_e

    .line 285
    invoke-static {v4}, Lcom/nineoldandroids/view/ViewHelper;->getY(Landroid/view/View;)F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lcom/viber/voip/ui/ac;->o:Lcom/viber/voip/ui/ai;

    iget v1, v1, Lcom/viber/voip/ui/ai;->d:I

    add-int/2addr v0, v1

    .line 292
    :cond_5
    :goto_6
    iget-object v1, p0, Lcom/viber/voip/ui/ac;->o:Lcom/viber/voip/ui/ai;

    invoke-virtual {v1, v0}, Lcom/viber/voip/ui/ai;->b(I)V

    .line 293
    iget-object v0, p0, Lcom/viber/voip/ui/ac;->o:Lcom/viber/voip/ui/ai;

    iget-boolean v1, p0, Lcom/viber/voip/ui/ac;->j:Z

    invoke-virtual {v0, v1}, Lcom/viber/voip/ui/ai;->a(Z)V

    .line 295
    iget-object v0, p0, Lcom/viber/voip/ui/ac;->o:Lcom/viber/voip/ui/ai;

    iget v0, v0, Lcom/viber/voip/ui/ai;->i:I

    if-nez v0, :cond_f

    iget-boolean v0, p0, Lcom/viber/voip/ui/ac;->j:Z

    if-ne v0, v2, :cond_f

    invoke-static {v4}, Lcom/nineoldandroids/view/ViewHelper;->getY(Landroid/view/View;)F

    move-result v0

    cmpg-float v0, v0, v8

    if-ltz v0, :cond_6

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v0

    if-gez v0, :cond_f

    :cond_6
    invoke-static {v6}, Lcom/viber/voip/ui/ak;->a(Lcom/viber/voip/ui/ak;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {v7}, Lcom/viber/voip/ui/ak;->a(Lcom/viber/voip/ui/ak;)Z

    move-result v0

    if-eqz v0, :cond_f

    :cond_7
    :goto_7
    iput-boolean v2, p0, Lcom/viber/voip/ui/ac;->k:Z

    .line 300
    invoke-virtual {p0, v6}, Lcom/viber/voip/ui/ac;->a(Lcom/viber/voip/ui/ak;)V

    .line 301
    invoke-virtual {p0}, Lcom/viber/voip/ui/ac;->r()V

    goto/16 :goto_0

    .line 242
    :cond_8
    add-int/lit8 v0, p2, 0x1

    goto/16 :goto_1

    :cond_9
    move v1, v3

    .line 247
    goto/16 :goto_2

    .line 257
    :cond_a
    invoke-virtual {p0}, Lcom/viber/voip/ui/ac;->getHeaderTag()I

    move-result v1

    invoke-virtual {v4, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_3

    .line 261
    :cond_b
    invoke-virtual {p0}, Lcom/viber/voip/ui/ac;->getHeaderTag()I

    move-result v1

    invoke-virtual {v5, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_4

    .line 278
    :cond_c
    invoke-virtual {v6}, Lcom/viber/voip/ui/ak;->a()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-static {v4}, Lcom/nineoldandroids/view/ViewHelper;->getY(Landroid/view/View;)F

    move-result v0

    float-to-int v0, v0

    if-lez v0, :cond_d

    .line 279
    invoke-static {v4}, Lcom/nineoldandroids/view/ViewHelper;->getY(Landroid/view/View;)F

    move-result v0

    float-to-int v0, v0

    goto/16 :goto_5

    :cond_d
    move v0, v3

    .line 281
    goto/16 :goto_5

    .line 288
    :cond_e
    if-lez v0, :cond_5

    move v0, v3

    .line 289
    goto :goto_6

    :cond_f
    move v2, v3

    .line 295
    goto :goto_7
.end method

.method protected abstract a(ILandroid/view/View;)V
.end method

.method public abstract a(Lcom/viber/voip/ui/ak;)V
.end method

.method protected abstract b(I)V
.end method

.method protected abstract c()Lcom/viber/voip/ui/ai;
.end method

.method protected d(I)Z
    .locals 1
    .parameter

    .prologue
    .line 451
    invoke-virtual {p0}, Lcom/viber/voip/ui/ac;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    .line 452
    const/4 v0, 0x1

    .line 454
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
    .line 583
    invoke-super {p0, p1}, Lcom/viber/voip/ui/ViberListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 584
    iget-boolean v0, p0, Lcom/viber/voip/ui/ac;->j:Z

    if-eqz v0, :cond_0

    .line 585
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 586
    iget-object v1, p0, Lcom/viber/voip/ui/ac;->o:Lcom/viber/voip/ui/ai;

    iget v1, v1, Lcom/viber/voip/ui/ai;->g:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/viber/voip/ui/ac;->o:Lcom/viber/voip/ui/ai;

    iget v2, v2, Lcom/viber/voip/ui/ai;->i:I

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 588
    iget-object v1, p0, Lcom/viber/voip/ui/ac;->o:Lcom/viber/voip/ui/ai;

    iget-object v1, v1, Lcom/viber/voip/ui/ai;->e:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 589
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 591
    :cond_0
    return-void
.end method

.method protected e(I)V
    .locals 2
    .parameter

    .prologue
    .line 643
    iget v0, p0, Lcom/viber/voip/ui/ac;->s:F

    int-to-float v1, p1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/viber/voip/ui/ac;->s:F

    .line 644
    return-void
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 1

    .prologue
    .line 473
    const/4 v0, 0x0

    return v0
.end method

.method protected getExtendedCreateContextMenuItemClickListener()Landroid/view/View$OnCreateContextMenuListener;
    .locals 1

    .prologue
    .line 753
    iget-object v0, p0, Lcom/viber/voip/ui/ac;->z:Landroid/view/View$OnCreateContextMenuListener;

    return-object v0
.end method

.method protected getExtendedItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1

    .prologue
    .line 749
    iget-object v0, p0, Lcom/viber/voip/ui/ac;->A:Landroid/widget/AdapterView$OnItemClickListener;

    return-object v0
.end method

.method protected getExtendedItemLongClickListener()Landroid/widget/AdapterView$OnItemLongClickListener;
    .locals 1

    .prologue
    .line 745
    iget-object v0, p0, Lcom/viber/voip/ui/ac;->g:Landroid/widget/AdapterView$OnItemLongClickListener;

    return-object v0
.end method

.method protected abstract getHeaderTag()I
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 1

    .prologue
    .line 468
    const/4 v0, 0x0

    return v0
.end method

.method protected i()Z
    .locals 1

    .prologue
    .line 658
    invoke-virtual {p0}, Lcom/viber/voip/ui/ac;->u()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter

    .prologue
    .line 634
    iget-boolean v0, p0, Lcom/viber/voip/ui/ac;->i:Z

    if-eqz v0, :cond_0

    .line 635
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/viber/voip/ui/ac;->a(F)V

    .line 636
    invoke-virtual {p0}, Lcom/viber/voip/ui/ac;->s()V

    .line 637
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/viber/voip/ui/ac;->setOverscrolled(Z)V

    .line 639
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter

    .prologue
    .line 599
    invoke-virtual {p0}, Lcom/viber/voip/ui/ac;->getFirstVisiblePosition()I

    move-result v0

    iget v1, p0, Lcom/viber/voip/ui/ac;->q:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/viber/voip/ui/ac;->q:I

    invoke-virtual {p0, v0, v1}, Lcom/viber/voip/ui/ac;->a(II)V

    .line 601
    invoke-super {p0, p1}, Lcom/viber/voip/ui/ViberListView;->onDraw(Landroid/graphics/Canvas;)V

    .line 602
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 478
    invoke-super/range {p0 .. p5}, Lcom/viber/voip/ui/ViberListView;->onLayout(ZIIII)V

    .line 479
    iget-object v0, p0, Lcom/viber/voip/ui/ac;->o:Lcom/viber/voip/ui/ai;

    if-eqz v0, :cond_0

    .line 480
    iget-object v0, p0, Lcom/viber/voip/ui/ac;->o:Lcom/viber/voip/ui/ai;

    invoke-virtual {p0}, Lcom/viber/voip/ui/ac;->getPaddingLeft()I

    move-result v1

    iput v1, v0, Lcom/viber/voip/ui/ai;->g:I

    .line 481
    iget-object v0, p0, Lcom/viber/voip/ui/ac;->o:Lcom/viber/voip/ui/ai;

    sub-int v1, p4, p2

    iget-object v2, p0, Lcom/viber/voip/ui/ac;->o:Lcom/viber/voip/ui/ai;

    iget v2, v2, Lcom/viber/voip/ui/ai;->g:I

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/viber/voip/ui/ac;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/viber/voip/ui/ai;->h:I

    .line 484
    :cond_0
    invoke-virtual {p0}, Lcom/viber/voip/ui/ac;->u()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 485
    iget v0, p0, Lcom/viber/voip/ui/ac;->s:F

    invoke-direct {p0, v0}, Lcom/viber/voip/ui/ac;->a(F)V

    .line 487
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter

    .prologue
    const/high16 v3, -0x4080

    const/4 v0, 0x0

    .line 543
    iget-boolean v1, p0, Lcom/viber/voip/ui/ac;->a:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 544
    iput-boolean v0, p0, Lcom/viber/voip/ui/ac;->a:Z

    .line 545
    invoke-super {p0, p1}, Lcom/viber/voip/ui/ViberListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 578
    :goto_0
    return v0

    .line 548
    :cond_0
    invoke-direct {p0, p1}, Lcom/viber/voip/ui/ac;->b(Landroid/view/MotionEvent;)V

    .line 550
    invoke-virtual {p0}, Lcom/viber/voip/ui/ac;->u()Z

    move-result v1

    if-nez v1, :cond_1

    .line 551
    iput v0, p0, Lcom/viber/voip/ui/ac;->q:I

    .line 552
    invoke-super {p0, p1}, Lcom/viber/voip/ui/ViberListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 555
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 557
    :pswitch_0
    iput v0, p0, Lcom/viber/voip/ui/ac;->q:I

    .line 558
    invoke-super {p0, p1}, Lcom/viber/voip/ui/ViberListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 561
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/viber/voip/ui/ac;->a(Landroid/view/MotionEvent;)V

    .line 562
    iget v1, p0, Lcom/viber/voip/ui/ac;->b:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_2

    .line 563
    invoke-direct {p0}, Lcom/viber/voip/ui/ac;->f()V

    .line 564
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lcom/viber/voip/ui/ac;->b:F

    .line 566
    :cond_2
    iget v1, p0, Lcom/viber/voip/ui/ac;->b:F

    invoke-direct {p0, v1}, Lcom/viber/voip/ui/ac;->b(F)Z

    goto :goto_0

    .line 570
    :pswitch_2
    iput v3, p0, Lcom/viber/voip/ui/ac;->b:F

    .line 571
    iput v0, p0, Lcom/viber/voip/ui/ac;->q:I

    .line 572
    iput v3, p0, Lcom/viber/voip/ui/ac;->c:F

    .line 573
    invoke-direct {p0}, Lcom/viber/voip/ui/ac;->d()V

    .line 574
    invoke-direct {p0}, Lcom/viber/voip/ui/ac;->getOverscrollDirection()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/ui/ac;->b(I)V

    .line 575
    invoke-super {p0, p1}, Lcom/viber/voip/ui/ViberListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 555
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public p()V
    .locals 1

    .prologue
    .line 459
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/viber/voip/ui/ac;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 460
    return-void
.end method

.method protected r()V
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/viber/voip/ui/ac;->o:Lcom/viber/voip/ui/ai;

    iget-object v0, v0, Lcom/viber/voip/ui/ai;->e:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/viber/voip/ui/ac;->a(Landroid/view/View;)V

    .line 306
    return-void
.end method

.method public s()V
    .locals 1

    .prologue
    .line 422
    const/4 v0, 0x0

    iput v0, p0, Lcom/viber/voip/ui/ac;->s:F

    .line 423
    iget v0, p0, Lcom/viber/voip/ui/ac;->s:F

    invoke-direct {p0, v0}, Lcom/viber/voip/ui/ac;->a(F)V

    .line 424
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/viber/voip/ui/ac;->setOverscrolled(Z)V

    .line 425
    const/high16 v0, -0x4080

    iput v0, p0, Lcom/viber/voip/ui/ac;->b:F

    .line 426
    invoke-direct {p0}, Lcom/viber/voip/ui/ac;->d()V

    .line 427
    return-void
.end method

.method public setEnablSmoothOverscroll(Z)V
    .locals 0
    .parameter

    .prologue
    .line 763
    iput-boolean p1, p0, Lcom/viber/voip/ui/ac;->m:Z

    .line 764
    return-void
.end method

.method public setEnablePull(Z)V
    .locals 0
    .parameter

    .prologue
    .line 767
    iput-boolean p1, p0, Lcom/viber/voip/ui/ac;->n:Z

    .line 768
    return-void
.end method

.method public setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V
    .locals 1
    .parameter

    .prologue
    .line 673
    iput-object p1, p0, Lcom/viber/voip/ui/ac;->w:Landroid/view/View$OnCreateContextMenuListener;

    .line 674
    invoke-virtual {p0}, Lcom/viber/voip/ui/ac;->getExtendedCreateContextMenuItemClickListener()Landroid/view/View$OnCreateContextMenuListener;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/viber/voip/ui/ViberListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 675
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 1
    .parameter

    .prologue
    .line 679
    iput-object p1, p0, Lcom/viber/voip/ui/ac;->x:Landroid/widget/AdapterView$OnItemClickListener;

    .line 680
    invoke-virtual {p0}, Lcom/viber/voip/ui/ac;->getExtendedItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/viber/voip/ui/ViberListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 681
    return-void
.end method

.method public setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V
    .locals 1
    .parameter

    .prologue
    .line 667
    iput-object p1, p0, Lcom/viber/voip/ui/ac;->v:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 668
    invoke-virtual {p0}, Lcom/viber/voip/ui/ac;->getExtendedItemLongClickListener()Landroid/widget/AdapterView$OnItemLongClickListener;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/viber/voip/ui/ViberListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 669
    return-void
.end method

.method protected t()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 440
    invoke-virtual {p0}, Lcom/viber/voip/ui/ac;->getCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 446
    :cond_0
    :goto_0
    return v0

    .line 442
    :cond_1
    invoke-virtual {p0}, Lcom/viber/voip/ui/ac;->getLastVisiblePosition()I

    move-result v2

    invoke-virtual {p0}, Lcom/viber/voip/ui/ac;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v2, v3, :cond_2

    invoke-virtual {p0}, Lcom/viber/voip/ui/ac;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Lcom/viber/voip/ui/ac;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 444
    invoke-virtual {p0}, Lcom/viber/voip/ui/ac;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Lcom/viber/voip/ui/ac;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    invoke-virtual {p0}, Lcom/viber/voip/ui/ac;->getBottom()I

    move-result v3

    if-le v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 446
    goto :goto_0
.end method

.method public u()Z
    .locals 1

    .prologue
    .line 594
    iget-boolean v0, p0, Lcom/viber/voip/ui/ac;->i:Z

    return v0
.end method

.method protected v()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/high16 v3, 0x4040

    const/4 v2, 0x0

    .line 607
    iget v0, p0, Lcom/viber/voip/ui/ac;->s:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_2

    .line 608
    iget v0, p0, Lcom/viber/voip/ui/ac;->s:F

    iget v1, p0, Lcom/viber/voip/ui/ac;->s:F

    div-float/2addr v1, v3

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/viber/voip/ui/ac;->s:F

    .line 609
    iget v0, p0, Lcom/viber/voip/ui/ac;->s:F

    cmpg-float v0, v0, v3

    if-gez v0, :cond_0

    iget v0, p0, Lcom/viber/voip/ui/ac;->s:F

    const/high16 v1, -0x3fc0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 610
    iput v2, p0, Lcom/viber/voip/ui/ac;->s:F

    .line 611
    invoke-direct {p0, v4}, Lcom/viber/voip/ui/ac;->setOverscrolled(Z)V

    .line 614
    :cond_0
    iget v0, p0, Lcom/viber/voip/ui/ac;->b:F

    const/high16 v1, -0x4080

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 615
    iget v0, p0, Lcom/viber/voip/ui/ac;->s:F

    invoke-direct {p0, v0}, Lcom/viber/voip/ui/ac;->a(F)V

    .line 616
    iget-object v0, p0, Lcom/viber/voip/ui/ac;->u:Landroid/os/Handler;

    iget-object v1, p0, Lcom/viber/voip/ui/ac;->f:Ljava/lang/Runnable;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 623
    :cond_1
    :goto_0
    return-void

    .line 619
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/viber/voip/ui/ac;->setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V

    .line 620
    iget v0, p0, Lcom/viber/voip/ui/ac;->s:F

    invoke-direct {p0, v0}, Lcom/viber/voip/ui/ac;->a(F)V

    .line 621
    invoke-direct {p0, v4}, Lcom/viber/voip/ui/ac;->setOverscrolled(Z)V

    goto :goto_0
.end method
