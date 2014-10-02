.class Lit/sephiroth/android/library/widget/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lit/sephiroth/android/library/widget/AbsHListView;

.field private final b:Lit/sephiroth/android/library/widget/at;

.field private c:I

.field private final d:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lit/sephiroth/android/library/widget/AbsHListView;)V
    .locals 2
    .parameter

    .prologue
    .line 3725
    iput-object p1, p0, Lit/sephiroth/android/library/widget/g;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3698
    new-instance v0, Lit/sephiroth/android/library/widget/h;

    invoke-direct {v0, p0}, Lit/sephiroth/android/library/widget/h;-><init>(Lit/sephiroth/android/library/widget/g;)V

    iput-object v0, p0, Lit/sephiroth/android/library/widget/g;->d:Ljava/lang/Runnable;

    .line 3726
    new-instance v0, Lit/sephiroth/android/library/widget/at;

    invoke-virtual {p1}, Lit/sephiroth/android/library/widget/AbsHListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lit/sephiroth/android/library/widget/at;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lit/sephiroth/android/library/widget/g;->b:Lit/sephiroth/android/library/widget/at;

    .line 3727
    return-void
.end method

.method static synthetic a(Lit/sephiroth/android/library/widget/g;)Lit/sephiroth/android/library/widget/at;
    .locals 1
    .parameter

    .prologue
    .line 3686
    iget-object v0, p0, Lit/sephiroth/android/library/widget/g;->b:Lit/sephiroth/android/library/widget/at;

    return-object v0
.end method


# virtual methods
.method a()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 3739
    iget-object v0, p0, Lit/sephiroth/android/library/widget/g;->b:Lit/sephiroth/android/library/widget/at;

    iget-object v1, p0, Lit/sephiroth/android/library/widget/g;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v1}, Lit/sephiroth/android/library/widget/AbsHListView;->getScrollX()I

    move-result v1

    move v3, v2

    move v4, v2

    move v5, v2

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Lit/sephiroth/android/library/widget/at;->a(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3740
    iget-object v0, p0, Lit/sephiroth/android/library/widget/g;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    const/4 v1, 0x6

    iput v1, v0, Lit/sephiroth/android/library/widget/AbsHListView;->G:I

    .line 3741
    iget-object v0, p0, Lit/sephiroth/android/library/widget/g;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/AbsHListView;->invalidate()V

    .line 3742
    iget-object v0, p0, Lit/sephiroth/android/library/widget/g;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    iget-object v0, v0, Lit/sephiroth/android/library/widget/AbsHListView;->b:Lit/sephiroth/android/library/a/b;

    invoke-virtual {v0, p0}, Lit/sephiroth/android/library/a/b;->a(Ljava/lang/Runnable;)V

    .line 3747
    :goto_0
    return-void

    .line 3744
    :cond_0
    iget-object v0, p0, Lit/sephiroth/android/library/widget/g;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    const/4 v1, -0x1

    iput v1, v0, Lit/sephiroth/android/library/widget/AbsHListView;->G:I

    .line 3745
    iget-object v0, p0, Lit/sephiroth/android/library/widget/g;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v0, v2}, Lit/sephiroth/android/library/widget/AbsHListView;->b(I)V

    goto :goto_0
.end method

.method a(I)V
    .locals 9
    .parameter

    .prologue
    const v6, 0x7fffffff

    const/4 v2, 0x0

    .line 3730
    if-gez p1, :cond_0

    move v1, v6

    .line 3731
    :goto_0
    iput v1, p0, Lit/sephiroth/android/library/widget/g;->c:I

    .line 3732
    iget-object v0, p0, Lit/sephiroth/android/library/widget/g;->b:Lit/sephiroth/android/library/widget/at;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lit/sephiroth/android/library/widget/at;->a(Landroid/view/animation/Interpolator;)V

    .line 3733
    iget-object v0, p0, Lit/sephiroth/android/library/widget/g;->b:Lit/sephiroth/android/library/widget/at;

    move v3, p1

    move v4, v2

    move v5, v2

    move v7, v2

    move v8, v6

    invoke-virtual/range {v0 .. v8}, Lit/sephiroth/android/library/widget/at;->a(IIIIIIII)V

    .line 3734
    iget-object v0, p0, Lit/sephiroth/android/library/widget/g;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    const/4 v1, 0x4

    iput v1, v0, Lit/sephiroth/android/library/widget/AbsHListView;->G:I

    .line 3735
    iget-object v0, p0, Lit/sephiroth/android/library/widget/g;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    iget-object v0, v0, Lit/sephiroth/android/library/widget/AbsHListView;->b:Lit/sephiroth/android/library/a/b;

    invoke-virtual {v0, p0}, Lit/sephiroth/android/library/a/b;->a(Ljava/lang/Runnable;)V

    .line 3736
    return-void

    :cond_0
    move v1, v2

    .line 3730
    goto :goto_0
.end method

.method a(IIZ)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 3779
    if-gez p1, :cond_0

    const v1, 0x7fffffff

    .line 3780
    :goto_0
    iput v1, p0, Lit/sephiroth/android/library/widget/g;->c:I

    .line 3781
    iget-object v3, p0, Lit/sephiroth/android/library/widget/g;->b:Lit/sephiroth/android/library/widget/at;

    if-eqz p3, :cond_1

    sget-object v0, Lit/sephiroth/android/library/widget/AbsHListView;->U:Landroid/view/animation/Interpolator;

    :goto_1
    invoke-virtual {v3, v0}, Lit/sephiroth/android/library/widget/at;->a(Landroid/view/animation/Interpolator;)V

    .line 3782
    iget-object v0, p0, Lit/sephiroth/android/library/widget/g;->b:Lit/sephiroth/android/library/widget/at;

    move v3, p1

    move v4, v2

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lit/sephiroth/android/library/widget/at;->a(IIIII)V

    .line 3783
    iget-object v0, p0, Lit/sephiroth/android/library/widget/g;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    const/4 v1, 0x4

    iput v1, v0, Lit/sephiroth/android/library/widget/AbsHListView;->G:I

    .line 3784
    iget-object v0, p0, Lit/sephiroth/android/library/widget/g;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    iget-object v0, v0, Lit/sephiroth/android/library/widget/AbsHListView;->b:Lit/sephiroth/android/library/a/b;

    invoke-virtual {v0, p0}, Lit/sephiroth/android/library/a/b;->a(Ljava/lang/Runnable;)V

    .line 3785
    return-void

    :cond_0
    move v1, v2

    .line 3779
    goto :goto_0

    .line 3781
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method b()V
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 3788
    iget-object v0, p0, Lit/sephiroth/android/library/widget/g;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    const/4 v2, -0x1

    iput v2, v0, Lit/sephiroth/android/library/widget/AbsHListView;->G:I

    .line 3790
    iget-object v0, p0, Lit/sephiroth/android/library/widget/g;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v0, p0}, Lit/sephiroth/android/library/widget/AbsHListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3791
    iget-object v0, p0, Lit/sephiroth/android/library/widget/g;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    iget-object v2, p0, Lit/sephiroth/android/library/widget/g;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Lit/sephiroth/android/library/widget/AbsHListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3793
    iget-object v0, p0, Lit/sephiroth/android/library/widget/g;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v0, v1}, Lit/sephiroth/android/library/widget/AbsHListView;->b(I)V

    .line 3794
    iget-object v0, p0, Lit/sephiroth/android/library/widget/g;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-static {v0}, Lit/sephiroth/android/library/widget/AbsHListView;->k(Lit/sephiroth/android/library/widget/AbsHListView;)V

    .line 3795
    iget-object v0, p0, Lit/sephiroth/android/library/widget/g;->b:Lit/sephiroth/android/library/widget/at;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/at;->e()V

    .line 3797
    invoke-static {}, Lit/sephiroth/android/library/widget/AbsHListView;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3798
    iget-object v0, p0, Lit/sephiroth/android/library/widget/g;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    move v6, v1

    move v7, v1

    move v8, v1

    move v9, v1

    invoke-static/range {v0 .. v9}, Lit/sephiroth/android/library/widget/AbsHListView;->a(Lit/sephiroth/android/library/widget/AbsHListView;IIIIIIIIZ)Z

    .line 3801
    :cond_0
    return-void
.end method

.method b(I)V
    .locals 11
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 3750
    iget-object v0, p0, Lit/sephiroth/android/library/widget/g;->b:Lit/sephiroth/android/library/widget/at;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lit/sephiroth/android/library/widget/at;->a(Landroid/view/animation/Interpolator;)V

    .line 3751
    iget-object v0, p0, Lit/sephiroth/android/library/widget/g;->b:Lit/sephiroth/android/library/widget/at;

    iget-object v1, p0, Lit/sephiroth/android/library/widget/g;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v1}, Lit/sephiroth/android/library/widget/AbsHListView;->getScrollX()I

    move-result v1

    const/high16 v5, -0x8000

    const v6, 0x7fffffff

    iget-object v3, p0, Lit/sephiroth/android/library/widget/g;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v3}, Lit/sephiroth/android/library/widget/AbsHListView;->getWidth()I

    move-result v9

    move v3, p1

    move v4, v2

    move v7, v2

    move v8, v2

    move v10, v2

    invoke-virtual/range {v0 .. v10}, Lit/sephiroth/android/library/widget/at;->a(IIIIIIIIII)V

    .line 3752
    iget-object v0, p0, Lit/sephiroth/android/library/widget/g;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    const/4 v1, 0x6

    iput v1, v0, Lit/sephiroth/android/library/widget/AbsHListView;->G:I

    .line 3753
    iget-object v0, p0, Lit/sephiroth/android/library/widget/g;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/AbsHListView;->invalidate()V

    .line 3754
    iget-object v0, p0, Lit/sephiroth/android/library/widget/g;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    iget-object v0, v0, Lit/sephiroth/android/library/widget/AbsHListView;->b:Lit/sephiroth/android/library/a/b;

    invoke-virtual {v0, p0}, Lit/sephiroth/android/library/a/b;->a(Ljava/lang/Runnable;)V

    .line 3755
    return-void
.end method

.method c()V
    .locals 4

    .prologue
    .line 3804
    iget-object v0, p0, Lit/sephiroth/android/library/widget/g;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    iget-object v1, p0, Lit/sephiroth/android/library/widget/g;->d:Ljava/lang/Runnable;

    const-wide/16 v2, 0x28

    invoke-virtual {v0, v1, v2, v3}, Lit/sephiroth/android/library/widget/AbsHListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3805
    return-void
.end method

.method c(I)V
    .locals 4
    .parameter

    .prologue
    .line 3758
    iget-object v0, p0, Lit/sephiroth/android/library/widget/g;->b:Lit/sephiroth/android/library/widget/at;

    iget-object v1, p0, Lit/sephiroth/android/library/widget/g;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v1}, Lit/sephiroth/android/library/widget/AbsHListView;->getScrollX()I

    move-result v1

    const/4 v2, 0x0

    iget-object v3, p0, Lit/sephiroth/android/library/widget/g;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    iget v3, v3, Lit/sephiroth/android/library/widget/AbsHListView;->S:I

    invoke-virtual {v0, v1, v2, v3}, Lit/sephiroth/android/library/widget/at;->a(III)V

    .line 3759
    invoke-static {}, Lit/sephiroth/android/library/widget/AbsHListView;->r()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lit/sephiroth/android/library/widget/g;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/AbsHListView;->getOverScrollMode()I

    move-result v0

    .line 3760
    :goto_0
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lit/sephiroth/android/library/widget/g;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-static {v0}, Lit/sephiroth/android/library/widget/AbsHListView;->h(Lit/sephiroth/android/library/widget/AbsHListView;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 3761
    :cond_0
    iget-object v0, p0, Lit/sephiroth/android/library/widget/g;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    const/4 v1, 0x6

    iput v1, v0, Lit/sephiroth/android/library/widget/AbsHListView;->G:I

    .line 3762
    iget-object v0, p0, Lit/sephiroth/android/library/widget/g;->b:Lit/sephiroth/android/library/widget/at;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/at;->c()F

    move-result v0

    float-to-int v0, v0

    .line 3763
    if-lez p1, :cond_3

    .line 3764
    iget-object v1, p0, Lit/sephiroth/android/library/widget/g;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-static {v1}, Lit/sephiroth/android/library/widget/AbsHListView;->i(Lit/sephiroth/android/library/widget/AbsHListView;)Lit/sephiroth/android/library/widget/ac;

    move-result-object v1

    invoke-virtual {v1, v0}, Lit/sephiroth/android/library/widget/ac;->a(I)V

    .line 3774
    :cond_1
    :goto_1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/g;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/AbsHListView;->invalidate()V

    .line 3775
    iget-object v0, p0, Lit/sephiroth/android/library/widget/g;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    iget-object v0, v0, Lit/sephiroth/android/library/widget/AbsHListView;->b:Lit/sephiroth/android/library/a/b;

    invoke-virtual {v0, p0}, Lit/sephiroth/android/library/a/b;->a(Ljava/lang/Runnable;)V

    .line 3776
    return-void

    .line 3759
    :cond_2
    const/4 v0, 0x2

    goto :goto_0

    .line 3766
    :cond_3
    iget-object v1, p0, Lit/sephiroth/android/library/widget/g;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-static {v1}, Lit/sephiroth/android/library/widget/AbsHListView;->j(Lit/sephiroth/android/library/widget/AbsHListView;)Lit/sephiroth/android/library/widget/ac;

    move-result-object v1

    invoke-virtual {v1, v0}, Lit/sephiroth/android/library/widget/ac;->a(I)V

    goto :goto_1

    .line 3769
    :cond_4
    iget-object v0, p0, Lit/sephiroth/android/library/widget/g;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    const/4 v1, -0x1

    iput v1, v0, Lit/sephiroth/android/library/widget/AbsHListView;->G:I

    .line 3770
    iget-object v0, p0, Lit/sephiroth/android/library/widget/g;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    iget-object v0, v0, Lit/sephiroth/android/library/widget/AbsHListView;->J:Lit/sephiroth/android/library/widget/m;

    if-eqz v0, :cond_1

    .line 3771
    iget-object v0, p0, Lit/sephiroth/android/library/widget/g;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    iget-object v0, v0, Lit/sephiroth/android/library/widget/AbsHListView;->J:Lit/sephiroth/android/library/widget/m;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/m;->a()V

    goto :goto_1
.end method

.method public run()V
    .locals 13

    .prologue
    const/4 v11, 0x1

    const/4 v2, 0x0

    .line 3809
    iget-object v0, p0, Lit/sephiroth/android/library/widget/g;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    iget v0, v0, Lit/sephiroth/android/library/widget/AbsHListView;->G:I

    packed-switch v0, :pswitch_data_0

    .line 3811
    :pswitch_0
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/g;->b()V

    .line 3922
    :cond_0
    :goto_0
    return-void

    .line 3815
    :pswitch_1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/g;->b:Lit/sephiroth/android/library/widget/at;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/at;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3820
    :pswitch_2
    iget-object v0, p0, Lit/sephiroth/android/library/widget/g;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    iget-boolean v0, v0, Lit/sephiroth/android/library/widget/AbsHListView;->aj:Z

    if-eqz v0, :cond_1

    .line 3821
    iget-object v0, p0, Lit/sephiroth/android/library/widget/g;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/AbsHListView;->e()V

    .line 3824
    :cond_1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/g;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    iget v0, v0, Lit/sephiroth/android/library/widget/AbsHListView;->ao:I

    if-eqz v0, :cond_2

    iget-object v0, p0, Lit/sephiroth/android/library/widget/g;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_3

    .line 3825
    :cond_2
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/g;->b()V

    goto :goto_0

    .line 3829
    :cond_3
    iget-object v0, p0, Lit/sephiroth/android/library/widget/g;->b:Lit/sephiroth/android/library/widget/at;

    .line 3830
    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/at;->d()Z

    move-result v12

    .line 3831
    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/at;->b()I

    move-result v1

    .line 3835
    iget v0, p0, Lit/sephiroth/android/library/widget/g;->c:I

    sub-int/2addr v0, v1

    .line 3838
    if-lez v0, :cond_5

    .line 3840
    iget-object v3, p0, Lit/sephiroth/android/library/widget/g;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    iget-object v4, p0, Lit/sephiroth/android/library/widget/g;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    iget v4, v4, Lit/sephiroth/android/library/widget/AbsHListView;->W:I

    iput v4, v3, Lit/sephiroth/android/library/widget/AbsHListView;->B:I

    .line 3841
    iget-object v3, p0, Lit/sephiroth/android/library/widget/g;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v3, v2}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 3842
    iget-object v4, p0, Lit/sephiroth/android/library/widget/g;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    iput v3, v4, Lit/sephiroth/android/library/widget/AbsHListView;->C:I

    .line 3845
    iget-object v3, p0, Lit/sephiroth/android/library/widget/g;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v3}, Lit/sephiroth/android/library/widget/AbsHListView;->getWidth()I

    move-result v3

    iget-object v4, p0, Lit/sephiroth/android/library/widget/g;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v4}, Lit/sephiroth/android/library/widget/AbsHListView;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Lit/sephiroth/android/library/widget/g;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v4}, Lit/sephiroth/android/library/widget/AbsHListView;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x1

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    move v10, v0

    .line 3859
    :goto_1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/g;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    iget-object v3, p0, Lit/sephiroth/android/library/widget/g;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    iget v3, v3, Lit/sephiroth/android/library/widget/AbsHListView;->B:I

    iget-object v4, p0, Lit/sephiroth/android/library/widget/g;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    iget v4, v4, Lit/sephiroth/android/library/widget/AbsHListView;->W:I

    sub-int/2addr v3, v4

    invoke-virtual {v0, v3}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 3861
    if-eqz v3, :cond_11

    .line 3862
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v0

    .line 3866
    :goto_2
    iget-object v4, p0, Lit/sephiroth/android/library/widget/g;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v4, v10, v10}, Lit/sephiroth/android/library/widget/AbsHListView;->d(II)Z

    move-result v4

    .line 3867
    if-eqz v4, :cond_6

    if-eqz v10, :cond_6

    .line 3868
    :goto_3
    if-eqz v11, :cond_7

    .line 3869
    if-eqz v3, :cond_4

    .line 3871
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int v0, v1, v0

    sub-int v0, v10, v0

    neg-int v1, v0

    .line 3872
    invoke-static {}, Lit/sephiroth/android/library/widget/AbsHListView;->r()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3873
    iget-object v0, p0, Lit/sephiroth/android/library/widget/g;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    iget-object v3, p0, Lit/sephiroth/android/library/widget/g;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v3}, Lit/sephiroth/android/library/widget/AbsHListView;->getScrollX()I

    move-result v3

    iget-object v4, p0, Lit/sephiroth/android/library/widget/g;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    iget v7, v4, Lit/sephiroth/android/library/widget/AbsHListView;->S:I

    move v4, v2

    move v5, v2

    move v6, v2

    move v8, v2

    move v9, v2

    invoke-static/range {v0 .. v9}, Lit/sephiroth/android/library/widget/AbsHListView;->b(Lit/sephiroth/android/library/widget/AbsHListView;IIIIIIIIZ)Z

    .line 3876
    :cond_4
    if-eqz v12, :cond_0

    .line 3877
    invoke-virtual {p0, v10}, Lit/sephiroth/android/library/widget/g;->c(I)V

    goto/16 :goto_0

    .line 3848
    :cond_5
    iget-object v3, p0, Lit/sephiroth/android/library/widget/g;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v3}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .line 3849
    iget-object v4, p0, Lit/sephiroth/android/library/widget/g;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    iget-object v5, p0, Lit/sephiroth/android/library/widget/g;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    iget v5, v5, Lit/sephiroth/android/library/widget/AbsHListView;->W:I

    add-int/2addr v5, v3

    iput v5, v4, Lit/sephiroth/android/library/widget/AbsHListView;->B:I

    .line 3851
    iget-object v4, p0, Lit/sephiroth/android/library/widget/g;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v4, v3}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 3852
    iget-object v4, p0, Lit/sephiroth/android/library/widget/g;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    iput v3, v4, Lit/sephiroth/android/library/widget/AbsHListView;->C:I

    .line 3855
    iget-object v3, p0, Lit/sephiroth/android/library/widget/g;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v3}, Lit/sephiroth/android/library/widget/AbsHListView;->getWidth()I

    move-result v3

    iget-object v4, p0, Lit/sephiroth/android/library/widget/g;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v4}, Lit/sephiroth/android/library/widget/AbsHListView;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Lit/sephiroth/android/library/widget/g;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v4}, Lit/sephiroth/android/library/widget/AbsHListView;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x1

    neg-int v3, v3

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v10, v0

    goto/16 :goto_1

    :cond_6
    move v11, v2

    .line 3867
    goto :goto_3

    .line 3882
    :cond_7
    if-eqz v12, :cond_9

    if-nez v11, :cond_9

    .line 3883
    if-eqz v4, :cond_8

    iget-object v0, p0, Lit/sephiroth/android/library/widget/g;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/AbsHListView;->invalidate()V

    .line 3884
    :cond_8
    iput v1, p0, Lit/sephiroth/android/library/widget/g;->c:I

    .line 3885
    iget-object v0, p0, Lit/sephiroth/android/library/widget/g;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    iget-object v0, v0, Lit/sephiroth/android/library/widget/AbsHListView;->b:Lit/sephiroth/android/library/a/b;

    invoke-virtual {v0, p0}, Lit/sephiroth/android/library/a/b;->a(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 3887
    :cond_9
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/g;->b()V

    goto/16 :goto_0

    .line 3894
    :pswitch_3
    iget-object v10, p0, Lit/sephiroth/android/library/widget/g;->b:Lit/sephiroth/android/library/widget/at;

    .line 3895
    invoke-virtual {v10}, Lit/sephiroth/android/library/widget/at;->d()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 3896
    iget-object v0, p0, Lit/sephiroth/android/library/widget/g;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/AbsHListView;->getScrollX()I

    move-result v3

    .line 3897
    invoke-virtual {v10}, Lit/sephiroth/android/library/widget/at;->b()I

    move-result v12

    .line 3898
    sub-int v1, v12, v3

    .line 3899
    invoke-static {}, Lit/sephiroth/android/library/widget/AbsHListView;->r()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lit/sephiroth/android/library/widget/g;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    iget-object v4, p0, Lit/sephiroth/android/library/widget/g;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    iget v7, v4, Lit/sephiroth/android/library/widget/AbsHListView;->S:I

    move v4, v2

    move v5, v2

    move v6, v2

    move v8, v2

    move v9, v2

    invoke-static/range {v0 .. v9}, Lit/sephiroth/android/library/widget/AbsHListView;->c(Lit/sephiroth/android/library/widget/AbsHListView;IIIIIIIIZ)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 3900
    if-gtz v3, :cond_d

    if-lez v12, :cond_d

    move v0, v11

    .line 3901
    :goto_4
    if-ltz v3, :cond_a

    if-gez v12, :cond_a

    move v2, v11

    .line 3902
    :cond_a
    if-nez v0, :cond_b

    if-eqz v2, :cond_e

    .line 3903
    :cond_b
    invoke-virtual {v10}, Lit/sephiroth/android/library/widget/at;->c()F

    move-result v0

    float-to-int v0, v0

    .line 3904
    if-eqz v2, :cond_c

    neg-int v0, v0

    .line 3907
    :cond_c
    invoke-virtual {v10}, Lit/sephiroth/android/library/widget/at;->e()V

    .line 3908
    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/g;->a(I)V

    goto/16 :goto_0

    :cond_d
    move v0, v2

    .line 3900
    goto :goto_4

    .line 3910
    :cond_e
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/g;->a()V

    goto/16 :goto_0

    .line 3913
    :cond_f
    iget-object v0, p0, Lit/sephiroth/android/library/widget/g;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/AbsHListView;->invalidate()V

    .line 3914
    iget-object v0, p0, Lit/sephiroth/android/library/widget/g;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    iget-object v0, v0, Lit/sephiroth/android/library/widget/AbsHListView;->b:Lit/sephiroth/android/library/a/b;

    invoke-virtual {v0, p0}, Lit/sephiroth/android/library/a/b;->a(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 3917
    :cond_10
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/g;->b()V

    goto/16 :goto_0

    :cond_11
    move v0, v2

    goto/16 :goto_2

    .line 3809
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
