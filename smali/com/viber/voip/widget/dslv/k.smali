.class Lcom/viber/voip/widget/dslv/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/widget/dslv/DragSortListView;

.field private b:Z

.field private c:J

.field private d:J

.field private e:I

.field private f:F

.field private g:J

.field private h:I

.field private i:F

.field private j:Z


# direct methods
.method public constructor <init>(Lcom/viber/voip/widget/dslv/DragSortListView;)V
    .locals 1
    .parameter

    .prologue
    .line 2866
    iput-object p1, p0, Lcom/viber/voip/widget/dslv/k;->a:Lcom/viber/voip/widget/dslv/DragSortListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2853
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/viber/voip/widget/dslv/k;->j:Z

    .line 2867
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2
    .parameter

    .prologue
    .line 2870
    iget-boolean v0, p0, Lcom/viber/voip/widget/dslv/k;->j:Z

    if-nez v0, :cond_0

    .line 2872
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/viber/voip/widget/dslv/k;->b:Z

    .line 2873
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/viber/voip/widget/dslv/k;->j:Z

    .line 2874
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/viber/voip/widget/dslv/k;->g:J

    .line 2875
    iget-wide v0, p0, Lcom/viber/voip/widget/dslv/k;->g:J

    iput-wide v0, p0, Lcom/viber/voip/widget/dslv/k;->c:J

    .line 2876
    iput p1, p0, Lcom/viber/voip/widget/dslv/k;->h:I

    .line 2877
    iget-object v0, p0, Lcom/viber/voip/widget/dslv/k;->a:Lcom/viber/voip/widget/dslv/DragSortListView;

    invoke-virtual {v0, p0}, Lcom/viber/voip/widget/dslv/DragSortListView;->post(Ljava/lang/Runnable;)Z

    .line 2879
    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 1
    .parameter

    .prologue
    .line 2882
    if-eqz p1, :cond_0

    .line 2883
    iget-object v0, p0, Lcom/viber/voip/widget/dslv/k;->a:Lcom/viber/voip/widget/dslv/DragSortListView;

    invoke-virtual {v0, p0}, Lcom/viber/voip/widget/dslv/DragSortListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2884
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/viber/voip/widget/dslv/k;->j:Z

    .line 2890
    :goto_0
    return-void

    .line 2886
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/viber/voip/widget/dslv/k;->b:Z

    goto :goto_0
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 2859
    iget-boolean v0, p0, Lcom/viber/voip/widget/dslv/k;->j:Z

    return v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 2863
    iget-boolean v0, p0, Lcom/viber/voip/widget/dslv/k;->j:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/viber/voip/widget/dslv/k;->h:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 2894
    iget-boolean v0, p0, Lcom/viber/voip/widget/dslv/k;->b:Z

    if-eqz v0, :cond_0

    .line 2895
    iput-boolean v9, p0, Lcom/viber/voip/widget/dslv/k;->j:Z

    .line 2980
    :goto_0
    return-void

    .line 2901
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/widget/dslv/k;->a:Lcom/viber/voip/widget/dslv/DragSortListView;

    invoke-virtual {v0}, Lcom/viber/voip/widget/dslv/DragSortListView;->getFirstVisiblePosition()I

    move-result v1

    .line 2902
    iget-object v0, p0, Lcom/viber/voip/widget/dslv/k;->a:Lcom/viber/voip/widget/dslv/DragSortListView;

    invoke-virtual {v0}, Lcom/viber/voip/widget/dslv/DragSortListView;->getLastVisiblePosition()I

    move-result v0

    .line 2903
    iget-object v2, p0, Lcom/viber/voip/widget/dslv/k;->a:Lcom/viber/voip/widget/dslv/DragSortListView;

    invoke-virtual {v2}, Lcom/viber/voip/widget/dslv/DragSortListView;->getCount()I

    move-result v3

    .line 2904
    iget-object v2, p0, Lcom/viber/voip/widget/dslv/k;->a:Lcom/viber/voip/widget/dslv/DragSortListView;

    invoke-virtual {v2}, Lcom/viber/voip/widget/dslv/DragSortListView;->getPaddingTop()I

    move-result v2

    .line 2905
    iget-object v4, p0, Lcom/viber/voip/widget/dslv/k;->a:Lcom/viber/voip/widget/dslv/DragSortListView;

    invoke-virtual {v4}, Lcom/viber/voip/widget/dslv/DragSortListView;->getHeight()I

    move-result v4

    sub-int/2addr v4, v2

    iget-object v5, p0, Lcom/viber/voip/widget/dslv/k;->a:Lcom/viber/voip/widget/dslv/DragSortListView;

    invoke-virtual {v5}, Lcom/viber/voip/widget/dslv/DragSortListView;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    .line 2907
    iget-object v5, p0, Lcom/viber/voip/widget/dslv/k;->a:Lcom/viber/voip/widget/dslv/DragSortListView;

    invoke-static {v5}, Lcom/viber/voip/widget/dslv/DragSortListView;->f(Lcom/viber/voip/widget/dslv/DragSortListView;)I

    move-result v5

    iget-object v6, p0, Lcom/viber/voip/widget/dslv/k;->a:Lcom/viber/voip/widget/dslv/DragSortListView;

    invoke-static {v6}, Lcom/viber/voip/widget/dslv/DragSortListView;->r(Lcom/viber/voip/widget/dslv/DragSortListView;)I

    move-result v6

    iget-object v7, p0, Lcom/viber/voip/widget/dslv/k;->a:Lcom/viber/voip/widget/dslv/DragSortListView;

    invoke-static {v7}, Lcom/viber/voip/widget/dslv/DragSortListView;->d(Lcom/viber/voip/widget/dslv/DragSortListView;)I

    move-result v7

    add-int/2addr v6, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 2908
    iget-object v6, p0, Lcom/viber/voip/widget/dslv/k;->a:Lcom/viber/voip/widget/dslv/DragSortListView;

    invoke-static {v6}, Lcom/viber/voip/widget/dslv/DragSortListView;->f(Lcom/viber/voip/widget/dslv/DragSortListView;)I

    move-result v6

    iget-object v7, p0, Lcom/viber/voip/widget/dslv/k;->a:Lcom/viber/voip/widget/dslv/DragSortListView;

    invoke-static {v7}, Lcom/viber/voip/widget/dslv/DragSortListView;->r(Lcom/viber/voip/widget/dslv/DragSortListView;)I

    move-result v7

    iget-object v8, p0, Lcom/viber/voip/widget/dslv/k;->a:Lcom/viber/voip/widget/dslv/DragSortListView;

    invoke-static {v8}, Lcom/viber/voip/widget/dslv/DragSortListView;->d(Lcom/viber/voip/widget/dslv/DragSortListView;)I

    move-result v8

    sub-int/2addr v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 2910
    iget v7, p0, Lcom/viber/voip/widget/dslv/k;->h:I

    if-nez v7, :cond_4

    .line 2911
    iget-object v3, p0, Lcom/viber/voip/widget/dslv/k;->a:Lcom/viber/voip/widget/dslv/DragSortListView;

    invoke-virtual {v3, v9}, Lcom/viber/voip/widget/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2913
    if-nez v3, :cond_1

    .line 2914
    iput-boolean v9, p0, Lcom/viber/voip/widget/dslv/k;->j:Z

    goto :goto_0

    .line 2917
    :cond_1
    if-nez v1, :cond_2

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    if-ne v3, v2, :cond_2

    .line 2918
    iput-boolean v9, p0, Lcom/viber/voip/widget/dslv/k;->j:Z

    goto :goto_0

    .line 2922
    :cond_2
    iget-object v3, p0, Lcom/viber/voip/widget/dslv/k;->a:Lcom/viber/voip/widget/dslv/DragSortListView;

    invoke-static {v3}, Lcom/viber/voip/widget/dslv/DragSortListView;->u(Lcom/viber/voip/widget/dslv/DragSortListView;)Lcom/viber/voip/widget/dslv/j;

    move-result-object v3

    iget-object v5, p0, Lcom/viber/voip/widget/dslv/k;->a:Lcom/viber/voip/widget/dslv/DragSortListView;

    invoke-static {v5}, Lcom/viber/voip/widget/dslv/DragSortListView;->s(Lcom/viber/voip/widget/dslv/DragSortListView;)F

    move-result v5

    int-to-float v6, v6

    sub-float/2addr v5, v6

    iget-object v6, p0, Lcom/viber/voip/widget/dslv/k;->a:Lcom/viber/voip/widget/dslv/DragSortListView;

    invoke-static {v6}, Lcom/viber/voip/widget/dslv/DragSortListView;->t(Lcom/viber/voip/widget/dslv/DragSortListView;)F

    move-result v6

    div-float/2addr v5, v6

    iget-wide v6, p0, Lcom/viber/voip/widget/dslv/k;->c:J

    invoke-interface {v3, v5, v6, v7}, Lcom/viber/voip/widget/dslv/j;->a(FJ)F

    move-result v3

    iput v3, p0, Lcom/viber/voip/widget/dslv/k;->i:F

    .line 2939
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/viber/voip/widget/dslv/k;->d:J

    .line 2940
    iget-wide v5, p0, Lcom/viber/voip/widget/dslv/k;->d:J

    iget-wide v7, p0, Lcom/viber/voip/widget/dslv/k;->c:J

    sub-long/2addr v5, v7

    long-to-float v3, v5

    iput v3, p0, Lcom/viber/voip/widget/dslv/k;->f:F

    .line 2946
    iget v3, p0, Lcom/viber/voip/widget/dslv/k;->i:F

    iget v5, p0, Lcom/viber/voip/widget/dslv/k;->f:F

    mul-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, p0, Lcom/viber/voip/widget/dslv/k;->e:I

    .line 2949
    iget v3, p0, Lcom/viber/voip/widget/dslv/k;->e:I

    if-ltz v3, :cond_7

    .line 2950
    iget v0, p0, Lcom/viber/voip/widget/dslv/k;->e:I

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/widget/dslv/k;->e:I

    move v0, v1

    .line 2957
    :goto_2
    iget-object v3, p0, Lcom/viber/voip/widget/dslv/k;->a:Lcom/viber/voip/widget/dslv/DragSortListView;

    sub-int v1, v0, v1

    invoke-virtual {v3, v1}, Lcom/viber/voip/widget/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2958
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v1

    iget v4, p0, Lcom/viber/voip/widget/dslv/k;->e:I

    add-int/2addr v1, v4

    .line 2960
    if-nez v0, :cond_3

    if-le v1, v2, :cond_3

    move v1, v2

    .line 2965
    :cond_3
    iget-object v4, p0, Lcom/viber/voip/widget/dslv/k;->a:Lcom/viber/voip/widget/dslv/DragSortListView;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/viber/voip/widget/dslv/DragSortListView;->b(Lcom/viber/voip/widget/dslv/DragSortListView;Z)Z

    .line 2967
    iget-object v4, p0, Lcom/viber/voip/widget/dslv/k;->a:Lcom/viber/voip/widget/dslv/DragSortListView;

    sub-int/2addr v1, v2

    invoke-virtual {v4, v0, v1}, Lcom/viber/voip/widget/dslv/DragSortListView;->setSelectionFromTop(II)V

    .line 2968
    iget-object v1, p0, Lcom/viber/voip/widget/dslv/k;->a:Lcom/viber/voip/widget/dslv/DragSortListView;

    invoke-virtual {v1}, Lcom/viber/voip/widget/dslv/DragSortListView;->layoutChildren()V

    .line 2969
    iget-object v1, p0, Lcom/viber/voip/widget/dslv/k;->a:Lcom/viber/voip/widget/dslv/DragSortListView;

    invoke-virtual {v1}, Lcom/viber/voip/widget/dslv/DragSortListView;->invalidate()V

    .line 2971
    iget-object v1, p0, Lcom/viber/voip/widget/dslv/k;->a:Lcom/viber/voip/widget/dslv/DragSortListView;

    invoke-static {v1, v9}, Lcom/viber/voip/widget/dslv/DragSortListView;->b(Lcom/viber/voip/widget/dslv/DragSortListView;Z)Z

    .line 2974
    iget-object v1, p0, Lcom/viber/voip/widget/dslv/k;->a:Lcom/viber/voip/widget/dslv/DragSortListView;

    invoke-static {v1, v0, v3, v9}, Lcom/viber/voip/widget/dslv/DragSortListView;->c(Lcom/viber/voip/widget/dslv/DragSortListView;ILandroid/view/View;Z)V

    .line 2976
    iget-wide v0, p0, Lcom/viber/voip/widget/dslv/k;->d:J

    iput-wide v0, p0, Lcom/viber/voip/widget/dslv/k;->c:J

    .line 2979
    iget-object v0, p0, Lcom/viber/voip/widget/dslv/k;->a:Lcom/viber/voip/widget/dslv/DragSortListView;

    invoke-virtual {v0, p0}, Lcom/viber/voip/widget/dslv/DragSortListView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 2925
    :cond_4
    iget-object v6, p0, Lcom/viber/voip/widget/dslv/k;->a:Lcom/viber/voip/widget/dslv/DragSortListView;

    sub-int v7, v0, v1

    invoke-virtual {v6, v7}, Lcom/viber/voip/widget/dslv/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 2926
    if-nez v6, :cond_5

    .line 2927
    iput-boolean v9, p0, Lcom/viber/voip/widget/dslv/k;->j:Z

    goto/16 :goto_0

    .line 2930
    :cond_5
    add-int/lit8 v3, v3, -0x1

    if-ne v0, v3, :cond_6

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v3

    add-int v6, v4, v2

    if-gt v3, v6, :cond_6

    .line 2931
    iput-boolean v9, p0, Lcom/viber/voip/widget/dslv/k;->j:Z

    goto/16 :goto_0

    .line 2935
    :cond_6
    iget-object v3, p0, Lcom/viber/voip/widget/dslv/k;->a:Lcom/viber/voip/widget/dslv/DragSortListView;

    invoke-static {v3}, Lcom/viber/voip/widget/dslv/DragSortListView;->u(Lcom/viber/voip/widget/dslv/DragSortListView;)Lcom/viber/voip/widget/dslv/j;

    move-result-object v3

    int-to-float v5, v5

    iget-object v6, p0, Lcom/viber/voip/widget/dslv/k;->a:Lcom/viber/voip/widget/dslv/DragSortListView;

    invoke-static {v6}, Lcom/viber/voip/widget/dslv/DragSortListView;->v(Lcom/viber/voip/widget/dslv/DragSortListView;)F

    move-result v6

    sub-float/2addr v5, v6

    iget-object v6, p0, Lcom/viber/voip/widget/dslv/k;->a:Lcom/viber/voip/widget/dslv/DragSortListView;

    invoke-static {v6}, Lcom/viber/voip/widget/dslv/DragSortListView;->w(Lcom/viber/voip/widget/dslv/DragSortListView;)F

    move-result v6

    div-float/2addr v5, v6

    iget-wide v6, p0, Lcom/viber/voip/widget/dslv/k;->c:J

    invoke-interface {v3, v5, v6, v7}, Lcom/viber/voip/widget/dslv/j;->a(FJ)F

    move-result v3

    neg-float v3, v3

    iput v3, p0, Lcom/viber/voip/widget/dslv/k;->i:F

    goto/16 :goto_1

    .line 2953
    :cond_7
    neg-int v3, v4

    iget v4, p0, Lcom/viber/voip/widget/dslv/k;->e:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lcom/viber/voip/widget/dslv/k;->e:I

    goto/16 :goto_2
.end method
