.class public Lit/sephiroth/android/library/widget/p;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic a:Lit/sephiroth/android/library/widget/AbsHListView;

.field private b:Lit/sephiroth/android/library/widget/q;

.field private c:I

.field private d:[Landroid/view/View;

.field private e:[Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private f:I

.field private g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private i:Landroid/support/v4/util/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SparseArrayCompat",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lit/sephiroth/android/library/widget/AbsHListView;)V
    .locals 1
    .parameter

    .prologue
    .line 5474
    iput-object p1, p0, Lit/sephiroth/android/library/widget/p;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5488
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Lit/sephiroth/android/library/widget/p;->d:[Landroid/view/View;

    return-void
.end method

.method static synthetic a(Lit/sephiroth/android/library/widget/p;Lit/sephiroth/android/library/widget/q;)Lit/sephiroth/android/library/widget/q;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 5474
    iput-object p1, p0, Lit/sephiroth/android/library/widget/p;->b:Lit/sephiroth/android/library/widget/q;

    return-object p1
.end method

.method private f()V
    .locals 11
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 5783
    iget-object v0, p0, Lit/sephiroth/android/library/widget/p;->d:[Landroid/view/View;

    array-length v5, v0

    .line 5784
    iget v6, p0, Lit/sephiroth/android/library/widget/p;->f:I

    .line 5785
    iget-object v7, p0, Lit/sephiroth/android/library/widget/p;->e:[Ljava/util/ArrayList;

    move v4, v1

    .line 5786
    :goto_0
    if-ge v4, v6, :cond_1

    .line 5787
    aget-object v8, v7, v4

    .line 5788
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 5789
    sub-int v9, v0, v5

    .line 5790
    add-int/lit8 v0, v0, -0x1

    move v2, v1

    .line 5791
    :goto_1
    if-ge v2, v9, :cond_0

    .line 5792
    iget-object v10, p0, Lit/sephiroth/android/library/widget/p;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {v10, v0, v1}, Lit/sephiroth/android/library/widget/AbsHListView;->e(Lit/sephiroth/android/library/widget/AbsHListView;Landroid/view/View;Z)V

    .line 5791
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v0, v3

    goto :goto_1

    .line 5786
    :cond_0
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    .line 5796
    :cond_1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/p;->i:Landroid/support/v4/util/SparseArrayCompat;

    if-eqz v0, :cond_3

    .line 5797
    :goto_2
    iget-object v0, p0, Lit/sephiroth/android/library/widget/p;->i:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0}, Landroid/support/v4/util/SparseArrayCompat;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 5798
    iget-object v0, p0, Lit/sephiroth/android/library/widget/p;->i:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0, v1}, Landroid/support/v4/util/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 5801
    invoke-virtual {v0}, Landroid/view/View;->hasTransientState()Z

    move-result v0

    if-nez v0, :cond_2

    .line 5802
    iget-object v0, p0, Lit/sephiroth/android/library/widget/p;->i:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0, v1}, Landroid/support/v4/util/SparseArrayCompat;->removeAt(I)V

    .line 5803
    add-int/lit8 v1, v1, -0x1

    .line 5797
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 5807
    :cond_3
    return-void
.end method


# virtual methods
.method public a()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 5519
    iget v0, p0, Lit/sephiroth/android/library/widget/p;->f:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 5520
    iget-object v3, p0, Lit/sephiroth/android/library/widget/p;->g:Ljava/util/ArrayList;

    .line 5521
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v2, v1

    .line 5522
    :goto_0
    if-ge v2, v4, :cond_2

    .line 5523
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->forceLayout()V

    .line 5522
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 5526
    :cond_0
    iget v4, p0, Lit/sephiroth/android/library/widget/p;->f:I

    move v3, v1

    .line 5527
    :goto_1
    if-ge v3, v4, :cond_2

    .line 5528
    iget-object v0, p0, Lit/sephiroth/android/library/widget/p;->e:[Ljava/util/ArrayList;

    aget-object v5, v0, v3

    .line 5529
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v2, v1

    .line 5530
    :goto_2
    if-ge v2, v6, :cond_1

    .line 5531
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->forceLayout()V

    .line 5530
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 5527
    :cond_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 5535
    :cond_2
    iget-object v0, p0, Lit/sephiroth/android/library/widget/p;->i:Landroid/support/v4/util/SparseArrayCompat;

    if-eqz v0, :cond_3

    .line 5536
    iget-object v0, p0, Lit/sephiroth/android/library/widget/p;->i:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0}, Landroid/support/v4/util/SparseArrayCompat;->size()I

    move-result v2

    .line 5537
    :goto_3
    if-ge v1, v2, :cond_3

    .line 5538
    iget-object v0, p0, Lit/sephiroth/android/library/widget/p;->i:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0, v1}, Landroid/support/v4/util/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->forceLayout()V

    .line 5537
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    .line 5541
    :cond_3
    return-void
.end method

.method public a(I)V
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 5505
    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 5506
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Can\'t have a viewTypeCount < 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5509
    :cond_0
    new-array v2, p1, [Ljava/util/ArrayList;

    move v0, v1

    .line 5510
    :goto_0
    if-ge v0, p1, :cond_1

    .line 5511
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    aput-object v3, v2, v0

    .line 5510
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5513
    :cond_1
    iput p1, p0, Lit/sephiroth/android/library/widget/p;->f:I

    .line 5514
    aget-object v0, v2, v1

    iput-object v0, p0, Lit/sephiroth/android/library/widget/p;->g:Ljava/util/ArrayList;

    .line 5515
    iput-object v2, p0, Lit/sephiroth/android/library/widget/p;->e:[Ljava/util/ArrayList;

    .line 5516
    return-void
.end method

.method public a(II)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 5581
    iget-object v0, p0, Lit/sephiroth/android/library/widget/p;->d:[Landroid/view/View;

    array-length v0, v0

    if-ge v0, p1, :cond_0

    .line 5582
    new-array v0, p1, [Landroid/view/View;

    iput-object v0, p0, Lit/sephiroth/android/library/widget/p;->d:[Landroid/view/View;

    .line 5584
    :cond_0
    iput p2, p0, Lit/sephiroth/android/library/widget/p;->c:I

    .line 5586
    iget-object v2, p0, Lit/sephiroth/android/library/widget/p;->d:[Landroid/view/View;

    .line 5587
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_2

    .line 5588
    iget-object v0, p0, Lit/sephiroth/android/library/widget/p;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v0, v1}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 5589
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lit/sephiroth/android/library/widget/i;

    .line 5591
    if-eqz v0, :cond_1

    iget v0, v0, Lit/sephiroth/android/library/widget/i;->a:I

    const/4 v4, -0x2

    if-eq v0, v4, :cond_1

    .line 5594
    aput-object v3, v2, v1

    .line 5587
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 5597
    :cond_2
    return-void
.end method

.method public a(Landroid/view/View;I)V
    .locals 3
    .parameter
    .parameter
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 5662
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lit/sephiroth/android/library/widget/i;

    .line 5663
    if-nez v0, :cond_1

    .line 5706
    :cond_0
    :goto_0
    return-void

    .line 5667
    :cond_1
    iput p2, v0, Lit/sephiroth/android/library/widget/i;->d:I

    .line 5671
    iget v1, v0, Lit/sephiroth/android/library/widget/i;->a:I

    .line 5673
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v0, v2, :cond_7

    invoke-virtual {p1}, Landroid/view/View;->hasTransientState()Z

    move-result v0

    .line 5675
    :goto_1
    invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/p;->b(I)Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v0, :cond_8

    .line 5676
    :cond_2
    const/4 v2, -0x2

    if-ne v1, v2, :cond_3

    if-eqz v0, :cond_5

    .line 5677
    :cond_3
    iget-object v1, p0, Lit/sephiroth/android/library/widget/p;->h:Ljava/util/ArrayList;

    if-nez v1, :cond_4

    .line 5678
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lit/sephiroth/android/library/widget/p;->h:Ljava/util/ArrayList;

    .line 5680
    :cond_4
    iget-object v1, p0, Lit/sephiroth/android/library/widget/p;->h:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5682
    :cond_5
    if-eqz v0, :cond_0

    .line 5683
    iget-object v0, p0, Lit/sephiroth/android/library/widget/p;->i:Landroid/support/v4/util/SparseArrayCompat;

    if-nez v0, :cond_6

    .line 5684
    new-instance v0, Landroid/support/v4/util/SparseArrayCompat;

    invoke-direct {v0}, Landroid/support/v4/util/SparseArrayCompat;-><init>()V

    iput-object v0, p0, Lit/sephiroth/android/library/widget/p;->i:Landroid/support/v4/util/SparseArrayCompat;

    .line 5686
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->onStartTemporaryDetach()V

    .line 5687
    iget-object v0, p0, Lit/sephiroth/android/library/widget/p;->i:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0, p2, p1}, Landroid/support/v4/util/SparseArrayCompat;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 5673
    :cond_7
    const/4 v0, 0x0

    goto :goto_1

    .line 5692
    :cond_8
    invoke-virtual {p1}, Landroid/view/View;->onStartTemporaryDetach()V

    .line 5693
    iget v0, p0, Lit/sephiroth/android/library/widget/p;->f:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_a

    .line 5694
    iget-object v0, p0, Lit/sephiroth/android/library/widget/p;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5699
    :goto_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_9

    .line 5700
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 5703
    :cond_9
    iget-object v0, p0, Lit/sephiroth/android/library/widget/p;->b:Lit/sephiroth/android/library/widget/q;

    if-eqz v0, :cond_0

    .line 5704
    iget-object v0, p0, Lit/sephiroth/android/library/widget/p;->b:Lit/sephiroth/android/library/widget/q;

    invoke-interface {v0, p1}, Lit/sephiroth/android/library/widget/q;->a(Landroid/view/View;)V

    goto :goto_0

    .line 5696
    :cond_a
    iget-object v0, p0, Lit/sephiroth/android/library/widget/p;->e:[Ljava/util/ArrayList;

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method public b()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 5551
    iget v0, p0, Lit/sephiroth/android/library/widget/p;->f:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 5552
    iget-object v3, p0, Lit/sephiroth/android/library/widget/p;->g:Ljava/util/ArrayList;

    .line 5553
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v1, v2

    .line 5554
    :goto_0
    if-ge v1, v4, :cond_2

    .line 5555
    iget-object v5, p0, Lit/sephiroth/android/library/widget/p;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    add-int/lit8 v0, v4, -0x1

    sub-int/2addr v0, v1

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {v5, v0, v2}, Lit/sephiroth/android/library/widget/AbsHListView;->a(Lit/sephiroth/android/library/widget/AbsHListView;Landroid/view/View;Z)V

    .line 5554
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 5558
    :cond_0
    iget v4, p0, Lit/sephiroth/android/library/widget/p;->f:I

    move v3, v2

    .line 5559
    :goto_1
    if-ge v3, v4, :cond_2

    .line 5560
    iget-object v0, p0, Lit/sephiroth/android/library/widget/p;->e:[Ljava/util/ArrayList;

    aget-object v5, v0, v3

    .line 5561
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v1, v2

    .line 5562
    :goto_2
    if-ge v1, v6, :cond_1

    .line 5563
    iget-object v7, p0, Lit/sephiroth/android/library/widget/p;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    add-int/lit8 v0, v6, -0x1

    sub-int/2addr v0, v1

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {v7, v0, v2}, Lit/sephiroth/android/library/widget/AbsHListView;->b(Lit/sephiroth/android/library/widget/AbsHListView;Landroid/view/View;Z)V

    .line 5562
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 5559
    :cond_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 5567
    :cond_2
    iget-object v0, p0, Lit/sephiroth/android/library/widget/p;->i:Landroid/support/v4/util/SparseArrayCompat;

    if-eqz v0, :cond_3

    .line 5568
    iget-object v0, p0, Lit/sephiroth/android/library/widget/p;->i:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0}, Landroid/support/v4/util/SparseArrayCompat;->clear()V

    .line 5570
    :cond_3
    return-void
.end method

.method public b(I)Z
    .locals 1
    .parameter

    .prologue
    .line 5544
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(I)Landroid/view/View;
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 5607
    iget v0, p0, Lit/sephiroth/android/library/widget/p;->c:I

    sub-int v2, p1, v0

    .line 5608
    iget-object v3, p0, Lit/sephiroth/android/library/widget/p;->d:[Landroid/view/View;

    .line 5609
    if-ltz v2, :cond_0

    array-length v0, v3

    if-ge v2, v0, :cond_0

    .line 5610
    aget-object v0, v3, v2

    .line 5611
    aput-object v1, v3, v2

    .line 5614
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method c()V
    .locals 1

    .prologue
    .line 5634
    iget-object v0, p0, Lit/sephiroth/android/library/widget/p;->i:Landroid/support/v4/util/SparseArrayCompat;

    if-eqz v0, :cond_0

    .line 5635
    iget-object v0, p0, Lit/sephiroth/android/library/widget/p;->i:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0}, Landroid/support/v4/util/SparseArrayCompat;->clear()V

    .line 5637
    :cond_0
    return-void
.end method

.method d(I)Landroid/view/View;
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 5618
    iget-object v1, p0, Lit/sephiroth/android/library/widget/p;->i:Landroid/support/v4/util/SparseArrayCompat;

    if-nez v1, :cond_1

    .line 5627
    :cond_0
    :goto_0
    return-object v0

    .line 5621
    :cond_1
    iget-object v1, p0, Lit/sephiroth/android/library/widget/p;->i:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v1, p1}, Landroid/support/v4/util/SparseArrayCompat;->indexOfKey(I)I

    move-result v1

    .line 5622
    if-ltz v1, :cond_0

    .line 5625
    iget-object v0, p0, Lit/sephiroth/android/library/widget/p;->i:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0, v1}, Landroid/support/v4/util/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 5626
    iget-object v2, p0, Lit/sephiroth/android/library/widget/p;->i:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v2, v1}, Landroid/support/v4/util/SparseArrayCompat;->removeAt(I)V

    goto :goto_0
.end method

.method public d()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 5712
    iget-object v0, p0, Lit/sephiroth/android/library/widget/p;->h:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 5720
    :goto_0
    return-void

    .line 5715
    :cond_0
    iget-object v0, p0, Lit/sephiroth/android/library/widget/p;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v2

    .line 5716
    :goto_1
    if-ge v1, v3, :cond_1

    .line 5717
    iget-object v4, p0, Lit/sephiroth/android/library/widget/p;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    iget-object v0, p0, Lit/sephiroth/android/library/widget/p;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {v4, v0, v2}, Lit/sephiroth/android/library/widget/AbsHListView;->c(Lit/sephiroth/android/library/widget/AbsHListView;Landroid/view/View;Z)V

    .line 5716
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 5719
    :cond_1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/p;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method

.method e(I)Landroid/view/View;
    .locals 2
    .parameter

    .prologue
    .line 5643
    iget v0, p0, Lit/sephiroth/android/library/widget/p;->f:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 5644
    iget-object v0, p0, Lit/sephiroth/android/library/widget/p;->g:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Lit/sephiroth/android/library/widget/AbsHListView;->a(Ljava/util/ArrayList;I)Landroid/view/View;

    move-result-object v0

    .line 5651
    :goto_0
    return-object v0

    .line 5646
    :cond_0
    iget-object v0, p0, Lit/sephiroth/android/library/widget/p;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    iget-object v0, v0, Lit/sephiroth/android/library/widget/AbsHListView;->k:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v0

    .line 5647
    if-ltz v0, :cond_1

    iget-object v1, p0, Lit/sephiroth/android/library/widget/p;->e:[Ljava/util/ArrayList;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 5648
    iget-object v1, p0, Lit/sephiroth/android/library/widget/p;->e:[Ljava/util/ArrayList;

    aget-object v0, v1, v0

    invoke-static {v0, p1}, Lit/sephiroth/android/library/widget/AbsHListView;->a(Ljava/util/ArrayList;I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 5651
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()V
    .locals 12
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 5727
    iget-object v7, p0, Lit/sephiroth/android/library/widget/p;->d:[Landroid/view/View;

    .line 5728
    iget-object v1, p0, Lit/sephiroth/android/library/widget/p;->b:Lit/sephiroth/android/library/widget/q;

    if-eqz v1, :cond_5

    move v1, v0

    .line 5729
    :goto_0
    iget v3, p0, Lit/sephiroth/android/library/widget/p;->f:I

    if-le v3, v0, :cond_6

    move v3, v0

    .line 5731
    :goto_1
    iget-object v5, p0, Lit/sephiroth/android/library/widget/p;->g:Ljava/util/ArrayList;

    .line 5732
    array-length v0, v7

    .line 5733
    add-int/lit8 v0, v0, -0x1

    move v6, v0

    :goto_2
    if-ltz v6, :cond_b

    .line 5734
    aget-object v8, v7, v6

    .line 5735
    if-eqz v8, :cond_4

    .line 5736
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lit/sephiroth/android/library/widget/i;

    .line 5737
    iget v9, v0, Lit/sephiroth/android/library/widget/i;->a:I

    .line 5739
    aput-object v11, v7, v6

    .line 5741
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x10

    if-lt v4, v10, :cond_7

    invoke-virtual {v8}, Landroid/view/View;->hasTransientState()Z

    move-result v4

    .line 5742
    :goto_3
    invoke-virtual {p0, v9}, Lit/sephiroth/android/library/widget/p;->b(I)Z

    move-result v10

    if-eqz v10, :cond_0

    if-eqz v4, :cond_8

    .line 5744
    :cond_0
    const/4 v0, -0x2

    if-ne v9, v0, :cond_1

    if-eqz v4, :cond_2

    .line 5746
    :cond_1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/p;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-static {v0, v8, v2}, Lit/sephiroth/android/library/widget/AbsHListView;->d(Lit/sephiroth/android/library/widget/AbsHListView;Landroid/view/View;Z)V

    .line 5748
    :cond_2
    if-eqz v4, :cond_4

    .line 5749
    iget-object v0, p0, Lit/sephiroth/android/library/widget/p;->i:Landroid/support/v4/util/SparseArrayCompat;

    if-nez v0, :cond_3

    .line 5750
    new-instance v0, Landroid/support/v4/util/SparseArrayCompat;

    invoke-direct {v0}, Landroid/support/v4/util/SparseArrayCompat;-><init>()V

    iput-object v0, p0, Lit/sephiroth/android/library/widget/p;->i:Landroid/support/v4/util/SparseArrayCompat;

    .line 5752
    :cond_3
    iget-object v0, p0, Lit/sephiroth/android/library/widget/p;->i:Landroid/support/v4/util/SparseArrayCompat;

    iget v4, p0, Lit/sephiroth/android/library/widget/p;->c:I

    add-int/2addr v4, v6

    invoke-virtual {v0, v4, v8}, Landroid/support/v4/util/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 5733
    :cond_4
    :goto_4
    add-int/lit8 v0, v6, -0x1

    move v6, v0

    goto :goto_2

    :cond_5
    move v1, v2

    .line 5728
    goto :goto_0

    :cond_6
    move v3, v2

    .line 5729
    goto :goto_1

    :cond_7
    move v4, v2

    .line 5741
    goto :goto_3

    .line 5757
    :cond_8
    if-eqz v3, :cond_c

    .line 5758
    iget-object v4, p0, Lit/sephiroth/android/library/widget/p;->e:[Ljava/util/ArrayList;

    aget-object v4, v4, v9

    .line 5760
    :goto_5
    invoke-virtual {v8}, Landroid/view/View;->onStartTemporaryDetach()V

    .line 5761
    iget v5, p0, Lit/sephiroth/android/library/widget/p;->c:I

    add-int/2addr v5, v6

    iput v5, v0, Lit/sephiroth/android/library/widget/i;->d:I

    .line 5762
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5764
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xe

    if-lt v0, v5, :cond_9

    .line 5765
    invoke-virtual {v8, v11}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 5768
    :cond_9
    if-eqz v1, :cond_a

    .line 5769
    iget-object v0, p0, Lit/sephiroth/android/library/widget/p;->b:Lit/sephiroth/android/library/widget/q;

    invoke-interface {v0, v8}, Lit/sephiroth/android/library/widget/q;->a(Landroid/view/View;)V

    :cond_a
    move-object v5, v4

    goto :goto_4

    .line 5774
    :cond_b
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/p;->f()V

    .line 5775
    return-void

    :cond_c
    move-object v4, v5

    goto :goto_5
.end method

.method f(I)V
    .locals 7
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 5832
    iget v0, p0, Lit/sephiroth/android/library/widget/p;->f:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 5833
    iget-object v3, p0, Lit/sephiroth/android/library/widget/p;->g:Ljava/util/ArrayList;

    .line 5834
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v2, v1

    .line 5835
    :goto_0
    if-ge v2, v4, :cond_2

    .line 5836
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 5835
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 5839
    :cond_0
    iget v4, p0, Lit/sephiroth/android/library/widget/p;->f:I

    move v3, v1

    .line 5840
    :goto_1
    if-ge v3, v4, :cond_2

    .line 5841
    iget-object v0, p0, Lit/sephiroth/android/library/widget/p;->e:[Ljava/util/ArrayList;

    aget-object v5, v0, v3

    .line 5842
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v2, v1

    .line 5843
    :goto_2
    if-ge v2, v6, :cond_1

    .line 5844
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 5843
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 5840
    :cond_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 5849
    :cond_2
    iget-object v2, p0, Lit/sephiroth/android/library/widget/p;->d:[Landroid/view/View;

    .line 5850
    array-length v3, v2

    move v0, v1

    .line 5851
    :goto_3
    if-ge v0, v3, :cond_4

    .line 5852
    aget-object v1, v2, v0

    .line 5853
    if-eqz v1, :cond_3

    .line 5854
    invoke-virtual {v1, p1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 5851
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 5857
    :cond_4
    return-void
.end method
