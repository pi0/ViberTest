.class Lcom/viber/voip/messages/ui/ax;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/ui/aj;

.field final synthetic b:Lcom/viber/voip/messages/ui/aw;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/ui/aw;Lcom/viber/voip/messages/ui/aj;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 490
    iput-object p1, p0, Lcom/viber/voip/messages/ui/ax;->b:Lcom/viber/voip/messages/ui/aw;

    iput-object p2, p0, Lcom/viber/voip/messages/ui/ax;->a:Lcom/viber/voip/messages/ui/aj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4
    .parameter

    .prologue
    .line 507
    iget-object v0, p0, Lcom/viber/voip/messages/ui/ax;->b:Lcom/viber/voip/messages/ui/aw;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/aw;->b:Lcom/viber/voip/messages/ui/aj;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/aj;->g:Landroid/os/Handler;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/ax;->b:Lcom/viber/voip/messages/ui/aw;

    iget-object v1, v1, Lcom/viber/voip/messages/ui/aw;->b:Lcom/viber/voip/messages/ui/aj;

    invoke-static {v1}, Lcom/viber/voip/messages/ui/aj;->d(Lcom/viber/voip/messages/ui/aj;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 508
    iget-object v0, p0, Lcom/viber/voip/messages/ui/ax;->b:Lcom/viber/voip/messages/ui/aw;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/aw;->b:Lcom/viber/voip/messages/ui/aj;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/aj;->g:Landroid/os/Handler;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/ax;->b:Lcom/viber/voip/messages/ui/aw;

    iget-object v1, v1, Lcom/viber/voip/messages/ui/aw;->b:Lcom/viber/voip/messages/ui/aj;

    invoke-static {v1}, Lcom/viber/voip/messages/ui/aj;->d(Lcom/viber/voip/messages/ui/aj;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 509
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter

    .prologue
    .line 503
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter

    .prologue
    .line 494
    iget-object v0, p0, Lcom/viber/voip/messages/ui/ax;->b:Lcom/viber/voip/messages/ui/aw;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/aw;->b:Lcom/viber/voip/messages/ui/aj;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/aj;->g:Landroid/os/Handler;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/ax;->b:Lcom/viber/voip/messages/ui/aw;

    iget-object v1, v1, Lcom/viber/voip/messages/ui/aw;->b:Lcom/viber/voip/messages/ui/aj;

    invoke-static {v1}, Lcom/viber/voip/messages/ui/aj;->d(Lcom/viber/voip/messages/ui/aj;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 495
    iget-object v0, p0, Lcom/viber/voip/messages/ui/ax;->b:Lcom/viber/voip/messages/ui/aw;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/aw;->b:Lcom/viber/voip/messages/ui/aj;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/aj;->b(Lcom/viber/voip/messages/ui/aj;)Lcom/viber/voip/stickers/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/stickers/r;->d()Lcom/viber/voip/stickers/b;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/viber/voip/stickers/b;->a(Z)V

    .line 496
    iget-object v0, p0, Lcom/viber/voip/messages/ui/ax;->b:Lcom/viber/voip/messages/ui/aw;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/aw;->b:Lcom/viber/voip/messages/ui/aj;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/aj;->d:Lcom/viber/voip/messages/ui/a/a;

    if-eqz v0, :cond_0

    .line 497
    iget-object v0, p0, Lcom/viber/voip/messages/ui/ax;->b:Lcom/viber/voip/messages/ui/aw;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/aw;->b:Lcom/viber/voip/messages/ui/aj;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/aj;->d:Lcom/viber/voip/messages/ui/a/a;

    invoke-interface {v0}, Lcom/viber/voip/messages/ui/a/a;->d()V

    .line 499
    :cond_0
    return-void
.end method
