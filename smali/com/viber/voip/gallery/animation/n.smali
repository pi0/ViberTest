.class Lcom/viber/voip/gallery/animation/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nineoldandroids/animation/Animator$AnimatorListener;


# instance fields
.field final synthetic a:[Landroid/view/View;

.field final synthetic b:Lcom/viber/voip/gallery/animation/m;


# direct methods
.method constructor <init>(Lcom/viber/voip/gallery/animation/m;[Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 254
    iput-object p1, p0, Lcom/viber/voip/gallery/animation/n;->b:Lcom/viber/voip/gallery/animation/m;

    iput-object p2, p0, Lcom/viber/voip/gallery/animation/n;->a:[Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Lcom/nineoldandroids/animation/Animator;)V
    .locals 0
    .parameter

    .prologue
    .line 257
    return-void
.end method

.method public onAnimationEnd(Lcom/nineoldandroids/animation/Animator;)V
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 260
    iget-object v0, p0, Lcom/viber/voip/gallery/animation/n;->b:Lcom/viber/voip/gallery/animation/m;

    iget-boolean v0, v0, Lcom/viber/voip/gallery/animation/m;->e:Z

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/viber/voip/gallery/animation/n;->b:Lcom/viber/voip/gallery/animation/m;

    iget-object v0, v0, Lcom/viber/voip/gallery/animation/m;->i:Lcom/viber/voip/gallery/animation/SwipeableHorizontalScrollView;

    invoke-virtual {v0, v1, v1}, Lcom/viber/voip/gallery/animation/SwipeableHorizontalScrollView;->smoothScrollTo(II)V

    .line 262
    iget-object v0, p0, Lcom/viber/voip/gallery/animation/n;->b:Lcom/viber/voip/gallery/animation/m;

    iget-object v0, v0, Lcom/viber/voip/gallery/animation/m;->i:Lcom/viber/voip/gallery/animation/SwipeableHorizontalScrollView;

    new-instance v1, Lcom/viber/voip/gallery/animation/o;

    invoke-direct {v1, p0}, Lcom/viber/voip/gallery/animation/o;-><init>(Lcom/viber/voip/gallery/animation/n;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcom/viber/voip/gallery/animation/SwipeableHorizontalScrollView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 274
    :goto_0
    return-void

    .line 269
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/gallery/animation/n;->b:Lcom/viber/voip/gallery/animation/m;

    iget v0, v0, Lcom/viber/voip/gallery/animation/m;->b:I

    if-nez v0, :cond_1

    .line 270
    iget-object v0, p0, Lcom/viber/voip/gallery/animation/n;->b:Lcom/viber/voip/gallery/animation/m;

    iget-object v0, v0, Lcom/viber/voip/gallery/animation/m;->i:Lcom/viber/voip/gallery/animation/SwipeableHorizontalScrollView;

    invoke-virtual {v0, v1, v1}, Lcom/viber/voip/gallery/animation/SwipeableHorizontalScrollView;->scrollTo(II)V

    .line 272
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/gallery/animation/n;->b:Lcom/viber/voip/gallery/animation/m;

    iget-object v0, v0, Lcom/viber/voip/gallery/animation/m;->i:Lcom/viber/voip/gallery/animation/SwipeableHorizontalScrollView;

    iget-object v1, p0, Lcom/viber/voip/gallery/animation/n;->b:Lcom/viber/voip/gallery/animation/m;

    iget-object v1, v1, Lcom/viber/voip/gallery/animation/m;->f:Lcom/viber/voip/gallery/animation/x;

    iget-object v2, p0, Lcom/viber/voip/gallery/animation/n;->b:Lcom/viber/voip/gallery/animation/m;

    iget v2, v2, Lcom/viber/voip/gallery/animation/m;->g:I

    iget-object v3, p0, Lcom/viber/voip/gallery/animation/n;->b:Lcom/viber/voip/gallery/animation/m;

    iget-object v3, v3, Lcom/viber/voip/gallery/animation/m;->c:Landroid/view/View;

    iget-object v4, p0, Lcom/viber/voip/gallery/animation/n;->b:Lcom/viber/voip/gallery/animation/m;

    iget v4, v4, Lcom/viber/voip/gallery/animation/m;->b:I

    iget-object v5, p0, Lcom/viber/voip/gallery/animation/n;->a:[Landroid/view/View;

    invoke-static/range {v0 .. v5}, Lcom/viber/voip/gallery/animation/SwipeableHorizontalScrollView;->a(Lcom/viber/voip/gallery/animation/SwipeableHorizontalScrollView;Lcom/viber/voip/gallery/animation/x;ILandroid/view/View;I[Landroid/view/View;)V

    goto :goto_0
.end method

.method public onAnimationRepeat(Lcom/nineoldandroids/animation/Animator;)V
    .locals 0
    .parameter

    .prologue
    .line 256
    return-void
.end method

.method public onAnimationStart(Lcom/nineoldandroids/animation/Animator;)V
    .locals 0
    .parameter

    .prologue
    .line 255
    return-void
.end method
