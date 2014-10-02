.class Lcom/viber/voip/messages/ui/au;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/ui/aj;


# direct methods
.method private constructor <init>(Lcom/viber/voip/messages/ui/aj;)V
    .locals 0
    .parameter

    .prologue
    .line 520
    iput-object p1, p0, Lcom/viber/voip/messages/ui/au;->a:Lcom/viber/voip/messages/ui/aj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/viber/voip/messages/ui/aj;Lcom/viber/voip/messages/ui/ak;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 520
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/ui/au;-><init>(Lcom/viber/voip/messages/ui/aj;)V

    return-void
.end method


# virtual methods
.method protected a(ILandroid/view/animation/Animation;Landroid/view/animation/Animation$AnimationListener;)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 523
    iget-object v0, p0, Lcom/viber/voip/messages/ui/au;->a:Lcom/viber/voip/messages/ui/aj;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/aj;->e(Lcom/viber/voip/messages/ui/aj;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, p1, :cond_1

    .line 524
    iget-object v0, p0, Lcom/viber/voip/messages/ui/au;->a:Lcom/viber/voip/messages/ui/aj;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/aj;->e(Lcom/viber/voip/messages/ui/aj;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v6

    .line 525
    iget-object v0, p0, Lcom/viber/voip/messages/ui/au;->a:Lcom/viber/voip/messages/ui/aj;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/aj;->e(Lcom/viber/voip/messages/ui/aj;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/animation/Animation$AnimationListener;

    .line 526
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 527
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/ui/au;->a:Lcom/viber/voip/messages/ui/aj;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/aj;->e(Lcom/viber/voip/messages/ui/aj;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 528
    iget-object v0, p0, Lcom/viber/voip/messages/ui/au;->a:Lcom/viber/voip/messages/ui/aj;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/aj;->e(Lcom/viber/voip/messages/ui/aj;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 529
    iget-object v0, p0, Lcom/viber/voip/messages/ui/au;->a:Lcom/viber/voip/messages/ui/aj;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/aj;->e(Lcom/viber/voip/messages/ui/aj;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 555
    :cond_1
    :goto_0
    return-void

    .line 531
    :cond_2
    new-instance v0, Lcom/viber/voip/messages/ui/av;

    move-object v1, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/messages/ui/av;-><init>(Lcom/viber/voip/messages/ui/au;Landroid/view/animation/Animation$AnimationListener;ILandroid/view/animation/Animation;Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {v6, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0
.end method
