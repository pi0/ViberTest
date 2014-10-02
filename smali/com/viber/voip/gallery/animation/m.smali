.class Lcom/viber/voip/gallery/animation/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field final synthetic a:Z

.field final synthetic b:I

.field final synthetic c:Landroid/view/View;

.field final synthetic d:I

.field final synthetic e:Z

.field final synthetic f:Lcom/viber/voip/gallery/animation/x;

.field final synthetic g:I

.field final synthetic h:I

.field final synthetic i:Lcom/viber/voip/gallery/animation/SwipeableHorizontalScrollView;


# direct methods
.method constructor <init>(Lcom/viber/voip/gallery/animation/SwipeableHorizontalScrollView;ZILandroid/view/View;IZLcom/viber/voip/gallery/animation/x;II)V
    .locals 0
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
    .line 229
    iput-object p1, p0, Lcom/viber/voip/gallery/animation/m;->i:Lcom/viber/voip/gallery/animation/SwipeableHorizontalScrollView;

    iput-boolean p2, p0, Lcom/viber/voip/gallery/animation/m;->a:Z

    iput p3, p0, Lcom/viber/voip/gallery/animation/m;->b:I

    iput-object p4, p0, Lcom/viber/voip/gallery/animation/m;->c:Landroid/view/View;

    iput p5, p0, Lcom/viber/voip/gallery/animation/m;->d:I

    iput-boolean p6, p0, Lcom/viber/voip/gallery/animation/m;->e:Z

    iput-object p7, p0, Lcom/viber/voip/gallery/animation/m;->f:Lcom/viber/voip/gallery/animation/x;

    iput p8, p0, Lcom/viber/voip/gallery/animation/m;->g:I

    iput p9, p0, Lcom/viber/voip/gallery/animation/m;->h:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 14

    .prologue
    const-wide/16 v12, 0x96

    const/4 v11, 0x1

    const/4 v6, 0x0

    .line 232
    iget-object v0, p0, Lcom/viber/voip/gallery/animation/m;->i:Lcom/viber/voip/gallery/animation/SwipeableHorizontalScrollView;

    invoke-static {v0}, Lcom/viber/voip/gallery/animation/SwipeableHorizontalScrollView;->a(Lcom/viber/voip/gallery/animation/SwipeableHorizontalScrollView;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 233
    iget-boolean v0, p0, Lcom/viber/voip/gallery/animation/m;->a:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/viber/voip/gallery/animation/m;->b:I

    move v3, v0

    .line 234
    :goto_0
    if-lez v3, :cond_4

    .line 235
    new-array v4, v3, [Lcom/nineoldandroids/animation/ObjectAnimator;

    .line 236
    new-array v5, v3, [Landroid/view/View;

    .line 238
    iget-boolean v0, p0, Lcom/viber/voip/gallery/animation/m;->a:Z

    if-eqz v0, :cond_1

    move v0, v6

    move v1, v6

    .line 239
    :goto_1
    if-ge v0, v3, :cond_3

    .line 240
    iget-object v2, p0, Lcom/viber/voip/gallery/animation/m;->i:Lcom/viber/voip/gallery/animation/SwipeableHorizontalScrollView;

    invoke-static {v2}, Lcom/viber/voip/gallery/animation/SwipeableHorizontalScrollView;->a(Lcom/viber/voip/gallery/animation/SwipeableHorizontalScrollView;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 241
    aput-object v7, v5, v1

    .line 242
    add-int/lit8 v2, v1, 0x1

    const-string/jumbo v8, "translationX"

    new-array v9, v11, [F

    iget-object v10, p0, Lcom/viber/voip/gallery/animation/m;->c:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    move-result v10

    int-to-float v10, v10

    aput v10, v9, v6

    invoke-static {v7, v8, v9}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v7

    invoke-virtual {v7, v12, v13}, Lcom/nineoldandroids/animation/ObjectAnimator;->setDuration(J)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v7

    aput-object v7, v4, v1

    .line 239
    add-int/lit8 v0, v0, 0x1

    move v1, v2

    goto :goto_1

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/gallery/animation/m;->i:Lcom/viber/voip/gallery/animation/SwipeableHorizontalScrollView;

    invoke-static {v0}, Lcom/viber/voip/gallery/animation/SwipeableHorizontalScrollView;->a(Lcom/viber/voip/gallery/animation/SwipeableHorizontalScrollView;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    iget v1, p0, Lcom/viber/voip/gallery/animation/m;->b:I

    add-int/lit8 v1, v1, 0x1

    sub-int/2addr v0, v1

    move v3, v0

    goto :goto_0

    .line 245
    :cond_1
    iget v0, p0, Lcom/viber/voip/gallery/animation/m;->b:I

    add-int/lit8 v0, v0, 0x1

    move v1, v6

    :goto_2
    iget-object v2, p0, Lcom/viber/voip/gallery/animation/m;->i:Lcom/viber/voip/gallery/animation/SwipeableHorizontalScrollView;

    invoke-static {v2}, Lcom/viber/voip/gallery/animation/SwipeableHorizontalScrollView;->a(Lcom/viber/voip/gallery/animation/SwipeableHorizontalScrollView;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 246
    iget-object v2, p0, Lcom/viber/voip/gallery/animation/m;->i:Lcom/viber/voip/gallery/animation/SwipeableHorizontalScrollView;

    invoke-static {v2}, Lcom/viber/voip/gallery/animation/SwipeableHorizontalScrollView;->a(Lcom/viber/voip/gallery/animation/SwipeableHorizontalScrollView;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 247
    aput-object v7, v5, v1

    .line 248
    add-int/lit8 v2, v1, 0x1

    const-string/jumbo v8, "translationX"

    new-array v9, v11, [F

    iget v3, p0, Lcom/viber/voip/gallery/animation/m;->d:I

    const/4 v10, -0x1

    if-ne v3, v10, :cond_2

    iget-object v3, p0, Lcom/viber/voip/gallery/animation/m;->c:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    :goto_3
    aput v3, v9, v6

    invoke-static {v7, v8, v9}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v3, v12, v13}, Lcom/nineoldandroids/animation/ObjectAnimator;->setDuration(J)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v4, v1

    .line 245
    add-int/lit8 v0, v0, 0x1

    move v1, v2

    goto :goto_2

    .line 248
    :cond_2
    iget v3, p0, Lcom/viber/voip/gallery/animation/m;->d:I

    neg-int v3, v3

    int-to-float v3, v3

    goto :goto_3

    .line 251
    :cond_3
    new-instance v0, Lcom/nineoldandroids/animation/AnimatorSet;

    invoke-direct {v0}, Lcom/nineoldandroids/animation/AnimatorSet;-><init>()V

    .line 252
    invoke-virtual {v0, v4}, Lcom/nineoldandroids/animation/AnimatorSet;->playTogether([Lcom/nineoldandroids/animation/Animator;)V

    .line 253
    invoke-virtual {v0}, Lcom/nineoldandroids/animation/AnimatorSet;->start()V

    .line 254
    new-instance v1, Lcom/viber/voip/gallery/animation/n;

    invoke-direct {v1, p0, v5}, Lcom/viber/voip/gallery/animation/n;-><init>(Lcom/viber/voip/gallery/animation/m;[Landroid/view/View;)V

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/animation/AnimatorSet;->addListener(Lcom/nineoldandroids/animation/Animator$AnimatorListener;)V

    .line 289
    :goto_4
    return v6

    .line 277
    :cond_4
    iget v0, p0, Lcom/viber/voip/gallery/animation/m;->b:I

    iget-object v1, p0, Lcom/viber/voip/gallery/animation/m;->i:Lcom/viber/voip/gallery/animation/SwipeableHorizontalScrollView;

    invoke-static {v1}, Lcom/viber/voip/gallery/animation/SwipeableHorizontalScrollView;->a(Lcom/viber/voip/gallery/animation/SwipeableHorizontalScrollView;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_5

    .line 278
    iget-object v0, p0, Lcom/viber/voip/gallery/animation/m;->i:Lcom/viber/voip/gallery/animation/SwipeableHorizontalScrollView;

    iget v1, p0, Lcom/viber/voip/gallery/animation/m;->h:I

    neg-int v1, v1

    invoke-virtual {v0, v1, v6}, Lcom/viber/voip/gallery/animation/SwipeableHorizontalScrollView;->smoothScrollBy(II)V

    .line 279
    iget-object v0, p0, Lcom/viber/voip/gallery/animation/m;->i:Lcom/viber/voip/gallery/animation/SwipeableHorizontalScrollView;

    new-instance v1, Lcom/viber/voip/gallery/animation/p;

    invoke-direct {v1, p0}, Lcom/viber/voip/gallery/animation/p;-><init>(Lcom/viber/voip/gallery/animation/m;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcom/viber/voip/gallery/animation/SwipeableHorizontalScrollView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_4

    .line 286
    :cond_5
    iget-object v0, p0, Lcom/viber/voip/gallery/animation/m;->i:Lcom/viber/voip/gallery/animation/SwipeableHorizontalScrollView;

    iget-object v1, p0, Lcom/viber/voip/gallery/animation/m;->f:Lcom/viber/voip/gallery/animation/x;

    iget v2, p0, Lcom/viber/voip/gallery/animation/m;->g:I

    iget-object v3, p0, Lcom/viber/voip/gallery/animation/m;->c:Landroid/view/View;

    iget v4, p0, Lcom/viber/voip/gallery/animation/m;->b:I

    new-array v5, v6, [Landroid/view/View;

    invoke-static/range {v0 .. v5}, Lcom/viber/voip/gallery/animation/SwipeableHorizontalScrollView;->a(Lcom/viber/voip/gallery/animation/SwipeableHorizontalScrollView;Lcom/viber/voip/gallery/animation/x;ILandroid/view/View;I[Landroid/view/View;)V

    goto :goto_4
.end method
