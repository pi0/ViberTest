.class public Lcom/viber/voip/widget/dslv/DragSortListView;
.super Landroid/widget/ListView;
.source "SourceFile"


# instance fields
.field private A:I

.field private B:[Landroid/view/View;

.field private C:Lcom/viber/voip/widget/dslv/k;

.field private D:F

.field private E:F

.field private F:I

.field private G:I

.field private H:F

.field private I:F

.field private J:F

.field private K:F

.field private L:F

.field private M:Lcom/viber/voip/widget/dslv/j;

.field private N:I

.field private O:I

.field private P:I

.field private Q:I

.field private R:I

.field private S:I

.field private T:Z

.field private U:Z

.field private V:Lcom/viber/voip/widget/dslv/p;

.field private W:Landroid/view/MotionEvent;

.field private Z:I

.field private a:Landroid/view/View;

.field private aa:F

.field private ab:F

.field private ac:Lcom/viber/voip/widget/dslv/g;

.field private ad:Z

.field private ae:Lcom/viber/voip/widget/dslv/m;

.field private af:Z

.field private ag:Z

.field private ah:Lcom/viber/voip/widget/dslv/q;

.field private ai:Lcom/viber/voip/widget/dslv/s;

.field private aj:Lcom/viber/voip/widget/dslv/r;

.field private ak:Lcom/viber/voip/widget/dslv/n;

.field private al:Z

.field private am:F

.field private an:Z

.field private ao:Z

.field private b:Landroid/graphics/Point;

.field private c:Landroid/graphics/Point;

.field private d:I

.field private e:Z

.field private f:Landroid/database/DataSetObserver;

.field private g:F

.field private h:F

.field private i:I

.field private j:I

.field private k:I

.field private l:Z

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:Lcom/viber/voip/widget/dslv/i;

.field private t:Lcom/viber/voip/widget/dslv/o;

.field private u:Lcom/viber/voip/widget/dslv/t;

.field private v:Z

.field private w:I

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 15
    .parameter
    .parameter

    .prologue
    .line 452
    invoke-direct/range {p0 .. p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 82
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->b:Landroid/graphics/Point;

    .line 84
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->c:Landroid/graphics/Point;

    .line 94
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->e:Z

    .line 105
    const/high16 v1, 0x3f80

    iput v1, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->g:F

    .line 106
    const/high16 v1, 0x3f80

    iput v1, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->h:F

    .line 131
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->l:Z

    .line 189
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->v:Z

    .line 200
    const/4 v1, 0x0

    iput v1, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->w:I

    .line 207
    const/4 v1, 0x1

    iput v1, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->x:I

    .line 223
    const/4 v1, 0x0

    iput v1, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->A:I

    .line 229
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/view/View;

    iput-object v1, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->B:[Landroid/view/View;

    .line 241
    const v1, 0x3eaaaaab

    iput v1, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->D:F

    .line 248
    const v1, 0x3eaaaaab

    iput v1, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->E:F

    .line 272
    const/high16 v1, 0x3f00

    iput v1, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->L:F

    .line 280
    new-instance v1, Lcom/viber/voip/widget/dslv/e;

    invoke-direct {v1, p0}, Lcom/viber/voip/widget/dslv/e;-><init>(Lcom/viber/voip/widget/dslv/DragSortListView;)V

    iput-object v1, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->M:Lcom/viber/voip/widget/dslv/j;

    .line 344
    const/4 v1, 0x0

    iput v1, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->S:I

    .line 350
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->T:Z

    .line 355
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->U:Z

    .line 360
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->V:Lcom/viber/voip/widget/dslv/p;

    .line 380
    const/4 v1, 0x0

    iput v1, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->Z:I

    .line 387
    const/high16 v1, 0x3e80

    iput v1, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->aa:F

    .line 396
    const/4 v1, 0x0

    iput v1, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->ab:F

    .line 409
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->ad:Z

    .line 419
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->af:Z

    .line 426
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->ag:Z

    .line 440
    new-instance v1, Lcom/viber/voip/widget/dslv/q;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Lcom/viber/voip/widget/dslv/q;-><init>(Lcom/viber/voip/widget/dslv/DragSortListView;I)V

    iput-object v1, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->ah:Lcom/viber/voip/widget/dslv/q;

    .line 449
    const/4 v1, 0x0

    iput v1, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->am:F

    .line 1715
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->an:Z

    .line 2207
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->ao:Z

    .line 454
    invoke-virtual {p0}, Lcom/viber/voip/widget/dslv/DragSortListView;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 581
    :goto_0
    return-void

    .line 456
    :cond_0
    const/16 v2, 0x96

    .line 460
    if-eqz p2, :cond_6

    .line 461
    invoke-virtual {p0}, Lcom/viber/voip/widget/dslv/DragSortListView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v3, Lcom/viber/voip/bb;->DragSortListView:[I

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v1, v0, v3, v4, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v10

    .line 464
    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v10, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->x:I

    .line 467
    const/4 v1, 0x5

    const/4 v3, 0x0

    invoke-virtual {v10, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->ad:Z

    .line 470
    iget-boolean v1, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->ad:Z

    if-eqz v1, :cond_1

    .line 471
    new-instance v1, Lcom/viber/voip/widget/dslv/m;

    invoke-direct {v1, p0}, Lcom/viber/voip/widget/dslv/m;-><init>(Lcom/viber/voip/widget/dslv/DragSortListView;)V

    iput-object v1, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->ae:Lcom/viber/voip/widget/dslv/m;

    .line 475
    :cond_1
    const/4 v1, 0x6

    iget v3, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->g:F

    invoke-virtual {v10, v1, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->g:F

    .line 476
    iget v1, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->g:F

    iput v1, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->h:F

    .line 478
    const/16 v1, 0xa

    iget-boolean v3, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->v:Z

    invoke-virtual {v10, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->v:Z

    .line 480
    const/4 v1, 0x0

    const/high16 v3, 0x3f80

    const/high16 v4, 0x3f80

    const/4 v5, 0x7

    const/high16 v6, 0x3f40

    invoke-virtual {v10, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    sub-float/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->aa:F

    .line 485
    iget v1, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->aa:F

    const/4 v3, 0x0

    cmpl-float v1, v1, v3

    if-lez v1, :cond_5

    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->l:Z

    .line 487
    const/4 v1, 0x1

    iget v3, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->D:F

    invoke-virtual {v10, v1, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    .line 491
    invoke-virtual {p0, v1}, Lcom/viber/voip/widget/dslv/DragSortListView;->setDragScrollStart(F)V

    .line 493
    const/4 v1, 0x2

    iget v3, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->L:F

    invoke-virtual {v10, v1, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->L:F

    .line 497
    const/16 v1, 0x8

    invoke-virtual {v10, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    .line 501
    const/16 v1, 0x9

    invoke-virtual {v10, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    .line 505
    const/16 v1, 0x11

    const/4 v2, 0x1

    invoke-virtual {v10, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 509
    if-eqz v1, :cond_2

    .line 510
    const/16 v1, 0xc

    const/4 v2, 0x0

    invoke-virtual {v10, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v11

    .line 513
    const/4 v1, 0x4

    const/4 v2, 0x1

    invoke-virtual {v10, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 516
    const/16 v1, 0xb

    const/4 v2, 0x1

    invoke-virtual {v10, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v12

    .line 519
    const/16 v1, 0xd

    const/4 v2, 0x0

    invoke-virtual {v10, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 522
    const/16 v1, 0xe

    const/4 v2, 0x0

    invoke-virtual {v10, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 525
    const/16 v1, 0xf

    const/4 v2, 0x0

    invoke-virtual {v10, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    .line 528
    const/16 v1, 0x10

    const/4 v2, 0x0

    invoke-virtual {v10, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    .line 531
    const/4 v1, 0x3

    const/high16 v2, -0x100

    invoke-virtual {v10, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v13

    .line 535
    new-instance v1, Lcom/viber/voip/widget/dslv/a;

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/viber/voip/widget/dslv/a;-><init>(Lcom/viber/voip/widget/dslv/DragSortListView;IIIII)V

    .line 538
    invoke-virtual {v1, v11}, Lcom/viber/voip/widget/dslv/a;->b(Z)V

    .line 539
    invoke-virtual {v1, v12}, Lcom/viber/voip/widget/dslv/a;->a(Z)V

    .line 540
    invoke-virtual {v1, v13}, Lcom/viber/voip/widget/dslv/a;->d(I)V

    .line 542
    iput-object v1, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->V:Lcom/viber/voip/widget/dslv/p;

    .line 543
    invoke-virtual {p0, v1}, Lcom/viber/voip/widget/dslv/DragSortListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 546
    :cond_2
    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V

    move v1, v8

    move v2, v9

    .line 549
    :goto_2
    new-instance v3, Lcom/viber/voip/widget/dslv/k;

    invoke-direct {v3, p0}, Lcom/viber/voip/widget/dslv/k;-><init>(Lcom/viber/voip/widget/dslv/DragSortListView;)V

    iput-object v3, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->C:Lcom/viber/voip/widget/dslv/k;

    .line 551
    const/high16 v3, 0x3f00

    .line 552
    if-lez v2, :cond_3

    .line 553
    new-instance v4, Lcom/viber/voip/widget/dslv/s;

    invoke-direct {v4, p0, v3, v2}, Lcom/viber/voip/widget/dslv/s;-><init>(Lcom/viber/voip/widget/dslv/DragSortListView;FI)V

    iput-object v4, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->ai:Lcom/viber/voip/widget/dslv/s;

    .line 556
    :cond_3
    if-lez v1, :cond_4

    .line 557
    new-instance v2, Lcom/viber/voip/widget/dslv/n;

    invoke-direct {v2, p0, v3, v1}, Lcom/viber/voip/widget/dslv/n;-><init>(Lcom/viber/voip/widget/dslv/DragSortListView;FI)V

    iput-object v2, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->ak:Lcom/viber/voip/widget/dslv/n;

    .line 560
    :cond_4
    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v1 .. v14}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v1

    iput-object v1, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->W:Landroid/view/MotionEvent;

    .line 564
    new-instance v1, Lcom/viber/voip/widget/dslv/f;

    invoke-direct {v1, p0}, Lcom/viber/voip/widget/dslv/f;-><init>(Lcom/viber/voip/widget/dslv/DragSortListView;)V

    iput-object v1, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->f:Landroid/database/DataSetObserver;

    goto/16 :goto_0

    .line 485
    :cond_5
    const/4 v1, 0x0

    goto/16 :goto_1

    :cond_6
    move v1, v2

    goto :goto_2
.end method

.method static synthetic a(Lcom/viber/voip/widget/dslv/DragSortListView;)F
    .locals 1
    .parameter

    .prologue
    .line 67
    iget v0, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->L:F

    return v0
.end method

.method static synthetic a(Lcom/viber/voip/widget/dslv/DragSortListView;F)F
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 67
    iput p1, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->am:F

    return p1
.end method

.method private a(II)I
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 935
    invoke-virtual {p0}, Lcom/viber/voip/widget/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result v0

    .line 936
    invoke-virtual {p0}, Lcom/viber/voip/widget/dslv/DragSortListView;->getFooterViewsCount()I

    move-result v1

    .line 942
    if-le p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/viber/voip/widget/dslv/DragSortListView;->getCount()I

    move-result v0

    sub-int/2addr v0, v1

    if-lt p1, v0, :cond_1

    :cond_0
    move v0, p2

    .line 989
    :goto_0
    return v0

    .line 946
    :cond_1
    invoke-virtual {p0}, Lcom/viber/voip/widget/dslv/DragSortListView;->getDividerHeight()I

    move-result v0

    .line 950
    iget v1, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->y:I

    iget v2, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->x:I

    sub-int/2addr v1, v2

    .line 951
    invoke-direct {p0, p1}, Lcom/viber/voip/widget/dslv/DragSortListView;->d(I)I

    move-result v2

    .line 952
    invoke-direct {p0, p1}, Lcom/viber/voip/widget/dslv/DragSortListView;->b(I)I

    move-result v3

    .line 957
    iget v4, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->k:I

    iget v5, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->m:I

    if-gt v4, v5, :cond_5

    .line 960
    iget v4, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->k:I

    if-ne p1, v4, :cond_4

    iget v4, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->j:I

    iget v5, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->k:I

    if-eq v4, v5, :cond_4

    .line 961
    iget v4, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->m:I

    if-ne p1, v4, :cond_3

    .line 962
    add-int v1, p2, v3

    iget v3, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->y:I

    sub-int p2, v1, v3

    .line 983
    :cond_2
    :goto_1
    iget v1, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->m:I

    if-gt p1, v1, :cond_7

    .line 984
    iget v1, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->y:I

    sub-int v0, v1, v0

    add-int/lit8 v1, p1, -0x1

    invoke-direct {p0, v1}, Lcom/viber/voip/widget/dslv/DragSortListView;->d(I)I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p2

    goto :goto_0

    .line 964
    :cond_3
    sub-int/2addr v3, v2

    .line 965
    add-int/2addr v3, p2

    sub-int p2, v3, v1

    .line 966
    goto :goto_1

    .line 967
    :cond_4
    iget v3, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->k:I

    if-le p1, v3, :cond_2

    iget v3, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->m:I

    if-gt p1, v3, :cond_2

    .line 968
    sub-int/2addr p2, v1

    goto :goto_1

    .line 974
    :cond_5
    iget v4, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->m:I

    if-le p1, v4, :cond_6

    iget v4, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->j:I

    if-gt p1, v4, :cond_6

    .line 975
    add-int/2addr p2, v1

    goto :goto_1

    .line 976
    :cond_6
    iget v1, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->k:I

    if-ne p1, v1, :cond_2

    iget v1, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->j:I

    iget v4, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->k:I

    if-eq v1, v4, :cond_2

    .line 977
    sub-int v1, v3, v2

    .line 978
    add-int/2addr p2, v1

    goto :goto_1

    .line 986
    :cond_7
    sub-int v0, v2, v0

    iget v1, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->y:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p2

    goto :goto_0
.end method

.method private a(ILandroid/view/View;II)I
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2075
    const/4 v4, 0x0

    .line 2077
    invoke-direct {p0, p1}, Lcom/viber/voip/widget/dslv/DragSortListView;->d(I)I

    move-result v0

    .line 2079
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 2080
    invoke-direct {p0, p1, v0}, Lcom/viber/voip/widget/dslv/DragSortListView;->c(II)I

    move-result v1

    .line 2084
    iget v2, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->m:I

    if-eq p1, v2, :cond_7

    .line 2085
    sub-int v2, v3, v0

    .line 2086
    sub-int v0, v1, v0

    .line 2089
    :goto_0
    iget v5, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->y:I

    .line 2090
    iget v6, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->m:I

    iget v7, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->j:I

    if-eq v6, v7, :cond_0

    iget v6, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->m:I

    iget v7, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->k:I

    if-eq v6, v7, :cond_0

    .line 2091
    iget v6, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->x:I

    sub-int/2addr v5, v6

    .line 2094
    :cond_0
    if-gt p1, p3, :cond_1

    .line 2095
    iget v1, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->j:I

    if-le p1, v1, :cond_6

    .line 2096
    sub-int v0, v5, v0

    add-int/2addr v0, v4

    .line 2114
    :goto_1
    return v0

    .line 2098
    :cond_1
    if-ne p1, p4, :cond_4

    .line 2099
    iget v0, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->j:I

    if-gt p1, v0, :cond_2

    .line 2100
    sub-int v0, v2, v5

    add-int/2addr v0, v4

    goto :goto_1

    .line 2101
    :cond_2
    iget v0, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->k:I

    if-ne p1, v0, :cond_3

    .line 2102
    sub-int v0, v3, v1

    add-int/2addr v0, v4

    goto :goto_1

    .line 2104
    :cond_3
    add-int v0, v4, v2

    goto :goto_1

    .line 2107
    :cond_4
    iget v1, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->j:I

    if-gt p1, v1, :cond_5

    .line 2108
    sub-int v0, v4, v5

    goto :goto_1

    .line 2109
    :cond_5
    iget v1, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->k:I

    if-ne p1, v1, :cond_6

    .line 2110
    sub-int v0, v4, v0

    goto :goto_1

    :cond_6
    move v0, v4

    goto :goto_1

    :cond_7
    move v0, v1

    move v2, v3

    goto :goto_0
.end method

.method static synthetic a(Lcom/viber/voip/widget/dslv/DragSortListView;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 67
    iput p1, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->o:I

    return p1
.end method

.method static synthetic a(Lcom/viber/voip/widget/dslv/DragSortListView;II)I
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Lcom/viber/voip/widget/dslv/DragSortListView;->a(II)I

    move-result v0

    return v0
.end method

.method private a(ILandroid/graphics/Canvas;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 764
    invoke-virtual {p0}, Lcom/viber/voip/widget/dslv/DragSortListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 765
    invoke-virtual {p0}, Lcom/viber/voip/widget/dslv/DragSortListView;->getDividerHeight()I

    move-result v3

    .line 768
    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    .line 769
    invoke-virtual {p0}, Lcom/viber/voip/widget/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/widget/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 771
    if-eqz v0, :cond_0

    .line 772
    invoke-virtual {p0}, Lcom/viber/voip/widget/dslv/DragSortListView;->getPaddingLeft()I

    move-result v4

    .line 773
    invoke-virtual {p0}, Lcom/viber/voip/widget/dslv/DragSortListView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/viber/voip/widget/dslv/DragSortListView;->getPaddingRight()I

    move-result v5

    sub-int v5, v1, v5

    .line 777
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 779
    iget v6, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->m:I

    if-le p1, v6, :cond_1

    .line 780
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTop()I

    move-result v0

    add-int/2addr v1, v0

    .line 781
    add-int v0, v1, v3

    .line 789
    :goto_0
    invoke-virtual {p2}, Landroid/graphics/Canvas;->save()I

    .line 790
    invoke-virtual {p2, v4, v1, v5, v0}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 791
    invoke-virtual {v2, v4, v1, v5, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 792
    invoke-virtual {v2, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 793
    invoke-virtual {p2}, Landroid/graphics/Canvas;->restore()V

    .line 796
    :cond_0
    return-void

    .line 783
    :cond_1
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getBottom()I

    move-result v0

    sub-int/2addr v0, v1

    .line 784
    sub-int v1, v0, v3

    goto :goto_0
.end method

.method private a(ILandroid/view/View;Z)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1907
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 1909
    iget v0, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->m:I

    if-eq p1, v0, :cond_5

    iget v0, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->j:I

    if-eq p1, v0, :cond_5

    iget v0, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->k:I

    if-eq p1, v0, :cond_5

    .line 1910
    const/4 v0, -0x2

    .line 1915
    :goto_0
    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v0, v2, :cond_0

    .line 1916
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1917
    invoke-virtual {p2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1921
    :cond_0
    iget v0, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->j:I

    if-eq p1, v0, :cond_1

    iget v0, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->k:I

    if-ne p1, v0, :cond_2

    .line 1922
    :cond_1
    iget v0, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->m:I

    if-ge p1, v0, :cond_6

    move-object v0, p2

    .line 1923
    check-cast v0, Lcom/viber/voip/widget/dslv/c;

    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Lcom/viber/voip/widget/dslv/c;->setGravity(I)V

    .line 1931
    :cond_2
    :goto_1
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v1

    .line 1932
    const/4 v0, 0x0

    .line 1934
    iget v2, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->m:I

    if-ne p1, v2, :cond_3

    iget-object v2, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->a:Landroid/view/View;

    if-eqz v2, :cond_3

    .line 1935
    const/4 v0, 0x4

    .line 1938
    :cond_3
    if-eq v0, v1, :cond_4

    .line 1939
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1941
    :cond_4
    return-void

    .line 1912
    :cond_5
    invoke-direct {p0, p1, p2, p3}, Lcom/viber/voip/widget/dslv/DragSortListView;->c(ILandroid/view/View;Z)I

    move-result v0

    goto :goto_0

    .line 1924
    :cond_6
    iget v0, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->m:I

    if-le p1, v0, :cond_2

    move-object v0, p2

    .line 1925
    check-cast v0, Lcom/viber/voip/widget/dslv/c;

    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Lcom/viber/voip/widget/dslv/c;->setGravity(I)V

    goto :goto_1
.end method

.method private a(Landroid/view/View;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 2118
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 2119
    if-nez v0, :cond_0

    .line 2120
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 2121
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2123
    :cond_0
    iget v1, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->A:I

    invoke-virtual {p0}, Lcom/viber/voip/widget/dslv/DragSortListView;->getListPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/viber/voip/widget/dslv/DragSortListView;->getListPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v1, v2, v3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 2126
    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v2, :cond_1

    .line 2127
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/high16 v2, 0x4000

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 2131
    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 2132
    return-void

    .line 2129
    :cond_1
    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/viber/voip/widget/dslv/DragSortListView;ILandroid/view/View;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 67
    invoke-direct {p0, p1, p2, p3}, Lcom/viber/voip/widget/dslv/DragSortListView;->a(ILandroid/view/View;Z)V

    return-void
.end method

.method static synthetic a(Lcom/viber/voip/widget/dslv/DragSortListView;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/viber/voip/widget/dslv/DragSortListView;->b(Z)V

    return-void
.end method

.method static synthetic b(Lcom/viber/voip/widget/dslv/DragSortListView;F)F
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 67
    iget v0, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->am:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->am:F

    return v0
.end method

.method private b(I)I
    .locals 1
    .parameter

    .prologue
    .line 853
    invoke-virtual {p0}, Lcom/viber/voip/widget/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/widget/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 855
    if-eqz v0, :cond_0

    .line 857
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 861
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/viber/voip/widget/dslv/DragSortListView;->d(I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/viber/voip/widget/dslv/DragSortListView;->c(II)I

    move-result v0

    goto :goto_0
.end method

.method private b(ILandroid/view/View;Z)I
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1995
    iget v1, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->m:I

    if-ne p1, v1, :cond_1

    .line 2021
    :cond_0
    :goto_0
    return v0

    .line 2000
    :cond_1
    invoke-virtual {p0}, Lcom/viber/voip/widget/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result v1

    if-lt p1, v1, :cond_2

    invoke-virtual {p0}, Lcom/viber/voip/widget/dslv/DragSortListView;->getCount()I

    move-result v1

    invoke-virtual {p0}, Lcom/viber/voip/widget/dslv/DragSortListView;->getFooterViewsCount()I

    move-result v2

    sub-int/2addr v1, v2

    if-lt p1, v1, :cond_3

    .line 2006
    :cond_2
    :goto_1
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 2008
    if-eqz v0, :cond_4

    .line 2009
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v1, :cond_4

    .line 2010
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    .line 2003
    :cond_3
    check-cast p2, Landroid/view/ViewGroup;

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    goto :goto_1

    .line 2014
    :cond_4
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 2016
    if-eqz v0, :cond_5

    if-eqz p3, :cond_0

    .line 2017
    :cond_5
    invoke-direct {p0, p2}, Lcom/viber/voip/widget/dslv/DragSortListView;->a(Landroid/view/View;)V

    .line 2018
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    goto :goto_0
.end method

.method static synthetic b(Lcom/viber/voip/widget/dslv/DragSortListView;)I
    .locals 1
    .parameter

    .prologue
    .line 67
    iget v0, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->w:I

    return v0
.end method

.method static synthetic b(Lcom/viber/voip/widget/dslv/DragSortListView;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 67
    iput p1, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->w:I

    return p1
.end method

.method static synthetic b(Lcom/viber/voip/widget/dslv/DragSortListView;ILandroid/view/View;Z)I
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 67
    invoke-direct {p0, p1, p2, p3}, Lcom/viber/voip/widget/dslv/DragSortListView;->b(ILandroid/view/View;Z)I

    move-result v0

    return v0
.end method

.method private b(II)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x1

    .line 1813
    iget-object v0, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->b:Landroid/graphics/Point;

    iget v1, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->n:I

    sub-int v1, p1, v1

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 1814
    iget-object v0, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->b:Landroid/graphics/Point;

    iget v1, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->o:I

    sub-int v1, p2, v1

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 1816
    invoke-direct {p0, v4}, Lcom/viber/voip/widget/dslv/DragSortListView;->b(Z)V

    .line 1818
    iget v0, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->d:I

    iget v1, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->z:I

    add-int/2addr v0, v1

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1819
    iget v1, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->d:I

    iget v2, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->z:I

    sub-int/2addr v1, v2

    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1822
    iget-object v2, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->C:Lcom/viber/voip/widget/dslv/k;

    invoke-virtual {v2}, Lcom/viber/voip/widget/dslv/k;->b()I

    move-result v2

    .line 1824
    iget v3, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->Q:I

    if-le v0, v3, :cond_2

    iget v3, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->G:I

    if-le v0, v3, :cond_2

    if-eq v2, v4, :cond_2

    .line 1828
    if-eq v2, v5, :cond_0

    .line 1830
    iget-object v0, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->C:Lcom/viber/voip/widget/dslv/k;

    invoke-virtual {v0, v4}, Lcom/viber/voip/widget/dslv/k;->a(Z)V

    .line 1834
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->C:Lcom/viber/voip/widget/dslv/k;

    invoke-virtual {v0, v4}, Lcom/viber/voip/widget/dslv/k;->a(I)V

    .line 1854
    :cond_1
    :goto_0
    return-void

    .line 1835
    :cond_2
    iget v3, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->Q:I

    if-ge v1, v3, :cond_4

    iget v3, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->F:I

    if-ge v1, v3, :cond_4

    if-eqz v2, :cond_4

    .line 1839
    if-eq v2, v5, :cond_3

    .line 1841
    iget-object v0, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->C:Lcom/viber/voip/widget/dslv/k;

    invoke-virtual {v0, v4}, Lcom/viber/voip/widget/dslv/k;->a(Z)V

    .line 1845
    :cond_3
    iget-object v0, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->C:Lcom/viber/voip/widget/dslv/k;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/viber/voip/widget/dslv/k;->a(I)V

    goto :goto_0

    .line 1847
    :cond_4
    iget v2, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->F:I

    if-lt v1, v2, :cond_1

    iget v1, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->G:I

    if-gt v0, v1, :cond_1

    iget-object v0, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->C:Lcom/viber/voip/widget/dslv/k;

    invoke-virtual {v0}, Lcom/viber/voip/widget/dslv/k;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1852
    iget-object v0, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->C:Lcom/viber/voip/widget/dslv/k;

    invoke-virtual {v0, v4}, Lcom/viber/voip/widget/dslv/k;->a(Z)V

    goto :goto_0
.end method

.method private b(Landroid/view/MotionEvent;)V
    .locals 2
    .parameter

    .prologue
    .line 1696
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 1697
    if-eqz v0, :cond_0

    .line 1698
    iget v1, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->N:I

    iput v1, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->P:I

    .line 1699
    iget v1, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->O:I

    iput v1, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->Q:I

    .line 1701
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->N:I

    .line 1702
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->O:I

    .line 1703
    if-nez v0, :cond_1

    .line 1704
    iget v0, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->N:I

    iput v0, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->P:I

    .line 1705
    iget v0, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->O:I

    iput v0, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->Q:I

    .line 1707
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    iget v1, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->N:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->p:I

    .line 1708
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    float-to-int v0, v0

    iget v1, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->O:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->q:I

    .line 1709
    return-void
.end method

.method private b(Z)V
    .locals 2
    .parameter

    .prologue
    .line 2337
    invoke-virtual {p0}, Lcom/viber/voip/widget/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v0

    invoke-virtual {p0}, Lcom/viber/voip/widget/dslv/DragSortListView;->getChildCount()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 2338
    invoke-virtual {p0}, Lcom/viber/voip/widget/dslv/DragSortListView;->getChildCount()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0, v1}, Lcom/viber/voip/widget/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2340
    if-nez v1, :cond_0

    .line 2345
    :goto_0
    return-void

    .line 2344
    :cond_0
    invoke-direct {p0, v0, v1, p1}, Lcom/viber/voip/widget/dslv/DragSortListView;->d(ILandroid/view/View;Z)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/viber/voip/widget/dslv/DragSortListView;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->af:Z

    return p1
.end method

.method private c(II)I
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 2030
    invoke-virtual {p0}, Lcom/viber/voip/widget/dslv/DragSortListView;->getDividerHeight()I

    .line 2032
    iget-boolean v0, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->l:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->j:I

    iget v1, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->k:I

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    .line 2033
    :goto_0
    iget v1, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->y:I

    iget v2, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->x:I

    sub-int/2addr v1, v2

    .line 2034
    iget v2, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->ab:F

    int-to-float v3, v1

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 2038
    iget v3, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->m:I

    if-ne p1, v3, :cond_5

    .line 2039
    iget v1, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->m:I

    iget v3, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->j:I

    if-ne v1, v3, :cond_3

    .line 2040
    if-eqz v0, :cond_2

    .line 2041
    iget v0, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->x:I

    add-int p2, v2, v0

    .line 2064
    :cond_0
    :goto_1
    return p2

    .line 2032
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 2043
    :cond_2
    iget p2, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->y:I

    goto :goto_1

    .line 2045
    :cond_3
    iget v0, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->m:I

    iget v1, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->k:I

    if-ne v0, v1, :cond_4

    .line 2047
    iget v0, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->y:I

    sub-int p2, v0, v2

    goto :goto_1

    .line 2049
    :cond_4
    iget p2, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->x:I

    goto :goto_1

    .line 2051
    :cond_5
    iget v3, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->j:I

    if-ne p1, v3, :cond_7

    .line 2052
    if-eqz v0, :cond_6

    .line 2053
    add-int/2addr p2, v2

    goto :goto_1

    .line 2055
    :cond_6
    add-int/2addr p2, v1

    goto :goto_1

    .line 2057
    :cond_7
    iget v0, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->k:I

    if-ne p1, v0, :cond_0

    .line 2059
    add-int v0, p2, v1

    sub-int p2, v0, v2

    goto :goto_1
.end method

.method private c(ILandroid/view/View;Z)I
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2025
    invoke-direct {p0, p1, p2, p3}, Lcom/viber/voip/widget/dslv/DragSortListView;->b(ILandroid/view/View;Z)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/viber/voip/widget/dslv/DragSortListView;->c(II)I

    move-result v0

    return v0
.end method

.method static synthetic c(Lcom/viber/voip/widget/dslv/DragSortListView;)I
    .locals 1
    .parameter

    .prologue
    .line 67
    iget v0, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->o:I

    return v0
.end method

.method static synthetic c(Lcom/viber/voip/widget/dslv/DragSortListView;I)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/viber/voip/widget/dslv/DragSortListView;->b(I)I

    move-result v0

    return v0
.end method

.method private c(I)V
    .locals 1
    .parameter

    .prologue
    .line 1547
    const/4 v0, 0x1

    iput v0, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->w:I

    .line 1550
    iget-object v0, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->u:Lcom/viber/voip/widget/dslv/t;

    if-eqz v0, :cond_0

    .line 1551
    iget-object v0, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->u:Lcom/viber/voip/widget/dslv/t;

    invoke-interface {v0, p1}, Lcom/viber/voip/widget/dslv/t;->a(I)V

    .line 1554
    :cond_0
    invoke-direct {p0}, Lcom/viber/voip/widget/dslv/DragSortListView;->n()V

    .line 1556
    invoke-direct {p0}, Lcom/viber/voip/widget/dslv/DragSortListView;->h()V

    .line 1557
    invoke-direct {p0}, Lcom/viber/voip/widget/dslv/DragSortListView;->e()V

    .line 1560
    iget-boolean v0, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->U:Z

    if-eqz v0, :cond_1

    .line 1561
    const/4 v0, 0x3

    iput v0, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->w:I

    .line 1565
    :goto_0
    return-void

    .line 1563
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->w:I

    goto :goto_0
.end method

.method static synthetic c(Lcom/viber/voip/widget/dslv/DragSortListView;ILandroid/view/View;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 67
    invoke-direct {p0, p1, p2, p3}, Lcom/viber/voip/widget/dslv/DragSortListView;->d(ILandroid/view/View;Z)V

    return-void
.end method

.method private d(I)I
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x0

    .line 1944
    iget v1, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->m:I

    if-ne p1, v1, :cond_1

    .line 1990
    :cond_0
    :goto_0
    return v0

    .line 1948
    :cond_1
    invoke-virtual {p0}, Lcom/viber/voip/widget/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/viber/voip/widget/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1950
    if-eqz v1, :cond_2

    .line 1953
    invoke-direct {p0, p1, v1, v0}, Lcom/viber/voip/widget/dslv/DragSortListView;->b(ILandroid/view/View;Z)I

    move-result v0

    goto :goto_0

    .line 1957
    :cond_2
    iget-object v0, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->ah:Lcom/viber/voip/widget/dslv/q;

    invoke-virtual {v0, p1}, Lcom/viber/voip/widget/dslv/q;->a(I)I

    move-result v0

    .line 1958
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1963
    invoke-virtual {p0}, Lcom/viber/voip/widget/dslv/DragSortListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 1964
    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v1

    .line 1967
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v2

    .line 1968
    iget-object v3, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->B:[Landroid/view/View;

    array-length v3, v3

    if-eq v2, v3, :cond_3

    .line 1969
    new-array v2, v2, [Landroid/view/View;

    iput-object v2, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->B:[Landroid/view/View;

    .line 1972
    :cond_3
    if-ltz v1, :cond_5

    .line 1973
    iget-object v2, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->B:[Landroid/view/View;

    aget-object v2, v2, v1

    if-nez v2, :cond_4

    .line 1974
    invoke-interface {v0, p1, v4, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1975
    iget-object v2, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->B:[Landroid/view/View;

    aput-object v0, v2, v1

    .line 1985
    :goto_1
    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/viber/voip/widget/dslv/DragSortListView;->b(ILandroid/view/View;Z)I

    move-result v0

    .line 1988
    iget-object v1, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->ah:Lcom/viber/voip/widget/dslv/q;

    invoke-virtual {v1, p1, v0}, Lcom/viber/voip/widget/dslv/q;->a(II)V

    goto :goto_0

    .line 1977
    :cond_4
    iget-object v2, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->B:[Landroid/view/View;

    aget-object v1, v2, v1

    invoke-interface {v0, p1, v1, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    .line 1981
    :cond_5
    invoke-interface {v0, p1, v4, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_1
.end method

.method static synthetic d(Lcom/viber/voip/widget/dslv/DragSortListView;)I
    .locals 1
    .parameter

    .prologue
    .line 67
    iget v0, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->z:I

    return v0
.end method

.method static synthetic d(Lcom/viber/voip/widget/dslv/DragSortListView;I)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/viber/voip/widget/dslv/DragSortListView;->d(I)I

    move-result v0

    return v0
.end method

.method private d(ILandroid/view/View;Z)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2348
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->af:Z

    .line 2350
    invoke-direct {p0}, Lcom/viber/voip/widget/dslv/DragSortListView;->m()V

    .line 2352
    iget v0, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->j:I

    .line 2353
    iget v1, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->k:I

    .line 2355
    invoke-direct {p0}, Lcom/viber/voip/widget/dslv/DragSortListView;->d()Z

    move-result v2

    .line 2357
    if-eqz v2, :cond_0

    .line 2358
    invoke-direct {p0}, Lcom/viber/voip/widget/dslv/DragSortListView;->k()V

    .line 2359
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/viber/voip/widget/dslv/DragSortListView;->a(ILandroid/view/View;II)I

    move-result v0

    .line 2362
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/viber/voip/widget/dslv/DragSortListView;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0, p1, v0}, Lcom/viber/voip/widget/dslv/DragSortListView;->setSelectionFromTop(II)V

    .line 2363
    invoke-virtual {p0}, Lcom/viber/voip/widget/dslv/DragSortListView;->layoutChildren()V

    .line 2366
    :cond_0
    if-nez v2, :cond_1

    if-eqz p3, :cond_2

    .line 2367
    :cond_1
    invoke-virtual {p0}, Lcom/viber/voip/widget/dslv/DragSortListView;->invalidate()V

    .line 2370
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->af:Z

    .line 2371
    return-void
.end method

.method private d()Z
    .locals 15

    .prologue
    const/4 v5, 0x1

    const/high16 v13, 0x3f00

    .line 994
    invoke-virtual {p0}, Lcom/viber/voip/widget/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v2

    .line 995
    iget v1, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->j:I

    .line 996
    sub-int v0, v1, v2

    invoke-virtual {p0, v0}, Lcom/viber/voip/widget/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 998
    if-nez v0, :cond_0

    .line 999
    invoke-virtual {p0}, Lcom/viber/voip/widget/dslv/DragSortListView;->getChildCount()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int v1, v2, v0

    .line 1000
    sub-int v0, v1, v2

    invoke-virtual {p0, v0}, Lcom/viber/voip/widget/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1002
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    .line 1004
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 1006
    invoke-direct {p0, v1, v2}, Lcom/viber/voip/widget/dslv/DragSortListView;->a(II)I

    move-result v0

    .line 1009
    invoke-virtual {p0}, Lcom/viber/voip/widget/dslv/DragSortListView;->getDividerHeight()I

    move-result v6

    .line 1015
    iget v4, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->d:I

    if-ge v4, v0, :cond_6

    move v3, v2

    move v2, v0

    move v14, v0

    move v0, v1

    move v1, v14

    .line 1018
    :goto_0
    if-ltz v0, :cond_1

    .line 1019
    add-int/lit8 v0, v0, -0x1

    .line 1020
    invoke-direct {p0, v0}, Lcom/viber/voip/widget/dslv/DragSortListView;->b(I)I

    move-result v2

    .line 1022
    if-nez v0, :cond_5

    .line 1023
    sub-int/2addr v3, v6

    sub-int v2, v3, v2

    .line 1062
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/viber/voip/widget/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result v3

    .line 1063
    invoke-virtual {p0}, Lcom/viber/voip/widget/dslv/DragSortListView;->getFooterViewsCount()I

    move-result v6

    .line 1065
    const/4 v4, 0x0

    .line 1067
    iget v7, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->j:I

    .line 1068
    iget v8, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->k:I

    .line 1069
    iget v9, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->ab:F

    .line 1071
    iget-boolean v10, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->l:Z

    if-eqz v10, :cond_b

    .line 1072
    sub-int v10, v2, v1

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    .line 1075
    iget v11, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->d:I

    if-ge v11, v2, :cond_8

    .line 1084
    :goto_2
    iget v11, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->aa:F

    mul-float/2addr v11, v13

    int-to-float v10, v10

    mul-float/2addr v10, v11

    float-to-int v10, v10

    .line 1085
    int-to-float v11, v10

    .line 1086
    add-int/2addr v1, v10

    .line 1087
    sub-int v10, v2, v10

    .line 1090
    iget v12, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->d:I

    if-ge v12, v1, :cond_9

    .line 1091
    add-int/lit8 v2, v0, -0x1

    iput v2, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->j:I

    .line 1092
    iput v0, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->k:I

    .line 1093
    iget v2, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->d:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, v13

    div-float/2addr v1, v11

    iput v1, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->ab:F

    .line 1114
    :goto_3
    iget v1, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->j:I

    if-ge v1, v3, :cond_c

    .line 1116
    iput v3, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->j:I

    .line 1117
    iput v3, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->k:I

    move v0, v3

    .line 1124
    :cond_2
    :goto_4
    iget v1, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->j:I

    if-ne v1, v7, :cond_3

    iget v1, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->k:I

    if-ne v1, v8, :cond_3

    iget v1, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->ab:F

    cmpl-float v1, v1, v9

    if-eqz v1, :cond_e

    :cond_3
    move v1, v5

    .line 1129
    :goto_5
    iget v2, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->i:I

    if-eq v0, v2, :cond_d

    .line 1130
    iget-object v1, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->s:Lcom/viber/voip/widget/dslv/i;

    if-eqz v1, :cond_4

    .line 1131
    iget-object v1, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->s:Lcom/viber/voip/widget/dslv/i;

    iget v2, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->i:I

    sub-int/2addr v2, v3

    sub-int v3, v0, v3

    invoke-interface {v1, v2, v3}, Lcom/viber/voip/widget/dslv/i;->a(II)V

    .line 1134
    :cond_4
    iput v0, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->i:I

    .line 1138
    :goto_6
    return v5

    .line 1027
    :cond_5
    add-int/2addr v2, v6

    sub-int/2addr v3, v2

    .line 1028
    invoke-direct {p0, v0, v3}, Lcom/viber/voip/widget/dslv/DragSortListView;->a(II)I

    move-result v2

    .line 1031
    iget v4, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->d:I

    if-ge v4, v2, :cond_1

    move v1, v2

    .line 1035
    goto :goto_0

    .line 1040
    :cond_6
    invoke-virtual {p0}, Lcom/viber/voip/widget/dslv/DragSortListView;->getCount()I

    move-result v7

    move v4, v3

    move v3, v2

    move v2, v0

    move v14, v0

    move v0, v1

    move v1, v14

    .line 1041
    :goto_7
    if-ge v0, v7, :cond_1

    .line 1042
    add-int/lit8 v2, v7, -0x1

    if-ne v0, v2, :cond_7

    .line 1043
    add-int v2, v3, v6

    add-int/2addr v2, v4

    .line 1044
    goto/16 :goto_1

    .line 1047
    :cond_7
    add-int v2, v6, v4

    add-int/2addr v3, v2

    .line 1048
    add-int/lit8 v2, v0, 0x1

    invoke-direct {p0, v2}, Lcom/viber/voip/widget/dslv/DragSortListView;->b(I)I

    move-result v4

    .line 1049
    add-int/lit8 v2, v0, 0x1

    invoke-direct {p0, v2, v3}, Lcom/viber/voip/widget/dslv/DragSortListView;->a(II)I

    move-result v2

    .line 1053
    iget v8, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->d:I

    if-lt v8, v2, :cond_1

    .line 1058
    add-int/lit8 v0, v0, 0x1

    move v1, v2

    goto :goto_7

    :cond_8
    move v14, v1

    move v1, v2

    move v2, v14

    .line 1080
    goto/16 :goto_2

    .line 1096
    :cond_9
    iget v1, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->d:I

    if-ge v1, v10, :cond_a

    .line 1097
    iput v0, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->j:I

    .line 1098
    iput v0, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->k:I

    goto :goto_3

    .line 1100
    :cond_a
    iput v0, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->j:I

    .line 1101
    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->k:I

    .line 1102
    const/high16 v1, 0x3f80

    iget v10, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->d:I

    sub-int/2addr v2, v10

    int-to-float v2, v2

    div-float/2addr v2, v11

    add-float/2addr v1, v2

    mul-float/2addr v1, v13

    iput v1, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->ab:F

    goto/16 :goto_3

    .line 1109
    :cond_b
    iput v0, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->j:I

    .line 1110
    iput v0, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->k:I

    goto/16 :goto_3

    .line 1118
    :cond_c
    iget v1, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->k:I

    invoke-virtual {p0}, Lcom/viber/voip/widget/dslv/DragSortListView;->getCount()I

    move-result v2

    sub-int/2addr v2, v6

    if-lt v1, v2, :cond_2

    .line 1119
    invoke-virtual {p0}, Lcom/viber/voip/widget/dslv/DragSortListView;->getCount()I

    move-result v0

    sub-int/2addr v0, v6

    add-int/lit8 v0, v0, -0x1

    .line 1120
    iput v0, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->j:I

    .line 1121
    iput v0, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->k:I

    goto/16 :goto_4

    :cond_d
    move v5, v1

    goto :goto_6

    :cond_e
    move v1, v4

    goto/16 :goto_5
.end method

.method static synthetic e(Lcom/viber/voip/widget/dslv/DragSortListView;)Landroid/graphics/Point;
    .locals 1
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->b:Landroid/graphics/Point;

    return-object v0
.end method

.method private e()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 1507
    iput v0, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->m:I

    .line 1508
    iput v0, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->j:I

    .line 1509
    iput v0, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->k:I

    .line 1510
    iput v0, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->i:I

    .line 1511
    return-void
.end method

.method static synthetic f(Lcom/viber/voip/widget/dslv/DragSortListView;)I
    .locals 1
    .parameter

    .prologue
    .line 67
    iget v0, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->O:I

    return v0
.end method

.method private f()V
    .locals 4

    .prologue
    .line 1516
    const/4 v0, 0x2

    iput v0, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->w:I

    .line 1518
    iget-object v0, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->t:Lcom/viber/voip/widget/dslv/o;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->i:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->i:I

    invoke-virtual {p0}, Lcom/viber/voip/widget/dslv/DragSortListView;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1519
    invoke-virtual {p0}, Lcom/viber/voip/widget/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result v0

    .line 1520
    iget-object v1, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->t:Lcom/viber/voip/widget/dslv/o;

    iget v2, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->m:I

    sub-int/2addr v2, v0

    iget v3, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->i:I

    sub-int v0, v3, v0

    invoke-interface {v1, v2, v0}, Lcom/viber/voip/widget/dslv/o;->a_(II)V

    .line 1523
    :cond_0
    invoke-direct {p0}, Lcom/viber/voip/widget/dslv/DragSortListView;->n()V

    .line 1525
    invoke-direct {p0}, Lcom/viber/voip/widget/dslv/DragSortListView;->h()V

    .line 1526
    invoke-direct {p0}, Lcom/viber/voip/widget/dslv/DragSortListView;->e()V

    .line 1527
    invoke-direct {p0}, Lcom/viber/voip/widget/dslv/DragSortListView;->k()V

    .line 1530
    iget-boolean v0, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->U:Z

    if-eqz v0, :cond_1

    .line 1531
    const/4 v0, 0x3

    iput v0, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->w:I

    .line 1535
    :goto_0
    return-void

    .line 1533
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->w:I

    goto :goto_0
.end method

.method static synthetic g(Lcom/viber/voip/widget/dslv/DragSortListView;)I
    .locals 1
    .parameter

    .prologue
    .line 67
    iget v0, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->i:I

    return v0
.end method

.method private g()V
    .locals 2

    .prologue
    .line 1538
    iget v0, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->m:I

    invoke-virtual {p0}, Lcom/viber/voip/widget/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/viber/voip/widget/dslv/DragSortListView;->c(I)V

    .line 1539
    return-void
.end method

.method static synthetic h(Lcom/viber/voip/widget/dslv/DragSortListView;)I
    .locals 1
    .parameter

    .prologue
    .line 67
    iget v0, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->m:I

    return v0
.end method

.method private h()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1568
    invoke-virtual {p0}, Lcom/viber/voip/widget/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v1

    .line 1570
    iget v2, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->m:I

    if-ge v2, v1, :cond_1

    .line 1573
    invoke-virtual {p0, v0}, Lcom/viber/voip/widget/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1575
    if-eqz v2, :cond_0

    .line 1576
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v0

    .line 1579
    :cond_0
    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0}, Lcom/viber/voip/widget/dslv/DragSortListView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0, v1, v0}, Lcom/viber/voip/widget/dslv/DragSortListView;->setSelectionFromTop(II)V

    .line 1581
    :cond_1
    return-void
.end method

.method static synthetic i(Lcom/viber/voip/widget/dslv/DragSortListView;)I
    .locals 1
    .parameter

    .prologue
    .line 67
    iget v0, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->x:I

    return v0
.end method

.method private i()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1683
    iput v2, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->Z:I

    .line 1684
    iput-boolean v2, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->U:Z

    .line 1685
    iget v0, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->w:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 1686
    const/4 v0, 0x4

    iput v0, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->w:I

    .line 1687
    invoke-virtual {p0}, Lcom/viber/voip/widget/dslv/DragSortListView;->a()V

    .line 1688
    iput v2, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->w:I

    .line 1690
    :cond_0
    iget v0, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->g:F

    iput v0, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->h:F

    .line 1691
    iput-boolean v2, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->an:Z

    .line 1692
    iget-object v0, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->ah:Lcom/viber/voip/widget/dslv/q;

    invoke-virtual {v0}, Lcom/viber/voip/widget/dslv/q;->a()V

    .line 1693
    return-void
.end method

.method static synthetic j(Lcom/viber/voip/widget/dslv/DragSortListView;)I
    .locals 1
    .parameter

    .prologue
    .line 67
    iget v0, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->y:I

    return v0
.end method

.method private j()V
    .locals 6

    .prologue
    .line 1857
    invoke-virtual {p0}, Lcom/viber/voip/widget/dslv/DragSortListView;->getPaddingTop()I

    move-result v0

    .line 1858
    invoke-virtual {p0}, Lcom/viber/voip/widget/dslv/DragSortListView;->getHeight()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p0}, Lcom/viber/voip/widget/dslv/DragSortListView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    .line 1859
    int-to-float v2, v1

    .line 1861
    int-to-float v3, v0

    iget v4, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->D:F

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    iput v3, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->I:F

    .line 1862
    int-to-float v3, v0

    const/high16 v4, 0x3f80

    iget v5, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->E:F

    sub-float/2addr v4, v5

    mul-float/2addr v2, v4

    add-float/2addr v2, v3

    iput v2, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->H:F

    .line 1864
    iget v2, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->I:F

    float-to-int v2, v2

    iput v2, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->F:I

    .line 1865
    iget v2, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->H:F

    float-to-int v2, v2

    iput v2, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->G:I

    .line 1867
    iget v2, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->I:F

    int-to-float v3, v0

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->J:F

    .line 1868
    add-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->H:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->K:F

    .line 1869
    return-void
.end method

.method private k()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1878
    invoke-virtual {p0}, Lcom/viber/voip/widget/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v1

    .line 1879
    invoke-virtual {p0}, Lcom/viber/voip/widget/dslv/DragSortListView;->getLastVisiblePosition()I

    move-result v2

    .line 1881
    invoke-virtual {p0}, Lcom/viber/voip/widget/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1882
    sub-int/2addr v2, v1

    invoke-virtual {p0}, Lcom/viber/voip/widget/dslv/DragSortListView;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0}, Lcom/viber/voip/widget/dslv/DragSortListView;->getFooterViewsCount()I

    move-result v4

    sub-int/2addr v3, v4

    sub-int/2addr v3, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1884
    :goto_0
    if-gt v0, v2, :cond_1

    .line 1885
    invoke-virtual {p0, v0}, Lcom/viber/voip/widget/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1886
    if-eqz v3, :cond_0

    .line 1887
    add-int v4, v1, v0

    invoke-direct {p0, v4, v3, v5}, Lcom/viber/voip/widget/dslv/DragSortListView;->a(ILandroid/view/View;Z)V

    .line 1884
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1890
    :cond_1
    return-void
.end method

.method static synthetic k(Lcom/viber/voip/widget/dslv/DragSortListView;)V
    .locals 0
    .parameter

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/viber/voip/widget/dslv/DragSortListView;->f()V

    return-void
.end method

.method static synthetic l(Lcom/viber/voip/widget/dslv/DragSortListView;)I
    .locals 1
    .parameter

    .prologue
    .line 67
    iget v0, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->j:I

    return v0
.end method

.method private l()V
    .locals 2

    .prologue
    .line 2135
    iget-object v0, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->a:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2136
    iget-object v0, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->a:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/viber/voip/widget/dslv/DragSortListView;->a(Landroid/view/View;)V

    .line 2141
    iget-object v0, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->a:Landroid/view/View;

    const v1, 0x7f070070

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2142
    if-eqz v0, :cond_1

    .line 2143
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->y:I

    .line 2144
    iget-object v0, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget v1, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->y:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->r:I

    .line 2148
    :goto_0
    iget v0, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->y:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->z:I

    .line 2150
    :cond_0
    return-void

    .line 2146
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->y:I

    goto :goto_0
.end method

.method static synthetic m(Lcom/viber/voip/widget/dslv/DragSortListView;)I
    .locals 1
    .parameter

    .prologue
    .line 67
    iget v0, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->k:I

    return v0
.end method

.method private m()V
    .locals 7

    .prologue
    .line 2379
    iget-object v0, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->V:Lcom/viber/voip/widget/dslv/p;

    if-eqz v0, :cond_0

    .line 2380
    iget-object v0, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->c:Landroid/graphics/Point;

    iget v1, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->N:I

    iget v2, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->O:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    .line 2381
    iget-object v0, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->V:Lcom/viber/voip/widget/dslv/p;

    iget-object v1, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->a:Landroid/view/View;

    iget-object v2, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->b:Landroid/graphics/Point;

    iget-object v3, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->c:Landroid/graphics/Point;

    invoke-interface {v0, v1, v2, v3}, Lcom/viber/voip/widget/dslv/p;->a(Landroid/view/View;Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 2384
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->b:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    .line 2385
    iget-object v1, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->b:Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->y:I

    .line 2388
    invoke-virtual {p0}, Lcom/viber/voip/widget/dslv/DragSortListView;->getPaddingLeft()I

    move-result v1

    .line 2389
    iget v3, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->S:I

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_7

    if-le v0, v1, :cond_7

    .line 2390
    iget-object v0, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->b:Landroid/graphics/Point;

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 2396
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/viber/voip/widget/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result v1

    .line 2397
    invoke-virtual {p0}, Lcom/viber/voip/widget/dslv/DragSortListView;->getFooterViewsCount()I

    move-result v3

    .line 2398
    invoke-virtual {p0}, Lcom/viber/voip/widget/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v4

    .line 2399
    invoke-virtual {p0}, Lcom/viber/voip/widget/dslv/DragSortListView;->getLastVisiblePosition()I

    move-result v5

    .line 2403
    invoke-virtual {p0}, Lcom/viber/voip/widget/dslv/DragSortListView;->getPaddingTop()I

    move-result v0

    .line 2404
    if-ge v4, v1, :cond_2

    .line 2405
    sub-int v0, v1, v4

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/viber/voip/widget/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 2407
    :cond_2
    iget v1, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->S:I

    and-int/lit8 v1, v1, 0x8

    if-nez v1, :cond_3

    .line 2408
    iget v1, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->m:I

    if-gt v4, v1, :cond_3

    .line 2409
    iget v1, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->m:I

    sub-int/2addr v1, v4

    invoke-virtual {p0, v1}, Lcom/viber/voip/widget/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2414
    :cond_3
    invoke-virtual {p0}, Lcom/viber/voip/widget/dslv/DragSortListView;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/viber/voip/widget/dslv/DragSortListView;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v1, v6

    .line 2415
    invoke-virtual {p0}, Lcom/viber/voip/widget/dslv/DragSortListView;->getCount()I

    move-result v6

    sub-int/2addr v6, v3

    add-int/lit8 v6, v6, -0x1

    if-lt v5, v6, :cond_4

    .line 2416
    invoke-virtual {p0}, Lcom/viber/voip/widget/dslv/DragSortListView;->getCount()I

    move-result v1

    sub-int/2addr v1, v3

    add-int/lit8 v1, v1, -0x1

    sub-int/2addr v1, v4

    invoke-virtual {p0, v1}, Lcom/viber/voip/widget/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 2418
    :cond_4
    iget v3, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->S:I

    and-int/lit8 v3, v3, 0x4

    if-nez v3, :cond_5

    .line 2419
    iget v3, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->m:I

    if-lt v5, v3, :cond_5

    .line 2420
    iget v3, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->m:I

    sub-int/2addr v3, v4

    invoke-virtual {p0, v3}, Lcom/viber/voip/widget/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 2428
    :cond_5
    if-ge v2, v0, :cond_8

    .line 2429
    iget-object v1, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->b:Landroid/graphics/Point;

    iput v0, v1, Landroid/graphics/Point;->y:I

    .line 2435
    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->b:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget v1, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->z:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->d:I

    .line 2436
    return-void

    .line 2391
    :cond_7
    iget v3, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->S:I

    and-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_1

    if-ge v0, v1, :cond_1

    .line 2392
    iget-object v0, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->b:Landroid/graphics/Point;

    iput v1, v0, Landroid/graphics/Point;->x:I

    goto/16 :goto_0

    .line 2430
    :cond_8
    iget v0, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->y:I

    add-int/2addr v0, v2

    if-le v0, v1, :cond_6

    .line 2431
    iget-object v0, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->b:Landroid/graphics/Point;

    iget v2, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->y:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Point;->y:I

    goto :goto_1
.end method

.method private n()V
    .locals 2

    .prologue
    .line 2439
    iget-object v0, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->a:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 2440
    iget-object v0, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->a:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2441
    iget-object v0, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->V:Lcom/viber/voip/widget/dslv/p;

    if-eqz v0, :cond_0

    .line 2442
    iget-object v0, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->V:Lcom/viber/voip/widget/dslv/p;

    iget-object v1, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->a:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/viber/voip/widget/dslv/p;->a(Landroid/view/View;)V

    .line 2444
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->a:Landroid/view/View;

    .line 2445
    invoke-virtual {p0}, Lcom/viber/voip/widget/dslv/DragSortListView;->invalidate()V

    .line 2447
    :cond_1
    return-void
.end method

.method static synthetic n(Lcom/viber/voip/widget/dslv/DragSortListView;)Z
    .locals 1
    .parameter

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->al:Z

    return v0
.end method

.method static synthetic o(Lcom/viber/voip/widget/dslv/DragSortListView;)F
    .locals 1
    .parameter

    .prologue
    .line 67
    iget v0, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->am:F

    return v0
.end method

.method static synthetic p(Lcom/viber/voip/widget/dslv/DragSortListView;)V
    .locals 0
    .parameter

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/viber/voip/widget/dslv/DragSortListView;->n()V

    return-void
.end method

.method static synthetic q(Lcom/viber/voip/widget/dslv/DragSortListView;)V
    .locals 0
    .parameter

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/viber/voip/widget/dslv/DragSortListView;->g()V

    return-void
.end method

.method static synthetic r(Lcom/viber/voip/widget/dslv/DragSortListView;)I
    .locals 1
    .parameter

    .prologue
    .line 67
    iget v0, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->d:I

    return v0
.end method

.method static synthetic s(Lcom/viber/voip/widget/dslv/DragSortListView;)F
    .locals 1
    .parameter

    .prologue
    .line 67
    iget v0, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->I:F

    return v0
.end method

.method static synthetic t(Lcom/viber/voip/widget/dslv/DragSortListView;)F
    .locals 1
    .parameter

    .prologue
    .line 67
    iget v0, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->J:F

    return v0
.end method

.method static synthetic u(Lcom/viber/voip/widget/dslv/DragSortListView;)Lcom/viber/voip/widget/dslv/j;
    .locals 1
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->M:Lcom/viber/voip/widget/dslv/j;

    return-object v0
.end method

.method static synthetic v(Lcom/viber/voip/widget/dslv/DragSortListView;)F
    .locals 1
    .parameter

    .prologue
    .line 67
    iget v0, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->H:F

    return v0
.end method

.method static synthetic w(Lcom/viber/voip/widget/dslv/DragSortListView;)F
    .locals 1
    .parameter

    .prologue
    .line 67
    iget v0, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->K:F

    return v0
.end method

.method static synthetic x(Lcom/viber/voip/widget/dslv/DragSortListView;)I
    .locals 1
    .parameter

    .prologue
    .line 67
    iget v0, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->Q:I

    return v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 1492
    iget v0, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->w:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 1493
    iget-object v0, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->C:Lcom/viber/voip/widget/dslv/k;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/viber/voip/widget/dslv/k;->a(Z)V

    .line 1494
    invoke-direct {p0}, Lcom/viber/voip/widget/dslv/DragSortListView;->n()V

    .line 1495
    invoke-direct {p0}, Lcom/viber/voip/widget/dslv/DragSortListView;->e()V

    .line 1496
    invoke-direct {p0}, Lcom/viber/voip/widget/dslv/DragSortListView;->k()V

    .line 1498
    iget-boolean v0, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->U:Z

    if-eqz v0, :cond_1

    .line 1499
    const/4 v0, 0x3

    iput v0, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->w:I

    .line 1504
    :cond_0
    :goto_0
    return-void

    .line 1501
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->w:I

    goto :goto_0
.end method

.method public a(FF)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/high16 v1, 0x3f00

    .line 1793
    cmpl-float v0, p2, v1

    if-lez v0, :cond_1

    .line 1794
    iput v1, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->E:F

    .line 1799
    :goto_0
    cmpl-float v0, p1, v1

    if-lez v0, :cond_2

    .line 1800
    iput v1, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->D:F

    .line 1805
    :goto_1
    invoke-virtual {p0}, Lcom/viber/voip/widget/dslv/DragSortListView;->getHeight()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1806
    invoke-direct {p0}, Lcom/viber/voip/widget/dslv/DragSortListView;->j()V

    .line 1808
    :cond_0
    return-void

    .line 1796
    :cond_1
    iput p2, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->E:F

    goto :goto_0

    .line 1802
    :cond_2
    iput p1, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->D:F

    goto :goto_1
.end method

.method public a(I)V
    .locals 1
    .parameter

    .prologue
    .line 1421
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->al:Z

    .line 1422
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/viber/voip/widget/dslv/DragSortListView;->a(IF)V

    .line 1423
    return-void
.end method

.method public a(IF)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x4

    .line 1433
    iget v0, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->w:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->w:I

    if-ne v0, v2, :cond_3

    .line 1435
    :cond_0
    iget v0, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->w:I

    if-nez v0, :cond_1

    .line 1437
    invoke-virtual {p0}, Lcom/viber/voip/widget/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result v0

    add-int/2addr v0, p1

    iput v0, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->m:I

    .line 1438
    iget v0, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->m:I

    iput v0, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->j:I

    .line 1439
    iget v0, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->m:I

    iput v0, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->k:I

    .line 1440
    iget v0, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->m:I

    iput v0, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->i:I

    .line 1441
    iget v0, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->m:I

    invoke-virtual {p0}, Lcom/viber/voip/widget/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/viber/voip/widget/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1442
    if-eqz v0, :cond_1

    .line 1443
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1447
    :cond_1
    const/4 v0, 0x1

    iput v0, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->w:I

    .line 1448
    iput p2, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->am:F

    .line 1450
    iget-boolean v0, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->U:Z

    if-eqz v0, :cond_2

    .line 1451
    iget v0, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->Z:I

    packed-switch v0, :pswitch_data_0

    .line 1461
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->ai:Lcom/viber/voip/widget/dslv/s;

    if-eqz v0, :cond_4

    .line 1462
    iget-object v0, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->ai:Lcom/viber/voip/widget/dslv/s;

    invoke-virtual {v0}, Lcom/viber/voip/widget/dslv/s;->c()V

    .line 1467
    :cond_3
    :goto_1
    return-void

    .line 1453
    :pswitch_0
    iget-object v0, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->W:Landroid/view/MotionEvent;

    invoke-super {p0, v0}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 1456
    :pswitch_1
    iget-object v0, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->W:Landroid/view/MotionEvent;

    invoke-super {p0, v0}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 1464
    :cond_4
    invoke-direct {p0, p1}, Lcom/viber/voip/widget/dslv/DragSortListView;->c(I)V

    goto :goto_1

    .line 1451
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public a(IIII)Z
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 2237
    iget-boolean v1, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->U:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->V:Lcom/viber/voip/widget/dslv/p;

    if-nez v1, :cond_1

    .line 2246
    :cond_0
    :goto_0
    return v0

    .line 2241
    :cond_1
    iget-object v1, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->V:Lcom/viber/voip/widget/dslv/p;

    invoke-interface {v1, p1}, Lcom/viber/voip/widget/dslv/p;->a(I)Landroid/view/View;

    move-result-object v2

    .line 2243
    if-eqz v2, :cond_0

    move-object v0, p0

    move v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 2246
    invoke-virtual/range {v0 .. v5}, Lcom/viber/voip/widget/dslv/DragSortListView;->a(ILandroid/view/View;III)Z

    move-result v0

    goto :goto_0
.end method

.method public a(ILandroid/view/View;III)Z
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x4

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2274
    iget v2, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->w:I

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->U:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->a:Landroid/view/View;

    if-nez v2, :cond_0

    if-eqz p2, :cond_0

    iget-boolean v2, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->v:Z

    if-nez v2, :cond_2

    :cond_0
    move v0, v1

    .line 2333
    :cond_1
    :goto_0
    return v0

    .line 2279
    :cond_2
    invoke-virtual {p0}, Lcom/viber/voip/widget/dslv/DragSortListView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 2280
    invoke-virtual {p0}, Lcom/viber/voip/widget/dslv/DragSortListView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 2283
    :cond_3
    invoke-virtual {p0}, Lcom/viber/voip/widget/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result v2

    add-int/2addr v2, p1

    .line 2284
    iput v2, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->j:I

    .line 2285
    iput v2, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->k:I

    .line 2286
    iput v2, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->m:I

    .line 2287
    iput v2, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->i:I

    .line 2290
    iput v4, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->w:I

    .line 2291
    iput v1, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->S:I

    .line 2292
    iget v1, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->S:I

    or-int/2addr v1, p3

    iput v1, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->S:I

    .line 2294
    iput-object p2, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->a:Landroid/view/View;

    .line 2295
    invoke-direct {p0}, Lcom/viber/voip/widget/dslv/DragSortListView;->l()V

    .line 2297
    iput p4, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->n:I

    .line 2298
    iput p5, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->o:I

    .line 2299
    iget v1, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->O:I

    iput v1, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->R:I

    .line 2302
    iget-object v1, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->b:Landroid/graphics/Point;

    iget v2, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->N:I

    iget v3, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->n:I

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Point;->x:I

    .line 2303
    iget-object v1, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->b:Landroid/graphics/Point;

    iget v2, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->O:I

    iget v3, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->o:I

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Point;->y:I

    .line 2306
    iget v1, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->m:I

    invoke-virtual {p0}, Lcom/viber/voip/widget/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/viber/voip/widget/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2308
    if-eqz v1, :cond_4

    .line 2309
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2312
    :cond_4
    iget-boolean v1, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->ad:Z

    if-eqz v1, :cond_5

    .line 2313
    iget-object v1, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->ae:Lcom/viber/voip/widget/dslv/m;

    invoke-virtual {v1}, Lcom/viber/voip/widget/dslv/m;->a()V

    .line 2318
    :cond_5
    iget v1, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->Z:I

    packed-switch v1, :pswitch_data_0

    .line 2327
    :goto_1
    invoke-virtual {p0}, Lcom/viber/voip/widget/dslv/DragSortListView;->requestLayout()V

    .line 2329
    iget-object v1, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->aj:Lcom/viber/voip/widget/dslv/r;

    if-eqz v1, :cond_1

    .line 2330
    iget-object v1, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->aj:Lcom/viber/voip/widget/dslv/r;

    invoke-virtual {v1}, Lcom/viber/voip/widget/dslv/r;->c()V

    goto :goto_0

    .line 2320
    :pswitch_0
    iget-object v1, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->W:Landroid/view/MotionEvent;

    invoke-super {p0, v1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_1

    .line 2323
    :pswitch_1
    iget-object v1, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->W:Landroid/view/MotionEvent;

    invoke-super {p0, v1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_1

    .line 2318
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected a(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x4

    .line 2183
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 2185
    packed-switch v0, :pswitch_data_0

    .line 2204
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 2187
    :pswitch_0
    iget v0, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->w:I

    if-ne v0, v1, :cond_0

    .line 2188
    invoke-virtual {p0}, Lcom/viber/voip/widget/dslv/DragSortListView;->a()V

    .line 2190
    :cond_0
    invoke-direct {p0}, Lcom/viber/voip/widget/dslv/DragSortListView;->i()V

    goto :goto_0

    .line 2194
    :pswitch_1
    iget v0, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->w:I

    if-ne v0, v1, :cond_1

    .line 2195
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/viber/voip/widget/dslv/DragSortListView;->a(Z)Z

    .line 2197
    :cond_1
    invoke-direct {p0}, Lcom/viber/voip/widget/dslv/DragSortListView;->i()V

    goto :goto_0

    .line 2200
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-direct {p0, v0, v1}, Lcom/viber/voip/widget/dslv/DragSortListView;->b(II)V

    goto :goto_0

    .line 2185
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public a(Z)Z
    .locals 1
    .parameter

    .prologue
    .line 1595
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->al:Z

    .line 1596
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/viber/voip/widget/dslv/DragSortListView;->b(ZF)Z

    move-result v0

    return v0
.end method

.method public a(ZF)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1601
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->al:Z

    .line 1602
    invoke-virtual {p0, p1, p2}, Lcom/viber/voip/widget/dslv/DragSortListView;->b(ZF)Z

    move-result v0

    return v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 1712
    iget-boolean v0, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->an:Z

    return v0
.end method

.method public b(ZF)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 1606
    iget-object v1, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->a:Landroid/view/View;

    if-eqz v1, :cond_3

    .line 1607
    iget-object v1, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->C:Lcom/viber/voip/widget/dslv/k;

    invoke-virtual {v1, v0}, Lcom/viber/voip/widget/dslv/k;->a(Z)V

    .line 1609
    if-eqz p1, :cond_1

    .line 1610
    iget v1, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->m:I

    invoke-virtual {p0}, Lcom/viber/voip/widget/dslv/DragSortListView;->getHeaderViewsCount()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1, p2}, Lcom/viber/voip/widget/dslv/DragSortListView;->a(IF)V

    .line 1619
    :goto_0
    iget-boolean v1, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->ad:Z

    if-eqz v1, :cond_0

    .line 1620
    iget-object v1, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->ae:Lcom/viber/voip/widget/dslv/m;

    invoke-virtual {v1}, Lcom/viber/voip/widget/dslv/m;->d()V

    .line 1626
    :cond_0
    :goto_1
    return v0

    .line 1612
    :cond_1
    iget-object v1, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->ak:Lcom/viber/voip/widget/dslv/n;

    if-eqz v1, :cond_2

    .line 1613
    iget-object v1, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->ak:Lcom/viber/voip/widget/dslv/n;

    invoke-virtual {v1}, Lcom/viber/voip/widget/dslv/n;->c()V

    goto :goto_0

    .line 1615
    :cond_2
    invoke-direct {p0}, Lcom/viber/voip/widget/dslv/DragSortListView;->f()V

    goto :goto_0

    .line 1626
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 2525
    iget-boolean v0, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->v:Z

    return v0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x0

    const/4 v1, 0x0

    .line 800
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 802
    iget v0, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->w:I

    if-eqz v0, :cond_1

    .line 804
    iget v0, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->j:I

    iget v2, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->m:I

    if-eq v0, v2, :cond_0

    .line 805
    iget v0, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->j:I

    invoke-direct {p0, v0, p1}, Lcom/viber/voip/widget/dslv/DragSortListView;->a(ILandroid/graphics/Canvas;)V

    .line 807
    :cond_0
    iget v0, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->k:I

    iget v2, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->j:I

    if-eq v0, v2, :cond_1

    iget v0, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->k:I

    iget v2, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->m:I

    if-eq v0, v2, :cond_1

    .line 808
    iget v0, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->k:I

    invoke-direct {p0, v0, p1}, Lcom/viber/voip/widget/dslv/DragSortListView;->a(ILandroid/graphics/Canvas;)V

    .line 812
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->a:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 814
    iget-object v0, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 815
    iget-object v0, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v4

    .line 817
    iget-object v0, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->b:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    .line 819
    invoke-virtual {p0}, Lcom/viber/voip/widget/dslv/DragSortListView;->getWidth()I

    move-result v3

    .line 820
    if-gez v0, :cond_2

    .line 821
    neg-int v0, v0

    .line 823
    :cond_2
    if-ge v0, v3, :cond_5

    .line 824
    sub-int v0, v3, v0

    int-to-float v0, v0

    int-to-float v3, v3

    div-float/2addr v0, v3

    .line 825
    mul-float/2addr v0, v0

    .line 830
    :goto_0
    const/high16 v3, 0x437f

    iget v5, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->h:F

    mul-float/2addr v3, v5

    mul-float/2addr v0, v3

    float-to-int v5, v0

    .line 832
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 834
    iget-object v0, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->b:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget-object v3, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->b:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    iget v6, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->r:I

    sub-int/2addr v3, v6

    int-to-float v3, v3

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 835
    invoke-virtual {p1, v7, v7, v2, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 842
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xa

    if-le v0, v3, :cond_3

    .line 843
    int-to-float v3, v2

    int-to-float v4, v4

    const/16 v6, 0x1f

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 845
    :cond_3
    iget-object v0, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->a:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 846
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 850
    :cond_4
    return-void

    :cond_5
    move v0, v1

    .line 827
    goto :goto_0
.end method

.method public getFloatAlpha()F
    .locals 1

    .prologue
    .line 593
    iget v0, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->h:F

    return v0
.end method

.method public getInputAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 646
    iget-object v0, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->ac:Lcom/viber/voip/widget/dslv/g;

    if-nez v0, :cond_0

    .line 647
    const/4 v0, 0x0

    .line 649
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->ac:Lcom/viber/voip/widget/dslv/g;

    invoke-virtual {v0}, Lcom/viber/voip/widget/dslv/g;->a()Landroid/widget/ListAdapter;

    move-result-object v0

    goto :goto_0
.end method

.method protected layoutChildren()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2167
    invoke-super {p0}, Landroid/widget/ListView;->layoutChildren()V

    .line 2169
    iget-object v0, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->a:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 2170
    iget-object v0, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->e:Z

    if-nez v0, :cond_0

    .line 2174
    invoke-direct {p0}, Lcom/viber/voip/widget/dslv/DragSortListView;->l()V

    .line 2176
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->a:Landroid/view/View;

    iget-object v1, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 2177
    iput-boolean v3, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->e:Z

    .line 2179
    :cond_1
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter

    .prologue
    .line 1143
    invoke-super {p0, p1}, Landroid/widget/ListView;->onDraw(Landroid/graphics/Canvas;)V

    .line 1145
    iget-boolean v0, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->ad:Z

    if-eqz v0, :cond_0

    .line 1146
    iget-object v0, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->ae:Lcom/viber/voip/widget/dslv/m;

    invoke-virtual {v0}, Lcom/viber/voip/widget/dslv/m;->b()V

    .line 1148
    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    .line 1719
    iget-boolean v1, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->v:Z

    if-nez v1, :cond_0

    .line 1720
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 1767
    :goto_0
    return v0

    .line 1723
    :cond_0
    invoke-direct {p0, p1}, Lcom/viber/voip/widget/dslv/DragSortListView;->b(Landroid/view/MotionEvent;)V

    .line 1724
    iput-boolean v0, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->T:Z

    .line 1726
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v3, v1, 0xff

    .line 1728
    if-nez v3, :cond_2

    .line 1729
    iget v1, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->w:I

    if-eqz v1, :cond_1

    .line 1731
    iput-boolean v0, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->ag:Z

    goto :goto_0

    .line 1734
    :cond_1
    iput-boolean v0, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->U:Z

    .line 1740
    :cond_2
    iget-object v1, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->a:Landroid/view/View;

    if-eqz v1, :cond_5

    move v1, v0

    .line 1763
    :goto_1
    if-eq v3, v0, :cond_3

    const/4 v0, 0x3

    if-ne v3, v0, :cond_4

    .line 1764
    :cond_3
    iput-boolean v2, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->U:Z

    :cond_4
    move v0, v1

    .line 1767
    goto :goto_0

    .line 1744
    :cond_5
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1745
    iput-boolean v0, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->an:Z

    move v1, v0

    .line 1749
    :goto_2
    packed-switch v3, :pswitch_data_0

    .line 1755
    :pswitch_0
    if-eqz v1, :cond_6

    .line 1756
    iput v0, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->Z:I

    goto :goto_1

    .line 1752
    :pswitch_1
    invoke-direct {p0}, Lcom/viber/voip/widget/dslv/DragSortListView;->i()V

    goto :goto_1

    .line 1758
    :cond_6
    const/4 v4, 0x2

    iput v4, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->Z:I

    goto :goto_1

    :cond_7
    move v1, v2

    goto :goto_2

    .line 1749
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2154
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->onMeasure(II)V

    .line 2156
    iget-object v0, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->a:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 2157
    iget-object v0, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2158
    invoke-direct {p0}, Lcom/viber/voip/widget/dslv/DragSortListView;->l()V

    .line 2160
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->e:Z

    .line 2162
    :cond_1
    iput p1, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->A:I

    .line 2163
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1873
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ListView;->onSizeChanged(IIII)V

    .line 1874
    invoke-direct {p0}, Lcom/viber/voip/widget/dslv/DragSortListView;->j()V

    .line 1875
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1632
    iget-boolean v2, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->ag:Z

    if-eqz v2, :cond_1

    .line 1633
    iput-boolean v0, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->ag:Z

    .line 1679
    :cond_0
    :goto_0
    return v0

    .line 1637
    :cond_1
    iget-boolean v2, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->v:Z

    if-nez v2, :cond_2

    .line 1638
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 1643
    :cond_2
    iget-boolean v2, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->T:Z

    .line 1644
    iput-boolean v0, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->T:Z

    .line 1646
    if-nez v2, :cond_3

    .line 1647
    invoke-direct {p0, p1}, Lcom/viber/voip/widget/dslv/DragSortListView;->b(Landroid/view/MotionEvent;)V

    .line 1651
    :cond_3
    iget v2, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->w:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_4

    .line 1652
    invoke-virtual {p0, p1}, Lcom/viber/voip/widget/dslv/DragSortListView;->a(Landroid/view/MotionEvent;)Z

    move v0, v1

    .line 1653
    goto :goto_0

    .line 1659
    :cond_4
    iget v2, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->w:I

    if-nez v2, :cond_5

    .line 1660
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_5

    move v0, v1

    .line 1665
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    .line 1667
    packed-switch v2, :pswitch_data_0

    .line 1673
    :pswitch_0
    if-eqz v0, :cond_0

    .line 1674
    iput v1, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->Z:I

    goto :goto_0

    .line 1670
    :pswitch_1
    invoke-direct {p0}, Lcom/viber/voip/widget/dslv/DragSortListView;->i()V

    goto :goto_0

    .line 1667
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 2069
    iget-boolean v0, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->af:Z

    if-nez v0, :cond_0

    .line 2070
    invoke-super {p0}, Landroid/widget/ListView;->requestLayout()V

    .line 2072
    :cond_0
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .parameter

    .prologue
    .line 67
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/viber/voip/widget/dslv/DragSortListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1
    .parameter

    .prologue
    .line 618
    if-eqz p1, :cond_3

    .line 619
    new-instance v0, Lcom/viber/voip/widget/dslv/g;

    invoke-direct {v0, p0, p1}, Lcom/viber/voip/widget/dslv/g;-><init>(Lcom/viber/voip/widget/dslv/DragSortListView;Landroid/widget/ListAdapter;)V

    iput-object v0, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->ac:Lcom/viber/voip/widget/dslv/g;

    .line 620
    iget-object v0, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->f:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 622
    instance-of v0, p1, Lcom/viber/voip/widget/dslv/o;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 623
    check-cast v0, Lcom/viber/voip/widget/dslv/o;

    invoke-virtual {p0, v0}, Lcom/viber/voip/widget/dslv/DragSortListView;->setDropListener(Lcom/viber/voip/widget/dslv/o;)V

    .line 625
    :cond_0
    instance-of v0, p1, Lcom/viber/voip/widget/dslv/i;

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 626
    check-cast v0, Lcom/viber/voip/widget/dslv/i;

    invoke-virtual {p0, v0}, Lcom/viber/voip/widget/dslv/DragSortListView;->setDragListener(Lcom/viber/voip/widget/dslv/i;)V

    .line 628
    :cond_1
    instance-of v0, p1, Lcom/viber/voip/widget/dslv/t;

    if-eqz v0, :cond_2

    .line 629
    check-cast p1, Lcom/viber/voip/widget/dslv/t;

    invoke-virtual {p0, p1}, Lcom/viber/voip/widget/dslv/DragSortListView;->setRemoveListener(Lcom/viber/voip/widget/dslv/t;)V

    .line 635
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->ac:Lcom/viber/voip/widget/dslv/g;

    invoke-super {p0, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 636
    return-void

    .line 632
    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->ac:Lcom/viber/voip/widget/dslv/g;

    goto :goto_0
.end method

.method public setDragEnabled(Z)V
    .locals 0
    .parameter

    .prologue
    .line 2521
    iput-boolean p1, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->v:Z

    .line 2522
    return-void
.end method

.method public setDragListener(Lcom/viber/voip/widget/dslv/i;)V
    .locals 0
    .parameter

    .prologue
    .line 2507
    iput-object p1, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->s:Lcom/viber/voip/widget/dslv/i;

    .line 2508
    return-void
.end method

.method public setDragScrollProfile(Lcom/viber/voip/widget/dslv/j;)V
    .locals 0
    .parameter

    .prologue
    .line 2604
    if-eqz p1, :cond_0

    .line 2605
    iput-object p1, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->M:Lcom/viber/voip/widget/dslv/j;

    .line 2607
    :cond_0
    return-void
.end method

.method public setDragScrollStart(F)V
    .locals 0
    .parameter

    .prologue
    .line 1779
    invoke-virtual {p0, p1, p1}, Lcom/viber/voip/widget/dslv/DragSortListView;->a(FF)V

    .line 1780
    return-void
.end method

.method public setDragSortListener(Lcom/viber/voip/widget/dslv/l;)V
    .locals 0
    .parameter

    .prologue
    .line 2591
    invoke-virtual {p0, p1}, Lcom/viber/voip/widget/dslv/DragSortListView;->setDropListener(Lcom/viber/voip/widget/dslv/o;)V

    .line 2592
    invoke-virtual {p0, p1}, Lcom/viber/voip/widget/dslv/DragSortListView;->setDragListener(Lcom/viber/voip/widget/dslv/i;)V

    .line 2593
    invoke-virtual {p0, p1}, Lcom/viber/voip/widget/dslv/DragSortListView;->setRemoveListener(Lcom/viber/voip/widget/dslv/t;)V

    .line 2594
    return-void
.end method

.method public setDropListener(Lcom/viber/voip/widget/dslv/o;)V
    .locals 0
    .parameter

    .prologue
    .line 2541
    iput-object p1, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->t:Lcom/viber/voip/widget/dslv/o;

    .line 2542
    return-void
.end method

.method public setFloatAlpha(F)V
    .locals 0
    .parameter

    .prologue
    .line 589
    iput p1, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->h:F

    .line 590
    return-void
.end method

.method public setFloatViewManager(Lcom/viber/voip/widget/dslv/p;)V
    .locals 0
    .parameter

    .prologue
    .line 2503
    iput-object p1, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->V:Lcom/viber/voip/widget/dslv/p;

    .line 2504
    return-void
.end method

.method public setMaxScrollSpeed(F)V
    .locals 0
    .parameter

    .prologue
    .line 603
    iput p1, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->L:F

    .line 604
    return-void
.end method

.method public setRemoveListener(Lcom/viber/voip/widget/dslv/t;)V
    .locals 0
    .parameter

    .prologue
    .line 2555
    iput-object p1, p0, Lcom/viber/voip/widget/dslv/DragSortListView;->u:Lcom/viber/voip/widget/dslv/t;

    .line 2556
    return-void
.end method
