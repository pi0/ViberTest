.class public abstract Lit/sephiroth/android/library/widget/u;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/widget/Adapter;",
        ">",
        "Landroid/view/ViewGroup;"
    }
.end annotation


# instance fields
.field protected W:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "scrolling"
    .end annotation
.end field

.field protected Z:I

.field private a:I

.field protected aa:I

.field protected ab:J

.field protected ac:J

.field protected ad:Z

.field ae:I

.field protected af:Z

.field ag:Lit/sephiroth/android/library/widget/aa;

.field ah:Lit/sephiroth/android/library/widget/y;

.field ai:Lit/sephiroth/android/library/widget/z;

.field public aj:Z

.field protected ak:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "list"
    .end annotation
.end field

.field protected al:J

.field protected am:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "list"
    .end annotation
.end field

.field protected an:J

.field protected ao:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "list"
    .end annotation
.end field

.field protected ap:I

.field aq:Landroid/view/accessibility/AccessibilityManager;

.field protected ar:I

.field protected as:J

.field protected at:Z

.field private b:Landroid/view/View;

.field private c:Z

.field private d:Z

.field private e:Lit/sephiroth/android/library/widget/ab;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lit/sephiroth/android/library/widget/u",
            "<TT;>.it/sephiroth/android/library/widget/ab;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, -0x1

    const-wide/high16 v1, -0x8000

    const/4 v0, 0x0

    .line 220
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 61
    iput v0, p0, Lit/sephiroth/android/library/widget/u;->W:I

    .line 77
    iput-wide v1, p0, Lit/sephiroth/android/library/widget/u;->ab:J

    .line 87
    iput-boolean v0, p0, Lit/sephiroth/android/library/widget/u;->ad:Z

    .line 118
    iput-boolean v0, p0, Lit/sephiroth/android/library/widget/u;->af:Z

    .line 144
    iput v3, p0, Lit/sephiroth/android/library/widget/u;->ak:I

    .line 150
    iput-wide v1, p0, Lit/sephiroth/android/library/widget/u;->al:J

    .line 155
    iput v3, p0, Lit/sephiroth/android/library/widget/u;->am:I

    .line 161
    iput-wide v1, p0, Lit/sephiroth/android/library/widget/u;->an:J

    .line 195
    iput v3, p0, Lit/sephiroth/android/library/widget/u;->ar:I

    .line 200
    iput-wide v1, p0, Lit/sephiroth/android/library/widget/u;->as:J

    .line 217
    iput-boolean v0, p0, Lit/sephiroth/android/library/widget/u;->at:Z

    .line 221
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, -0x1

    const-wide/high16 v1, -0x8000

    const/4 v0, 0x0

    .line 224
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    iput v0, p0, Lit/sephiroth/android/library/widget/u;->W:I

    .line 77
    iput-wide v1, p0, Lit/sephiroth/android/library/widget/u;->ab:J

    .line 87
    iput-boolean v0, p0, Lit/sephiroth/android/library/widget/u;->ad:Z

    .line 118
    iput-boolean v0, p0, Lit/sephiroth/android/library/widget/u;->af:Z

    .line 144
    iput v3, p0, Lit/sephiroth/android/library/widget/u;->ak:I

    .line 150
    iput-wide v1, p0, Lit/sephiroth/android/library/widget/u;->al:J

    .line 155
    iput v3, p0, Lit/sephiroth/android/library/widget/u;->am:I

    .line 161
    iput-wide v1, p0, Lit/sephiroth/android/library/widget/u;->an:J

    .line 195
    iput v3, p0, Lit/sephiroth/android/library/widget/u;->ar:I

    .line 200
    iput-wide v1, p0, Lit/sephiroth/android/library/widget/u;->as:J

    .line 217
    iput-boolean v0, p0, Lit/sephiroth/android/library/widget/u;->at:Z

    .line 225
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    const/4 v3, -0x1

    const-wide/high16 v1, -0x8000

    const/4 v0, 0x0

    .line 229
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 61
    iput v0, p0, Lit/sephiroth/android/library/widget/u;->W:I

    .line 77
    iput-wide v1, p0, Lit/sephiroth/android/library/widget/u;->ab:J

    .line 87
    iput-boolean v0, p0, Lit/sephiroth/android/library/widget/u;->ad:Z

    .line 118
    iput-boolean v0, p0, Lit/sephiroth/android/library/widget/u;->af:Z

    .line 144
    iput v3, p0, Lit/sephiroth/android/library/widget/u;->ak:I

    .line 150
    iput-wide v1, p0, Lit/sephiroth/android/library/widget/u;->al:J

    .line 155
    iput v3, p0, Lit/sephiroth/android/library/widget/u;->am:I

    .line 161
    iput-wide v1, p0, Lit/sephiroth/android/library/widget/u;->an:J

    .line 195
    iput v3, p0, Lit/sephiroth/android/library/widget/u;->ar:I

    .line 200
    iput-wide v1, p0, Lit/sephiroth/android/library/widget/u;->as:J

    .line 217
    iput-boolean v0, p0, Lit/sephiroth/android/library/widget/u;->at:Z

    .line 231
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 233
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/u;->getImportantForAccessibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 234
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/u;->setImportantForAccessibility(I)V

    .line 238
    :cond_0
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/u;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 239
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/u;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lit/sephiroth/android/library/widget/u;->aq:Landroid/view/accessibility/AccessibilityManager;

    .line 241
    :cond_1
    return-void
.end method

.method static synthetic a(Lit/sephiroth/android/library/widget/u;)Landroid/os/Parcelable;
    .locals 1
    .parameter

    .prologue
    .line 42
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/u;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method private a()V
    .locals 6

    .prologue
    .line 919
    iget-object v0, p0, Lit/sephiroth/android/library/widget/u;->ag:Lit/sephiroth/android/library/widget/aa;

    if-nez v0, :cond_0

    .line 930
    :goto_0
    return-void

    .line 922
    :cond_0
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/u;->getSelectedItemPosition()I

    move-result v3

    .line 923
    if-ltz v3, :cond_1

    .line 924
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/u;->getSelectedView()Landroid/view/View;

    move-result-object v2

    .line 925
    iget-object v0, p0, Lit/sephiroth/android/library/widget/u;->ag:Lit/sephiroth/android/library/widget/aa;

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/u;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v4

    move-object v1, p0

    invoke-interface/range {v0 .. v5}, Lit/sephiroth/android/library/widget/aa;->a(Lit/sephiroth/android/library/widget/u;Landroid/view/View;IJ)V

    goto :goto_0

    .line 928
    :cond_1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/u;->ag:Lit/sephiroth/android/library/widget/aa;

    invoke-interface {v0, p0}, Lit/sephiroth/android/library/widget/aa;->a(Lit/sephiroth/android/library/widget/u;)V

    goto :goto_0
.end method

.method static synthetic a(Lit/sephiroth/android/library/widget/u;Landroid/os/Parcelable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lit/sephiroth/android/library/widget/u;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method private a(Z)V
    .locals 6
    .parameter
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongCall"
        }
    .end annotation

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 744
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/u;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    move p1, v1

    .line 748
    :cond_0
    if-eqz p1, :cond_3

    .line 749
    iget-object v0, p0, Lit/sephiroth/android/library/widget/u;->b:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 750
    iget-object v0, p0, Lit/sephiroth/android/library/widget/u;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 751
    invoke-virtual {p0, v2}, Lit/sephiroth/android/library/widget/u;->setVisibility(I)V

    .line 760
    :goto_0
    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/u;->aj:Z

    if-eqz v0, :cond_1

    .line 761
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/u;->getLeft()I

    move-result v2

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/u;->getTop()I

    move-result v3

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/u;->getRight()I

    move-result v4

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/u;->getBottom()I

    move-result v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lit/sephiroth/android/library/widget/u;->onLayout(ZIIII)V

    .line 767
    :cond_1
    :goto_1
    return-void

    .line 754
    :cond_2
    invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/u;->setVisibility(I)V

    goto :goto_0

    .line 764
    :cond_3
    iget-object v0, p0, Lit/sephiroth/android/library/widget/u;->b:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lit/sephiroth/android/library/widget/u;->b:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 765
    :cond_4
    invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/u;->setVisibility(I)V

    goto :goto_1
.end method

.method private b()V
    .locals 1

    .prologue
    .line 933
    iget-object v0, p0, Lit/sephiroth/android/library/widget/u;->aq:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 941
    :cond_0
    :goto_0
    return-void

    .line 936
    :cond_1
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/u;->getSelectedItemPosition()I

    move-result v0

    .line 937
    if-ltz v0, :cond_0

    .line 939
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/u;->sendAccessibilityEvent(I)V

    goto :goto_0
.end method

.method static synthetic b(Lit/sephiroth/android/library/widget/u;)V
    .locals 0
    .parameter

    .prologue
    .line 42
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/u;->a()V

    return-void
.end method

.method static synthetic c(Lit/sephiroth/android/library/widget/u;)V
    .locals 0
    .parameter

    .prologue
    .line 42
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/u;->b()V

    return-void
.end method

.method private c()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 997
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/u;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    .line 998
    if-eqz v1, :cond_1

    .line 999
    invoke-interface {v1}, Landroid/widget/Adapter;->getCount()I

    move-result v1

    .line 1000
    if-lez v1, :cond_1

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/u;->getFirstVisiblePosition()I

    move-result v2

    if-gtz v2, :cond_0

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/u;->getLastVisiblePosition()I

    move-result v2

    add-int/lit8 v1, v1, -0x1

    if-ge v2, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 1003
    :cond_1
    return v0
.end method


# virtual methods
.method public a(Landroid/view/View;IJ)Z
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v0, 0x0

    .line 294
    iget-object v1, p0, Lit/sephiroth/android/library/widget/u;->ah:Lit/sephiroth/android/library/widget/y;

    if-eqz v1, :cond_1

    .line 295
    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/u;->playSoundEffect(I)V

    .line 296
    if-eqz p1, :cond_0

    .line 297
    invoke-virtual {p1, v6}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 299
    :cond_0
    iget-object v0, p0, Lit/sephiroth/android/library/widget/u;->ah:Lit/sephiroth/android/library/widget/y;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Lit/sephiroth/android/library/widget/y;->a(Lit/sephiroth/android/library/widget/u;Landroid/view/View;IJ)V

    move v0, v6

    .line 303
    :cond_1
    return v0
.end method

.method public addView(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 455
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "addView(View) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addView(Landroid/view/View;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 471
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "addView(View, int) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 506
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "addView(View, int, LayoutParams) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 487
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "addView(View, LayoutParams) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected b(IZ)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1189
    return p1
.end method

.method protected canAnimate()Z
    .locals 1

    .prologue
    .line 1008
    invoke-super {p0}, Landroid/view/ViewGroup;->canAnimate()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lit/sephiroth/android/library/widget/u;->ao:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2
    .parameter

    .prologue
    .line 945
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/u;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 946
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 948
    const/4 v0, 0x1

    .line 950
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 805
    invoke-virtual {p0, p1}, Lit/sephiroth/android/library/widget/u;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    .line 806
    return-void
.end method

.method protected dispatchSaveInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 797
    invoke-virtual {p0, p1}, Lit/sephiroth/android/library/widget/u;->dispatchFreezeSelfOnly(Landroid/util/SparseArray;)V

    .line 798
    return-void
.end method

.method public e(Landroid/view/View;)I
    .locals 4
    .parameter

    .prologue
    const/4 v1, -0x1

    .line 610
    .line 613
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_0

    move-object p1, v0

    .line 614
    goto :goto_0

    .line 616
    :catch_0
    move-exception v0

    move v0, v1

    .line 630
    :goto_1
    return v0

    .line 622
    :cond_0
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/u;->getChildCount()I

    move-result v2

    .line 623
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v2, :cond_2

    .line 624
    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/u;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 625
    iget v1, p0, Lit/sephiroth/android/library/widget/u;->W:I

    add-int/2addr v0, v1

    goto :goto_1

    .line 623
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    move v0, v1

    .line 630
    goto :goto_1
.end method

.method public f(I)J
    .locals 2
    .parameter

    .prologue
    .line 782
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/u;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 783
    if-eqz v0, :cond_0

    if-gez p1, :cond_1

    :cond_0
    const-wide/high16 v0, -0x8000

    :goto_0
    return-wide v0

    :cond_1
    invoke-interface {v0, p1}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v0

    goto :goto_0
.end method

.method public abstract getAdapter()Landroid/widget/Adapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public getCount()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 596
    iget v0, p0, Lit/sephiroth/android/library/widget/u;->ao:I

    return v0
.end method

.method public getEmptyView()Landroid/view/View;
    .locals 1

    .prologue
    .line 686
    iget-object v0, p0, Lit/sephiroth/android/library/widget/u;->b:Landroid/view/View;

    return-object v0
.end method

.method public getFirstVisiblePosition()I
    .locals 1

    .prologue
    .line 639
    iget v0, p0, Lit/sephiroth/android/library/widget/u;->W:I

    return v0
.end method

.method public getLastVisiblePosition()I
    .locals 2

    .prologue
    .line 648
    iget v0, p0, Lit/sephiroth/android/library/widget/u;->W:I

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/u;->getChildCount()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public final getOnItemClickListener()Lit/sephiroth/android/library/widget/y;
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lit/sephiroth/android/library/widget/u;->ah:Lit/sephiroth/android/library/widget/y;

    return-object v0
.end method

.method public final getOnItemLongClickListener()Lit/sephiroth/android/library/widget/z;
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lit/sephiroth/android/library/widget/u;->ai:Lit/sephiroth/android/library/widget/z;

    return-object v0
.end method

.method public final getOnItemSelectedListener()Lit/sephiroth/android/library/widget/aa;
    .locals 1

    .prologue
    .line 396
    iget-object v0, p0, Lit/sephiroth/android/library/widget/u;->ag:Lit/sephiroth/android/library/widget/aa;

    return-object v0
.end method

.method public getSelectedItem()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 581
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/u;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 582
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/u;->getSelectedItemPosition()I

    move-result v1

    .line 583
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    if-ltz v1, :cond_0

    .line 584
    invoke-interface {v0, v1}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 586
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSelectedItemId()J
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 569
    iget-wide v0, p0, Lit/sephiroth/android/library/widget/u;->al:J

    return-wide v0
.end method

.method public getSelectedItemPosition()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 561
    iget v0, p0, Lit/sephiroth/android/library/widget/u;->ak:I

    return v0
.end method

.method public abstract getSelectedView()Landroid/view/View;
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 874
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 875
    iget-object v0, p0, Lit/sephiroth/android/library/widget/u;->e:Lit/sephiroth/android/library/widget/ab;

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/u;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 876
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .parameter
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 983
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 984
    const-class v0, Lit/sephiroth/android/library/widget/u;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 985
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/u;->c()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 986
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/u;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 987
    if-eqz v0, :cond_0

    .line 988
    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setEnabled(Z)V

    .line 990
    :cond_0
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/u;->getSelectedItemPosition()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setCurrentItemIndex(I)V

    .line 991
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/u;->getFirstVisiblePosition()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 992
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/u;->getLastVisiblePosition()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    .line 993
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/u;->getCount()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 994
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .parameter
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 971
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 972
    const-class v0, Lit/sephiroth/android/library/widget/u;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 973
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/u;->c()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 974
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/u;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 975
    if-eqz v0, :cond_0

    .line 976
    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 978
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 551
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/u;->getWidth()I

    move-result v0

    iput v0, p0, Lit/sephiroth/android/library/widget/u;->a:I

    .line 552
    return-void
.end method

.method public onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .parameter
    .parameter
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 956
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 958
    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 959
    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/u;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 961
    invoke-virtual {p1, v0}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 962
    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->appendRecord(Landroid/view/accessibility/AccessibilityRecord;)V

    .line 963
    const/4 v0, 0x1

    .line 965
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method q()V
    .locals 8

    .prologue
    const-wide/high16 v6, -0x8000

    const/4 v5, -0x1

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1015
    iget v4, p0, Lit/sephiroth/android/library/widget/u;->ao:I

    .line 1018
    if-lez v4, :cond_6

    .line 1023
    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/u;->ad:Z

    if-eqz v0, :cond_5

    .line 1026
    iput-boolean v1, p0, Lit/sephiroth/android/library/widget/u;->ad:Z

    .line 1030
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/u;->w()I

    move-result v0

    .line 1031
    if-ltz v0, :cond_5

    .line 1033
    invoke-virtual {p0, v0, v2}, Lit/sephiroth/android/library/widget/u;->b(IZ)I

    move-result v3

    .line 1034
    if-ne v3, v0, :cond_5

    .line 1036
    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/u;->setNextSelectedPositionInt(I)V

    move v3, v2

    .line 1041
    :goto_0
    if-nez v3, :cond_3

    .line 1043
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/u;->getSelectedItemPosition()I

    move-result v0

    .line 1046
    if-lt v0, v4, :cond_0

    .line 1047
    add-int/lit8 v0, v4, -0x1

    .line 1049
    :cond_0
    if-gez v0, :cond_1

    move v0, v1

    .line 1054
    :cond_1
    invoke-virtual {p0, v0, v2}, Lit/sephiroth/android/library/widget/u;->b(IZ)I

    move-result v4

    .line 1055
    if-gez v4, :cond_4

    .line 1057
    invoke-virtual {p0, v0, v1}, Lit/sephiroth/android/library/widget/u;->b(IZ)I

    move-result v0

    .line 1059
    :goto_1
    if-ltz v0, :cond_3

    .line 1060
    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/u;->setNextSelectedPositionInt(I)V

    .line 1061
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/u;->v()V

    move v0, v2

    .line 1066
    :goto_2
    if-nez v0, :cond_2

    .line 1068
    iput v5, p0, Lit/sephiroth/android/library/widget/u;->am:I

    .line 1069
    iput-wide v6, p0, Lit/sephiroth/android/library/widget/u;->an:J

    .line 1070
    iput v5, p0, Lit/sephiroth/android/library/widget/u;->ak:I

    .line 1071
    iput-wide v6, p0, Lit/sephiroth/android/library/widget/u;->al:J

    .line 1072
    iput-boolean v1, p0, Lit/sephiroth/android/library/widget/u;->ad:Z

    .line 1073
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/u;->v()V

    .line 1080
    :cond_2
    return-void

    :cond_3
    move v0, v3

    goto :goto_2

    :cond_4
    move v0, v4

    goto :goto_1

    :cond_5
    move v3, v1

    goto :goto_0

    :cond_6
    move v0, v1

    goto :goto_2
.end method

.method public removeAllViews()V
    .locals 2

    .prologue
    .line 546
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "removeAllViews() is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeView(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 521
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "removeView(View) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeViewAt(I)V
    .locals 2
    .parameter

    .prologue
    .line 535
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "removeViewAt(int) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method s()Z
    .locals 1

    .prologue
    .line 695
    const/4 v0, 0x0

    return v0
.end method

.method public abstract setAdapter(Landroid/widget/Adapter;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public setEmptyView(Landroid/view/View;)V
    .locals 3
    .parameter
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 665
    iput-object p1, p0, Lit/sephiroth/android/library/widget/u;->b:Landroid/view/View;

    .line 667
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    .line 669
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 670
    invoke-virtual {p1, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 674
    :cond_0
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/u;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    .line 675
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/widget/Adapter;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 676
    :cond_1
    :goto_0
    invoke-direct {p0, v0}, Lit/sephiroth/android/library/widget/u;->a(Z)V

    .line 677
    return-void

    .line 675
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setFocusable(Z)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 700
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/u;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 701
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    move v0, v2

    .line 703
    :goto_0
    iput-boolean p1, p0, Lit/sephiroth/android/library/widget/u;->c:Z

    .line 704
    if-nez p1, :cond_1

    .line 705
    iput-boolean v1, p0, Lit/sephiroth/android/library/widget/u;->d:Z

    .line 708
    :cond_1
    if-eqz p1, :cond_4

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/u;->s()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    :goto_1
    invoke-super {p0, v2}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 709
    return-void

    :cond_3
    move v0, v1

    .line 701
    goto :goto_0

    :cond_4
    move v2, v1

    .line 708
    goto :goto_1
.end method

.method public setFocusableInTouchMode(Z)V
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 713
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/u;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 714
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    move v0, v2

    .line 716
    :goto_0
    iput-boolean p1, p0, Lit/sephiroth/android/library/widget/u;->d:Z

    .line 717
    if-eqz p1, :cond_1

    .line 718
    iput-boolean v2, p0, Lit/sephiroth/android/library/widget/u;->c:Z

    .line 721
    :cond_1
    if-eqz p1, :cond_4

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/u;->s()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    :goto_1
    invoke-super {p0, v2}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V

    .line 722
    return-void

    :cond_3
    move v0, v1

    .line 714
    goto :goto_0

    :cond_4
    move v2, v1

    .line 721
    goto :goto_1
.end method

.method protected setNextSelectedPositionInt(I)V
    .locals 2
    .parameter

    .prologue
    .line 1210
    iput p1, p0, Lit/sephiroth/android/library/widget/u;->ak:I

    .line 1211
    invoke-virtual {p0, p1}, Lit/sephiroth/android/library/widget/u;->f(I)J

    move-result-wide v0

    iput-wide v0, p0, Lit/sephiroth/android/library/widget/u;->al:J

    .line 1213
    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/u;->ad:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lit/sephiroth/android/library/widget/u;->ae:I

    if-nez v0, :cond_0

    if-ltz p1, :cond_0

    .line 1214
    iput p1, p0, Lit/sephiroth/android/library/widget/u;->aa:I

    .line 1215
    iget-wide v0, p0, Lit/sephiroth/android/library/widget/u;->al:J

    iput-wide v0, p0, Lit/sephiroth/android/library/widget/u;->ab:J

    .line 1217
    :cond_0
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 2
    .parameter

    .prologue
    .line 788
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Don\'t call setOnClickListener for an AdapterView. You probably want setOnItemClickListener instead"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setOnItemClickListener(Lit/sephiroth/android/library/widget/y;)V
    .locals 0
    .parameter

    .prologue
    .line 272
    iput-object p1, p0, Lit/sephiroth/android/library/widget/u;->ah:Lit/sephiroth/android/library/widget/y;

    .line 273
    return-void
.end method

.method public setOnItemLongClickListener(Lit/sephiroth/android/library/widget/z;)V
    .locals 1
    .parameter

    .prologue
    .line 337
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/u;->isLongClickable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 338
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/u;->setLongClickable(Z)V

    .line 340
    :cond_0
    iput-object p1, p0, Lit/sephiroth/android/library/widget/u;->ai:Lit/sephiroth/android/library/widget/z;

    .line 341
    return-void
.end method

.method public setOnItemSelectedListener(Lit/sephiroth/android/library/widget/aa;)V
    .locals 0
    .parameter

    .prologue
    .line 392
    iput-object p1, p0, Lit/sephiroth/android/library/widget/u;->ag:Lit/sephiroth/android/library/widget/aa;

    .line 393
    return-void
.end method

.method protected setSelectedPositionInt(I)V
    .locals 2
    .parameter

    .prologue
    .line 1199
    iput p1, p0, Lit/sephiroth/android/library/widget/u;->am:I

    .line 1200
    invoke-virtual {p0, p1}, Lit/sephiroth/android/library/widget/u;->f(I)J

    move-result-wide v0

    iput-wide v0, p0, Lit/sephiroth/android/library/widget/u;->an:J

    .line 1201
    return-void
.end method

.method public abstract setSelection(I)V
.end method

.method protected t()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 725
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/u;->getAdapter()Landroid/widget/Adapter;

    move-result-object v4

    .line 726
    if-eqz v4, :cond_0

    invoke-interface {v4}, Landroid/widget/Adapter;->getCount()I

    move-result v0

    if-nez v0, :cond_5

    :cond_0
    move v0, v1

    .line 727
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/u;->s()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_1
    move v3, v1

    .line 731
    :goto_1
    if-eqz v3, :cond_7

    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/u;->d:Z

    if-eqz v0, :cond_7

    move v0, v1

    :goto_2
    invoke-super {p0, v0}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V

    .line 732
    if-eqz v3, :cond_8

    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/u;->c:Z

    if-eqz v0, :cond_8

    move v0, v1

    :goto_3
    invoke-super {p0, v0}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 733
    iget-object v0, p0, Lit/sephiroth/android/library/widget/u;->b:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 734
    if-eqz v4, :cond_2

    invoke-interface {v4}, Landroid/widget/Adapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    move v2, v1

    :cond_3
    invoke-direct {p0, v2}, Lit/sephiroth/android/library/widget/u;->a(Z)V

    .line 736
    :cond_4
    return-void

    :cond_5
    move v0, v2

    .line 726
    goto :goto_0

    :cond_6
    move v3, v2

    .line 727
    goto :goto_1

    :cond_7
    move v0, v2

    .line 731
    goto :goto_2

    :cond_8
    move v0, v2

    .line 732
    goto :goto_3
.end method

.method u()V
    .locals 2

    .prologue
    .line 900
    iget-object v0, p0, Lit/sephiroth/android/library/widget/u;->ag:Lit/sephiroth/android/library/widget/aa;

    if-nez v0, :cond_0

    iget-object v0, p0, Lit/sephiroth/android/library/widget/u;->aq:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 902
    :cond_0
    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/u;->af:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/u;->at:Z

    if-eqz v0, :cond_4

    .line 907
    :cond_1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/u;->e:Lit/sephiroth/android/library/widget/ab;

    if-nez v0, :cond_2

    .line 908
    new-instance v0, Lit/sephiroth/android/library/widget/ab;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lit/sephiroth/android/library/widget/ab;-><init>(Lit/sephiroth/android/library/widget/u;Lit/sephiroth/android/library/widget/v;)V

    iput-object v0, p0, Lit/sephiroth/android/library/widget/u;->e:Lit/sephiroth/android/library/widget/ab;

    .line 910
    :cond_2
    iget-object v0, p0, Lit/sephiroth/android/library/widget/u;->e:Lit/sephiroth/android/library/widget/ab;

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/u;->post(Ljava/lang/Runnable;)Z

    .line 916
    :cond_3
    :goto_0
    return-void

    .line 912
    :cond_4
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/u;->a()V

    .line 913
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/u;->b()V

    goto :goto_0
.end method

.method protected v()V
    .locals 4

    .prologue
    .line 1086
    iget v0, p0, Lit/sephiroth/android/library/widget/u;->am:I

    iget v1, p0, Lit/sephiroth/android/library/widget/u;->ar:I

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lit/sephiroth/android/library/widget/u;->an:J

    iget-wide v2, p0, Lit/sephiroth/android/library/widget/u;->as:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 1087
    :cond_0
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/u;->u()V

    .line 1088
    iget v0, p0, Lit/sephiroth/android/library/widget/u;->am:I

    iput v0, p0, Lit/sephiroth/android/library/widget/u;->ar:I

    .line 1089
    iget-wide v0, p0, Lit/sephiroth/android/library/widget/u;->an:J

    iput-wide v0, p0, Lit/sephiroth/android/library/widget/u;->as:J

    .line 1091
    :cond_1
    return-void
.end method

.method w()I
    .locals 15

    .prologue
    const/4 v2, 0x1

    const/4 v6, -0x1

    const/4 v1, 0x0

    .line 1100
    iget v9, p0, Lit/sephiroth/android/library/widget/u;->ao:I

    .line 1102
    if-nez v9, :cond_1

    move v5, v6

    .line 1175
    :cond_0
    :goto_0
    return v5

    .line 1106
    :cond_1
    iget-wide v10, p0, Lit/sephiroth/android/library/widget/u;->ab:J

    .line 1107
    iget v0, p0, Lit/sephiroth/android/library/widget/u;->aa:I

    .line 1110
    const-wide/high16 v3, -0x8000

    cmp-long v3, v10, v3

    if-nez v3, :cond_2

    move v5, v6

    .line 1111
    goto :goto_0

    .line 1115
    :cond_2
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1116
    add-int/lit8 v3, v9, -0x1

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1118
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const-wide/16 v7, 0x64

    add-long v12, v3, v7

    .line 1139
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/u;->getAdapter()Landroid/widget/Adapter;

    move-result-object v14

    .line 1140
    if-nez v14, :cond_b

    move v5, v6

    .line 1141
    goto :goto_0

    .line 1159
    :cond_3
    if-nez v7, :cond_4

    if-eqz v0, :cond_9

    if-nez v8, :cond_9

    .line 1161
    :cond_4
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move v5, v0

    move v0, v1

    .line 1144
    :cond_5
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    cmp-long v7, v7, v12

    if-gtz v7, :cond_6

    .line 1145
    invoke-interface {v14, v5}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v7

    .line 1146
    cmp-long v7, v7, v10

    if-eqz v7, :cond_0

    .line 1151
    add-int/lit8 v7, v9, -0x1

    if-ne v3, v7, :cond_7

    move v8, v2

    .line 1152
    :goto_2
    if-nez v4, :cond_8

    move v7, v2

    .line 1154
    :goto_3
    if-eqz v8, :cond_3

    if-eqz v7, :cond_3

    :cond_6
    move v5, v6

    .line 1175
    goto :goto_0

    :cond_7
    move v8, v1

    .line 1151
    goto :goto_2

    :cond_8
    move v7, v1

    .line 1152
    goto :goto_3

    .line 1165
    :cond_9
    if-nez v8, :cond_a

    if-nez v0, :cond_5

    if-nez v7, :cond_5

    .line 1167
    :cond_a
    add-int/lit8 v0, v4, -0x1

    move v4, v0

    move v5, v0

    move v0, v2

    .line 1170
    goto :goto_1

    :cond_b
    move v3, v0

    move v4, v0

    move v5, v0

    move v0, v1

    goto :goto_1
.end method

.method public x()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1227
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/u;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 1228
    iput-boolean v4, p0, Lit/sephiroth/android/library/widget/u;->ad:Z

    .line 1229
    iget v0, p0, Lit/sephiroth/android/library/widget/u;->a:I

    int-to-long v0, v0

    iput-wide v0, p0, Lit/sephiroth/android/library/widget/u;->ac:J

    .line 1230
    iget v0, p0, Lit/sephiroth/android/library/widget/u;->am:I

    if-ltz v0, :cond_2

    .line 1232
    iget v0, p0, Lit/sephiroth/android/library/widget/u;->am:I

    iget v1, p0, Lit/sephiroth/android/library/widget/u;->W:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/u;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1233
    iget-wide v1, p0, Lit/sephiroth/android/library/widget/u;->al:J

    iput-wide v1, p0, Lit/sephiroth/android/library/widget/u;->ab:J

    .line 1234
    iget v1, p0, Lit/sephiroth/android/library/widget/u;->ak:I

    iput v1, p0, Lit/sephiroth/android/library/widget/u;->aa:I

    .line 1235
    if-eqz v0, :cond_0

    .line 1236
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iput v0, p0, Lit/sephiroth/android/library/widget/u;->Z:I

    .line 1238
    :cond_0
    iput v3, p0, Lit/sephiroth/android/library/widget/u;->ae:I

    .line 1255
    :cond_1
    :goto_0
    return-void

    .line 1241
    :cond_2
    invoke-virtual {p0, v3}, Lit/sephiroth/android/library/widget/u;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1242
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/u;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    .line 1243
    iget v2, p0, Lit/sephiroth/android/library/widget/u;->W:I

    if-ltz v2, :cond_4

    iget v2, p0, Lit/sephiroth/android/library/widget/u;->W:I

    invoke-interface {v1}, Landroid/widget/Adapter;->getCount()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 1244
    iget v2, p0, Lit/sephiroth/android/library/widget/u;->W:I

    invoke-interface {v1, v2}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v1

    iput-wide v1, p0, Lit/sephiroth/android/library/widget/u;->ab:J

    .line 1248
    :goto_1
    iget v1, p0, Lit/sephiroth/android/library/widget/u;->W:I

    iput v1, p0, Lit/sephiroth/android/library/widget/u;->aa:I

    .line 1249
    if-eqz v0, :cond_3

    .line 1250
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iput v0, p0, Lit/sephiroth/android/library/widget/u;->Z:I

    .line 1252
    :cond_3
    iput v4, p0, Lit/sephiroth/android/library/widget/u;->ae:I

    goto :goto_0

    .line 1246
    :cond_4
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lit/sephiroth/android/library/widget/u;->ab:J

    goto :goto_1
.end method
