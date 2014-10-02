.class final Lit/sephiroth/android/library/widget/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lit/sephiroth/android/library/widget/AbsHListView;


# direct methods
.method constructor <init>(Lit/sephiroth/android/library/widget/AbsHListView;)V
    .locals 0
    .parameter

    .prologue
    .line 2730
    iput-object p1, p0, Lit/sephiroth/android/library/widget/f;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 2734
    iget-object v0, p0, Lit/sephiroth/android/library/widget/f;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    iget v0, v0, Lit/sephiroth/android/library/widget/AbsHListView;->G:I

    if-nez v0, :cond_2

    .line 2735
    iget-object v0, p0, Lit/sephiroth/android/library/widget/f;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    iput v3, v0, Lit/sephiroth/android/library/widget/AbsHListView;->G:I

    .line 2736
    iget-object v0, p0, Lit/sephiroth/android/library/widget/f;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    iget-object v1, p0, Lit/sephiroth/android/library/widget/f;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    iget v1, v1, Lit/sephiroth/android/library/widget/AbsHListView;->B:I

    iget-object v2, p0, Lit/sephiroth/android/library/widget/f;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    iget v2, v2, Lit/sephiroth/android/library/widget/AbsHListView;->W:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2737
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->hasFocusable()Z

    move-result v1

    if-nez v1, :cond_2

    .line 2738
    iget-object v1, p0, Lit/sephiroth/android/library/widget/f;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    const/4 v2, 0x0

    iput v2, v1, Lit/sephiroth/android/library/widget/AbsHListView;->i:I

    .line 2740
    iget-object v1, p0, Lit/sephiroth/android/library/widget/f;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    iget-boolean v1, v1, Lit/sephiroth/android/library/widget/AbsHListView;->aj:Z

    if-nez v1, :cond_5

    .line 2741
    invoke-virtual {v0, v3}, Landroid/view/View;->setPressed(Z)V

    .line 2742
    iget-object v1, p0, Lit/sephiroth/android/library/widget/f;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v1, v3}, Lit/sephiroth/android/library/widget/AbsHListView;->setPressed(Z)V

    .line 2743
    iget-object v1, p0, Lit/sephiroth/android/library/widget/f;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v1}, Lit/sephiroth/android/library/widget/AbsHListView;->e()V

    .line 2744
    iget-object v1, p0, Lit/sephiroth/android/library/widget/f;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    iget-object v2, p0, Lit/sephiroth/android/library/widget/f;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    iget v2, v2, Lit/sephiroth/android/library/widget/AbsHListView;->B:I

    invoke-virtual {v1, v2, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->a(ILandroid/view/View;)V

    .line 2745
    iget-object v0, p0, Lit/sephiroth/android/library/widget/f;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/AbsHListView;->refreshDrawableState()V

    .line 2747
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    .line 2748
    iget-object v0, p0, Lit/sephiroth/android/library/widget/f;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/AbsHListView;->isLongClickable()Z

    move-result v2

    .line 2750
    iget-object v0, p0, Lit/sephiroth/android/library/widget/f;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    iget-object v0, v0, Lit/sephiroth/android/library/widget/AbsHListView;->n:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2751
    iget-object v0, p0, Lit/sephiroth/android/library/widget/f;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    iget-object v0, v0, Lit/sephiroth/android/library/widget/AbsHListView;->n:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2752
    if-eqz v0, :cond_0

    instance-of v3, v0, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v3, :cond_0

    .line 2753
    if-eqz v2, :cond_3

    .line 2754
    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 2761
    :cond_0
    :goto_0
    if-eqz v2, :cond_4

    .line 2762
    iget-object v0, p0, Lit/sephiroth/android/library/widget/f;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-static {v0}, Lit/sephiroth/android/library/widget/AbsHListView;->c(Lit/sephiroth/android/library/widget/AbsHListView;)Lit/sephiroth/android/library/widget/e;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2763
    iget-object v0, p0, Lit/sephiroth/android/library/widget/f;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    new-instance v2, Lit/sephiroth/android/library/widget/e;

    iget-object v3, p0, Lit/sephiroth/android/library/widget/f;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lit/sephiroth/android/library/widget/e;-><init>(Lit/sephiroth/android/library/widget/AbsHListView;Lit/sephiroth/android/library/widget/a;)V

    invoke-static {v0, v2}, Lit/sephiroth/android/library/widget/AbsHListView;->a(Lit/sephiroth/android/library/widget/AbsHListView;Lit/sephiroth/android/library/widget/e;)Lit/sephiroth/android/library/widget/e;

    .line 2765
    :cond_1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/f;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-static {v0}, Lit/sephiroth/android/library/widget/AbsHListView;->c(Lit/sephiroth/android/library/widget/AbsHListView;)Lit/sephiroth/android/library/widget/e;

    move-result-object v0

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/e;->a()V

    .line 2766
    iget-object v0, p0, Lit/sephiroth/android/library/widget/f;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    iget-object v2, p0, Lit/sephiroth/android/library/widget/f;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-static {v2}, Lit/sephiroth/android/library/widget/AbsHListView;->c(Lit/sephiroth/android/library/widget/AbsHListView;)Lit/sephiroth/android/library/widget/e;

    move-result-object v2

    int-to-long v3, v1

    invoke-virtual {v0, v2, v3, v4}, Lit/sephiroth/android/library/widget/AbsHListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2775
    :cond_2
    :goto_1
    return-void

    .line 2756
    :cond_3
    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    goto :goto_0

    .line 2768
    :cond_4
    iget-object v0, p0, Lit/sephiroth/android/library/widget/f;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    iput v4, v0, Lit/sephiroth/android/library/widget/AbsHListView;->G:I

    goto :goto_1

    .line 2771
    :cond_5
    iget-object v0, p0, Lit/sephiroth/android/library/widget/f;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    iput v4, v0, Lit/sephiroth/android/library/widget/AbsHListView;->G:I

    goto :goto_1
.end method
