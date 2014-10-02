.class Lcom/viber/voip/gallery/animation/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nineoldandroids/animation/Animator$AnimatorListener;


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Z

.field final synthetic c:Lcom/viber/voip/gallery/animation/s;


# direct methods
.method constructor <init>(Lcom/viber/voip/gallery/animation/s;Landroid/view/View;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 228
    iput-object p1, p0, Lcom/viber/voip/gallery/animation/u;->c:Lcom/viber/voip/gallery/animation/s;

    iput-object p2, p0, Lcom/viber/voip/gallery/animation/u;->a:Landroid/view/View;

    iput-boolean p3, p0, Lcom/viber/voip/gallery/animation/u;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Lcom/nineoldandroids/animation/Animator;)V
    .locals 0
    .parameter

    .prologue
    .line 231
    return-void
.end method

.method public onAnimationEnd(Lcom/nineoldandroids/animation/Animator;)V
    .locals 4
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 234
    iget-object v0, p0, Lcom/viber/voip/gallery/animation/u;->a:Landroid/view/View;

    const/high16 v1, 0x3f80

    invoke-static {v0, v1}, Lcom/nineoldandroids/view/ViewHelper;->setAlpha(Landroid/view/View;F)V

    .line 235
    iget-object v0, p0, Lcom/viber/voip/gallery/animation/u;->a:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nineoldandroids/view/ViewHelper;->setTranslationY(Landroid/view/View;F)V

    .line 236
    invoke-static {}, Lcom/viber/voip/util/gl;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/viber/voip/gallery/animation/u;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 239
    :cond_0
    iget-boolean v0, p0, Lcom/viber/voip/gallery/animation/u;->b:Z

    if-eqz v0, :cond_1

    .line 240
    iget-object v0, p0, Lcom/viber/voip/gallery/animation/u;->a:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 244
    :goto_0
    iget-object v0, p0, Lcom/viber/voip/gallery/animation/u;->c:Lcom/viber/voip/gallery/animation/s;

    invoke-static {v0}, Lcom/viber/voip/gallery/animation/s;->a(Lcom/viber/voip/gallery/animation/s;)Lcom/viber/voip/gallery/animation/y;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 245
    iget-object v0, p0, Lcom/viber/voip/gallery/animation/u;->c:Lcom/viber/voip/gallery/animation/s;

    invoke-static {v0}, Lcom/viber/voip/gallery/animation/s;->a(Lcom/viber/voip/gallery/animation/s;)Lcom/viber/voip/gallery/animation/y;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/gallery/animation/u;->a:Landroid/view/View;

    iget-boolean v2, p0, Lcom/viber/voip/gallery/animation/u;->b:Z

    new-instance v3, Lcom/viber/voip/gallery/animation/v;

    invoke-direct {v3, p0}, Lcom/viber/voip/gallery/animation/v;-><init>(Lcom/viber/voip/gallery/animation/u;)V

    invoke-interface {v0, v1, v2, v3}, Lcom/viber/voip/gallery/animation/y;->a(Landroid/view/View;ZLcom/viber/voip/gallery/animation/x;)V

    .line 254
    :goto_1
    return-void

    .line 242
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/gallery/animation/u;->a:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 252
    :cond_2
    iget-object v0, p0, Lcom/viber/voip/gallery/animation/u;->c:Lcom/viber/voip/gallery/animation/s;

    invoke-static {v0, v2}, Lcom/viber/voip/gallery/animation/s;->a(Lcom/viber/voip/gallery/animation/s;Z)Z

    goto :goto_1
.end method

.method public onAnimationRepeat(Lcom/nineoldandroids/animation/Animator;)V
    .locals 0
    .parameter

    .prologue
    .line 230
    return-void
.end method

.method public onAnimationStart(Lcom/nineoldandroids/animation/Animator;)V
    .locals 0
    .parameter

    .prologue
    .line 229
    return-void
.end method
