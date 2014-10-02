.class Lcom/viber/voip/gallery/preview/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nineoldandroids/animation/Animator$AnimatorListener;


# instance fields
.field final synthetic a:Lcom/viber/voip/gallery/preview/DoodleBaseActivity;


# direct methods
.method constructor <init>(Lcom/viber/voip/gallery/preview/DoodleBaseActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 340
    iput-object p1, p0, Lcom/viber/voip/gallery/preview/f;->a:Lcom/viber/voip/gallery/preview/DoodleBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Lcom/nineoldandroids/animation/Animator;)V
    .locals 0
    .parameter

    .prologue
    .line 343
    return-void
.end method

.method public onAnimationEnd(Lcom/nineoldandroids/animation/Animator;)V
    .locals 2
    .parameter

    .prologue
    .line 346
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/f;->a:Lcom/viber/voip/gallery/preview/DoodleBaseActivity;

    iget-object v0, v0, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->d:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 347
    return-void
.end method

.method public onAnimationRepeat(Lcom/nineoldandroids/animation/Animator;)V
    .locals 0
    .parameter

    .prologue
    .line 342
    return-void
.end method

.method public onAnimationStart(Lcom/nineoldandroids/animation/Animator;)V
    .locals 0
    .parameter

    .prologue
    .line 341
    return-void
.end method
