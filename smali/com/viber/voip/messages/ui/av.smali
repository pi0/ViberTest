.class Lcom/viber/voip/messages/ui/av;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic a:Landroid/view/animation/Animation$AnimationListener;

.field final synthetic b:I

.field final synthetic c:Landroid/view/animation/Animation;

.field final synthetic d:Landroid/view/animation/Animation$AnimationListener;

.field final synthetic e:Lcom/viber/voip/messages/ui/au;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/ui/au;Landroid/view/animation/Animation$AnimationListener;ILandroid/view/animation/Animation;Landroid/view/animation/Animation$AnimationListener;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 531
    iput-object p1, p0, Lcom/viber/voip/messages/ui/av;->e:Lcom/viber/voip/messages/ui/au;

    iput-object p2, p0, Lcom/viber/voip/messages/ui/av;->a:Landroid/view/animation/Animation$AnimationListener;

    iput p3, p0, Lcom/viber/voip/messages/ui/av;->b:I

    iput-object p4, p0, Lcom/viber/voip/messages/ui/av;->c:Landroid/view/animation/Animation;

    iput-object p5, p0, Lcom/viber/voip/messages/ui/av;->d:Landroid/view/animation/Animation$AnimationListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter

    .prologue
    .line 539
    iget-object v0, p0, Lcom/viber/voip/messages/ui/av;->a:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/ui/av;->a:Landroid/view/animation/Animation$AnimationListener;

    invoke-interface {v0, p1}, Landroid/view/animation/Animation$AnimationListener;->onAnimationEnd(Landroid/view/animation/Animation;)V

    .line 542
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/ui/av;->a:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 543
    iget-object v0, p0, Lcom/viber/voip/messages/ui/av;->e:Lcom/viber/voip/messages/ui/au;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/au;->a:Lcom/viber/voip/messages/ui/aj;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/aj;->e(Lcom/viber/voip/messages/ui/aj;)Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/viber/voip/messages/ui/av;->b:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 544
    iget-object v0, p0, Lcom/viber/voip/messages/ui/av;->e:Lcom/viber/voip/messages/ui/au;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/au;->a:Lcom/viber/voip/messages/ui/aj;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/aj;->e(Lcom/viber/voip/messages/ui/aj;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/ui/av;->c:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 545
    iget-object v0, p0, Lcom/viber/voip/messages/ui/av;->e:Lcom/viber/voip/messages/ui/au;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/au;->a:Lcom/viber/voip/messages/ui/aj;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/aj;->e(Lcom/viber/voip/messages/ui/aj;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/ui/av;->d:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 546
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 1
    .parameter

    .prologue
    .line 550
    iget-object v0, p0, Lcom/viber/voip/messages/ui/av;->a:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/ui/av;->a:Landroid/view/animation/Animation$AnimationListener;

    invoke-interface {v0, p1}, Landroid/view/animation/Animation$AnimationListener;->onAnimationRepeat(Landroid/view/animation/Animation;)V

    .line 551
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1
    .parameter

    .prologue
    .line 534
    iget-object v0, p0, Lcom/viber/voip/messages/ui/av;->a:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/ui/av;->a:Landroid/view/animation/Animation$AnimationListener;

    invoke-interface {v0, p1}, Landroid/view/animation/Animation$AnimationListener;->onAnimationStart(Landroid/view/animation/Animation;)V

    .line 535
    :cond_0
    return-void
.end method
