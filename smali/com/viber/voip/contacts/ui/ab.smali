.class Lcom/viber/voip/contacts/ui/ab;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nineoldandroids/animation/Animator$AnimatorListener;


# instance fields
.field final synthetic a:Lcom/viber/voip/contacts/ui/aa;


# direct methods
.method constructor <init>(Lcom/viber/voip/contacts/ui/aa;)V
    .locals 0
    .parameter

    .prologue
    .line 1480
    iput-object p1, p0, Lcom/viber/voip/contacts/ui/ab;->a:Lcom/viber/voip/contacts/ui/aa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Lcom/nineoldandroids/animation/Animator;)V
    .locals 0
    .parameter

    .prologue
    .line 1505
    return-void
.end method

.method public onAnimationEnd(Lcom/nineoldandroids/animation/Animator;)V
    .locals 3
    .parameter

    .prologue
    .line 1488
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ab;->a:Lcom/viber/voip/contacts/ui/aa;

    invoke-static {v0}, Lcom/viber/voip/contacts/ui/aa;->c(Lcom/viber/voip/contacts/ui/aa;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/contacts/ui/ab;->a:Lcom/viber/voip/contacts/ui/aa;

    invoke-static {v1}, Lcom/viber/voip/contacts/ui/aa;->b(Lcom/viber/voip/contacts/ui/aa;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1490
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ab;->a:Lcom/viber/voip/contacts/ui/aa;

    invoke-static {v0}, Lcom/viber/voip/contacts/ui/aa;->d(Lcom/viber/voip/contacts/ui/aa;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 1491
    iget-object v1, p0, Lcom/viber/voip/contacts/ui/ab;->a:Lcom/viber/voip/contacts/ui/aa;

    invoke-static {v1}, Lcom/viber/voip/contacts/ui/aa;->e(Lcom/viber/voip/contacts/ui/aa;)Landroid/view/ViewGroup;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/contacts/ui/ab;->a:Lcom/viber/voip/contacts/ui/aa;

    invoke-static {v2}, Lcom/viber/voip/contacts/ui/aa;->d(Lcom/viber/voip/contacts/ui/aa;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1492
    iget-object v1, p0, Lcom/viber/voip/contacts/ui/ab;->a:Lcom/viber/voip/contacts/ui/aa;

    invoke-static {v1}, Lcom/viber/voip/contacts/ui/aa;->f(Lcom/viber/voip/contacts/ui/aa;)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1493
    iget-object v1, p0, Lcom/viber/voip/contacts/ui/ab;->a:Lcom/viber/voip/contacts/ui/aa;

    invoke-static {v1}, Lcom/viber/voip/contacts/ui/aa;->g(Lcom/viber/voip/contacts/ui/aa;)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1494
    const/16 v1, 0x33

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1495
    iget-object v1, p0, Lcom/viber/voip/contacts/ui/ab;->a:Lcom/viber/voip/contacts/ui/aa;

    invoke-static {v1}, Lcom/viber/voip/contacts/ui/aa;->d(Lcom/viber/voip/contacts/ui/aa;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1496
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ab;->a:Lcom/viber/voip/contacts/ui/aa;

    invoke-static {v0}, Lcom/viber/voip/contacts/ui/aa;->d(Lcom/viber/voip/contacts/ui/aa;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 1497
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ab;->a:Lcom/viber/voip/contacts/ui/aa;

    invoke-static {v0}, Lcom/viber/voip/contacts/ui/aa;->h(Lcom/viber/voip/contacts/ui/aa;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/contacts/ui/ab;->a:Lcom/viber/voip/contacts/ui/aa;

    invoke-static {v1}, Lcom/viber/voip/contacts/ui/aa;->d(Lcom/viber/voip/contacts/ui/aa;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1499
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ab;->a:Lcom/viber/voip/contacts/ui/aa;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/viber/voip/contacts/ui/aa;->a(Lcom/viber/voip/contacts/ui/aa;I)I

    .line 1500
    return-void
.end method

.method public onAnimationRepeat(Lcom/nineoldandroids/animation/Animator;)V
    .locals 0
    .parameter

    .prologue
    .line 1510
    return-void
.end method

.method public onAnimationStart(Lcom/nineoldandroids/animation/Animator;)V
    .locals 0
    .parameter

    .prologue
    .line 1484
    return-void
.end method
