.class Lcom/viber/voip/messages/ui/az;
.super Lcom/viber/voip/messages/ui/au;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic b:Lcom/viber/voip/messages/ui/aj;

.field private c:Landroid/view/animation/Animation;

.field private d:Landroid/view/animation/Animation$AnimationListener;


# direct methods
.method private constructor <init>(Lcom/viber/voip/messages/ui/aj;Landroid/content/Context;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 441
    iput-object p1, p0, Lcom/viber/voip/messages/ui/az;->b:Lcom/viber/voip/messages/ui/aj;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/viber/voip/messages/ui/au;-><init>(Lcom/viber/voip/messages/ui/aj;Lcom/viber/voip/messages/ui/ak;)V

    .line 442
    const v0, 0x7f04000e

    invoke-static {p2, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/ui/az;->c:Landroid/view/animation/Animation;

    .line 443
    iget-object v0, p0, Lcom/viber/voip/messages/ui/az;->c:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 446
    new-instance v0, Lcom/viber/voip/messages/ui/ba;

    invoke-direct {v0, p0, p1}, Lcom/viber/voip/messages/ui/ba;-><init>(Lcom/viber/voip/messages/ui/az;Lcom/viber/voip/messages/ui/aj;)V

    iput-object v0, p0, Lcom/viber/voip/messages/ui/az;->d:Landroid/view/animation/Animation$AnimationListener;

    .line 467
    iget-object v0, p0, Lcom/viber/voip/messages/ui/az;->c:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/az;->d:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 468
    return-void
.end method

.method synthetic constructor <init>(Lcom/viber/voip/messages/ui/aj;Landroid/content/Context;Lcom/viber/voip/messages/ui/ak;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 436
    invoke-direct {p0, p1, p2}, Lcom/viber/voip/messages/ui/az;-><init>(Lcom/viber/voip/messages/ui/aj;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 477
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/viber/voip/messages/ui/az;->c:Landroid/view/animation/Animation;

    iget-object v2, p0, Lcom/viber/voip/messages/ui/az;->d:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {p0, v0, v1, v2}, Lcom/viber/voip/messages/ui/az;->a(ILandroid/view/animation/Animation;Landroid/view/animation/Animation$AnimationListener;)V

    .line 478
    return-void
.end method
