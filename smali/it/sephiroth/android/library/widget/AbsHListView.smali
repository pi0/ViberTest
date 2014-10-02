.class public abstract Lit/sephiroth/android/library/widget/AbsHListView;
.super Lit/sephiroth/android/library/widget/u;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lit/sephiroth/android/library/widget/u",
        "<",
        "Landroid/widget/ListAdapter;",
        ">;",
        "Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;",
        "Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;"
    }
.end annotation


# static fields
.field static final U:Landroid/view/animation/Interpolator;

.field public static final V:[I

.field private static bc:Z


# instance fields
.field protected A:Z

.field protected B:I

.field C:I

.field D:I

.field E:I

.field F:I

.field protected G:I

.field H:I

.field I:I

.field protected J:Lit/sephiroth/android/library/widget/m;

.field protected K:I

.field protected L:Z

.field M:Z

.field protected N:I

.field protected O:I

.field protected P:Ljava/lang/Runnable;

.field protected final Q:[Z

.field R:I

.field S:I

.field protected T:Z

.field private a:Landroid/view/VelocityTracker;

.field private aA:Lit/sephiroth/android/library/widget/e;

.field private aB:Ljava/lang/Runnable;

.field private aC:Lit/sephiroth/android/library/widget/d;

.field private aD:Lit/sephiroth/android/library/widget/l;

.field private aE:Ljava/lang/Runnable;

.field private aF:I

.field private aG:I

.field private aH:Z

.field private aI:I

.field private aJ:I

.field private aK:Ljava/lang/Runnable;

.field private aL:I

.field private aM:I

.field private aN:F

.field private aO:I

.field private aP:Lit/sephiroth/android/library/widget/ac;

.field private aQ:Lit/sephiroth/android/library/widget/ac;

.field private aR:I

.field private aS:I

.field private aT:I

.field private aU:Z

.field private aV:I

.field private aW:I

.field private aX:Lit/sephiroth/android/library/widget/j;

.field private aY:I

.field private aZ:I

.field private au:Lit/sephiroth/android/library/widget/g;

.field private av:Lit/sephiroth/android/library/widget/k;

.field private aw:Z

.field private ax:Landroid/graphics/Rect;

.field private ay:Landroid/view/ContextMenu$ContextMenuInfo;

.field private az:I

.field b:Lit/sephiroth/android/library/a/b;

.field private ba:I

.field private bb:Lit/sephiroth/android/library/widget/AbsHListView$SavedState;

.field private bd:F

.field protected c:I

.field public d:Ljava/lang/Object;

.field e:Ljava/lang/Object;

.field f:I

.field protected g:Landroid/support/v4/util/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SparseArrayCompat",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field h:Landroid/support/v4/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LongSparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected i:I

.field protected j:Lit/sephiroth/android/library/widget/c;

.field protected k:Landroid/widget/ListAdapter;

.field l:Z

.field m:Z

.field n:Landroid/graphics/drawable/Drawable;

.field o:I

.field protected p:Landroid/graphics/Rect;

.field protected final q:Lit/sephiroth/android/library/widget/p;

.field r:I

.field s:I

.field t:I

.field u:I

.field protected v:Landroid/graphics/Rect;

.field protected w:I

.field x:Landroid/view/View;

.field y:Landroid/view/View;

.field protected z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 545
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Lit/sephiroth/android/library/widget/AbsHListView;->U:Landroid/view/animation/Interpolator;

    .line 553
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x9

    if-lt v0, v3, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lit/sephiroth/android/library/widget/AbsHListView;->bc:Z

    .line 2295
    new-array v0, v1, [I

    aput v2, v0, v2

    sput-object v0, Lit/sephiroth/android/library/widget/AbsHListView;->V:[I

    return-void

    :cond_0
    move v0, v2

    .line 553
    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 624
    invoke-direct {p0, p1}, Lit/sephiroth/android/library/widget/u;-><init>(Landroid/content/Context;)V

    .line 166
    iput v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->c:I

    .line 200
    iput v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->i:I

    .line 220
    iput-boolean v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->m:Z

    .line 230
    iput v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->o:I

    .line 235
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->p:Landroid/graphics/Rect;

    .line 240
    new-instance v0, Lit/sephiroth/android/library/widget/p;

    invoke-direct {v0, p0}, Lit/sephiroth/android/library/widget/p;-><init>(Lit/sephiroth/android/library/widget/AbsHListView;)V

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->q:Lit/sephiroth/android/library/widget/p;

    .line 245
    iput v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->r:I

    .line 250
    iput v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->s:I

    .line 255
    iput v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->t:I

    .line 260
    iput v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->u:I

    .line 265
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->v:Landroid/graphics/Rect;

    .line 270
    iput v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->w:I

    .line 316
    iput v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->G:I

    .line 347
    iput v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->K:I

    .line 372
    iput-boolean v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aw:Z

    .line 382
    iput v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->N:I

    .line 384
    const/4 v0, 0x0

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ay:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 409
    iput v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->az:I

    .line 454
    iput v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aI:I

    .line 462
    const/high16 v0, 0x3f80

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aN:F

    .line 464
    new-array v0, v3, [Z

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->Q:[Z

    .line 469
    iput v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aO:I

    .line 514
    iput v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aT:I

    .line 625
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->y()V

    .line 626
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 629
    const v0, 0x7f010180

    invoke-direct {p0, p1, p2, v0}, Lit/sephiroth/android/library/widget/AbsHListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 630
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v4, -0x1

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 633
    invoke-direct {p0, p1, p2, p3}, Lit/sephiroth/android/library/widget/u;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 166
    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->c:I

    .line 200
    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->i:I

    .line 220
    iput-boolean v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->m:Z

    .line 230
    iput v4, p0, Lit/sephiroth/android/library/widget/AbsHListView;->o:I

    .line 235
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->p:Landroid/graphics/Rect;

    .line 240
    new-instance v3, Lit/sephiroth/android/library/widget/p;

    invoke-direct {v3, p0}, Lit/sephiroth/android/library/widget/p;-><init>(Lit/sephiroth/android/library/widget/AbsHListView;)V

    iput-object v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->q:Lit/sephiroth/android/library/widget/p;

    .line 245
    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->r:I

    .line 250
    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->s:I

    .line 255
    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->t:I

    .line 260
    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->u:I

    .line 265
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->v:Landroid/graphics/Rect;

    .line 270
    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->w:I

    .line 316
    iput v4, p0, Lit/sephiroth/android/library/widget/AbsHListView;->G:I

    .line 347
    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->K:I

    .line 372
    iput-boolean v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aw:Z

    .line 382
    iput v4, p0, Lit/sephiroth/android/library/widget/AbsHListView;->N:I

    .line 384
    iput-object v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ay:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 409
    iput v4, p0, Lit/sephiroth/android/library/widget/AbsHListView;->az:I

    .line 454
    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aI:I

    .line 462
    const/high16 v3, 0x3f80

    iput v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aN:F

    .line 464
    new-array v3, v1, [Z

    iput-object v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->Q:[Z

    .line 469
    iput v4, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aO:I

    .line 514
    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aT:I

    .line 639
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->y()V

    .line 641
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    .line 643
    sget-object v4, Lcom/viber/voip/bb;->AbsHListView:[I

    invoke-virtual {v3, p2, v4, p3, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v8

    .line 654
    if-eqz v8, :cond_1

    .line 655
    invoke-virtual {v8, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 656
    invoke-virtual {v8, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    .line 657
    const/4 v2, 0x6

    invoke-virtual {v8, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    .line 658
    const/4 v2, 0x2

    invoke-virtual {v8, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    .line 659
    const/4 v2, 0x7

    invoke-virtual {v8, v2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 660
    const/4 v2, 0x3

    invoke-virtual {v8, v2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    .line 661
    const/4 v9, 0x5

    invoke-virtual {v8, v9, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 662
    const/4 v9, 0x4

    invoke-virtual {v8, v9, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 663
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 677
    :goto_0
    if-eqz v7, :cond_0

    .line 678
    invoke-virtual {p0, v7}, Lit/sephiroth/android/library/widget/AbsHListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 681
    :cond_0
    iput-boolean v6, p0, Lit/sephiroth/android/library/widget/AbsHListView;->m:Z

    .line 682
    invoke-virtual {p0, v5}, Lit/sephiroth/android/library/widget/AbsHListView;->setStackFromRight(Z)V

    .line 683
    invoke-virtual {p0, v4}, Lit/sephiroth/android/library/widget/AbsHListView;->setScrollingCacheEnabled(Z)V

    .line 684
    invoke-virtual {p0, v3}, Lit/sephiroth/android/library/widget/AbsHListView;->setTranscriptMode(I)V

    .line 685
    invoke-virtual {p0, v2}, Lit/sephiroth/android/library/widget/AbsHListView;->setCacheColorHint(I)V

    .line 686
    invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/AbsHListView;->setSmoothScrollbarEnabled(Z)V

    .line 687
    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->setChoiceMode(I)V

    .line 688
    return-void

    :cond_1
    move v3, v0

    move v4, v1

    move v5, v0

    move v6, v0

    move-object v7, v2

    move v2, v0

    goto :goto_0
.end method

.method private A()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1077
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildCount()I

    move-result v2

    .line 1078
    if-nez v2, :cond_1

    .line 1081
    :cond_0
    :goto_0
    return v0

    .line 1079
    :cond_1
    iget v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ao:I

    if-eq v2, v3, :cond_2

    move v0, v1

    goto :goto_0

    .line 1081
    :cond_2
    invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    iget-object v4, p0, Lit/sephiroth/android/library/widget/AbsHListView;->v:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    if-lt v3, v4, :cond_3

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getWidth()I

    move-result v3

    iget-object v4, p0, Lit/sephiroth/android/library/widget/AbsHListView;->v:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    if-le v2, v3, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method private B()V
    .locals 2

    .prologue
    .line 1262
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080062

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 1263
    return-void
.end method

.method private C()V
    .locals 1

    .prologue
    .line 3512
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->a:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 3513
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->a:Landroid/view/VelocityTracker;

    .line 3517
    :goto_0
    return-void

    .line 3515
    :cond_0
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->a:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_0
.end method

.method private D()V
    .locals 1

    .prologue
    .line 3520
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->a:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 3521
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->a:Landroid/view/VelocityTracker;

    .line 3523
    :cond_0
    return-void
.end method

.method private E()V
    .locals 1

    .prologue
    .line 3526
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->a:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 3527
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->a:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 3528
    const/4 v0, 0x0

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->a:Landroid/view/VelocityTracker;

    .line 3530
    :cond_0
    return-void
.end method

.method private F()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 4532
    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->M:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->z:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->b:Lit/sephiroth/android/library/a/b;

    invoke-virtual {v0}, Lit/sephiroth/android/library/a/b;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4533
    invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/AbsHListView;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 4534
    invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/AbsHListView;->setChildrenDrawingCacheEnabled(Z)V

    .line 4535
    iput-boolean v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->A:Z

    iput-boolean v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->z:Z

    .line 4537
    :cond_0
    return-void
.end method

.method private G()V
    .locals 1

    .prologue
    .line 4540
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->b:Lit/sephiroth/android/library/a/b;

    invoke-virtual {v0}, Lit/sephiroth/android/library/a/b;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4541
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aK:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 4542
    new-instance v0, Lit/sephiroth/android/library/widget/b;

    invoke-direct {v0, p0}, Lit/sephiroth/android/library/widget/b;-><init>(Lit/sephiroth/android/library/widget/AbsHListView;)V

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aK:Ljava/lang/Runnable;

    .line 4559
    :cond_0
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aK:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->post(Ljava/lang/Runnable;)Z

    .line 4561
    :cond_1
    return-void
.end method

.method private H()V
    .locals 1

    .prologue
    .line 5351
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aP:Lit/sephiroth/android/library/widget/ac;

    if-eqz v0, :cond_0

    .line 5352
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aP:Lit/sephiroth/android/library/widget/ac;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/ac;->b()V

    .line 5353
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aQ:Lit/sephiroth/android/library/widget/ac;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/ac;->b()V

    .line 5355
    :cond_0
    return-void
.end method

.method public static a(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 5177
    sparse-switch p2, :sswitch_data_0

    .line 5210
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT, FOCUS_FORWARD, FOCUS_BACKWARD}."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5179
    :sswitch_0
    iget v3, p0, Landroid/graphics/Rect;->right:I

    .line 5180
    iget v0, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int v2, v0, v1

    .line 5181
    iget v1, p1, Landroid/graphics/Rect;->left:I

    .line 5182
    iget v0, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v0, v4

    .line 5214
    :goto_0
    sub-int/2addr v1, v3

    .line 5215
    sub-int/2addr v0, v2

    .line 5216
    mul-int/2addr v0, v0

    mul-int/2addr v1, v1

    add-int/2addr v0, v1

    return v0

    .line 5185
    :sswitch_1
    iget v0, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int v3, v0, v1

    .line 5186
    iget v2, p0, Landroid/graphics/Rect;->bottom:I

    .line 5187
    iget v0, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v0

    .line 5188
    iget v0, p1, Landroid/graphics/Rect;->top:I

    goto :goto_0

    .line 5191
    :sswitch_2
    iget v3, p0, Landroid/graphics/Rect;->left:I

    .line 5192
    iget v0, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int v2, v0, v1

    .line 5193
    iget v1, p1, Landroid/graphics/Rect;->right:I

    .line 5194
    iget v0, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v0, v4

    .line 5195
    goto :goto_0

    .line 5197
    :sswitch_3
    iget v0, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int v3, v0, v1

    .line 5198
    iget v2, p0, Landroid/graphics/Rect;->top:I

    .line 5199
    iget v0, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v0

    .line 5200
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 5204
    :sswitch_4
    iget v0, p0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int v3, v0, v1

    .line 5205
    iget v0, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int v2, v0, v1

    .line 5206
    iget v0, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v0

    .line 5207
    iget v0, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v0, v4

    .line 5208
    goto :goto_0

    .line 5177
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_4
        0x2 -> :sswitch_4
        0x11 -> :sswitch_2
        0x21 -> :sswitch_3
        0x42 -> :sswitch_0
        0x82 -> :sswitch_1
    .end sparse-switch
.end method

.method static synthetic a(Lit/sephiroth/android/library/widget/AbsHListView;)I
    .locals 1
    .parameter

    .prologue
    .line 60
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static a(Ljava/util/ArrayList;I)Landroid/view/View;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;I)",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 5861
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 5862
    if-lez v3, :cond_2

    .line 5864
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v3, :cond_1

    .line 5865
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 5866
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lit/sephiroth/android/library/widget/i;

    iget v1, v1, Lit/sephiroth/android/library/widget/i;->d:I

    if-ne v1, p1, :cond_0

    .line 5867
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 5873
    :goto_1
    return-object v0

    .line 5864
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 5871
    :cond_1
    add-int/lit8 v0, v3, -0x1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_1

    .line 5873
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method static synthetic a(Lit/sephiroth/android/library/widget/AbsHListView;Lit/sephiroth/android/library/widget/e;)Lit/sephiroth/android/library/widget/e;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aA:Lit/sephiroth/android/library/widget/e;

    return-object p1
.end method

.method private a(IIII)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2114
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->p:Landroid/graphics/Rect;

    iget v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->r:I

    sub-int v1, p1, v1

    iget v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->s:I

    sub-int v2, p2, v2

    iget v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->t:I

    add-int/2addr v3, p3

    iget v4, p0, Lit/sephiroth/android/library/widget/AbsHListView;->u:I

    add-int/2addr v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 2116
    return-void
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter

    .prologue
    .line 2193
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->p:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2194
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->n:Landroid/graphics/drawable/Drawable;

    .line 2195
    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->p:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 2196
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2198
    :cond_0
    return-void
.end method

.method static synthetic a(Lit/sephiroth/android/library/widget/AbsHListView;Landroid/view/View;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 60
    invoke-virtual {p0, p1, p2}, Lit/sephiroth/android/library/widget/AbsHListView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic a(Lit/sephiroth/android/library/widget/AbsHListView;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 60
    invoke-virtual {p0, p1}, Lit/sephiroth/android/library/widget/AbsHListView;->setChildrenDrawnWithCacheEnabled(Z)V

    return-void
.end method

.method static synthetic a(Lit/sephiroth/android/library/widget/AbsHListView;IIIIIIIIZ)Z
    .locals 1
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
    .line 60
    invoke-virtual/range {p0 .. p9}, Lit/sephiroth/android/library/widget/AbsHListView;->overScrollBy(IIIIIIIIZ)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lit/sephiroth/android/library/widget/AbsHListView;)I
    .locals 1
    .parameter

    .prologue
    .line 60
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method private b(Landroid/view/MotionEvent;)V
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 3628
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const v2, 0xff00

    and-int/2addr v0, v2

    shr-int/lit8 v0, v0, 0x8

    .line 3630
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 3631
    iget v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aO:I

    if-ne v2, v3, :cond_0

    .line 3635
    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 3636
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->E:I

    .line 3637
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->F:I

    .line 3638
    iput v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->I:I

    .line 3639
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aO:I

    .line 3641
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 3635
    goto :goto_0
.end method

.method static synthetic b(Lit/sephiroth/android/library/widget/AbsHListView;Landroid/view/View;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 60
    invoke-virtual {p0, p1, p2}, Lit/sephiroth/android/library/widget/AbsHListView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic b(Lit/sephiroth/android/library/widget/AbsHListView;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 60
    invoke-virtual {p0, p1}, Lit/sephiroth/android/library/widget/AbsHListView;->setChildrenDrawingCacheEnabled(Z)V

    return-void
.end method

.method static synthetic b(Lit/sephiroth/android/library/widget/AbsHListView;IIIIIIIIZ)Z
    .locals 1
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
    .line 60
    invoke-virtual/range {p0 .. p9}, Lit/sephiroth/android/library/widget/AbsHListView;->overScrollBy(IIIIIIIIZ)Z

    move-result v0

    return v0
.end method

.method static synthetic c(Lit/sephiroth/android/library/widget/AbsHListView;)Lit/sephiroth/android/library/widget/e;
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aA:Lit/sephiroth/android/library/widget/e;

    return-object v0
.end method

.method static synthetic c(Lit/sephiroth/android/library/widget/AbsHListView;Landroid/view/View;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 60
    invoke-virtual {p0, p1, p2}, Lit/sephiroth/android/library/widget/AbsHListView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic c(Lit/sephiroth/android/library/widget/AbsHListView;IIIIIIIIZ)Z
    .locals 1
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
    .line 60
    invoke-virtual/range {p0 .. p9}, Lit/sephiroth/android/library/widget/AbsHListView;->overScrollBy(IIIIIIIIZ)Z

    move-result v0

    return v0
.end method

.method static synthetic d(Lit/sephiroth/android/library/widget/AbsHListView;)I
    .locals 1
    .parameter

    .prologue
    .line 60
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aO:I

    return v0
.end method

.method static synthetic d(Lit/sephiroth/android/library/widget/AbsHListView;Landroid/view/View;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 60
    invoke-virtual {p0, p1, p2}, Lit/sephiroth/android/library/widget/AbsHListView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic e(Lit/sephiroth/android/library/widget/AbsHListView;)Landroid/view/VelocityTracker;
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->a:Landroid/view/VelocityTracker;

    return-object v0
.end method

.method static synthetic e(Lit/sephiroth/android/library/widget/AbsHListView;Landroid/view/View;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 60
    invoke-virtual {p0, p1, p2}, Lit/sephiroth/android/library/widget/AbsHListView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic f(Lit/sephiroth/android/library/widget/AbsHListView;)I
    .locals 1
    .parameter

    .prologue
    .line 60
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aM:I

    return v0
.end method

.method static synthetic g(Lit/sephiroth/android/library/widget/AbsHListView;)I
    .locals 1
    .parameter

    .prologue
    .line 60
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aL:I

    return v0
.end method

.method private g(I)Z
    .locals 6
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2781
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->E:I

    sub-int v3, p1, v0

    .line 2782
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v4

    .line 2783
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getScrollX()I

    move-result v0

    if-eqz v0, :cond_4

    move v0, v2

    .line 2784
    :goto_0
    if-nez v0, :cond_0

    iget v5, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aJ:I

    if-le v4, v5, :cond_7

    .line 2785
    :cond_0
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->F()V

    .line 2786
    if-eqz v0, :cond_5

    .line 2787
    const/4 v0, 0x5

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->G:I

    .line 2788
    iput v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->I:I

    .line 2793
    :goto_1
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 2797
    if-eqz v0, :cond_1

    .line 2798
    iget-object v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aA:Lit/sephiroth/android/library/widget/e;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2800
    :cond_1
    invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/AbsHListView;->setPressed(Z)V

    .line 2801
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->B:I

    iget v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->W:I

    sub-int/2addr v0, v3

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2802
    if-eqz v0, :cond_2

    .line 2803
    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 2805
    :cond_2
    invoke-virtual {p0, v2}, Lit/sephiroth/android/library/widget/AbsHListView;->b(I)V

    .line 2808
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2809
    if-eqz v0, :cond_3

    .line 2810
    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 2812
    :cond_3
    invoke-direct {p0, p1}, Lit/sephiroth/android/library/widget/AbsHListView;->h(I)V

    move v0, v2

    .line 2816
    :goto_2
    return v0

    :cond_4
    move v0, v1

    .line 2783
    goto :goto_0

    .line 2790
    :cond_5
    const/4 v0, 0x3

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->G:I

    .line 2791
    if-lez v3, :cond_6

    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aJ:I

    :goto_3
    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->I:I

    goto :goto_1

    :cond_6
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aJ:I

    neg-int v0, v0

    goto :goto_3

    :cond_7
    move v0, v1

    .line 2816
    goto :goto_2
.end method

.method private h(I)V
    .locals 13
    .parameter

    .prologue
    .line 2820
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->E:I

    sub-int v12, p1, v0

    .line 2821
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->I:I

    sub-int v1, v12, v0

    .line 2822
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->H:I

    const/high16 v2, -0x8000

    if-eq v0, v2, :cond_8

    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->H:I

    sub-int v0, p1, v0

    .line 2824
    :goto_0
    iget v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->G:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_d

    .line 2826
    iget v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->H:I

    if-eq p1, v2, :cond_7

    .line 2830
    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aJ:I

    if-le v2, v3, :cond_0

    .line 2831
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 2832
    if-eqz v2, :cond_0

    .line 2833
    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 2838
    :cond_0
    iget v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->B:I

    if-ltz v2, :cond_9

    .line 2839
    iget v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->B:I

    iget v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->W:I

    sub-int/2addr v2, v3

    .line 2846
    :goto_1
    const/4 v3, 0x0

    .line 2847
    invoke-virtual {p0, v2}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2848
    if-eqz v4, :cond_1e

    .line 2849
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v3

    move v4, v3

    .line 2853
    :goto_2
    const/4 v3, 0x0

    .line 2854
    if-eqz v0, :cond_1d

    .line 2855
    invoke-virtual {p0, v1, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->d(II)Z

    move-result v1

    .line 2859
    :goto_3
    invoke-virtual {p0, v2}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2860
    if-eqz v2, :cond_6

    .line 2863
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    .line 2864
    if-eqz v1, :cond_5

    .line 2867
    neg-int v0, v0

    sub-int v1, v2, v4

    sub-int v1, v0, v1

    .line 2868
    sget-boolean v0, Lit/sephiroth/android/library/widget/AbsHListView;->bc:Z

    if-eqz v0, :cond_1

    .line 2869
    const/4 v2, 0x0

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getScrollX()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget v7, p0, Lit/sephiroth/android/library/widget/AbsHListView;->R:I

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v9}, Lit/sephiroth/android/library/widget/AbsHListView;->overScrollBy(IIIIIIIIZ)Z

    .line 2871
    :cond_1
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->R:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getScrollX()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-ne v0, v2, :cond_2

    .line 2873
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->a:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_2

    .line 2874
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->a:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 2878
    :cond_2
    sget-boolean v0, Lit/sephiroth/android/library/widget/AbsHListView;->bc:Z

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getOverScrollMode()I

    move-result v0

    .line 2880
    :goto_4
    if-eqz v0, :cond_3

    const/4 v2, 0x1

    if-ne v0, v2, :cond_5

    invoke-direct {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->A()Z

    move-result v0

    if-nez v0, :cond_5

    .line 2882
    :cond_3
    const/4 v0, 0x0

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aT:I

    .line 2883
    const/4 v0, 0x5

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->G:I

    .line 2884
    if-lez v12, :cond_b

    .line 2885
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aP:Lit/sephiroth/android/library/widget/ac;

    int-to-float v1, v1

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lit/sephiroth/android/library/widget/ac;->a(F)V

    .line 2886
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aQ:Lit/sephiroth/android/library/widget/ac;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/ac;->a()Z

    move-result v0

    if-nez v0, :cond_4

    .line 2887
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aQ:Lit/sephiroth/android/library/widget/ac;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/ac;->c()V

    .line 2889
    :cond_4
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aP:Lit/sephiroth/android/library/widget/ac;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lit/sephiroth/android/library/widget/ac;->a(Z)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->invalidate(Landroid/graphics/Rect;)V

    .line 2899
    :cond_5
    :goto_5
    iput p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->E:I

    .line 2901
    :cond_6
    iput p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->H:I

    .line 2968
    :cond_7
    :goto_6
    return-void

    :cond_8
    move v0, v1

    .line 2822
    goto/16 :goto_0

    .line 2843
    :cond_9
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildCount()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    goto/16 :goto_1

    .line 2878
    :cond_a
    const/4 v0, 0x2

    goto :goto_4

    .line 2890
    :cond_b
    if-gez v12, :cond_5

    .line 2891
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aQ:Lit/sephiroth/android/library/widget/ac;

    int-to-float v1, v1

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lit/sephiroth/android/library/widget/ac;->a(F)V

    .line 2892
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aP:Lit/sephiroth/android/library/widget/ac;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/ac;->a()Z

    move-result v0

    if-nez v0, :cond_c

    .line 2893
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aP:Lit/sephiroth/android/library/widget/ac;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/ac;->c()V

    .line 2895
    :cond_c
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aQ:Lit/sephiroth/android/library/widget/ac;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lit/sephiroth/android/library/widget/ac;->a(Z)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->invalidate(Landroid/graphics/Rect;)V

    goto :goto_5

    .line 2903
    :cond_d
    iget v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->G:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_7

    .line 2904
    iget v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->H:I

    if-eq p1, v1, :cond_7

    .line 2905
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getScrollX()I

    move-result v2

    .line 2906
    sub-int v3, v2, v0

    .line 2907
    iget v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->H:I

    if-le p1, v1, :cond_17

    const/4 v1, 0x1

    move v10, v1

    .line 2909
    :goto_7
    iget v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aT:I

    if-nez v1, :cond_e

    .line 2910
    iput v10, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aT:I

    .line 2913
    :cond_e
    neg-int v1, v0

    .line 2914
    if-gez v3, :cond_f

    if-gez v2, :cond_10

    :cond_f
    if-lez v3, :cond_18

    if-gtz v2, :cond_18

    .line 2915
    :cond_10
    neg-int v1, v2

    .line 2916
    add-int/2addr v0, v1

    move v11, v0

    .line 2921
    :goto_8
    if-eqz v1, :cond_14

    .line 2922
    sget-boolean v0, Lit/sephiroth/android/library/widget/AbsHListView;->bc:Z

    if-eqz v0, :cond_11

    .line 2923
    const/4 v2, 0x0

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getScrollX()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget v7, p0, Lit/sephiroth/android/library/widget/AbsHListView;->R:I

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v9}, Lit/sephiroth/android/library/widget/AbsHListView;->overScrollBy(IIIIIIIIZ)Z

    .line 2925
    :cond_11
    sget-boolean v0, Lit/sephiroth/android/library/widget/AbsHListView;->bc:Z

    if-eqz v0, :cond_19

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getOverScrollMode()I

    move-result v0

    .line 2926
    :goto_9
    if-eqz v0, :cond_12

    const/4 v2, 0x1

    if-ne v0, v2, :cond_14

    invoke-direct {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->A()Z

    move-result v0

    if-nez v0, :cond_14

    .line 2927
    :cond_12
    if-lez v12, :cond_1a

    .line 2928
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aP:Lit/sephiroth/android/library/widget/ac;

    int-to-float v1, v1

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lit/sephiroth/android/library/widget/ac;->a(F)V

    .line 2929
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aQ:Lit/sephiroth/android/library/widget/ac;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/ac;->a()Z

    move-result v0

    if-nez v0, :cond_13

    .line 2930
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aQ:Lit/sephiroth/android/library/widget/ac;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/ac;->c()V

    .line 2932
    :cond_13
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aP:Lit/sephiroth/android/library/widget/ac;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lit/sephiroth/android/library/widget/ac;->a(Z)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->invalidate(Landroid/graphics/Rect;)V

    .line 2943
    :cond_14
    :goto_a
    if-eqz v11, :cond_16

    .line 2945
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getScrollX()I

    move-result v0

    if-eqz v0, :cond_15

    .line 2946
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->b:Lit/sephiroth/android/library/a/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lit/sephiroth/android/library/a/b;->a(I)V

    .line 2947
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->k()V

    .line 2950
    :cond_15
    invoke-virtual {p0, v11, v11}, Lit/sephiroth/android/library/widget/AbsHListView;->d(II)Z

    .line 2952
    const/4 v0, 0x3

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->G:I

    .line 2956
    invoke-virtual {p0, p1}, Lit/sephiroth/android/library/widget/AbsHListView;->e(I)I

    move-result v1

    .line 2958
    const/4 v0, 0x0

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->I:I

    .line 2959
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->W:I

    sub-int v0, v1, v0

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2960
    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    :goto_b
    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->C:I

    .line 2961
    iput p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->E:I

    .line 2962
    iput v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->B:I

    .line 2964
    :cond_16
    iput p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->H:I

    .line 2965
    iput v10, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aT:I

    goto/16 :goto_6

    .line 2907
    :cond_17
    const/4 v1, -0x1

    move v10, v1

    goto/16 :goto_7

    .line 2918
    :cond_18
    const/4 v0, 0x0

    move v11, v0

    goto/16 :goto_8

    .line 2925
    :cond_19
    const/4 v0, 0x2

    goto :goto_9

    .line 2933
    :cond_1a
    if-gez v12, :cond_14

    .line 2934
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aQ:Lit/sephiroth/android/library/widget/ac;

    int-to-float v1, v1

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lit/sephiroth/android/library/widget/ac;->a(F)V

    .line 2935
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aP:Lit/sephiroth/android/library/widget/ac;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/ac;->a()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 2936
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aP:Lit/sephiroth/android/library/widget/ac;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/ac;->c()V

    .line 2938
    :cond_1b
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aQ:Lit/sephiroth/android/library/widget/ac;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lit/sephiroth/android/library/widget/ac;->a(Z)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->invalidate(Landroid/graphics/Rect;)V

    goto :goto_a

    .line 2960
    :cond_1c
    const/4 v0, 0x0

    goto :goto_b

    :cond_1d
    move v1, v3

    goto/16 :goto_3

    :cond_1e
    move v4, v3

    goto/16 :goto_2
.end method

.method static synthetic h(Lit/sephiroth/android/library/widget/AbsHListView;)Z
    .locals 1
    .parameter

    .prologue
    .line 60
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->A()Z

    move-result v0

    return v0
.end method

.method static synthetic i(Lit/sephiroth/android/library/widget/AbsHListView;)Lit/sephiroth/android/library/widget/ac;
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aP:Lit/sephiroth/android/library/widget/ac;

    return-object v0
.end method

.method static synthetic j(Lit/sephiroth/android/library/widget/AbsHListView;)Lit/sephiroth/android/library/widget/ac;
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aQ:Lit/sephiroth/android/library/widget/ac;

    return-object v0
.end method

.method static synthetic k(Lit/sephiroth/android/library/widget/AbsHListView;)V
    .locals 0
    .parameter

    .prologue
    .line 60
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->G()V

    return-void
.end method

.method static synthetic r()Z
    .locals 1

    .prologue
    .line 60
    sget-boolean v0, Lit/sephiroth/android/library/widget/AbsHListView;->bc:Z

    return v0
.end method

.method private y()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 691
    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->setClickable(Z)V

    .line 692
    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->setFocusableInTouchMode(Z)V

    .line 693
    invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/AbsHListView;->setWillNotDraw(Z)V

    .line 694
    invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/AbsHListView;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 695
    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->setScrollingCacheEnabled(Z)V

    .line 697
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 698
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aJ:I

    .line 699
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aL:I

    .line 700
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aM:I

    .line 701
    sget-boolean v1, Lit/sephiroth/android/library/widget/AbsHListView;->bc:Z

    if-eqz v1, :cond_0

    .line 702
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverscrollDistance()I

    move-result v1

    iput v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->R:I

    .line 703
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverflingDistance()I

    move-result v0

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->S:I

    .line 705
    :cond_0
    invoke-static {p0}, Lit/sephiroth/android/library/a/a;->a(Landroid/view/View;)Lit/sephiroth/android/library/a/b;

    move-result-object v0

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->b:Lit/sephiroth/android/library/a/b;

    .line 706
    return-void
.end method

.method private z()V
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 989
    iget v5, p0, Lit/sephiroth/android/library/widget/AbsHListView;->W:I

    .line 990
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildCount()I

    move-result v6

    .line 991
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    const/4 v0, 0x1

    move v2, v0

    :goto_0
    move v4, v3

    .line 992
    :goto_1
    if-ge v4, v6, :cond_3

    .line 993
    invoke-virtual {p0, v4}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 994
    add-int v1, v5, v4

    .line 996
    instance-of v7, v0, Landroid/widget/Checkable;

    if-eqz v7, :cond_2

    .line 997
    check-cast v0, Landroid/widget/Checkable;

    iget-object v7, p0, Lit/sephiroth/android/library/widget/AbsHListView;->g:Landroid/support/v4/util/SparseArrayCompat;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v7, v1, v8}, Landroid/support/v4/util/SparseArrayCompat;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 992
    :cond_0
    :goto_2
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    :cond_1
    move v2, v3

    .line 991
    goto :goto_0

    .line 998
    :cond_2
    if-eqz v2, :cond_0

    .line 999
    iget-object v7, p0, Lit/sephiroth/android/library/widget/AbsHListView;->g:Landroid/support/v4/util/SparseArrayCompat;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v7, v1, v8}, Landroid/support/v4/util/SparseArrayCompat;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setActivated(Z)V

    goto :goto_2

    .line 1002
    :cond_3
    return-void
.end method


# virtual methods
.method public a(II)I
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 2693
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ax:Landroid/graphics/Rect;

    .line 2694
    if-nez v0, :cond_0

    .line 2695
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ax:Landroid/graphics/Rect;

    .line 2696
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ax:Landroid/graphics/Rect;

    .line 2699
    :cond_0
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildCount()I

    move-result v1

    .line 2700
    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_2

    .line 2701
    invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2702
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    .line 2703
    invoke-virtual {v2, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 2704
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2705
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->W:I

    add-int/2addr v0, v1

    .line 2709
    :goto_1
    return v0

    .line 2700
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2709
    :cond_2
    const/4 v0, -0x1

    goto :goto_1
.end method

.method protected a(I[Z)Landroid/view/View;
    .locals 6
    .parameter
    .parameter
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/16 v5, 0x10

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1929
    aput-boolean v3, p2, v3

    .line 1932
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->q:Lit/sephiroth/android/library/widget/p;

    invoke-virtual {v0, p1}, Lit/sephiroth/android/library/widget/p;->d(I)Landroid/view/View;

    move-result-object v1

    .line 1933
    if-eqz v1, :cond_1

    .line 1997
    :cond_0
    :goto_0
    return-object v1

    .line 1937
    :cond_1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->q:Lit/sephiroth/android/library/widget/p;

    invoke-virtual {v0, p1}, Lit/sephiroth/android/library/widget/p;->e(I)Landroid/view/View;

    move-result-object v1

    .line 1940
    if-eqz v1, :cond_5

    .line 1941
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->k:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1, v1, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1943
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v5, :cond_2

    .line 1944
    invoke-virtual {v0}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v2

    if-nez v2, :cond_2

    .line 1945
    invoke-virtual {v0, v4}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 1949
    :cond_2
    if-eq v0, v1, :cond_4

    .line 1950
    iget-object v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->q:Lit/sephiroth/android/library/widget/p;

    invoke-virtual {v2, v1, p1}, Lit/sephiroth/android/library/widget/p;->a(Landroid/view/View;I)V

    .line 1951
    iget v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aG:I

    if-eqz v1, :cond_7

    .line 1952
    iget v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aG:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    move-object v1, v0

    .line 1972
    :goto_1
    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->l:Z

    if-eqz v0, :cond_3

    .line 1973
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1975
    if-nez v0, :cond_8

    .line 1976
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lit/sephiroth/android/library/widget/i;

    .line 1982
    :goto_2
    iget-object v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->k:Landroid/widget/ListAdapter;

    invoke-interface {v2, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    iput-wide v2, v0, Lit/sephiroth/android/library/widget/i;->e:J

    .line 1983
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1986
    :cond_3
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aq:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1987
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aX:Lit/sephiroth/android/library/widget/j;

    if-nez v0, :cond_0

    .line 1988
    new-instance v0, Lit/sephiroth/android/library/widget/j;

    invoke-direct {v0, p0}, Lit/sephiroth/android/library/widget/j;-><init>(Lit/sephiroth/android/library/widget/AbsHListView;)V

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aX:Lit/sephiroth/android/library/widget/j;

    goto :goto_0

    .line 1955
    :cond_4
    aput-boolean v4, p2, v3

    .line 1956
    invoke-virtual {v0}, Landroid/view/View;->onFinishTemporaryDetach()V

    move-object v1, v0

    goto :goto_1

    .line 1959
    :cond_5
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->k:Landroid/widget/ListAdapter;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1961
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v5, :cond_6

    .line 1962
    invoke-virtual {v0}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v1

    if-nez v1, :cond_6

    .line 1963
    invoke-virtual {v0, v4}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 1967
    :cond_6
    iget v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aG:I

    if-eqz v1, :cond_7

    .line 1968
    iget v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aG:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    :cond_7
    move-object v1, v0

    goto :goto_1

    .line 1977
    :cond_8
    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 1978
    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lit/sephiroth/android/library/widget/i;

    goto :goto_2

    .line 1980
    :cond_9
    check-cast v0, Lit/sephiroth/android/library/widget/i;

    goto :goto_2
.end method

.method public a(Landroid/util/AttributeSet;)Lit/sephiroth/android/library/widget/i;
    .locals 2
    .parameter

    .prologue
    .line 5248
    new-instance v0, Lit/sephiroth/android/library/widget/i;

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lit/sephiroth/android/library/widget/i;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 835
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->g:Landroid/support/v4/util/SparseArrayCompat;

    if-eqz v0, :cond_0

    .line 836
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->g:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0}, Landroid/support/v4/util/SparseArrayCompat;->clear()V

    .line 838
    :cond_0
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->h:Landroid/support/v4/util/LongSparseArray;

    if-eqz v0, :cond_1

    .line 839
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->h:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/support/v4/util/LongSparseArray;->clear()V

    .line 841
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->f:I

    .line 842
    return-void
.end method

.method public a(IIZ)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 4470
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->au:Lit/sephiroth/android/library/widget/g;

    if-nez v0, :cond_0

    .line 4471
    new-instance v0, Lit/sephiroth/android/library/widget/g;

    invoke-direct {v0, p0}, Lit/sephiroth/android/library/widget/g;-><init>(Lit/sephiroth/android/library/widget/AbsHListView;)V

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->au:Lit/sephiroth/android/library/widget/g;

    .line 4475
    :cond_0
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->W:I

    .line 4476
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildCount()I

    move-result v1

    .line 4477
    add-int v2, v0, v1

    .line 4478
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getPaddingLeft()I

    move-result v3

    .line 4479
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    .line 4481
    if-eqz p1, :cond_2

    iget v5, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ao:I

    if-eqz v5, :cond_2

    if-eqz v1, :cond_2

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    if-ne v0, v3, :cond_1

    if-ltz p1, :cond_2

    :cond_1
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ao:I

    if-ne v2, v0, :cond_4

    add-int/lit8 v0, v1, -0x1

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    if-ne v0, v4, :cond_4

    if-lez p1, :cond_4

    .line 4485
    :cond_2
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->au:Lit/sephiroth/android/library/widget/g;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/g;->b()V

    .line 4486
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->J:Lit/sephiroth/android/library/widget/m;

    if-eqz v0, :cond_3

    .line 4487
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->J:Lit/sephiroth/android/library/widget/m;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/m;->a()V

    .line 4493
    :cond_3
    :goto_0
    return-void

    .line 4490
    :cond_4
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->b(I)V

    .line 4491
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->au:Lit/sephiroth/android/library/widget/g;

    invoke-virtual {v0, p1, p2, p3}, Lit/sephiroth/android/library/widget/g;->a(IIZ)V

    goto :goto_0
.end method

.method protected a(ILandroid/view/View;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, -0x1

    .line 2092
    if-eq p1, v5, :cond_0

    .line 2093
    iput p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->o:I

    .line 2096
    :cond_0
    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->p:Landroid/graphics/Rect;

    .line 2097
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 2098
    instance-of v0, p2, Lit/sephiroth/android/library/widget/s;

    if-eqz v0, :cond_1

    move-object v0, p2

    .line 2099
    check-cast v0, Lit/sephiroth/android/library/widget/s;

    invoke-interface {v0, v1}, Lit/sephiroth/android/library/widget/s;->a(Landroid/graphics/Rect;)V

    .line 2101
    :cond_1
    iget v0, v1, Landroid/graphics/Rect;->left:I

    iget v2, v1, Landroid/graphics/Rect;->top:I

    iget v3, v1, Landroid/graphics/Rect;->right:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, v0, v2, v3, v1}, Lit/sephiroth/android/library/widget/AbsHListView;->a(IIII)V

    .line 2104
    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aH:Z

    .line 2105
    invoke-virtual {p2}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-eq v1, v0, :cond_2

    .line 2106
    if-nez v0, :cond_3

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aH:Z

    .line 2107
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getSelectedItemPosition()I

    move-result v0

    if-eq v0, v5, :cond_2

    .line 2108
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->refreshDrawableState()V

    .line 2111
    :cond_2
    return-void

    .line 2106
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(IZ)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/16 v4, 0xb

    const/4 v3, 0x3

    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 854
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->c:I

    if-nez v0, :cond_1

    .line 922
    :cond_0
    :goto_0
    return-void

    .line 859
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v4, :cond_4

    .line 860
    if-eqz p2, :cond_4

    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->c:I

    if-ne v0, v3, :cond_4

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->d:Ljava/lang/Object;

    if-nez v0, :cond_4

    .line 861
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->e:Ljava/lang/Object;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->e:Ljava/lang/Object;

    check-cast v0, Lit/sephiroth/android/library/a/a/b;

    invoke-virtual {v0}, Lit/sephiroth/android/library/a/a/b;->a()Z

    move-result v0

    if-nez v0, :cond_3

    .line 863
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "AbsListView: attempted to start selection mode for CHOICE_MODE_MULTIPLE_MODAL but no choice mode callback was supplied. Call setMultiChoiceModeListener to set a callback."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 867
    :cond_3
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->e:Ljava/lang/Object;

    check-cast v0, Lit/sephiroth/android/library/a/a/b;

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->d:Ljava/lang/Object;

    .line 871
    :cond_4
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->c:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v4, :cond_b

    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->c:I

    if-ne v0, v3, :cond_b

    .line 873
    :cond_5
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->g:Landroid/support/v4/util/SparseArrayCompat;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/util/SparseArrayCompat;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 874
    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->g:Landroid/support/v4/util/SparseArrayCompat;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/support/v4/util/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 875
    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->h:Landroid/support/v4/util/LongSparseArray;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->k:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 876
    if-eqz p2, :cond_9

    .line 877
    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->h:Landroid/support/v4/util/LongSparseArray;

    iget-object v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->k:Landroid/widget/ListAdapter;

    invoke-interface {v2, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 882
    :cond_6
    :goto_1
    if-eq v0, p2, :cond_7

    .line 883
    if-eqz p2, :cond_a

    .line 884
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->f:I

    .line 889
    :cond_7
    :goto_2
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->d:Ljava/lang/Object;

    if-eqz v0, :cond_8

    .line 890
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->k:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v3

    .line 891
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->e:Ljava/lang/Object;

    check-cast v0, Lit/sephiroth/android/library/a/a/b;

    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->d:Ljava/lang/Object;

    check-cast v1, Landroid/view/ActionMode;

    move v2, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lit/sephiroth/android/library/a/a/b;->a(Landroid/view/ActionMode;IJZ)V

    .line 917
    :cond_8
    :goto_3
    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->af:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->at:Z

    if-nez v0, :cond_0

    .line 918
    iput-boolean v6, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aj:Z

    .line 919
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->x()V

    .line 920
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->requestLayout()V

    goto/16 :goto_0

    .line 879
    :cond_9
    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->h:Landroid/support/v4/util/LongSparseArray;

    iget-object v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->k:Landroid/widget/ListAdapter;

    invoke-interface {v2, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/util/LongSparseArray;->delete(J)V

    goto :goto_1

    .line 886
    :cond_a
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->f:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->f:I

    goto :goto_2

    .line 894
    :cond_b
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->h:Landroid/support/v4/util/LongSparseArray;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->k:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_f

    move v0, v6

    .line 897
    :goto_4
    if-nez p2, :cond_c

    invoke-virtual {p0, p1}, Lit/sephiroth/android/library/widget/AbsHListView;->a(I)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 898
    :cond_c
    iget-object v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->g:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v2}, Landroid/support/v4/util/SparseArrayCompat;->clear()V

    .line 899
    if-eqz v0, :cond_d

    .line 900
    iget-object v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->h:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v2}, Landroid/support/v4/util/LongSparseArray;->clear()V

    .line 905
    :cond_d
    if-eqz p2, :cond_10

    .line 906
    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->g:Landroid/support/v4/util/SparseArrayCompat;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/support/v4/util/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 907
    if-eqz v0, :cond_e

    .line 908
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->h:Landroid/support/v4/util/LongSparseArray;

    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->k:Landroid/widget/ListAdapter;

    invoke-interface {v1, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 910
    :cond_e
    iput v6, p0, Lit/sephiroth/android/library/widget/AbsHListView;->f:I

    goto :goto_3

    :cond_f
    move v0, v1

    .line 894
    goto :goto_4

    .line 911
    :cond_10
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->g:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0}, Landroid/support/v4/util/SparseArrayCompat;->size()I

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->g:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0, v1}, Landroid/support/v4/util/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_8

    .line 912
    :cond_11
    iput v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->f:I

    goto :goto_3
.end method

.method protected abstract a(Z)V
.end method

.method public a(FFI)Z
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2611
    float-to-int v0, p1

    float-to-int v1, p2

    invoke-virtual {p0, v0, v1}, Lit/sephiroth/android/library/widget/AbsHListView;->a(II)I

    move-result v0

    .line 2612
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 2613
    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->k:Landroid/widget/ListAdapter;

    invoke-interface {v1, v0}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    .line 2614
    iget v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->W:I

    sub-int v3, v0, v3

    invoke-virtual {p0, v3}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2615
    if-eqz v3, :cond_0

    .line 2616
    invoke-virtual {p0, v3, v0, v1, v2}, Lit/sephiroth/android/library/widget/AbsHListView;->b(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ay:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 2617
    invoke-super {p0, p0}, Lit/sephiroth/android/library/widget/u;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v0

    .line 2620
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lit/sephiroth/android/library/widget/AbsHListView;->a(FFI)Z

    move-result v0

    goto :goto_0
.end method

.method public a(I)Z
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 773
    iget v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->c:I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->g:Landroid/support/v4/util/SparseArrayCompat;

    if-eqz v1, :cond_0

    .line 774
    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->g:Landroid/support/v4/util/SparseArrayCompat;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Landroid/support/v4/util/SparseArrayCompat;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 777
    :cond_0
    return v0
.end method

.method protected a(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 3020
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 3021
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 3022
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lit/sephiroth/android/library/widget/AbsHListView;->a(FFI)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3023
    const/4 v0, 0x1

    .line 3027
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Landroid/view/View;IJ)Z
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 926
    .line 929
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->c:I

    if-eqz v0, :cond_f

    .line 933
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->c:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_7

    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->c:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->d:Ljava/lang/Object;

    if-eqz v0, :cond_7

    .line 935
    :cond_0
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->g:Landroid/support/v4/util/SparseArrayCompat;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Landroid/support/v4/util/SparseArrayCompat;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_4

    move v5, v6

    .line 936
    :goto_0
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->g:Landroid/support/v4/util/SparseArrayCompat;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Landroid/support/v4/util/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 937
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->h:Landroid/support/v4/util/LongSparseArray;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->k:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 938
    if-eqz v5, :cond_5

    .line 939
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->h:Landroid/support/v4/util/LongSparseArray;

    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->k:Landroid/widget/ListAdapter;

    invoke-interface {v1, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 944
    :cond_1
    :goto_1
    if-eqz v5, :cond_6

    .line 945
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->f:I

    .line 950
    :goto_2
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->d:Ljava/lang/Object;

    if-eqz v0, :cond_e

    .line 951
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->e:Ljava/lang/Object;

    check-cast v0, Lit/sephiroth/android/library/a/a/b;

    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->d:Ljava/lang/Object;

    check-cast v1, Landroid/view/ActionMode;

    move v2, p2

    move-wide v3, p3

    invoke-virtual/range {v0 .. v5}, Lit/sephiroth/android/library/a/a/b;->a(Landroid/view/ActionMode;IJZ)V

    :goto_3
    move v0, v7

    move v7, v6

    .line 972
    :goto_4
    if-eqz v7, :cond_2

    .line 973
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->z()V

    :cond_2
    move v8, v0

    move v0, v6

    move v6, v8

    .line 977
    :goto_5
    if-eqz v6, :cond_3

    .line 978
    invoke-super {p0, p1, p2, p3, p4}, Lit/sephiroth/android/library/widget/u;->a(Landroid/view/View;IJ)Z

    move-result v1

    or-int/2addr v0, v1

    .line 981
    :cond_3
    return v0

    :cond_4
    move v5, v7

    .line 935
    goto :goto_0

    .line 941
    :cond_5
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->h:Landroid/support/v4/util/LongSparseArray;

    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->k:Landroid/widget/ListAdapter;

    invoke-interface {v1, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/util/LongSparseArray;->delete(J)V

    goto :goto_1

    .line 947
    :cond_6
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->f:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->f:I

    goto :goto_2

    .line 956
    :cond_7
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->c:I

    if-ne v0, v6, :cond_d

    .line 957
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->g:Landroid/support/v4/util/SparseArrayCompat;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Landroid/support/v4/util/SparseArrayCompat;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_a

    move v0, v6

    .line 958
    :goto_6
    if-eqz v0, :cond_b

    .line 959
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->g:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0}, Landroid/support/v4/util/SparseArrayCompat;->clear()V

    .line 960
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->g:Landroid/support/v4/util/SparseArrayCompat;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Landroid/support/v4/util/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 961
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->h:Landroid/support/v4/util/LongSparseArray;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->k:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 962
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->h:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/support/v4/util/LongSparseArray;->clear()V

    .line 963
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->h:Landroid/support/v4/util/LongSparseArray;

    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->k:Landroid/widget/ListAdapter;

    invoke-interface {v1, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 965
    :cond_8
    iput v6, p0, Lit/sephiroth/android/library/widget/AbsHListView;->f:I

    :cond_9
    :goto_7
    move v7, v6

    move v0, v6

    .line 969
    goto :goto_4

    :cond_a
    move v0, v7

    .line 957
    goto :goto_6

    .line 966
    :cond_b
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->g:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0}, Landroid/support/v4/util/SparseArrayCompat;->size()I

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->g:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0, v7}, Landroid/support/v4/util/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_9

    .line 967
    :cond_c
    iput v7, p0, Lit/sephiroth/android/library/widget/AbsHListView;->f:I

    goto :goto_7

    :cond_d
    move v0, v6

    goto/16 :goto_4

    :cond_e
    move v7, v6

    goto/16 :goto_3

    :cond_f
    move v0, v7

    goto/16 :goto_5
.end method

.method public addTouchables(Ljava/util/ArrayList;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3648
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildCount()I

    move-result v1

    .line 3649
    iget v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->W:I

    .line 3650
    iget-object v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->k:Landroid/widget/ListAdapter;

    .line 3652
    if-nez v3, :cond_1

    .line 3663
    :cond_0
    return-void

    .line 3656
    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 3657
    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 3658
    add-int v5, v2, v0

    invoke-interface {v3, v5}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 3659
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3661
    :cond_2
    invoke-virtual {v4, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    .line 3656
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method b(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2480
    new-instance v0, Lit/sephiroth/android/library/widget/w;

    invoke-direct {v0, p1, p2, p3, p4}, Lit/sephiroth/android/library/widget/w;-><init>(Landroid/view/View;IJ)V

    return-object v0
.end method

.method protected b()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1137
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->av:Lit/sephiroth/android/library/widget/k;

    if-eqz v0, :cond_0

    .line 1138
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->av:Lit/sephiroth/android/library/widget/k;

    iget v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->W:I

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildCount()I

    move-result v2

    iget v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ao:I

    invoke-interface {v0, p0, v1, v2, v3}, Lit/sephiroth/android/library/widget/k;->a(Lit/sephiroth/android/library/widget/AbsHListView;III)V

    .line 1140
    :cond_0
    invoke-virtual {p0, v4, v4, v4, v4}, Lit/sephiroth/android/library/widget/AbsHListView;->onScrollChanged(IIII)V

    .line 1141
    return-void
.end method

.method b(I)V
    .locals 1
    .parameter

    .prologue
    .line 3673
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aI:I

    if-eq p1, v0, :cond_0

    .line 3674
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->av:Lit/sephiroth/android/library/widget/k;

    if-eqz v0, :cond_0

    .line 3675
    iput p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aI:I

    .line 3676
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->av:Lit/sephiroth/android/library/widget/k;

    invoke-interface {v0, p0, p1}, Lit/sephiroth/android/library/widget/k;->a(Lit/sephiroth/android/library/widget/AbsHListView;I)V

    .line 3679
    :cond_0
    return-void
.end method

.method public b(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 4451
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->J:Lit/sephiroth/android/library/widget/m;

    if-nez v0, :cond_0

    .line 4452
    new-instance v0, Lit/sephiroth/android/library/widget/m;

    invoke-direct {v0, p0}, Lit/sephiroth/android/library/widget/m;-><init>(Lit/sephiroth/android/library/widget/AbsHListView;)V

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->J:Lit/sephiroth/android/library/widget/m;

    .line 4454
    :cond_0
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->J:Lit/sephiroth/android/library/widget/m;

    invoke-virtual {v0, p1, p2}, Lit/sephiroth/android/library/widget/m;->a(II)V

    .line 4455
    return-void
.end method

.method c()V
    .locals 1

    .prologue
    .line 1288
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 1289
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->d()V

    .line 1290
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->requestLayout()V

    .line 1291
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->invalidate()V

    .line 1293
    :cond_0
    return-void
.end method

.method public c(I)V
    .locals 3
    .parameter

    .prologue
    .line 4738
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildCount()I

    move-result v1

    .line 4740
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 4741
    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 4742
    invoke-virtual {v2, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 4740
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4744
    :cond_0
    return-void
.end method

.method public c(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 4466
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->a(IIZ)V

    .line 4467
    return-void
.end method

.method c(Landroid/view/View;IJ)Z
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v6, 0x0

    .line 2579
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v0, v2, :cond_2

    .line 2580
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->c:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    .line 2581
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->d:Ljava/lang/Object;

    if-nez v0, :cond_0

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->e:Ljava/lang/Object;

    check-cast v0, Lit/sephiroth/android/library/a/a/b;

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->d:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 2583
    invoke-virtual {p0, p2, v1}, Lit/sephiroth/android/library/widget/AbsHListView;->a(IZ)V

    .line 2584
    invoke-virtual {p0, v6}, Lit/sephiroth/android/library/widget/AbsHListView;->performHapticFeedback(I)Z

    :cond_0
    move v0, v1

    .line 2602
    :cond_1
    :goto_0
    return v0

    .line 2591
    :cond_2
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ai:Lit/sephiroth/android/library/widget/z;

    if-eqz v0, :cond_4

    .line 2592
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ai:Lit/sephiroth/android/library/widget/z;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Lit/sephiroth/android/library/widget/z;->a(Lit/sephiroth/android/library/widget/u;Landroid/view/View;IJ)Z

    move-result v0

    .line 2595
    :goto_1
    if-nez v0, :cond_3

    .line 2596
    invoke-virtual {p0, p1, p2, p3, p4}, Lit/sephiroth/android/library/widget/AbsHListView;->b(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ay:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 2597
    invoke-super {p0, p0}, Lit/sephiroth/android/library/widget/u;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v0

    .line 2599
    :cond_3
    if-eqz v0, :cond_1

    .line 2600
    invoke-virtual {p0, v6}, Lit/sephiroth/android/library/widget/AbsHListView;->performHapticFeedback(I)Z

    goto :goto_0

    :cond_4
    move v0, v6

    goto :goto_1
.end method

.method public checkInputConnectionProxy(Landroid/view/View;)Z
    .locals 1
    .parameter

    .prologue
    .line 5232
    const/4 v0, 0x0

    return v0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .parameter

    .prologue
    .line 5253
    instance-of v0, p1, Lit/sephiroth/android/library/widget/i;

    return v0
.end method

.method protected computeHorizontalScrollExtent()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1657
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildCount()I

    move-result v2

    .line 1658
    if-lez v2, :cond_3

    .line 1659
    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aw:Z

    if-eqz v0, :cond_2

    .line 1660
    mul-int/lit8 v0, v2, 0x64

    .line 1662
    invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1663
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v3

    .line 1664
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 1665
    if-lez v1, :cond_0

    .line 1666
    mul-int/lit8 v3, v3, 0x64

    div-int v1, v3, v1

    add-int/2addr v0, v1

    .line 1669
    :cond_0
    add-int/lit8 v1, v2, -0x1

    invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1670
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v2

    .line 1671
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 1672
    if-lez v1, :cond_1

    .line 1673
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x64

    div-int v1, v2, v1

    sub-int/2addr v0, v1

    .line 1681
    :cond_1
    :goto_0
    return v0

    .line 1678
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 1681
    goto :goto_0
.end method

.method protected computeHorizontalScrollOffset()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1686
    iget v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->W:I

    .line 1687
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildCount()I

    move-result v3

    .line 1688
    if-ltz v2, :cond_0

    if-lez v3, :cond_0

    .line 1689
    iget-boolean v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aw:Z

    if-eqz v1, :cond_1

    .line 1690
    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1691
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v3

    .line 1692
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 1693
    if-lez v1, :cond_0

    .line 1694
    mul-int/lit8 v2, v2, 0x64

    mul-int/lit8 v3, v3, 0x64

    div-int v1, v3, v1

    sub-int v1, v2, v1

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getScrollX()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    iget v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ao:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    const/high16 v3, 0x42c8

    mul-float/2addr v2, v3

    float-to-int v2, v2

    add-int/2addr v1, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1710
    :cond_0
    :goto_0
    return v0

    .line 1699
    :cond_1
    iget v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ao:I

    .line 1700
    if-nez v2, :cond_2

    .line 1707
    :goto_1
    int-to-float v2, v2

    int-to-float v3, v3

    int-to-float v0, v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    mul-float/2addr v0, v3

    add-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_0

    .line 1702
    :cond_2
    add-int v0, v2, v3

    if-ne v0, v1, :cond_3

    move v0, v1

    .line 1703
    goto :goto_1

    .line 1705
    :cond_3
    div-int/lit8 v0, v3, 0x2

    add-int/2addr v0, v2

    goto :goto_1
.end method

.method protected computeHorizontalScrollRange()I
    .locals 3

    .prologue
    .line 1716
    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aw:Z

    if-eqz v0, :cond_1

    .line 1717
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ao:I

    mul-int/lit8 v0, v0, 0x64

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1718
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getScrollX()I

    move-result v1

    if-eqz v1, :cond_0

    .line 1720
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getScrollX()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ao:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    const/high16 v2, 0x42c8

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 1725
    :cond_0
    :goto_0
    return v0

    .line 1723
    :cond_1
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ao:I

    goto :goto_0
.end method

.method protected abstract d(I)I
.end method

.method protected d()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 1639
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->removeAllViewsInLayout()V

    .line 1640
    iput v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->W:I

    .line 1641
    iput-boolean v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aj:Z

    .line 1642
    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->P:Ljava/lang/Runnable;

    .line 1643
    iput-boolean v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ad:Z

    .line 1644
    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->bb:Lit/sephiroth/android/library/widget/AbsHListView$SavedState;

    .line 1645
    iput v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ar:I

    .line 1646
    const-wide/high16 v0, -0x8000

    iput-wide v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->as:J

    .line 1647
    invoke-virtual {p0, v2}, Lit/sephiroth/android/library/widget/AbsHListView;->setSelectedPositionInt(I)V

    .line 1648
    invoke-virtual {p0, v2}, Lit/sephiroth/android/library/widget/AbsHListView;->setNextSelectedPositionInt(I)V

    .line 1649
    iput v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->K:I

    .line 1650
    iput v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->o:I

    .line 1651
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->p:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 1652
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->invalidate()V

    .line 1653
    return-void
.end method

.method d(II)Z
    .locals 20
    .parameter
    .parameter

    .prologue
    .line 4574
    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildCount()I

    move-result v9

    .line 4575
    if-nez v9, :cond_0

    .line 4576
    const/4 v2, 0x1

    .line 4731
    :goto_0
    return v2

    .line 4579
    :cond_0
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    .line 4580
    add-int/lit8 v2, v9, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v4

    .line 4582
    move-object/from16 v0, p0

    iget-object v5, v0, Lit/sephiroth/android/library/widget/AbsHListView;->v:Landroid/graphics/Rect;

    .line 4587
    const/4 v2, 0x0

    .line 4588
    const/4 v6, 0x0

    .line 4596
    sub-int v10, v2, v3

    .line 4597
    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getWidth()I

    move-result v2

    sub-int/2addr v2, v6

    .line 4598
    sub-int v11, v4, v2

    .line 4600
    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getWidth()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getPaddingRight()I

    move-result v6

    sub-int/2addr v2, v6

    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getPaddingLeft()I

    move-result v6

    sub-int v6, v2, v6

    .line 4601
    if-gez p1, :cond_2

    .line 4602
    add-int/lit8 v2, v6, -0x1

    neg-int v2, v2

    move/from16 v0, p1

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    move v8, v2

    .line 4607
    :goto_1
    if-gez p2, :cond_3

    .line 4608
    add-int/lit8 v2, v6, -0x1

    neg-int v2, v2

    move/from16 v0, p2

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 4613
    :goto_2
    move-object/from16 v0, p0

    iget v12, v0, Lit/sephiroth/android/library/widget/AbsHListView;->W:I

    .line 4616
    if-nez v12, :cond_4

    .line 4617
    iget v6, v5, Landroid/graphics/Rect;->left:I

    sub-int v6, v3, v6

    move-object/from16 v0, p0

    iput v6, v0, Lit/sephiroth/android/library/widget/AbsHListView;->aR:I

    .line 4621
    :goto_3
    add-int v6, v12, v9

    move-object/from16 v0, p0

    iget v7, v0, Lit/sephiroth/android/library/widget/AbsHListView;->ao:I

    if-ne v6, v7, :cond_5

    .line 4622
    iget v6, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v4

    move-object/from16 v0, p0

    iput v6, v0, Lit/sephiroth/android/library/widget/AbsHListView;->aS:I

    .line 4627
    :goto_4
    if-nez v12, :cond_6

    iget v6, v5, Landroid/graphics/Rect;->left:I

    if-lt v3, v6, :cond_6

    if-ltz v2, :cond_6

    const/4 v3, 0x1

    .line 4628
    :goto_5
    add-int v6, v12, v9

    move-object/from16 v0, p0

    iget v7, v0, Lit/sephiroth/android/library/widget/AbsHListView;->ao:I

    if-ne v6, v7, :cond_7

    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getWidth()I

    move-result v6

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int v5, v6, v5

    if-gt v4, v5, :cond_7

    if-gtz v2, :cond_7

    const/4 v4, 0x1

    .line 4630
    :goto_6
    if-nez v3, :cond_1

    if-eqz v4, :cond_9

    .line 4631
    :cond_1
    if-eqz v2, :cond_8

    const/4 v2, 0x1

    goto/16 :goto_0

    .line 4604
    :cond_2
    add-int/lit8 v2, v6, -0x1

    move/from16 v0, p1

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    move v8, v2

    goto :goto_1

    .line 4610
    :cond_3
    add-int/lit8 v2, v6, -0x1

    move/from16 v0, p2

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_2

    .line 4619
    :cond_4
    move-object/from16 v0, p0

    iget v6, v0, Lit/sephiroth/android/library/widget/AbsHListView;->aR:I

    add-int/2addr v6, v2

    move-object/from16 v0, p0

    iput v6, v0, Lit/sephiroth/android/library/widget/AbsHListView;->aR:I

    goto :goto_3

    .line 4624
    :cond_5
    move-object/from16 v0, p0

    iget v6, v0, Lit/sephiroth/android/library/widget/AbsHListView;->aS:I

    add-int/2addr v6, v2

    move-object/from16 v0, p0

    iput v6, v0, Lit/sephiroth/android/library/widget/AbsHListView;->aS:I

    goto :goto_4

    .line 4627
    :cond_6
    const/4 v3, 0x0

    goto :goto_5

    .line 4628
    :cond_7
    const/4 v4, 0x0

    goto :goto_6

    .line 4631
    :cond_8
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 4634
    :cond_9
    if-gez v2, :cond_12

    const/4 v3, 0x1

    .line 4636
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/AbsHListView;->isInTouchMode()Z

    move-result v13

    .line 4637
    if-eqz v13, :cond_a

    .line 4638
    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/AbsHListView;->l()V

    .line 4641
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getHeaderViewsCount()I

    move-result v14

    .line 4642
    move-object/from16 v0, p0

    iget v4, v0, Lit/sephiroth/android/library/widget/AbsHListView;->ao:I

    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getFooterViewsCount()I

    move-result v5

    sub-int v15, v4, v5

    .line 4644
    const/4 v5, 0x0

    .line 4645
    const/4 v6, 0x0

    .line 4647
    if-eqz v3, :cond_15

    .line 4648
    neg-int v0, v2

    move/from16 v16, v0

    .line 4654
    const/4 v4, 0x0

    move/from16 v19, v4

    move v4, v6

    move/from16 v6, v19

    :goto_8
    if-ge v6, v9, :cond_b

    .line 4655
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    .line 4656
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getRight()I

    move-result v7

    move/from16 v0, v16

    if-lt v7, v0, :cond_13

    .line 4687
    :cond_b
    move-object/from16 v0, p0

    iget v6, v0, Lit/sephiroth/android/library/widget/AbsHListView;->C:I

    add-int/2addr v6, v8

    move-object/from16 v0, p0

    iput v6, v0, Lit/sephiroth/android/library/widget/AbsHListView;->D:I

    .line 4689
    const/4 v6, 0x1

    move-object/from16 v0, p0

    iput-boolean v6, v0, Lit/sephiroth/android/library/widget/AbsHListView;->at:Z

    .line 4691
    if-lez v4, :cond_c

    .line 4692
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v4}, Lit/sephiroth/android/library/widget/AbsHListView;->detachViewsFromParent(II)V

    .line 4693
    move-object/from16 v0, p0

    iget-object v5, v0, Lit/sephiroth/android/library/widget/AbsHListView;->q:Lit/sephiroth/android/library/widget/p;

    invoke-virtual {v5}, Lit/sephiroth/android/library/widget/p;->d()V

    .line 4698
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/AbsHListView;->awakenScrollBars()Z

    move-result v5

    if-nez v5, :cond_d

    .line 4699
    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/AbsHListView;->invalidate()V

    .line 4702
    :cond_d
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lit/sephiroth/android/library/widget/AbsHListView;->c(I)V

    .line 4704
    if-eqz v3, :cond_e

    .line 4705
    move-object/from16 v0, p0

    iget v5, v0, Lit/sephiroth/android/library/widget/AbsHListView;->W:I

    add-int/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Lit/sephiroth/android/library/widget/AbsHListView;->W:I

    .line 4708
    :cond_e
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 4709
    if-lt v10, v2, :cond_f

    if-ge v11, v2, :cond_10

    .line 4710
    :cond_f
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lit/sephiroth/android/library/widget/AbsHListView;->a(Z)V

    .line 4713
    :cond_10
    if-nez v13, :cond_17

    move-object/from16 v0, p0

    iget v2, v0, Lit/sephiroth/android/library/widget/AbsHListView;->am:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_17

    .line 4714
    move-object/from16 v0, p0

    iget v2, v0, Lit/sephiroth/android/library/widget/AbsHListView;->am:I

    move-object/from16 v0, p0

    iget v3, v0, Lit/sephiroth/android/library/widget/AbsHListView;->W:I

    sub-int/2addr v2, v3

    .line 4715
    if-ltz v2, :cond_11

    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_11

    .line 4716
    move-object/from16 v0, p0

    iget v3, v0, Lit/sephiroth/android/library/widget/AbsHListView;->am:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2}, Lit/sephiroth/android/library/widget/AbsHListView;->a(ILandroid/view/View;)V

    .line 4727
    :cond_11
    :goto_9
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lit/sephiroth/android/library/widget/AbsHListView;->at:Z

    .line 4729
    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/AbsHListView;->b()V

    .line 4731
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 4634
    :cond_12
    const/4 v3, 0x0

    goto/16 :goto_7

    .line 4659
    :cond_13
    add-int/lit8 v7, v4, 0x1

    .line 4660
    add-int v4, v12, v6

    .line 4661
    if-lt v4, v14, :cond_14

    if-ge v4, v15, :cond_14

    .line 4662
    move-object/from16 v0, p0

    iget-object v0, v0, Lit/sephiroth/android/library/widget/AbsHListView;->q:Lit/sephiroth/android/library/widget/p;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v4}, Lit/sephiroth/android/library/widget/p;->a(Landroid/view/View;I)V

    .line 4654
    :cond_14
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    move v4, v7

    goto/16 :goto_8

    .line 4667
    :cond_15
    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getWidth()I

    move-result v4

    sub-int v7, v4, v2

    .line 4672
    add-int/lit8 v4, v9, -0x1

    move/from16 v19, v4

    move v4, v6

    move/from16 v6, v19

    :goto_a
    if-ltz v6, :cond_b

    .line 4673
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 4674
    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v16

    move/from16 v0, v16

    if-le v0, v7, :cond_b

    .line 4678
    add-int/lit8 v5, v4, 0x1

    .line 4679
    add-int v4, v12, v6

    .line 4680
    if-lt v4, v14, :cond_16

    if-ge v4, v15, :cond_16

    .line 4681
    move-object/from16 v0, p0

    iget-object v0, v0, Lit/sephiroth/android/library/widget/AbsHListView;->q:Lit/sephiroth/android/library/widget/p;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v9, v4}, Lit/sephiroth/android/library/widget/p;->a(Landroid/view/View;I)V

    .line 4672
    :cond_16
    add-int/lit8 v4, v6, -0x1

    move/from16 v19, v4

    move v4, v5

    move v5, v6

    move/from16 v6, v19

    goto :goto_a

    .line 4718
    :cond_17
    move-object/from16 v0, p0

    iget v2, v0, Lit/sephiroth/android/library/widget/AbsHListView;->o:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_18

    .line 4719
    move-object/from16 v0, p0

    iget v2, v0, Lit/sephiroth/android/library/widget/AbsHListView;->o:I

    move-object/from16 v0, p0

    iget v3, v0, Lit/sephiroth/android/library/widget/AbsHListView;->W:I

    sub-int/2addr v2, v3

    .line 4720
    if-ltz v2, :cond_11

    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_11

    .line 4721
    const/4 v3, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2}, Lit/sephiroth/android/library/widget/AbsHListView;->a(ILandroid/view/View;)V

    goto/16 :goto_9

    .line 4724
    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lit/sephiroth/android/library/widget/AbsHListView;->p:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    goto/16 :goto_9
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter

    .prologue
    .line 2127
    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->m:Z

    .line 2128
    if-nez v0, :cond_0

    .line 2129
    invoke-direct {p0, p1}, Lit/sephiroth/android/library/widget/AbsHListView;->a(Landroid/graphics/Canvas;)V

    .line 2132
    :cond_0
    invoke-super {p0, p1}, Lit/sephiroth/android/library/widget/u;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 2134
    if-eqz v0, :cond_1

    .line 2135
    invoke-direct {p0, p1}, Lit/sephiroth/android/library/widget/AbsHListView;->a(Landroid/graphics/Canvas;)V

    .line 2141
    :cond_1
    return-void
.end method

.method protected dispatchSetPressed(Z)V
    .locals 0
    .parameter

    .prologue
    .line 2680
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter

    .prologue
    .line 3457
    invoke-super {p0, p1}, Lit/sephiroth/android/library/widget/u;->draw(Landroid/graphics/Canvas;)V

    .line 3458
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aP:Lit/sephiroth/android/library/widget/ac;

    if-eqz v0, :cond_3

    .line 3459
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getScrollX()I

    move-result v0

    .line 3460
    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aP:Lit/sephiroth/android/library/widget/ac;

    invoke-virtual {v1}, Lit/sephiroth/android/library/widget/ac;->a()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3461
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 3462
    iget-object v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->v:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aV:I

    add-int/2addr v2, v3

    .line 3463
    iget-object v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->v:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget v4, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aW:I

    add-int/2addr v3, v4

    .line 3464
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getHeight()I

    move-result v4

    sub-int/2addr v4, v2

    sub-int v3, v4, v3

    .line 3467
    const/4 v4, 0x0

    iget v5, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aR:I

    add-int/2addr v5, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 3471
    const/high16 v5, -0x3d4c

    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->rotate(F)V

    .line 3472
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getHeight()I

    move-result v5

    neg-int v5, v5

    add-int/2addr v5, v2

    int-to-float v5, v5

    int-to-float v6, v4

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3473
    iget-object v5, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aP:Lit/sephiroth/android/library/widget/ac;

    invoke-virtual {v5, v3, v3}, Lit/sephiroth/android/library/widget/ac;->a(II)V

    .line 3475
    iget-object v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aP:Lit/sephiroth/android/library/widget/ac;

    invoke-virtual {v3, p1}, Lit/sephiroth/android/library/widget/ac;->a(Landroid/graphics/Canvas;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3476
    iget-object v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aP:Lit/sephiroth/android/library/widget/ac;

    invoke-virtual {v3, v4, v2}, Lit/sephiroth/android/library/widget/ac;->b(II)V

    .line 3478
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->invalidate()V

    .line 3480
    :cond_0
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 3482
    :cond_1
    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aQ:Lit/sephiroth/android/library/widget/ac;

    invoke-virtual {v1}, Lit/sephiroth/android/library/widget/ac;->a()Z

    move-result v1

    if-nez v1, :cond_3

    .line 3483
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 3484
    iget-object v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->v:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aV:I

    add-int/2addr v2, v3

    .line 3485
    iget-object v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->v:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget v4, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aW:I

    add-int/2addr v3, v4

    .line 3486
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getHeight()I

    move-result v4

    sub-int/2addr v4, v2

    sub-int v3, v4, v3

    .line 3487
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getWidth()I

    move-result v4

    .line 3489
    iget v5, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aS:I

    add-int/2addr v0, v5

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 3490
    const/high16 v4, 0x42b4

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    .line 3491
    neg-int v2, v2

    int-to-float v2, v2

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3493
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aQ:Lit/sephiroth/android/library/widget/ac;

    invoke-virtual {v0, v3, v3}, Lit/sephiroth/android/library/widget/ac;->a(II)V

    .line 3495
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aQ:Lit/sephiroth/android/library/widget/ac;

    invoke-virtual {v0, p1}, Lit/sephiroth/android/library/widget/ac;->a(Landroid/graphics/Canvas;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3499
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->invalidate()V

    .line 3501
    :cond_2
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 3504
    :cond_3
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 0

    .prologue
    .line 2309
    invoke-super {p0}, Lit/sephiroth/android/library/widget/u;->drawableStateChanged()V

    .line 2310
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->j()V

    .line 2311
    return-void
.end method

.method protected e(I)I
    .locals 3
    .parameter

    .prologue
    const/4 v1, -0x1

    .line 4820
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildCount()I

    move-result v2

    .line 4821
    if-nez v2, :cond_1

    move v0, v1

    .line 4826
    :cond_0
    :goto_0
    return v0

    .line 4825
    :cond_1
    invoke-virtual {p0, p1}, Lit/sephiroth/android/library/widget/AbsHListView;->d(I)I

    move-result v0

    .line 4826
    if-ne v0, v1, :cond_0

    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->W:I

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method protected e()V
    .locals 0

    .prologue
    .line 1820
    return-void
.end method

.method protected e(II)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 5360
    return-void
.end method

.method protected f()V
    .locals 6

    .prologue
    const/4 v3, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1823
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->x:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1826
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->W:I

    if-lez v0, :cond_3

    move v0, v1

    .line 1829
    :goto_0
    if-nez v0, :cond_0

    .line 1830
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildCount()I

    move-result v4

    if-lez v4, :cond_0

    .line 1831
    invoke-virtual {p0, v2}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1832
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iget-object v4, p0, Lit/sephiroth/android/library/widget/AbsHListView;->v:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    if-ge v0, v4, :cond_4

    move v0, v1

    .line 1836
    :cond_0
    :goto_1
    iget-object v4, p0, Lit/sephiroth/android/library/widget/AbsHListView;->x:Landroid/view/View;

    if-eqz v0, :cond_5

    move v0, v2

    :goto_2
    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1839
    :cond_1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->y:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 1841
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildCount()I

    move-result v4

    .line 1844
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->W:I

    add-int/2addr v0, v4

    iget v5, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ao:I

    if-ge v0, v5, :cond_6

    move v0, v1

    .line 1847
    :goto_3
    if-nez v0, :cond_9

    if-lez v4, :cond_9

    .line 1848
    add-int/lit8 v0, v4, -0x1

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1849
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getRight()I

    move-result v4

    iget-object v5, p0, Lit/sephiroth/android/library/widget/AbsHListView;->v:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v5

    if-le v0, v4, :cond_7

    .line 1852
    :goto_4
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->y:Landroid/view/View;

    if-eqz v1, :cond_8

    :goto_5
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1854
    :cond_2
    return-void

    :cond_3
    move v0, v2

    .line 1826
    goto :goto_0

    :cond_4
    move v0, v2

    .line 1832
    goto :goto_1

    :cond_5
    move v0, v3

    .line 1836
    goto :goto_2

    :cond_6
    move v0, v2

    .line 1844
    goto :goto_3

    :cond_7
    move v1, v2

    .line 1849
    goto :goto_4

    :cond_8
    move v2, v3

    .line 1852
    goto :goto_5

    :cond_9
    move v1, v0

    goto :goto_4
.end method

.method g()Z
    .locals 1

    .prologue
    .line 2173
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->G:I

    packed-switch v0, :pswitch_data_0

    .line 2178
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 2176
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 2173
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 4

    .prologue
    .line 5237
    new-instance v0, Lit/sephiroth/android/library/widget/i;

    const/4 v1, -0x2

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lit/sephiroth/android/library/widget/i;-><init>(III)V

    return-object v0
.end method

.method public synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter

    .prologue
    .line 59
    invoke-virtual {p0, p1}, Lit/sephiroth/android/library/widget/AbsHListView;->a(Landroid/util/AttributeSet;)Lit/sephiroth/android/library/widget/i;

    move-result-object v0

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter

    .prologue
    .line 5243
    new-instance v0, Lit/sephiroth/android/library/widget/i;

    invoke-direct {v0, p1}, Lit/sephiroth/android/library/widget/i;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getCacheColorHint()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    .line 5313
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aG:I

    return v0
.end method

.method public getCheckedItemCount()I
    .locals 1

    .prologue
    .line 759
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->f:I

    return v0
.end method

.method public getCheckedItemIds()[J
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 816
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->c:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->h:Landroid/support/v4/util/LongSparseArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->k:Landroid/widget/ListAdapter;

    if-nez v0, :cond_2

    .line 817
    :cond_0
    new-array v0, v1, [J

    .line 828
    :cond_1
    return-object v0

    .line 820
    :cond_2
    iget-object v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->h:Landroid/support/v4/util/LongSparseArray;

    .line 821
    invoke-virtual {v2}, Landroid/support/v4/util/LongSparseArray;->size()I

    move-result v3

    .line 822
    new-array v0, v3, [J

    .line 824
    :goto_0
    if-ge v1, v3, :cond_1

    .line 825
    invoke-virtual {v2, v1}, Landroid/support/v4/util/LongSparseArray;->keyAt(I)J

    move-result-wide v4

    aput-wide v4, v0, v1

    .line 824
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getCheckedItemPosition()I
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 788
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->c:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->g:Landroid/support/v4/util/SparseArrayCompat;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->g:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0}, Landroid/support/v4/util/SparseArrayCompat;->size()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 789
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->g:Landroid/support/v4/util/SparseArrayCompat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/util/SparseArrayCompat;->keyAt(I)I

    move-result v0

    .line 792
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getCheckedItemPositions()Landroid/support/v4/util/SparseArrayCompat;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/util/SparseArrayCompat",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 803
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->c:I

    if-eqz v0, :cond_0

    .line 804
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->g:Landroid/support/v4/util/SparseArrayCompat;

    .line 806
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getChoiceMode()I
    .locals 1

    .prologue
    .line 1010
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->c:I

    return v0
.end method

.method protected getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .prologue
    .line 2607
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ay:Landroid/view/ContextMenu$ContextMenuInfo;

    return-object v0
.end method

.method public getFocusedRect(Landroid/graphics/Rect;)V
    .locals 2
    .parameter

    .prologue
    .line 1249
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 1250
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-ne v1, p0, :cond_0

    .line 1253
    invoke-virtual {v0, p1}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 1254
    invoke-virtual {p0, v0, p1}, Lit/sephiroth/android/library/widget/AbsHListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1259
    :goto_0
    return-void

    .line 1257
    :cond_0
    invoke-super {p0, p1}, Lit/sephiroth/android/library/widget/u;->getFocusedRect(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method protected getFooterViewsCount()I
    .locals 1

    .prologue
    .line 4763
    const/4 v0, 0x0

    return v0
.end method

.method protected getHeaderViewsCount()I
    .locals 1

    .prologue
    .line 4753
    const/4 v0, 0x0

    return v0
.end method

.method protected getHorizontalScrollFactor()F
    .locals 4

    .prologue
    .line 3437
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->bd:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 3439
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 3440
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x7f010181

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    .line 3442
    if-eqz v1, :cond_1

    .line 3443
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v0

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->bd:F

    .line 3449
    :cond_0
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->bd:F

    return v0

    .line 3446
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Expected theme to define hlv_listPreferredItemWidth."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected getHorizontalScrollbarHeight()I
    .locals 1

    .prologue
    .line 1087
    invoke-super {p0}, Lit/sephiroth/android/library/widget/u;->getHorizontalScrollbarHeight()I

    move-result v0

    return v0
.end method

.method protected getLeftFadingEdgeStrength()F
    .locals 4

    .prologue
    .line 1730
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildCount()I

    move-result v1

    .line 1731
    invoke-super {p0}, Lit/sephiroth/android/library/widget/u;->getLeftFadingEdgeStrength()F

    move-result v0

    .line 1732
    if-nez v1, :cond_1

    .line 1741
    :cond_0
    :goto_0
    return v0

    .line 1735
    :cond_1
    iget v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->W:I

    if-lez v1, :cond_2

    .line 1736
    const/high16 v0, 0x3f80

    goto :goto_0

    .line 1739
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 1740
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getHorizontalFadingEdgeLength()I

    move-result v2

    int-to-float v2, v2

    .line 1741
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getPaddingLeft()I

    move-result v3

    if-ge v1, v3, :cond_0

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getPaddingLeft()I

    move-result v0

    sub-int v0, v1, v0

    neg-int v0, v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    goto :goto_0
.end method

.method public getListPaddingBottom()I
    .locals 1

    .prologue
    .line 1887
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->v:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method public getListPaddingLeft()I
    .locals 1

    .prologue
    .line 1899
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->v:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public getListPaddingRight()I
    .locals 1

    .prologue
    .line 1911
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->v:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0
.end method

.method public getListPaddingTop()I
    .locals 1

    .prologue
    .line 1875
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->v:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method protected getRightFadingEdgeStrength()F
    .locals 5

    .prologue
    .line 1747
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildCount()I

    move-result v1

    .line 1748
    invoke-super {p0}, Lit/sephiroth/android/library/widget/u;->getRightFadingEdgeStrength()F

    move-result v0

    .line 1749
    if-nez v1, :cond_1

    .line 1759
    :cond_0
    :goto_0
    return v0

    .line 1752
    :cond_1
    iget v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->W:I

    add-int/2addr v2, v1

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ao:I

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_2

    .line 1753
    const/high16 v0, 0x3f80

    goto :goto_0

    .line 1756
    :cond_2
    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    .line 1757
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getWidth()I

    move-result v2

    .line 1758
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getHorizontalFadingEdgeLength()I

    move-result v3

    int-to-float v3, v3

    .line 1759
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getPaddingRight()I

    move-result v4

    sub-int v4, v2, v4

    if-le v1, v4, :cond_0

    sub-int v0, v1, v2

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    div-float/2addr v0, v3

    goto :goto_0
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 1859
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ao:I

    if-lez v0, :cond_0

    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->am:I

    if-ltz v0, :cond_0

    .line 1860
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->am:I

    iget v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->W:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1862
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSelector()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 2246
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->n:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getSolidColor()I
    .locals 1

    .prologue
    .line 5281
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aG:I

    return v0
.end method

.method public getTranscriptMode()I
    .locals 1

    .prologue
    .line 5276
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aF:I

    return v0
.end method

.method protected h()Z
    .locals 1

    .prologue
    .line 2189
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected i()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 2253
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->isClickable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2288
    :cond_0
    :goto_0
    return-void

    .line 2257
    :cond_1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->n:Landroid/graphics/drawable/Drawable;

    .line 2258
    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->p:Landroid/graphics/Rect;

    .line 2259
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->isFocused()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->g()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2262
    iget v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->am:I

    iget v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->W:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2264
    if-eqz v1, :cond_3

    .line 2265
    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2266
    invoke-virtual {v1, v3}, Landroid/view/View;->setPressed(Z)V

    .line 2268
    :cond_3
    invoke-virtual {p0, v3}, Lit/sephiroth/android/library/widget/AbsHListView;->setPressed(Z)V

    .line 2270
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->isLongClickable()Z

    move-result v1

    .line 2271
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2272
    if-eqz v0, :cond_4

    instance-of v2, v0, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v2, :cond_4

    .line 2273
    if-eqz v1, :cond_6

    .line 2274
    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 2280
    :cond_4
    :goto_1
    if-eqz v1, :cond_0

    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aj:Z

    if-nez v0, :cond_0

    .line 2281
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aC:Lit/sephiroth/android/library/widget/d;

    if-nez v0, :cond_5

    .line 2282
    new-instance v0, Lit/sephiroth/android/library/widget/d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lit/sephiroth/android/library/widget/d;-><init>(Lit/sephiroth/android/library/widget/AbsHListView;Lit/sephiroth/android/library/widget/a;)V

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aC:Lit/sephiroth/android/library/widget/d;

    .line 2284
    :cond_5
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aC:Lit/sephiroth/android/library/widget/d;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/d;->a()V

    .line 2285
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aC:Lit/sephiroth/android/library/widget/d;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Lit/sephiroth/android/library/widget/AbsHListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 2277
    :cond_6
    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    goto :goto_1
.end method

.method j()V
    .locals 2

    .prologue
    .line 2298
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->n:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2299
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2300
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->n:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 2305
    :cond_0
    :goto_0
    return-void

    .line 2302
    :cond_1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->n:Landroid/graphics/drawable/Drawable;

    sget-object v1, Lit/sephiroth/android/library/widget/AbsHListView;->V:[I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 2356
    invoke-super {p0}, Lit/sephiroth/android/library/widget/u;->jumpDrawablesToCurrentState()V

    .line 2357
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->n:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->n:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 2358
    :cond_0
    return-void
.end method

.method protected k()V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 2972
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->b:Lit/sephiroth/android/library/a/b;

    invoke-virtual {v0}, Lit/sephiroth/android/library/a/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2973
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 2975
    :cond_0
    return-void
.end method

.method protected l()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 4776
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->am:I

    if-eq v0, v2, :cond_2

    .line 4777
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->i:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 4778
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->am:I

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->N:I

    .line 4780
    :cond_0
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ak:I

    if-ltz v0, :cond_1

    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ak:I

    iget v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->am:I

    if-eq v0, v1, :cond_1

    .line 4781
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ak:I

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->N:I

    .line 4783
    :cond_1
    invoke-virtual {p0, v2}, Lit/sephiroth/android/library/widget/AbsHListView;->setSelectedPositionInt(I)V

    .line 4784
    invoke-virtual {p0, v2}, Lit/sephiroth/android/library/widget/AbsHListView;->setNextSelectedPositionInt(I)V

    .line 4785
    const/4 v0, 0x0

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->K:I

    .line 4787
    :cond_2
    return-void
.end method

.method protected m()I
    .locals 2

    .prologue
    .line 4794
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->am:I

    .line 4795
    if-gez v0, :cond_0

    .line 4796
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->N:I

    .line 4798
    :cond_0
    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 4799
    iget v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ao:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 4800
    return v0
.end method

.method protected n()Z
    .locals 1

    .prologue
    .line 4843
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->am:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4844
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->j()V

    .line 4845
    const/4 v0, 0x1

    .line 4847
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method o()Z
    .locals 14

    .prologue
    const/4 v3, 0x1

    const/4 v6, -0x1

    const/4 v4, 0x0

    .line 4864
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildCount()I

    move-result v9

    .line 4866
    if-gtz v9, :cond_0

    .line 4961
    :goto_0
    return v4

    .line 4872
    :cond_0
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->v:Landroid/graphics/Rect;

    iget v5, v0, Landroid/graphics/Rect;->left:I

    .line 4873
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getRight()I

    move-result v0

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getLeft()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->v:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int v7, v0, v1

    .line 4874
    iget v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->W:I

    .line 4875
    iget v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->N:I

    .line 4878
    if-lt v2, v1, :cond_4

    add-int v0, v1, v9

    if-ge v2, v0, :cond_4

    .line 4881
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->W:I

    sub-int v0, v2, v0

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 4882
    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v0

    .line 4883
    invoke-virtual {v8}, Landroid/view/View;->getRight()I

    move-result v9

    .line 4886
    if-ge v0, v5, :cond_3

    .line 4887
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getHorizontalFadingEdgeLength()I

    move-result v0

    add-int/2addr v0, v5

    :cond_1
    :goto_1
    move v5, v0

    move v0, v3

    .line 4942
    :goto_2
    iput v6, p0, Lit/sephiroth/android/library/widget/AbsHListView;->N:I

    .line 4943
    iget-object v7, p0, Lit/sephiroth/android/library/widget/AbsHListView;->au:Lit/sephiroth/android/library/widget/g;

    invoke-virtual {p0, v7}, Lit/sephiroth/android/library/widget/AbsHListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4944
    iget-object v7, p0, Lit/sephiroth/android/library/widget/AbsHListView;->J:Lit/sephiroth/android/library/widget/m;

    if-eqz v7, :cond_2

    .line 4945
    iget-object v7, p0, Lit/sephiroth/android/library/widget/AbsHListView;->J:Lit/sephiroth/android/library/widget/m;

    invoke-virtual {v7}, Lit/sephiroth/android/library/widget/m;->a()V

    .line 4947
    :cond_2
    iput v6, p0, Lit/sephiroth/android/library/widget/AbsHListView;->G:I

    .line 4948
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->G()V

    .line 4949
    iput v5, p0, Lit/sephiroth/android/library/widget/AbsHListView;->Z:I

    .line 4950
    invoke-virtual {p0, v2, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->b(IZ)I

    move-result v0

    .line 4951
    if-lt v0, v1, :cond_a

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getLastVisiblePosition()I

    move-result v1

    if-gt v0, v1, :cond_a

    .line 4952
    const/4 v1, 0x4

    iput v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->i:I

    .line 4953
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->j()V

    .line 4954
    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->setSelectionInt(I)V

    .line 4955
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->b()V

    .line 4959
    :goto_3
    invoke-virtual {p0, v4}, Lit/sephiroth/android/library/widget/AbsHListView;->b(I)V

    .line 4961
    if-ltz v0, :cond_b

    :goto_4
    move v4, v3

    goto :goto_0

    .line 4888
    :cond_3
    if-le v9, v7, :cond_1

    .line 4889
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int v0, v7, v0

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getHorizontalFadingEdgeLength()I

    move-result v5

    sub-int/2addr v0, v5

    goto :goto_1

    .line 4892
    :cond_4
    if-ge v2, v1, :cond_7

    move v7, v4

    move v0, v4

    .line 4895
    :goto_5
    if-ge v7, v9, :cond_11

    .line 4896
    invoke-virtual {p0, v7}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 4897
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    .line 4899
    if-nez v7, :cond_10

    .line 4903
    if-gtz v1, :cond_5

    if-ge v2, v5, :cond_f

    .line 4906
    :cond_5
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getHorizontalFadingEdgeLength()I

    move-result v0

    add-int/2addr v0, v5

    move v5, v2

    .line 4909
    :goto_6
    if-lt v2, v0, :cond_6

    .line 4911
    add-int v0, v1, v7

    :goto_7
    move v5, v2

    move v2, v0

    move v0, v3

    .line 4895
    goto :goto_2

    :cond_6
    add-int/lit8 v2, v7, 0x1

    move v7, v2

    move v13, v0

    move v0, v5

    move v5, v13

    goto :goto_5

    .line 4917
    :cond_7
    iget v10, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ao:I

    .line 4919
    add-int v0, v1, v9

    add-int/lit8 v0, v0, -0x1

    .line 4921
    add-int/lit8 v2, v9, -0x1

    move v8, v2

    move v5, v4

    :goto_8
    if-ltz v8, :cond_e

    .line 4922
    invoke-virtual {p0, v8}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 4923
    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    move-result v2

    .line 4924
    invoke-virtual {v11}, Landroid/view/View;->getRight()I

    move-result v11

    .line 4926
    add-int/lit8 v12, v9, -0x1

    if-ne v8, v12, :cond_d

    .line 4928
    add-int v5, v1, v9

    if-lt v5, v10, :cond_8

    if-le v11, v7, :cond_c

    .line 4929
    :cond_8
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getHorizontalFadingEdgeLength()I

    move-result v5

    sub-int v5, v7, v5

    move v7, v2

    .line 4933
    :goto_9
    if-gt v11, v5, :cond_9

    .line 4934
    add-int v0, v1, v8

    move v5, v2

    move v2, v0

    move v0, v4

    .line 4936
    goto/16 :goto_2

    .line 4921
    :cond_9
    add-int/lit8 v2, v8, -0x1

    move v8, v2

    move v13, v5

    move v5, v7

    move v7, v13

    goto :goto_8

    :cond_a
    move v0, v6

    .line 4957
    goto :goto_3

    :cond_b
    move v3, v4

    .line 4961
    goto :goto_4

    :cond_c
    move v5, v7

    move v7, v2

    goto :goto_9

    :cond_d
    move v13, v7

    move v7, v5

    move v5, v13

    goto :goto_9

    :cond_e
    move v2, v0

    move v0, v4

    goto/16 :goto_2

    :cond_f
    move v0, v5

    move v5, v2

    goto :goto_6

    :cond_10
    move v13, v5

    move v5, v0

    move v0, v13

    goto :goto_6

    :cond_11
    move v2, v0

    move v0, v1

    goto :goto_7
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2362
    invoke-super {p0}, Lit/sephiroth/android/library/widget/u;->onAttachedToWindow()V

    .line 2364
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 2365
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 2367
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->k:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->j:Lit/sephiroth/android/library/widget/c;

    if-nez v0, :cond_0

    .line 2368
    new-instance v0, Lit/sephiroth/android/library/widget/c;

    invoke-direct {v0, p0}, Lit/sephiroth/android/library/widget/c;-><init>(Lit/sephiroth/android/library/widget/AbsHListView;)V

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->j:Lit/sephiroth/android/library/widget/c;

    .line 2369
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->k:Landroid/widget/ListAdapter;

    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->j:Lit/sephiroth/android/library/widget/c;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 2372
    iput-boolean v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aj:Z

    .line 2373
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ao:I

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ap:I

    .line 2374
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->k:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ao:I

    .line 2376
    :cond_0
    iput-boolean v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->T:Z

    .line 2377
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 5
    .parameter
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Override"
        }
    .end annotation

    .prologue
    .line 2317
    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aH:Z

    if-eqz v0, :cond_1

    .line 2319
    invoke-super {p0, p1}, Lit/sephiroth/android/library/widget/u;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 2345
    :cond_0
    :goto_0
    return-object v0

    .line 2325
    :cond_1
    sget-object v0, Lit/sephiroth/android/library/widget/AbsHListView;->ENABLED_STATE_SET:[I

    const/4 v1, 0x0

    aget v3, v0, v1

    .line 2330
    add-int/lit8 v0, p1, 0x1

    invoke-super {p0, v0}, Lit/sephiroth/android/library/widget/u;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 2331
    const/4 v2, -0x1

    .line 2332
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-ltz v1, :cond_3

    .line 2333
    aget v4, v0, v1

    if-ne v4, v3, :cond_2

    .line 2340
    :goto_2
    if-ltz v1, :cond_0

    .line 2341
    add-int/lit8 v2, v1, 0x1

    array-length v3, v0

    sub-int/2addr v3, v1

    add-int/lit8 v3, v3, -0x1

    invoke-static {v0, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 2332
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_2
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 1
    .parameter

    .prologue
    .line 5224
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2381
    invoke-super {p0}, Lit/sephiroth/android/library/widget/u;->onDetachedFromWindow()V

    .line 2386
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->q:Lit/sephiroth/android/library/widget/p;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/p;->b()V

    .line 2388
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 2389
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 2391
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->k:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->j:Lit/sephiroth/android/library/widget/c;

    if-eqz v0, :cond_0

    .line 2392
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->k:Landroid/widget/ListAdapter;

    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->j:Lit/sephiroth/android/library/widget/c;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 2393
    iput-object v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->j:Lit/sephiroth/android/library/widget/c;

    .line 2396
    :cond_0
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->au:Lit/sephiroth/android/library/widget/g;

    if-eqz v0, :cond_1

    .line 2397
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->au:Lit/sephiroth/android/library/widget/g;

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2400
    :cond_1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->J:Lit/sephiroth/android/library/widget/m;

    if-eqz v0, :cond_2

    .line 2401
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->J:Lit/sephiroth/android/library/widget/m;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/m;->a()V

    .line 2404
    :cond_2
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aK:Ljava/lang/Runnable;

    if-eqz v0, :cond_3

    .line 2405
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aK:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2408
    :cond_3
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aD:Lit/sephiroth/android/library/widget/l;

    if-eqz v0, :cond_4

    .line 2409
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aD:Lit/sephiroth/android/library/widget/l;

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2412
    :cond_4
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aE:Ljava/lang/Runnable;

    if-eqz v0, :cond_5

    .line 2413
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aE:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2414
    iput-object v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aE:Ljava/lang/Runnable;

    .line 2416
    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->T:Z

    .line 2417
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1615
    invoke-super {p0, p1, p2, p3}, Lit/sephiroth/android/library/widget/u;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 1616
    if-eqz p1, :cond_1

    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->am:I

    if-gez v0, :cond_1

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1617
    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->T:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->k:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 1620
    const/4 v0, 0x1

    iput-boolean v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aj:Z

    .line 1621
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ao:I

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ap:I

    .line 1622
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->k:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ao:I

    .line 1624
    :cond_0
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->o()Z

    .line 1626
    :cond_1
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter
    .annotation build Landroid/annotation/TargetApi;
        value = 0xc
    .end annotation

    .prologue
    .line 3410
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 3411
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 3425
    :cond_0
    invoke-super {p0, p1}, Lit/sephiroth/android/library/widget/u;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 3413
    :pswitch_0
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->G:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 3414
    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    .line 3415
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    .line 3416
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getHorizontalScrollFactor()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 3417
    invoke-virtual {p0, v0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->d(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3418
    const/4 v0, 0x1

    goto :goto_0

    .line 3411
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .parameter
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 1165
    invoke-super {p0, p1}, Lit/sephiroth/android/library/widget/u;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1166
    const-class v0, Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 1167
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2
    .parameter
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Override"
        }
    .end annotation

    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 1173
    invoke-super {p0, p1}, Lit/sephiroth/android/library/widget/u;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1175
    const-class v0, Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 1176
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1177
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getFirstVisiblePosition()I

    move-result v0

    if-lez v0, :cond_0

    .line 1178
    const/16 v0, 0x2000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 1180
    :cond_0
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getLastVisiblePosition()I

    move-result v0

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    .line 1181
    const/16 v0, 0x1000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 1184
    :cond_1
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x4

    const/4 v2, 0x1

    const/4 v4, -0x1

    const/4 v1, 0x0

    .line 3542
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 3545
    iget-object v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->J:Lit/sephiroth/android/library/widget/m;

    if-eqz v3, :cond_0

    .line 3546
    iget-object v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->J:Lit/sephiroth/android/library/widget/m;

    invoke-virtual {v3}, Lit/sephiroth/android/library/widget/m;->a()V

    .line 3549
    :cond_0
    iget-boolean v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->T:Z

    if-nez v3, :cond_2

    .line 3624
    :cond_1
    :goto_0
    return v1

    .line 3557
    :cond_2
    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 3559
    :pswitch_1
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->G:I

    .line 3560
    const/4 v3, 0x6

    if-eq v0, v3, :cond_3

    const/4 v3, 0x5

    if-ne v0, v3, :cond_4

    .line 3561
    :cond_3
    iput v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->I:I

    move v1, v2

    .line 3562
    goto :goto_0

    .line 3565
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    .line 3566
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    .line 3567
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    iput v5, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aO:I

    .line 3569
    invoke-virtual {p0, v3}, Lit/sephiroth/android/library/widget/AbsHListView;->d(I)I

    move-result v5

    .line 3570
    if-eq v0, v7, :cond_5

    if-ltz v5, :cond_5

    .line 3573
    iget v6, p0, Lit/sephiroth/android/library/widget/AbsHListView;->W:I

    sub-int v6, v5, v6

    invoke-virtual {p0, v6}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 3574
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v6

    iput v6, p0, Lit/sephiroth/android/library/widget/AbsHListView;->C:I

    .line 3575
    iput v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->E:I

    .line 3576
    iput v4, p0, Lit/sephiroth/android/library/widget/AbsHListView;->F:I

    .line 3577
    iput v5, p0, Lit/sephiroth/android/library/widget/AbsHListView;->B:I

    .line 3578
    iput v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->G:I

    .line 3579
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->G()V

    .line 3581
    :cond_5
    const/high16 v3, -0x8000

    iput v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->H:I

    .line 3582
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->C()V

    .line 3583
    iget-object v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->a:Landroid/view/VelocityTracker;

    invoke-virtual {v3, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 3584
    if-ne v0, v7, :cond_1

    move v1, v2

    .line 3585
    goto :goto_0

    .line 3591
    :pswitch_2
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->G:I

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 3593
    :pswitch_3
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aO:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 3594
    if-ne v0, v4, :cond_6

    .line 3596
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aO:I

    move v0, v1

    .line 3598
    :cond_6
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    float-to-int v0, v0

    .line 3599
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->D()V

    .line 3600
    iget-object v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->a:Landroid/view/VelocityTracker;

    invoke-virtual {v3, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 3601
    invoke-direct {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->g(I)Z

    move-result v0

    if-eqz v0, :cond_1

    move v1, v2

    .line 3602
    goto :goto_0

    .line 3611
    :pswitch_4
    iput v4, p0, Lit/sephiroth/android/library/widget/AbsHListView;->G:I

    .line 3612
    iput v4, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aO:I

    .line 3613
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->E()V

    .line 3614
    invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/AbsHListView;->b(I)V

    goto/16 :goto_0

    .line 3619
    :pswitch_5
    invoke-direct {p0, p1}, Lit/sephiroth/android/library/widget/AbsHListView;->b(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 3557
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch

    .line 3591
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2648
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v5, 0x0

    .line 2653
    sparse-switch p1, :sswitch_data_0

    .line 2673
    :cond_0
    invoke-super {p0, p1, p2}, Lit/sephiroth/android/library/widget/u;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :cond_1
    :goto_0
    return v0

    .line 2656
    :sswitch_0
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2659
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->isClickable()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->isPressed()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->am:I

    if-ltz v1, :cond_0

    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->k:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_0

    iget v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->am:I

    iget-object v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->k:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 2663
    iget v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->am:I

    iget v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->W:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2664
    if-eqz v1, :cond_2

    .line 2665
    iget v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->am:I

    iget-wide v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->an:J

    invoke-virtual {p0, v1, v2, v3, v4}, Lit/sephiroth/android/library/widget/AbsHListView;->a(Landroid/view/View;IJ)Z

    .line 2666
    invoke-virtual {v1, v5}, Landroid/view/View;->setPressed(Z)V

    .line 2668
    :cond_2
    invoke-virtual {p0, v5}, Lit/sephiroth/android/library/widget/AbsHListView;->setPressed(Z)V

    goto :goto_0

    .line 2653
    nop

    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
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
    const/4 v1, 0x0

    .line 1790
    invoke-super/range {p0 .. p5}, Lit/sephiroth/android/library/widget/u;->onLayout(ZIIII)V

    .line 1791
    const/4 v0, 0x1

    iput-boolean v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->af:Z

    .line 1792
    if-eqz p1, :cond_1

    .line 1793
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildCount()I

    move-result v2

    move v0, v1

    .line 1794
    :goto_0
    if-ge v0, v2, :cond_0

    .line 1795
    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->forceLayout()V

    .line 1794
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1797
    :cond_0
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->q:Lit/sephiroth/android/library/widget/p;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/p;->a()V

    .line 1800
    :cond_1
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->e()V

    .line 1801
    iput-boolean v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->af:Z

    .line 1803
    sub-int v0, p4, p2

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->O:I

    .line 1804
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 1766
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->n:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 1767
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->B()V

    .line 1769
    :cond_0
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->v:Landroid/graphics/Rect;

    .line 1770
    iget v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->r:I

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getPaddingLeft()I

    move-result v3

    add-int/2addr v1, v3

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 1771
    iget v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->s:I

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getPaddingTop()I

    move-result v3

    add-int/2addr v1, v3

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 1772
    iget v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->t:I

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getPaddingRight()I

    move-result v3

    add-int/2addr v1, v3

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 1773
    iget v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->u:I

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getPaddingBottom()I

    move-result v3

    add-int/2addr v1, v3

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 1776
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aF:I

    if-ne v0, v2, :cond_1

    .line 1777
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildCount()I

    move-result v3

    .line 1778
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getPaddingRight()I

    move-result v1

    sub-int v1, v0, v1

    .line 1779
    add-int/lit8 v0, v3, -0x1

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1780
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    .line 1781
    :goto_0
    iget v4, p0, Lit/sephiroth/android/library/widget/AbsHListView;->W:I

    add-int/2addr v3, v4

    iget v4, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ba:I

    if-lt v3, v4, :cond_3

    if-gt v0, v1, :cond_3

    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aU:Z

    .line 1783
    :cond_1
    return-void

    :cond_2
    move v0, v1

    .line 1780
    goto :goto_0

    .line 1781
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected onOverScrolled(IIZZ)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3398
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getScrollX()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 3399
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getScrollY()I

    move-result v0

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getScrollY()I

    move-result v2

    invoke-virtual {p0, p1, v0, v1, v2}, Lit/sephiroth/android/library/widget/AbsHListView;->onScrollChanged(IIII)V

    .line 3400
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->b:Lit/sephiroth/android/library/a/b;

    invoke-virtual {v0, p1}, Lit/sephiroth/android/library/a/b;->a(I)V

    .line 3401
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->k()V

    .line 3403
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->awakenScrollBars()Z

    .line 3405
    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 6
    .parameter

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x1

    .line 1562
    check-cast p1, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;

    .line 1564
    invoke-virtual {p1}, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Lit/sephiroth/android/library/widget/u;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1565
    iput-boolean v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aj:Z

    .line 1567
    iget v0, p1, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->e:I

    int-to-long v0, v0

    iput-wide v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ac:J

    .line 1569
    iget-wide v0, p1, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->a:J

    cmp-long v0, v0, v4

    if-ltz v0, :cond_4

    .line 1570
    iput-boolean v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ad:Z

    .line 1571
    iput-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->bb:Lit/sephiroth/android/library/widget/AbsHListView$SavedState;

    .line 1572
    iget-wide v0, p1, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->a:J

    iput-wide v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ab:J

    .line 1573
    iget v0, p1, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->d:I

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aa:I

    .line 1574
    iget v0, p1, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->c:I

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->Z:I

    .line 1575
    const/4 v0, 0x0

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ae:I

    .line 1594
    :cond_0
    :goto_0
    iget-object v0, p1, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->i:Landroid/support/v4/util/SparseArrayCompat;

    if-eqz v0, :cond_1

    .line 1595
    iget-object v0, p1, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->i:Landroid/support/v4/util/SparseArrayCompat;

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->g:Landroid/support/v4/util/SparseArrayCompat;

    .line 1598
    :cond_1
    iget-object v0, p1, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->j:Landroid/support/v4/util/LongSparseArray;

    if-eqz v0, :cond_2

    .line 1599
    iget-object v0, p1, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->j:Landroid/support/v4/util/LongSparseArray;

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->h:Landroid/support/v4/util/LongSparseArray;

    .line 1602
    :cond_2
    iget v0, p1, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->h:I

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->f:I

    .line 1604
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_3

    .line 1605
    iget-boolean v0, p1, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->g:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->c:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->e:Ljava/lang/Object;

    if-eqz v0, :cond_3

    .line 1606
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->e:Ljava/lang/Object;

    check-cast v0, Lit/sephiroth/android/library/a/a/b;

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->d:Ljava/lang/Object;

    .line 1610
    :cond_3
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->requestLayout()V

    .line 1611
    return-void

    .line 1576
    :cond_4
    iget-wide v0, p1, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->b:J

    cmp-long v0, v0, v4

    if-ltz v0, :cond_0

    .line 1577
    invoke-virtual {p0, v3}, Lit/sephiroth/android/library/widget/AbsHListView;->setSelectedPositionInt(I)V

    .line 1579
    invoke-virtual {p0, v3}, Lit/sephiroth/android/library/widget/AbsHListView;->setNextSelectedPositionInt(I)V

    .line 1580
    iput v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->o:I

    .line 1581
    iput-boolean v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ad:Z

    .line 1582
    iput-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->bb:Lit/sephiroth/android/library/widget/AbsHListView$SavedState;

    .line 1583
    iget-wide v0, p1, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->b:J

    iput-wide v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ab:J

    .line 1584
    iget v0, p1, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->d:I

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aa:I

    .line 1585
    iget v0, p1, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->c:I

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->Z:I

    .line 1586
    iput v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ae:I

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 10

    .prologue
    const-wide/16 v8, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1473
    invoke-super {p0}, Lit/sephiroth/android/library/widget/u;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 1475
    new-instance v3, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;

    invoke-direct {v3, v0}, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1478
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->bb:Lit/sephiroth/android/library/widget/AbsHListView$SavedState;

    if-eqz v0, :cond_0

    .line 1480
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->bb:Lit/sephiroth/android/library/widget/AbsHListView$SavedState;

    iget-wide v0, v0, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->a:J

    iput-wide v0, v3, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->a:J

    .line 1481
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->bb:Lit/sephiroth/android/library/widget/AbsHListView$SavedState;

    iget-wide v0, v0, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->b:J

    iput-wide v0, v3, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->b:J

    .line 1482
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->bb:Lit/sephiroth/android/library/widget/AbsHListView$SavedState;

    iget v0, v0, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->c:I

    iput v0, v3, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->c:I

    .line 1483
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->bb:Lit/sephiroth/android/library/widget/AbsHListView$SavedState;

    iget v0, v0, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->d:I

    iput v0, v3, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->d:I

    .line 1484
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->bb:Lit/sephiroth/android/library/widget/AbsHListView$SavedState;

    iget v0, v0, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->e:I

    iput v0, v3, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->e:I

    .line 1485
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->bb:Lit/sephiroth/android/library/widget/AbsHListView$SavedState;

    iget-object v0, v0, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->f:Ljava/lang/String;

    iput-object v0, v3, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->f:Ljava/lang/String;

    .line 1486
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->bb:Lit/sephiroth/android/library/widget/AbsHListView$SavedState;

    iget-boolean v0, v0, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->g:Z

    iput-boolean v0, v3, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->g:Z

    .line 1487
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->bb:Lit/sephiroth/android/library/widget/AbsHListView$SavedState;

    iget v0, v0, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->h:I

    iput v0, v3, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->h:I

    .line 1488
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->bb:Lit/sephiroth/android/library/widget/AbsHListView$SavedState;

    iget-object v0, v0, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->i:Landroid/support/v4/util/SparseArrayCompat;

    iput-object v0, v3, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->i:Landroid/support/v4/util/SparseArrayCompat;

    .line 1489
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->bb:Lit/sephiroth/android/library/widget/AbsHListView$SavedState;

    iget-object v0, v0, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->j:Landroid/support/v4/util/LongSparseArray;

    iput-object v0, v3, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->j:Landroid/support/v4/util/LongSparseArray;

    move-object v0, v3

    .line 1554
    :goto_0
    return-object v0

    .line 1493
    :cond_0
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_2

    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ao:I

    if-lez v0, :cond_2

    move v0, v1

    .line 1494
    :goto_1
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getSelectedItemId()J

    move-result-wide v4

    .line 1495
    iput-wide v4, v3, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->a:J

    .line 1496
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getWidth()I

    move-result v6

    iput v6, v3, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->e:I

    .line 1498
    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-ltz v4, :cond_3

    .line 1500
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->K:I

    iput v0, v3, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->c:I

    .line 1501
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getSelectedItemPosition()I

    move-result v0

    iput v0, v3, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->d:I

    .line 1502
    iput-wide v8, v3, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->b:J

    .line 1529
    :goto_2
    const/4 v0, 0x0

    iput-object v0, v3, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->f:Ljava/lang/String;

    .line 1530
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-lt v0, v4, :cond_6

    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->c:I

    const/4 v4, 0x3

    if-ne v0, v4, :cond_6

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->d:Ljava/lang/Object;

    if-eqz v0, :cond_6

    :goto_3
    iput-boolean v1, v3, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->g:Z

    .line 1533
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->g:Landroid/support/v4/util/SparseArrayCompat;

    if-eqz v0, :cond_1

    .line 1542
    new-instance v0, Landroid/support/v4/util/SparseArrayCompat;

    invoke-direct {v0}, Landroid/support/v4/util/SparseArrayCompat;-><init>()V

    iput-object v0, v3, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->i:Landroid/support/v4/util/SparseArrayCompat;

    .line 1544
    :cond_1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->h:Landroid/support/v4/util/LongSparseArray;

    if-eqz v0, :cond_8

    .line 1545
    new-instance v0, Landroid/support/v4/util/LongSparseArray;

    invoke-direct {v0}, Landroid/support/v4/util/LongSparseArray;-><init>()V

    .line 1546
    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->h:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/support/v4/util/LongSparseArray;->size()I

    move-result v1

    .line 1547
    :goto_4
    if-ge v2, v1, :cond_7

    .line 1548
    iget-object v4, p0, Lit/sephiroth/android/library/widget/AbsHListView;->h:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v4, v2}, Landroid/support/v4/util/LongSparseArray;->keyAt(I)J

    move-result-wide v4

    iget-object v6, p0, Lit/sephiroth/android/library/widget/AbsHListView;->h:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v6, v2}, Landroid/support/v4/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v4, v5, v6}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1547
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_2
    move v0, v2

    .line 1493
    goto :goto_1

    .line 1504
    :cond_3
    if-eqz v0, :cond_5

    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->W:I

    if-lez v0, :cond_5

    .line 1514
    invoke-virtual {p0, v2}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1515
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iput v0, v3, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->c:I

    .line 1516
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->W:I

    .line 1517
    iget v4, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ao:I

    if-lt v0, v4, :cond_4

    .line 1518
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ao:I

    add-int/lit8 v0, v0, -0x1

    .line 1520
    :cond_4
    iput v0, v3, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->d:I

    .line 1521
    iget-object v4, p0, Lit/sephiroth/android/library/widget/AbsHListView;->k:Landroid/widget/ListAdapter;

    invoke-interface {v4, v0}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    iput-wide v4, v3, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->b:J

    goto :goto_2

    .line 1523
    :cond_5
    iput v2, v3, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->c:I

    .line 1524
    iput-wide v8, v3, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->b:J

    .line 1525
    iput v2, v3, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->d:I

    goto :goto_2

    :cond_6
    move v1, v2

    .line 1530
    goto :goto_3

    .line 1550
    :cond_7
    iput-object v0, v3, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->j:Landroid/support/v4/util/LongSparseArray;

    .line 1552
    :cond_8
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->f:I

    iput v0, v3, Lit/sephiroth/android/library/widget/AbsHListView$SavedState;->h:I

    move-object v0, v3

    .line 1554
    goto/16 :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2162
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 2163
    const/4 v0, 0x1

    iput-boolean v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aj:Z

    .line 2164
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->x()V

    .line 2166
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .parameter
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Override"
        }
    .end annotation

    .prologue
    const/4 v6, 0x4

    const/4 v11, 0x2

    const/4 v2, 0x1

    const/4 v10, -0x1

    const/4 v1, 0x0

    .line 3033
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_3

    .line 3036
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->isClickable()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->isLongClickable()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    move v0, v2

    :goto_0
    move v2, v0

    .line 3393
    :cond_1
    :goto_1
    return v2

    :cond_2
    move v0, v1

    .line 3036
    goto :goto_0

    .line 3039
    :cond_3
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->J:Lit/sephiroth/android/library/widget/m;

    if-eqz v0, :cond_4

    .line 3040
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->J:Lit/sephiroth/android/library/widget/m;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/m;->a()V

    .line 3043
    :cond_4
    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->T:Z

    if-nez v0, :cond_5

    move v2, v1

    .line 3048
    goto :goto_1

    .line 3051
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 3055
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->D()V

    .line 3056
    iget-object v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->a:Landroid/view/VelocityTracker;

    invoke-virtual {v3, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 3058
    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    .line 3060
    :pswitch_1
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->G:I

    packed-switch v0, :pswitch_data_1

    .line 3076
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aO:I

    .line 3077
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v4, v0

    .line 3078
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v5, v0

    .line 3079
    invoke-virtual {p0, v4, v5}, Lit/sephiroth/android/library/widget/AbsHListView;->a(II)I

    move-result v3

    .line 3080
    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aj:Z

    if-nez v0, :cond_29

    .line 3081
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->G:I

    if-eq v0, v6, :cond_9

    if-ltz v3, :cond_9

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ListAdapter;

    invoke-interface {v0, v3}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 3086
    iput v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->G:I

    .line 3088
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aB:Ljava/lang/Runnable;

    if-nez v0, :cond_6

    .line 3089
    new-instance v0, Lit/sephiroth/android/library/widget/f;

    invoke-direct {v0, p0}, Lit/sephiroth/android/library/widget/f;-><init>(Lit/sephiroth/android/library/widget/AbsHListView;)V

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aB:Ljava/lang/Runnable;

    .line 3091
    :cond_6
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aB:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v1

    int-to-long v6, v1

    invoke-virtual {p0, v0, v6, v7}, Lit/sephiroth/android/library/widget/AbsHListView;->postDelayed(Ljava/lang/Runnable;J)Z

    move v0, v3

    .line 3104
    :goto_2
    if-ltz v0, :cond_7

    .line 3106
    iget v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->W:I

    sub-int v1, v0, v1

    invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3107
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    iput v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->C:I

    .line 3109
    :cond_7
    iput v4, p0, Lit/sephiroth/android/library/widget/AbsHListView;->E:I

    .line 3110
    iput v5, p0, Lit/sephiroth/android/library/widget/AbsHListView;->F:I

    .line 3111
    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->B:I

    .line 3112
    const/high16 v0, -0x8000

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->H:I

    .line 3117
    :goto_3
    invoke-virtual {p0, p1}, Lit/sephiroth/android/library/widget/AbsHListView;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3118
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->G:I

    if-nez v0, :cond_1

    .line 3119
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aB:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    .line 3062
    :pswitch_2
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->au:Lit/sephiroth/android/library/widget/g;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/g;->b()V

    .line 3063
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->J:Lit/sephiroth/android/library/widget/m;

    if-eqz v0, :cond_8

    .line 3064
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->J:Lit/sephiroth/android/library/widget/m;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/m;->a()V

    .line 3066
    :cond_8
    const/4 v0, 0x5

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->G:I

    .line 3067
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->F:I

    .line 3068
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->H:I

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->E:I

    .line 3069
    iput v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->I:I

    .line 3070
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aO:I

    .line 3071
    iput v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aT:I

    goto :goto_3

    .line 3093
    :cond_9
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->G:I

    if-ne v0, v6, :cond_29

    .line 3095
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->F()V

    .line 3096
    const/4 v0, 0x3

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->G:I

    .line 3097
    iput v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->I:I

    .line 3098
    invoke-virtual {p0, v4}, Lit/sephiroth/android/library/widget/AbsHListView;->d(I)I

    move-result v0

    .line 3099
    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->au:Lit/sephiroth/android/library/widget/g;

    invoke-virtual {v1}, Lit/sephiroth/android/library/widget/g;->c()V

    goto :goto_2

    .line 3126
    :pswitch_3
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aO:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 3127
    if-ne v0, v10, :cond_28

    .line 3129
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aO:I

    .line 3131
    :goto_4
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    float-to-int v0, v0

    .line 3133
    iget-boolean v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aj:Z

    if-eqz v1, :cond_a

    .line 3136
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->e()V

    .line 3139
    :cond_a
    iget v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->G:I

    packed-switch v1, :pswitch_data_2

    :pswitch_4
    goto/16 :goto_1

    .line 3145
    :pswitch_5
    invoke-direct {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->g(I)Z

    goto/16 :goto_1

    .line 3149
    :pswitch_6
    invoke-direct {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->h(I)V

    goto/16 :goto_1

    .line 3156
    :pswitch_7
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->G:I

    packed-switch v0, :pswitch_data_3

    .line 3297
    :cond_b
    :goto_5
    :pswitch_8
    invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/AbsHListView;->setPressed(Z)V

    .line 3299
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aP:Lit/sephiroth/android/library/widget/ac;

    if-eqz v0, :cond_c

    .line 3300
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aP:Lit/sephiroth/android/library/widget/ac;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/ac;->c()V

    .line 3301
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aQ:Lit/sephiroth/android/library/widget/ac;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/ac;->c()V

    .line 3305
    :cond_c
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->invalidate()V

    .line 3307
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 3308
    if-eqz v0, :cond_d

    .line 3309
    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aA:Lit/sephiroth/android/library/widget/e;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3312
    :cond_d
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->E()V

    .line 3314
    iput v10, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aO:I

    goto/16 :goto_1

    .line 3160
    :pswitch_9
    iget v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->B:I

    .line 3161
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->W:I

    sub-int v0, v3, v0

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 3163
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 3164
    iget-object v5, p0, Lit/sephiroth/android/library/widget/AbsHListView;->v:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    cmpl-float v5, v0, v5

    if-lez v5, :cond_14

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getWidth()I

    move-result v5

    iget-object v6, p0, Lit/sephiroth/android/library/widget/AbsHListView;->v:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    cmpg-float v0, v0, v5

    if-gez v0, :cond_14

    move v0, v2

    .line 3166
    :goto_6
    if-eqz v4, :cond_18

    invoke-virtual {v4}, Landroid/view/View;->hasFocusable()Z

    move-result v5

    if-nez v5, :cond_18

    if-eqz v0, :cond_18

    .line 3167
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->G:I

    if-eqz v0, :cond_e

    .line 3168
    invoke-virtual {v4, v1}, Landroid/view/View;->setPressed(Z)V

    .line 3171
    :cond_e
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aD:Lit/sephiroth/android/library/widget/l;

    if-nez v0, :cond_f

    .line 3172
    new-instance v0, Lit/sephiroth/android/library/widget/l;

    const/4 v5, 0x0

    invoke-direct {v0, p0, v5}, Lit/sephiroth/android/library/widget/l;-><init>(Lit/sephiroth/android/library/widget/AbsHListView;Lit/sephiroth/android/library/widget/a;)V

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aD:Lit/sephiroth/android/library/widget/l;

    .line 3175
    :cond_f
    iget-object v5, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aD:Lit/sephiroth/android/library/widget/l;

    .line 3176
    iput v3, v5, Lit/sephiroth/android/library/widget/l;->a:I

    .line 3177
    invoke-virtual {v5}, Lit/sephiroth/android/library/widget/l;->a()V

    .line 3179
    iput v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->N:I

    .line 3181
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->G:I

    if-eqz v0, :cond_10

    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->G:I

    if-ne v0, v2, :cond_17

    .line 3182
    :cond_10
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getHandler()Landroid/os/Handler;

    move-result-object v6

    .line 3183
    if-eqz v6, :cond_11

    .line 3184
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->G:I

    if-nez v0, :cond_15

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aB:Ljava/lang/Runnable;

    :goto_7
    invoke-virtual {v6, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3187
    :cond_11
    iput v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->i:I

    .line 3189
    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aj:Z

    if-nez v0, :cond_16

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->k:Landroid/widget/ListAdapter;

    invoke-interface {v0, v3}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 3190
    iput v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->G:I

    .line 3191
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->B:I

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->setSelectedPositionInt(I)V

    .line 3192
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->e()V

    .line 3193
    invoke-virtual {v4, v2}, Landroid/view/View;->setPressed(Z)V

    .line 3194
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->B:I

    invoke-virtual {p0, v0, v4}, Lit/sephiroth/android/library/widget/AbsHListView;->a(ILandroid/view/View;)V

    .line 3195
    invoke-virtual {p0, v2}, Lit/sephiroth/android/library/widget/AbsHListView;->setPressed(Z)V

    .line 3196
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->n:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_12

    .line 3197
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->n:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 3198
    if-eqz v0, :cond_12

    instance-of v1, v0, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v1, :cond_12

    .line 3199
    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    .line 3202
    :cond_12
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aE:Ljava/lang/Runnable;

    if-eqz v0, :cond_13

    .line 3203
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aE:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3205
    :cond_13
    new-instance v0, Lit/sephiroth/android/library/widget/a;

    invoke-direct {v0, p0, v4, v5}, Lit/sephiroth/android/library/widget/a;-><init>(Lit/sephiroth/android/library/widget/AbsHListView;Landroid/view/View;Lit/sephiroth/android/library/widget/l;)V

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aE:Ljava/lang/Runnable;

    .line 3217
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aE:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v1

    int-to-long v3, v1

    invoke-virtual {p0, v0, v3, v4}, Lit/sephiroth/android/library/widget/AbsHListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    :cond_14
    move v0, v1

    .line 3164
    goto/16 :goto_6

    .line 3184
    :cond_15
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aA:Lit/sephiroth/android/library/widget/e;

    goto :goto_7

    .line 3220
    :cond_16
    iput v10, p0, Lit/sephiroth/android/library/widget/AbsHListView;->G:I

    .line 3221
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->j()V

    goto/16 :goto_1

    .line 3224
    :cond_17
    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aj:Z

    if-nez v0, :cond_18

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->k:Landroid/widget/ListAdapter;

    invoke-interface {v0, v3}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 3225
    invoke-virtual {v5}, Lit/sephiroth/android/library/widget/l;->run()V

    .line 3228
    :cond_18
    iput v10, p0, Lit/sephiroth/android/library/widget/AbsHListView;->G:I

    .line 3229
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->j()V

    goto/16 :goto_5

    .line 3232
    :pswitch_a
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildCount()I

    move-result v0

    .line 3233
    if-lez v0, :cond_1f

    .line 3234
    invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    .line 3235
    add-int/lit8 v4, v0, -0x1

    invoke-virtual {p0, v4}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v4

    .line 3236
    iget-object v5, p0, Lit/sephiroth/android/library/widget/AbsHListView;->v:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    .line 3237
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getWidth()I

    move-result v6

    iget-object v7, p0, Lit/sephiroth/android/library/widget/AbsHListView;->v:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    sub-int/2addr v6, v7

    .line 3238
    iget v7, p0, Lit/sephiroth/android/library/widget/AbsHListView;->W:I

    if-nez v7, :cond_19

    if-lt v3, v5, :cond_19

    iget v7, p0, Lit/sephiroth/android/library/widget/AbsHListView;->W:I

    add-int/2addr v7, v0

    iget v8, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ao:I

    if-ge v7, v8, :cond_19

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getWidth()I

    move-result v7

    sub-int/2addr v7, v6

    if-gt v4, v7, :cond_19

    .line 3240
    iput v10, p0, Lit/sephiroth/android/library/widget/AbsHListView;->G:I

    .line 3241
    invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/AbsHListView;->b(I)V

    goto/16 :goto_5

    .line 3243
    :cond_19
    iget-object v7, p0, Lit/sephiroth/android/library/widget/AbsHListView;->a:Landroid/view/VelocityTracker;

    .line 3244
    const/16 v8, 0x3e8

    iget v9, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aM:I

    int-to-float v9, v9

    invoke-virtual {v7, v8, v9}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 3246
    iget v8, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aO:I

    invoke-virtual {v7, v8}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v7

    iget v8, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aN:F

    mul-float/2addr v7, v8

    float-to-int v7, v7

    .line 3251
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v8

    iget v9, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aL:I

    if-le v8, v9, :cond_1d

    iget v8, p0, Lit/sephiroth/android/library/widget/AbsHListView;->W:I

    if-nez v8, :cond_1a

    iget v8, p0, Lit/sephiroth/android/library/widget/AbsHListView;->R:I

    sub-int/2addr v5, v8

    if-eq v3, v5, :cond_1d

    :cond_1a
    iget v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->W:I

    add-int/2addr v0, v3

    iget v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ao:I

    if-ne v0, v3, :cond_1b

    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->R:I

    add-int/2addr v0, v6

    if-eq v4, v0, :cond_1d

    .line 3256
    :cond_1b
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->au:Lit/sephiroth/android/library/widget/g;

    if-nez v0, :cond_1c

    .line 3257
    new-instance v0, Lit/sephiroth/android/library/widget/g;

    invoke-direct {v0, p0}, Lit/sephiroth/android/library/widget/g;-><init>(Lit/sephiroth/android/library/widget/AbsHListView;)V

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->au:Lit/sephiroth/android/library/widget/g;

    .line 3259
    :cond_1c
    invoke-virtual {p0, v11}, Lit/sephiroth/android/library/widget/AbsHListView;->b(I)V

    .line 3261
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->au:Lit/sephiroth/android/library/widget/g;

    neg-int v3, v7

    invoke-virtual {v0, v3}, Lit/sephiroth/android/library/widget/g;->a(I)V

    goto/16 :goto_5

    .line 3263
    :cond_1d
    iput v10, p0, Lit/sephiroth/android/library/widget/AbsHListView;->G:I

    .line 3264
    invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/AbsHListView;->b(I)V

    .line 3265
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->au:Lit/sephiroth/android/library/widget/g;

    if-eqz v0, :cond_1e

    .line 3266
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->au:Lit/sephiroth/android/library/widget/g;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/g;->b()V

    .line 3268
    :cond_1e
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->J:Lit/sephiroth/android/library/widget/m;

    if-eqz v0, :cond_b

    .line 3269
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->J:Lit/sephiroth/android/library/widget/m;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/m;->a()V

    goto/16 :goto_5

    .line 3274
    :cond_1f
    iput v10, p0, Lit/sephiroth/android/library/widget/AbsHListView;->G:I

    .line 3275
    invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/AbsHListView;->b(I)V

    goto/16 :goto_5

    .line 3280
    :pswitch_b
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->au:Lit/sephiroth/android/library/widget/g;

    if-nez v0, :cond_20

    .line 3281
    new-instance v0, Lit/sephiroth/android/library/widget/g;

    invoke-direct {v0, p0}, Lit/sephiroth/android/library/widget/g;-><init>(Lit/sephiroth/android/library/widget/AbsHListView;)V

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->au:Lit/sephiroth/android/library/widget/g;

    .line 3283
    :cond_20
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->a:Landroid/view/VelocityTracker;

    .line 3284
    const/16 v3, 0x3e8

    iget v4, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aM:I

    int-to-float v4, v4

    invoke-virtual {v0, v3, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 3285
    iget v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aO:I

    invoke-virtual {v0, v3}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v0

    float-to-int v0, v0

    .line 3287
    invoke-virtual {p0, v11}, Lit/sephiroth/android/library/widget/AbsHListView;->b(I)V

    .line 3288
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aL:I

    if-le v3, v4, :cond_21

    .line 3289
    iget-object v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->au:Lit/sephiroth/android/library/widget/g;

    neg-int v0, v0

    invoke-virtual {v3, v0}, Lit/sephiroth/android/library/widget/g;->b(I)V

    goto/16 :goto_5

    .line 3291
    :cond_21
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->au:Lit/sephiroth/android/library/widget/g;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/g;->a()V

    goto/16 :goto_5

    .line 3319
    :pswitch_c
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->G:I

    packed-switch v0, :pswitch_data_4

    .line 3332
    iput v10, p0, Lit/sephiroth/android/library/widget/AbsHListView;->G:I

    .line 3333
    invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/AbsHListView;->setPressed(Z)V

    .line 3334
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->B:I

    iget v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->W:I

    sub-int/2addr v0, v3

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3335
    if-eqz v0, :cond_22

    .line 3336
    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 3338
    :cond_22
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->G()V

    .line 3340
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 3341
    if-eqz v0, :cond_23

    .line 3342
    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aA:Lit/sephiroth/android/library/widget/e;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3345
    :cond_23
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->E()V

    .line 3348
    :goto_8
    :pswitch_d
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aP:Lit/sephiroth/android/library/widget/ac;

    if-eqz v0, :cond_24

    .line 3349
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aP:Lit/sephiroth/android/library/widget/ac;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/ac;->c()V

    .line 3350
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aQ:Lit/sephiroth/android/library/widget/ac;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/ac;->c()V

    .line 3352
    :cond_24
    iput v10, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aO:I

    goto/16 :goto_1

    .line 3321
    :pswitch_e
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->au:Lit/sephiroth/android/library/widget/g;

    if-nez v0, :cond_25

    .line 3322
    new-instance v0, Lit/sephiroth/android/library/widget/g;

    invoke-direct {v0, p0}, Lit/sephiroth/android/library/widget/g;-><init>(Lit/sephiroth/android/library/widget/AbsHListView;)V

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->au:Lit/sephiroth/android/library/widget/g;

    .line 3324
    :cond_25
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->au:Lit/sephiroth/android/library/widget/g;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/g;->a()V

    goto :goto_8

    .line 3357
    :pswitch_f
    invoke-direct {p0, p1}, Lit/sephiroth/android/library/widget/AbsHListView;->b(Landroid/view/MotionEvent;)V

    .line 3358
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->E:I

    .line 3359
    iget v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->F:I

    .line 3360
    invoke-virtual {p0, v0, v1}, Lit/sephiroth/android/library/widget/AbsHListView;->a(II)I

    move-result v1

    .line 3361
    if-ltz v1, :cond_26

    .line 3363
    iget v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->W:I

    sub-int v3, v1, v3

    invoke-virtual {p0, v3}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 3364
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    iput v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->C:I

    .line 3365
    iput v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->B:I

    .line 3367
    :cond_26
    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->H:I

    goto/16 :goto_1

    .line 3373
    :pswitch_10
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 3374
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    .line 3375
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    float-to-int v4, v4

    .line 3376
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    float-to-int v0, v0

    .line 3377
    iput v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->I:I

    .line 3378
    iput v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aO:I

    .line 3379
    iput v4, p0, Lit/sephiroth/android/library/widget/AbsHListView;->E:I

    .line 3380
    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->F:I

    .line 3381
    invoke-virtual {p0, v4, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->a(II)I

    move-result v0

    .line 3382
    if-ltz v0, :cond_27

    .line 3384
    iget v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->W:I

    sub-int v1, v0, v1

    invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3385
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    iput v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->C:I

    .line 3386
    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->B:I

    .line 3388
    :cond_27
    iput v4, p0, Lit/sephiroth/android/library/widget/AbsHListView;->H:I

    goto/16 :goto_1

    :cond_28
    move v1, v0

    goto/16 :goto_4

    :cond_29
    move v0, v3

    goto/16 :goto_2

    .line 3058
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_7
        :pswitch_3
        :pswitch_c
        :pswitch_0
        :pswitch_10
        :pswitch_f
    .end packed-switch

    .line 3060
    :pswitch_data_1
    .packed-switch 0x6
        :pswitch_2
    .end packed-switch

    .line 3139
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_6
    .end packed-switch

    .line 3156
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_a
        :pswitch_8
        :pswitch_b
    .end packed-switch

    .line 3319
    :pswitch_data_4
    .packed-switch 0x5
        :pswitch_e
        :pswitch_d
    .end packed-switch
.end method

.method public onTouchModeChanged(Z)V
    .locals 2
    .parameter

    .prologue
    .line 2979
    if-eqz p1, :cond_2

    .line 2981
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->l()V

    .line 2985
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 2988
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->e()V

    .line 2990
    :cond_0
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->j()V

    .line 3008
    :cond_1
    :goto_0
    return-void

    .line 2992
    :cond_2
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->G:I

    .line 2993
    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    .line 2994
    :cond_3
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->au:Lit/sephiroth/android/library/widget/g;

    if-eqz v0, :cond_4

    .line 2995
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->au:Lit/sephiroth/android/library/widget/g;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/g;->b()V

    .line 2997
    :cond_4
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->J:Lit/sephiroth/android/library/widget/m;

    if-eqz v0, :cond_5

    .line 2998
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->J:Lit/sephiroth/android/library/widget/m;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/m;->a()V

    .line 3001
    :cond_5
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getScrollX()I

    move-result v0

    if-eqz v0, :cond_1

    .line 3002
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->b:Lit/sephiroth/android/library/a/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lit/sephiroth/android/library/a/b;->a(I)V

    .line 3003
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->H()V

    .line 3004
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->invalidate()V

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 5
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2421
    invoke-super {p0, p1}, Lit/sephiroth/android/library/widget/u;->onWindowFocusChanged(Z)V

    .line 2423
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    .line 2425
    :goto_0
    if-nez p1, :cond_4

    .line 2426
    invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/AbsHListView;->setChildrenDrawingCacheEnabled(Z)V

    .line 2427
    iget-object v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->au:Lit/sephiroth/android/library/widget/g;

    if-eqz v3, :cond_1

    .line 2428
    iget-object v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->au:Lit/sephiroth/android/library/widget/g;

    invoke-virtual {p0, v3}, Lit/sephiroth/android/library/widget/AbsHListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2431
    iget-object v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->au:Lit/sephiroth/android/library/widget/g;

    invoke-virtual {v3}, Lit/sephiroth/android/library/widget/g;->b()V

    .line 2432
    iget-object v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->J:Lit/sephiroth/android/library/widget/m;

    if-eqz v3, :cond_0

    .line 2433
    iget-object v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->J:Lit/sephiroth/android/library/widget/m;

    invoke-virtual {v3}, Lit/sephiroth/android/library/widget/m;->a()V

    .line 2435
    :cond_0
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getScrollX()I

    move-result v3

    if-eqz v3, :cond_1

    .line 2436
    iget-object v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->b:Lit/sephiroth/android/library/a/b;

    invoke-virtual {v3, v1}, Lit/sephiroth/android/library/a/b;->a(I)V

    .line 2437
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->H()V

    .line 2438
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->invalidate()V

    .line 2443
    :cond_1
    if-ne v0, v2, :cond_2

    .line 2445
    iget v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->am:I

    iput v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->N:I

    .line 2464
    :cond_2
    :goto_1
    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->az:I

    .line 2465
    return-void

    :cond_3
    move v0, v2

    .line 2423
    goto :goto_0

    .line 2449
    :cond_4
    iget v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->az:I

    if-eq v0, v3, :cond_2

    iget v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->az:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    .line 2451
    if-ne v0, v2, :cond_5

    .line 2453
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->o()Z

    goto :goto_1

    .line 2457
    :cond_5
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->l()V

    .line 2458
    iput v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->i:I

    .line 2459
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->e()V

    goto :goto_1
.end method

.method p()V
    .locals 12

    .prologue
    const/16 v11, 0xb

    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 4969
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->g:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0}, Landroid/support/v4/util/SparseArrayCompat;->clear()V

    move v1, v5

    move v6, v5

    .line 4972
    :goto_0
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->h:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/support/v4/util/LongSparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 4973
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->h:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v0, v1}, Landroid/support/v4/util/LongSparseArray;->keyAt(I)J

    move-result-wide v3

    .line 4974
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->h:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v0, v1}, Landroid/support/v4/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 4976
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->k:Landroid/widget/ListAdapter;

    invoke-interface {v0, v2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v8

    .line 4977
    cmp-long v0, v3, v8

    if-eqz v0, :cond_3

    .line 4979
    add-int/lit8 v0, v2, -0x14

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 4980
    add-int/lit8 v8, v2, 0x14

    iget v9, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ao:I

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 4982
    :goto_1
    if-ge v0, v8, :cond_6

    .line 4983
    iget-object v9, p0, Lit/sephiroth/android/library/widget/AbsHListView;->k:Landroid/widget/ListAdapter;

    invoke-interface {v9, v0}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v9

    .line 4984
    cmp-long v9, v3, v9

    if-nez v9, :cond_2

    .line 4986
    iget-object v8, p0, Lit/sephiroth/android/library/widget/AbsHListView;->g:Landroid/support/v4/util/SparseArrayCompat;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v8, v0, v9}, Landroid/support/v4/util/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 4987
    iget-object v8, p0, Lit/sephiroth/android/library/widget/AbsHListView;->h:Landroid/support/v4/util/LongSparseArray;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v8, v1, v0}, Landroid/support/v4/util/LongSparseArray;->setValueAt(ILjava/lang/Object;)V

    move v0, v7

    .line 4992
    :goto_2
    if-nez v0, :cond_1

    .line 4993
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->h:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v0, v3, v4}, Landroid/support/v4/util/LongSparseArray;->delete(J)V

    .line 4994
    add-int/lit8 v6, v1, -0x1

    .line 4995
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->f:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->f:I

    .line 4998
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v0, v11, :cond_0

    .line 4999
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->d:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->e:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 5000
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->e:Ljava/lang/Object;

    check-cast v0, Lit/sephiroth/android/library/a/a/b;

    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->d:Ljava/lang/Object;

    check-cast v1, Landroid/view/ActionMode;

    invoke-virtual/range {v0 .. v5}, Lit/sephiroth/android/library/a/a/b;->a(Landroid/view/ActionMode;IJZ)V

    :cond_0
    move v1, v6

    move v6, v7

    :cond_1
    move v0, v1

    move v1, v6

    .line 4972
    :goto_3
    add-int/lit8 v0, v0, 0x1

    move v6, v1

    move v1, v0

    goto :goto_0

    .line 4982
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 5005
    :cond_3
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->g:Landroid/support/v4/util/SparseArrayCompat;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/util/SparseArrayCompat;->put(ILjava/lang/Object;)V

    move v0, v1

    move v1, v6

    goto :goto_3

    .line 5009
    :cond_4
    if-eqz v6, :cond_5

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->d:Ljava/lang/Object;

    if-eqz v0, :cond_5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v0, v11, :cond_5

    .line 5010
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->d:Ljava/lang/Object;

    check-cast v0, Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->invalidate()V

    .line 5012
    :cond_5
    return-void

    :cond_6
    move v0, v5

    goto :goto_2
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 5
    .parameter
    .parameter
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    const/16 v4, 0xc8

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1189
    invoke-super {p0, p1, p2}, Lit/sephiroth/android/library/widget/u;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1210
    :goto_0
    return v0

    .line 1192
    :cond_0
    sparse-switch p1, :sswitch_data_0

    move v0, v1

    .line 1210
    goto :goto_0

    .line 1194
    :sswitch_0
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getLastVisiblePosition()I

    move-result v2

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_1

    .line 1195
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getWidth()I

    move-result v1

    iget-object v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->v:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->v:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    .line 1196
    invoke-virtual {p0, v1, v4}, Lit/sephiroth/android/library/widget/AbsHListView;->c(II)V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 1200
    goto :goto_0

    .line 1202
    :sswitch_1
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->W:I

    if-lez v2, :cond_2

    .line 1203
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getWidth()I

    move-result v1

    iget-object v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->v:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->v:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    .line 1204
    neg-int v1, v1

    invoke-virtual {p0, v1, v4}, Lit/sephiroth/android/library/widget/AbsHListView;->c(II)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 1208
    goto :goto_0

    .line 1192
    nop

    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_0
        0x2000 -> :sswitch_1
    .end sparse-switch
.end method

.method protected q()V
    .locals 11

    .prologue
    const/4 v10, 0x5

    const/4 v9, -0x1

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 5019
    iget v5, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ao:I

    .line 5020
    iget v6, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ba:I

    .line 5021
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ao:I

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ba:I

    .line 5023
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->c:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->k:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->k:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5024
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->p()V

    .line 5028
    :cond_0
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->q:Lit/sephiroth/android/library/widget/p;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/p;->c()V

    .line 5030
    if-lez v5, :cond_e

    .line 5035
    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ad:Z

    if-eqz v0, :cond_7

    .line 5037
    iput-boolean v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ad:Z

    .line 5038
    const/4 v0, 0x0

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->bb:Lit/sephiroth/android/library/widget/AbsHListView$SavedState;

    .line 5040
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aF:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 5041
    iput v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->i:I

    .line 5157
    :cond_1
    :goto_0
    return-void

    .line 5043
    :cond_2
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aF:I

    if-ne v0, v4, :cond_6

    .line 5044
    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aU:Z

    if-eqz v0, :cond_3

    .line 5045
    iput-boolean v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aU:Z

    .line 5046
    iput v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->i:I

    goto :goto_0

    .line 5049
    :cond_3
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildCount()I

    move-result v7

    .line 5050
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getPaddingRight()I

    move-result v1

    sub-int v1, v0, v1

    .line 5051
    add-int/lit8 v0, v7, -0x1

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 5052
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 5053
    :goto_1
    iget v8, p0, Lit/sephiroth/android/library/widget/AbsHListView;->W:I

    add-int/2addr v7, v8

    if-lt v7, v6, :cond_5

    if-gt v0, v1, :cond_5

    .line 5055
    iput v3, p0, Lit/sephiroth/android/library/widget/AbsHListView;->i:I

    goto :goto_0

    :cond_4
    move v0, v1

    .line 5052
    goto :goto_1

    .line 5060
    :cond_5
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->awakenScrollBars()Z

    .line 5063
    :cond_6
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ae:I

    packed-switch v0, :pswitch_data_0

    .line 5111
    :cond_7
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_d

    .line 5113
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getSelectedItemPosition()I

    move-result v0

    .line 5116
    if-lt v0, v5, :cond_8

    .line 5117
    add-int/lit8 v0, v5, -0x1

    .line 5119
    :cond_8
    if-gez v0, :cond_9

    move v0, v2

    .line 5124
    :cond_9
    invoke-virtual {p0, v0, v4}, Lit/sephiroth/android/library/widget/AbsHListView;->b(IZ)I

    move-result v1

    .line 5126
    if-ltz v1, :cond_c

    .line 5127
    invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/AbsHListView;->setNextSelectedPositionInt(I)V

    goto :goto_0

    .line 5065
    :pswitch_0
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 5070
    iput v10, p0, Lit/sephiroth/android/library/widget/AbsHListView;->i:I

    .line 5071
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aa:I

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v1, v5, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aa:I

    goto :goto_0

    .line 5077
    :cond_a
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->w()I

    move-result v0

    .line 5078
    if-ltz v0, :cond_7

    .line 5080
    invoke-virtual {p0, v0, v4}, Lit/sephiroth/android/library/widget/AbsHListView;->b(IZ)I

    move-result v1

    .line 5081
    if-ne v1, v0, :cond_7

    .line 5083
    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aa:I

    .line 5085
    iget-wide v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ac:J

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getWidth()I

    move-result v3

    int-to-long v3, v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_b

    .line 5088
    iput v10, p0, Lit/sephiroth/android/library/widget/AbsHListView;->i:I

    .line 5096
    :goto_2
    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->setNextSelectedPositionInt(I)V

    goto/16 :goto_0

    .line 5092
    :cond_b
    const/4 v1, 0x2

    iput v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->i:I

    goto :goto_2

    .line 5104
    :pswitch_1
    iput v10, p0, Lit/sephiroth/android/library/widget/AbsHListView;->i:I

    .line 5105
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aa:I

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v1, v5, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aa:I

    goto/16 :goto_0

    .line 5131
    :cond_c
    invoke-virtual {p0, v0, v2}, Lit/sephiroth/android/library/widget/AbsHListView;->b(IZ)I

    move-result v0

    .line 5132
    if-ltz v0, :cond_e

    .line 5133
    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->setNextSelectedPositionInt(I)V

    goto/16 :goto_0

    .line 5140
    :cond_d
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->N:I

    if-gez v0, :cond_1

    .line 5148
    :cond_e
    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->L:Z

    if-eqz v0, :cond_f

    move v0, v3

    :goto_3
    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->i:I

    .line 5149
    iput v9, p0, Lit/sephiroth/android/library/widget/AbsHListView;->am:I

    .line 5150
    const-wide/high16 v0, -0x8000

    iput-wide v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->an:J

    .line 5151
    iput v9, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ak:I

    .line 5152
    const-wide/high16 v0, -0x8000

    iput-wide v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->al:J

    .line 5153
    iput-boolean v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ad:Z

    .line 5154
    const/4 v0, 0x0

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->bb:Lit/sephiroth/android/library/widget/AbsHListView$SavedState;

    .line 5155
    iput v9, p0, Lit/sephiroth/android/library/widget/AbsHListView;->o:I

    .line 5156
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->v()V

    goto/16 :goto_0

    :cond_f
    move v0, v4

    .line 5148
    goto :goto_3

    .line 5063
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 0
    .parameter

    .prologue
    .line 3534
    if-eqz p1, :cond_0

    .line 3535
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->E()V

    .line 3537
    :cond_0
    invoke-super {p0, p1}, Lit/sephiroth/android/library/widget/u;->requestDisallowInterceptTouchEvent(Z)V

    .line 3538
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 1630
    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->at:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->af:Z

    if-nez v0, :cond_0

    .line 1631
    invoke-super {p0}, Lit/sephiroth/android/library/widget/u;->requestLayout()V

    .line 1633
    :cond_0
    return-void
.end method

.method public sendAccessibilityEvent(I)V
    .locals 3
    .parameter

    .prologue
    .line 1148
    const/16 v0, 0x1000

    if-ne p1, v0, :cond_1

    .line 1149
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getFirstVisiblePosition()I

    move-result v0

    .line 1150
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getLastVisiblePosition()I

    move-result v1

    .line 1151
    iget v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aY:I

    if-ne v2, v0, :cond_0

    iget v2, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aZ:I

    if-ne v2, v1, :cond_0

    .line 1160
    :goto_0
    return-void

    .line 1155
    :cond_0
    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aY:I

    .line 1156
    iput v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aZ:I

    .line 1159
    :cond_1
    invoke-super {p0, p1}, Lit/sephiroth/android/library/widget/u;->sendAccessibilityEvent(I)V

    goto :goto_0
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .parameter

    .prologue
    .line 59
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lit/sephiroth/android/library/widget/AbsHListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1
    .parameter

    .prologue
    .line 728
    if-eqz p1, :cond_0

    .line 729
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->k:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    iput-boolean v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->l:Z

    .line 730
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->c:I

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->l:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->h:Landroid/support/v4/util/LongSparseArray;

    if-nez v0, :cond_0

    .line 732
    new-instance v0, Landroid/support/v4/util/LongSparseArray;

    invoke-direct {v0}, Landroid/support/v4/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->h:Landroid/support/v4/util/LongSparseArray;

    .line 736
    :cond_0
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->g:Landroid/support/v4/util/SparseArrayCompat;

    if-eqz v0, :cond_1

    .line 737
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->g:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0}, Landroid/support/v4/util/SparseArrayCompat;->clear()V

    .line 740
    :cond_1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->h:Landroid/support/v4/util/LongSparseArray;

    if-eqz v0, :cond_2

    .line 741
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->h:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/support/v4/util/LongSparseArray;->clear()V

    .line 743
    :cond_2
    return-void
.end method

.method public setCacheColorHint(I)V
    .locals 3
    .parameter

    .prologue
    .line 5295
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aG:I

    if-eq p1, v0, :cond_1

    .line 5296
    iput p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aG:I

    .line 5297
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildCount()I

    move-result v1

    .line 5298
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 5299
    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 5298
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5301
    :cond_0
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->q:Lit/sephiroth/android/library/widget/p;

    invoke-virtual {v0, p1}, Lit/sephiroth/android/library/widget/p;->f(I)V

    .line 5303
    :cond_1
    return-void
.end method

.method public setChoiceMode(I)V
    .locals 2
    .parameter
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const/16 v1, 0xb

    .line 1023
    iput p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->c:I

    .line 1025
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_1

    .line 1026
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->d:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 1028
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_0

    .line 1029
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->d:Ljava/lang/Object;

    check-cast v0, Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 1031
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->d:Ljava/lang/Object;

    .line 1035
    :cond_1
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->c:I

    if-eqz v0, :cond_4

    .line 1036
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->g:Landroid/support/v4/util/SparseArrayCompat;

    if-nez v0, :cond_2

    .line 1037
    new-instance v0, Landroid/support/v4/util/SparseArrayCompat;

    invoke-direct {v0}, Landroid/support/v4/util/SparseArrayCompat;-><init>()V

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->g:Landroid/support/v4/util/SparseArrayCompat;

    .line 1039
    :cond_2
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->h:Landroid/support/v4/util/LongSparseArray;

    if-nez v0, :cond_3

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->k:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->k:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1040
    new-instance v0, Landroid/support/v4/util/LongSparseArray;

    invoke-direct {v0}, Landroid/support/v4/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->h:Landroid/support/v4/util/LongSparseArray;

    .line 1043
    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_4

    .line 1044
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->c:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    .line 1045
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->a()V

    .line 1046
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->setLongClickable(Z)V

    .line 1050
    :cond_4
    return-void
.end method

.method public setDrawSelectorOnTop(Z)V
    .locals 0
    .parameter

    .prologue
    .line 2209
    iput-boolean p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->m:Z

    .line 2210
    return-void
.end method

.method public setFriction(F)V
    .locals 1
    .parameter

    .prologue
    .line 4375
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->au:Lit/sephiroth/android/library/widget/g;

    if-nez v0, :cond_0

    .line 4376
    new-instance v0, Lit/sephiroth/android/library/widget/g;

    invoke-direct {v0, p0}, Lit/sephiroth/android/library/widget/g;-><init>(Lit/sephiroth/android/library/widget/AbsHListView;)V

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->au:Lit/sephiroth/android/library/widget/g;

    .line 4378
    :cond_0
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->au:Lit/sephiroth/android/library/widget/g;

    invoke-static {v0}, Lit/sephiroth/android/library/widget/g;->a(Lit/sephiroth/android/library/widget/g;)Lit/sephiroth/android/library/widget/at;

    move-result-object v0

    invoke-virtual {v0, p1}, Lit/sephiroth/android/library/widget/at;->b(F)V

    .line 4379
    return-void
.end method

.method public setMultiChoiceModeListener(Lit/sephiroth/android/library/a/a/a;)V
    .locals 2
    .parameter
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 1063
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    .line 1064
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->e:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 1065
    new-instance v0, Lit/sephiroth/android/library/a/a/b;

    invoke-direct {v0, p0}, Lit/sephiroth/android/library/a/a/b;-><init>(Lit/sephiroth/android/library/widget/AbsHListView;)V

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->e:Ljava/lang/Object;

    .line 1067
    :cond_0
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->e:Ljava/lang/Object;

    check-cast v0, Lit/sephiroth/android/library/a/a/b;

    invoke-virtual {v0, p1}, Lit/sephiroth/android/library/a/a/b;->a(Lit/sephiroth/android/library/a/a/a;)V

    .line 1071
    :goto_0
    return-void

    .line 1069
    :cond_1
    const-string/jumbo v0, "AbsListView"

    const-string/jumbo v1, "setMultiChoiceModeListener not supported for this version of Android"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setOnScrollListener(Lit/sephiroth/android/library/widget/k;)V
    .locals 0
    .parameter

    .prologue
    .line 1129
    iput-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->av:Lit/sephiroth/android/library/widget/k;

    .line 1130
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->b()V

    .line 1131
    return-void
.end method

.method public setOverScrollMode(I)V
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 710
    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    .line 711
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aP:Lit/sephiroth/android/library/widget/ac;

    if-nez v0, :cond_0

    .line 712
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 713
    new-instance v1, Lit/sephiroth/android/library/widget/ac;

    invoke-direct {v1, v0, v2}, Lit/sephiroth/android/library/widget/ac;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aP:Lit/sephiroth/android/library/widget/ac;

    .line 714
    new-instance v1, Lit/sephiroth/android/library/widget/ac;

    invoke-direct {v1, v0, v2}, Lit/sephiroth/android/library/widget/ac;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aQ:Lit/sephiroth/android/library/widget/ac;

    .line 720
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lit/sephiroth/android/library/widget/u;->setOverScrollMode(I)V

    .line 721
    return-void

    .line 717
    :cond_1
    iput-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aP:Lit/sephiroth/android/library/widget/ac;

    .line 718
    iput-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aQ:Lit/sephiroth/android/library/widget/ac;

    goto :goto_0
.end method

.method public setRecyclerListener(Lit/sephiroth/android/library/widget/q;)V
    .locals 1
    .parameter

    .prologue
    .line 5373
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->q:Lit/sephiroth/android/library/widget/p;

    invoke-static {v0, p1}, Lit/sephiroth/android/library/widget/p;->a(Lit/sephiroth/android/library/widget/p;Lit/sephiroth/android/library/widget/q;)Lit/sephiroth/android/library/widget/q;

    .line 5374
    return-void
.end method

.method public setScrollingCacheEnabled(Z)V
    .locals 1
    .parameter

    .prologue
    .line 1241
    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->M:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 1242
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->G()V

    .line 1244
    :cond_0
    iput-boolean p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->M:Z

    .line 1245
    return-void
.end method

.method public abstract setSelectionInt(I)V
.end method

.method public setSelector(I)V
    .locals 1
    .parameter

    .prologue
    .line 2221
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 2222
    return-void
.end method

.method public setSelector(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter

    .prologue
    .line 2225
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->n:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2226
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->n:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2227
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->n:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2229
    :cond_0
    iput-object p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->n:Landroid/graphics/drawable/Drawable;

    .line 2230
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 2231
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 2232
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iput v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->r:I

    .line 2233
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iput v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->s:I

    .line 2234
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iput v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->t:I

    .line 2235
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iput v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->u:I

    .line 2236
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2237
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->j()V

    .line 2238
    return-void
.end method

.method public setSmoothScrollbarEnabled(Z)V
    .locals 0
    .parameter

    .prologue
    .line 1107
    iput-boolean p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aw:Z

    .line 1108
    return-void
.end method

.method public setStackFromRight(Z)V
    .locals 1
    .parameter

    .prologue
    .line 1281
    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->L:Z

    if-eq v0, p1, :cond_0

    .line 1282
    iput-boolean p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->L:Z

    .line 1283
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->c()V

    .line 1285
    :cond_0
    return-void
.end method

.method public setTranscriptMode(I)V
    .locals 0
    .parameter

    .prologue
    .line 5267
    iput p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aF:I

    .line 5268
    return-void
.end method

.method public setVelocityScale(F)V
    .locals 0
    .parameter

    .prologue
    .line 4388
    iput p1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->aN:F

    .line 4389
    return-void
.end method

.method public showContextMenuForChild(Landroid/view/View;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 2625
    invoke-virtual {p0, p1}, Lit/sephiroth/android/library/widget/AbsHListView;->e(Landroid/view/View;)I

    move-result v3

    .line 2626
    if-ltz v3, :cond_1

    .line 2627
    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->k:Landroid/widget/ListAdapter;

    invoke-interface {v1, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    .line 2630
    iget-object v1, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ai:Lit/sephiroth/android/library/widget/z;

    if-eqz v1, :cond_0

    .line 2631
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ai:Lit/sephiroth/android/library/widget/z;

    move-object v1, p0

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Lit/sephiroth/android/library/widget/z;->a(Lit/sephiroth/android/library/widget/u;Landroid/view/View;IJ)Z

    move-result v0

    .line 2634
    :cond_0
    if-nez v0, :cond_1

    .line 2635
    iget v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->W:I

    sub-int v0, v3, v0

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0, v3, v4, v5}, Lit/sephiroth/android/library/widget/AbsHListView;->b(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    iput-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->ay:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 2638
    invoke-super {p0, p1}, Lit/sephiroth/android/library/widget/u;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v0

    .line 2643
    :cond_1
    return v0
.end method

.method public verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .parameter

    .prologue
    .line 2350
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AbsHListView;->n:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    invoke-super {p0, p1}, Lit/sephiroth/android/library/widget/u;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

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
