.class Lcom/viber/voip/gallery/animation/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nineoldandroids/animation/Animator$AnimatorListener;


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Landroid/view/View;

.field final synthetic d:Landroid/view/View;

.field final synthetic e:Lcom/viber/voip/gallery/animation/x;

.field final synthetic f:Lcom/viber/voip/gallery/animation/d;


# direct methods
.method constructor <init>(Lcom/viber/voip/gallery/animation/d;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Lcom/viber/voip/gallery/animation/x;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 156
    iput-object p1, p0, Lcom/viber/voip/gallery/animation/g;->f:Lcom/viber/voip/gallery/animation/d;

    iput-object p2, p0, Lcom/viber/voip/gallery/animation/g;->a:Landroid/view/View;

    iput-object p3, p0, Lcom/viber/voip/gallery/animation/g;->b:Landroid/view/View;

    iput-object p4, p0, Lcom/viber/voip/gallery/animation/g;->c:Landroid/view/View;

    iput-object p5, p0, Lcom/viber/voip/gallery/animation/g;->d:Landroid/view/View;

    iput-object p6, p0, Lcom/viber/voip/gallery/animation/g;->e:Lcom/viber/voip/gallery/animation/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Lcom/nineoldandroids/animation/Animator;)V
    .locals 0
    .parameter

    .prologue
    .line 159
    return-void
.end method

.method public onAnimationEnd(Lcom/nineoldandroids/animation/Animator;)V
    .locals 4
    .parameter

    .prologue
    const/high16 v1, 0x3f80

    .line 162
    iget-object v0, p0, Lcom/viber/voip/gallery/animation/g;->a:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/nineoldandroids/view/ViewHelper;->setAlpha(Landroid/view/View;F)V

    .line 163
    iget-object v0, p0, Lcom/viber/voip/gallery/animation/g;->b:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/nineoldandroids/view/ViewHelper;->setAlpha(Landroid/view/View;F)V

    .line 164
    iget-object v0, p0, Lcom/viber/voip/gallery/animation/g;->c:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/nineoldandroids/view/ViewHelper;->setAlpha(Landroid/view/View;F)V

    .line 165
    invoke-static {}, Lcom/viber/voip/util/gl;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/viber/voip/gallery/animation/g;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/gallery/animation/g;->a:Landroid/view/View;

    new-instance v1, Lcom/viber/voip/gallery/animation/h;

    invoke-direct {v1, p0}, Lcom/viber/voip/gallery/animation/h;-><init>(Lcom/viber/voip/gallery/animation/g;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    iget-object v0, p0, Lcom/viber/voip/gallery/animation/g;->e:Lcom/viber/voip/gallery/animation/x;

    invoke-interface {v0}, Lcom/viber/voip/gallery/animation/x;->a()V

    .line 181
    iget-object v0, p0, Lcom/viber/voip/gallery/animation/g;->f:Lcom/viber/voip/gallery/animation/d;

    new-instance v1, Lcom/viber/voip/gallery/animation/i;

    invoke-direct {v1, p0}, Lcom/viber/voip/gallery/animation/i;-><init>(Lcom/viber/voip/gallery/animation/g;)V

    invoke-static {v0, v1}, Lcom/viber/voip/gallery/animation/d;->a(Lcom/viber/voip/gallery/animation/d;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 189
    iget-object v0, p0, Lcom/viber/voip/gallery/animation/g;->f:Lcom/viber/voip/gallery/animation/d;

    invoke-static {v0}, Lcom/viber/voip/gallery/animation/d;->e(Lcom/viber/voip/gallery/animation/d;)Lcom/viber/voip/messages/ui/view/ViewPagerWithPagingEnable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/ui/view/ViewPagerWithPagingEnable;->requestDisallowInterceptTouchEvent(Z)V

    .line 190
    iget-object v0, p0, Lcom/viber/voip/gallery/animation/g;->f:Lcom/viber/voip/gallery/animation/d;

    invoke-static {v0}, Lcom/viber/voip/gallery/animation/d;->e(Lcom/viber/voip/gallery/animation/d;)Lcom/viber/voip/messages/ui/view/ViewPagerWithPagingEnable;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/ui/view/ViewPagerWithPagingEnable;->setPagingEnabled(Z)V

    .line 191
    iget-object v0, p0, Lcom/viber/voip/gallery/animation/g;->f:Lcom/viber/voip/gallery/animation/d;

    invoke-static {v0}, Lcom/viber/voip/gallery/animation/d;->c(Lcom/viber/voip/gallery/animation/d;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/gallery/animation/g;->f:Lcom/viber/voip/gallery/animation/d;

    invoke-static {v1}, Lcom/viber/voip/gallery/animation/d;->d(Lcom/viber/voip/gallery/animation/d;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 192
    iget-object v0, p0, Lcom/viber/voip/gallery/animation/g;->f:Lcom/viber/voip/gallery/animation/d;

    invoke-static {v0}, Lcom/viber/voip/gallery/animation/d;->c(Lcom/viber/voip/gallery/animation/d;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/gallery/animation/g;->f:Lcom/viber/voip/gallery/animation/d;

    invoke-static {v1}, Lcom/viber/voip/gallery/animation/d;->b(Lcom/viber/voip/gallery/animation/d;)Lcom/viber/voip/gallery/animation/s;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 193
    return-void
.end method

.method public onAnimationRepeat(Lcom/nineoldandroids/animation/Animator;)V
    .locals 0
    .parameter

    .prologue
    .line 158
    return-void
.end method

.method public onAnimationStart(Lcom/nineoldandroids/animation/Animator;)V
    .locals 0
    .parameter

    .prologue
    .line 157
    return-void
.end method
