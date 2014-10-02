.class Lcom/viber/voip/gallery/animation/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nineoldandroids/animation/Animator$AnimatorListener;


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/viber/voip/gallery/animation/s;


# direct methods
.method constructor <init>(Lcom/viber/voip/gallery/animation/s;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 88
    iput-object p1, p0, Lcom/viber/voip/gallery/animation/t;->b:Lcom/viber/voip/gallery/animation/s;

    iput-object p2, p0, Lcom/viber/voip/gallery/animation/t;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Lcom/nineoldandroids/animation/Animator;)V
    .locals 0
    .parameter

    .prologue
    .line 91
    return-void
.end method

.method public onAnimationEnd(Lcom/nineoldandroids/animation/Animator;)V
    .locals 2
    .parameter

    .prologue
    .line 94
    iget-object v0, p0, Lcom/viber/voip/gallery/animation/t;->a:Landroid/view/View;

    const/high16 v1, 0x3f80

    invoke-static {v0, v1}, Lcom/nineoldandroids/view/ViewHelper;->setAlpha(Landroid/view/View;F)V

    .line 95
    iget-object v0, p0, Lcom/viber/voip/gallery/animation/t;->a:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nineoldandroids/view/ViewHelper;->setTranslationY(Landroid/view/View;F)V

    .line 96
    iget-object v0, p0, Lcom/viber/voip/gallery/animation/t;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 97
    iget-object v0, p0, Lcom/viber/voip/gallery/animation/t;->b:Lcom/viber/voip/gallery/animation/s;

    invoke-static {v0}, Lcom/viber/voip/gallery/animation/s;->a(Lcom/viber/voip/gallery/animation/s;)Lcom/viber/voip/gallery/animation/y;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/viber/voip/gallery/animation/t;->b:Lcom/viber/voip/gallery/animation/s;

    invoke-static {v0}, Lcom/viber/voip/gallery/animation/s;->a(Lcom/viber/voip/gallery/animation/s;)Lcom/viber/voip/gallery/animation/y;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/gallery/animation/t;->a:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/viber/voip/gallery/animation/y;->d(Landroid/view/View;)V

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/gallery/animation/t;->b:Lcom/viber/voip/gallery/animation/s;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/viber/voip/gallery/animation/s;->a(Lcom/viber/voip/gallery/animation/s;Z)Z

    .line 101
    return-void
.end method

.method public onAnimationRepeat(Lcom/nineoldandroids/animation/Animator;)V
    .locals 0
    .parameter

    .prologue
    .line 90
    return-void
.end method

.method public onAnimationStart(Lcom/nineoldandroids/animation/Animator;)V
    .locals 0
    .parameter

    .prologue
    .line 89
    return-void
.end method
