.class Lit/sephiroth/android/library/widget/e;
.super Lit/sephiroth/android/library/widget/t;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lit/sephiroth/android/library/widget/AbsHListView;


# direct methods
.method private constructor <init>(Lit/sephiroth/android/library/widget/AbsHListView;)V
    .locals 1
    .parameter

    .prologue
    .line 2526
    iput-object p1, p0, Lit/sephiroth/android/library/widget/e;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lit/sephiroth/android/library/widget/t;-><init>(Lit/sephiroth/android/library/widget/AbsHListView;Lit/sephiroth/android/library/widget/a;)V

    return-void
.end method

.method synthetic constructor <init>(Lit/sephiroth/android/library/widget/AbsHListView;Lit/sephiroth/android/library/widget/a;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2526
    invoke-direct {p0, p1}, Lit/sephiroth/android/library/widget/e;-><init>(Lit/sephiroth/android/library/widget/AbsHListView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 2530
    iget-object v0, p0, Lit/sephiroth/android/library/widget/e;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    iget v0, v0, Lit/sephiroth/android/library/widget/AbsHListView;->B:I

    .line 2531
    iget-object v2, p0, Lit/sephiroth/android/library/widget/e;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    iget-object v3, p0, Lit/sephiroth/android/library/widget/e;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    iget v3, v3, Lit/sephiroth/android/library/widget/AbsHListView;->W:I

    sub-int/2addr v0, v3

    invoke-virtual {v2, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2532
    if-eqz v2, :cond_0

    .line 2533
    iget-object v0, p0, Lit/sephiroth/android/library/widget/e;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    iget v0, v0, Lit/sephiroth/android/library/widget/AbsHListView;->B:I

    .line 2534
    iget-object v3, p0, Lit/sephiroth/android/library/widget/e;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    iget-object v3, v3, Lit/sephiroth/android/library/widget/AbsHListView;->k:Landroid/widget/ListAdapter;

    iget-object v4, p0, Lit/sephiroth/android/library/widget/e;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    iget v4, v4, Lit/sephiroth/android/library/widget/AbsHListView;->B:I

    invoke-interface {v3, v4}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v3

    .line 2537
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/e;->b()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lit/sephiroth/android/library/widget/e;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    iget-boolean v5, v5, Lit/sephiroth/android/library/widget/AbsHListView;->aj:Z

    if-nez v5, :cond_2

    .line 2538
    iget-object v5, p0, Lit/sephiroth/android/library/widget/e;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v5, v2, v0, v3, v4}, Lit/sephiroth/android/library/widget/AbsHListView;->c(Landroid/view/View;IJ)Z

    move-result v0

    .line 2540
    :goto_0
    if-eqz v0, :cond_1

    .line 2541
    iget-object v0, p0, Lit/sephiroth/android/library/widget/e;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    const/4 v3, -0x1

    iput v3, v0, Lit/sephiroth/android/library/widget/AbsHListView;->G:I

    .line 2542
    iget-object v0, p0, Lit/sephiroth/android/library/widget/e;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v0, v1}, Lit/sephiroth/android/library/widget/AbsHListView;->setPressed(Z)V

    .line 2543
    invoke-virtual {v2, v1}, Landroid/view/View;->setPressed(Z)V

    .line 2548
    :cond_0
    :goto_1
    return-void

    .line 2545
    :cond_1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/e;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    const/4 v1, 0x2

    iput v1, v0, Lit/sephiroth/android/library/widget/AbsHListView;->G:I

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_0
.end method
