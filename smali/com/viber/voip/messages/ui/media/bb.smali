.class Lcom/viber/voip/messages/ui/media/bb;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/ui/media/ViewMediaActivity;

.field private b:Landroid/view/animation/Animation;

.field private c:Landroid/view/animation/Animation;

.field private d:Landroid/view/animation/Animation;

.field private e:Landroid/view/animation/Animation;

.field private f:Landroid/view/animation/Animation;

.field private g:Landroid/view/animation/Animation;

.field private h:Ljava/lang/Runnable;

.field private i:Ljava/lang/Runnable;


# direct methods
.method private constructor <init>(Lcom/viber/voip/messages/ui/media/ViewMediaActivity;Landroid/content/Context;)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const-wide/16 v6, 0x320

    const-wide/16 v4, 0x96

    const/high16 v3, 0x3f80

    const/4 v2, 0x0

    .line 1042
    iput-object p1, p0, Lcom/viber/voip/messages/ui/media/bb;->a:Lcom/viber/voip/messages/ui/media/ViewMediaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 994
    new-instance v0, Lcom/viber/voip/messages/ui/media/bc;

    invoke-direct {v0, p0}, Lcom/viber/voip/messages/ui/media/bc;-><init>(Lcom/viber/voip/messages/ui/media/bb;)V

    iput-object v0, p0, Lcom/viber/voip/messages/ui/media/bb;->h:Ljava/lang/Runnable;

    .line 1020
    new-instance v0, Lcom/viber/voip/messages/ui/media/bd;

    invoke-direct {v0, p0}, Lcom/viber/voip/messages/ui/media/bd;-><init>(Lcom/viber/voip/messages/ui/media/bb;)V

    iput-object v0, p0, Lcom/viber/voip/messages/ui/media/bb;->i:Ljava/lang/Runnable;

    .line 1043
    const v0, 0x7f04000e

    invoke-static {p2, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/ui/media/bb;->b:Landroid/view/animation/Animation;

    .line 1044
    const v0, 0x7f04000f

    invoke-static {p2, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/ui/media/bb;->c:Landroid/view/animation/Animation;

    .line 1045
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/bb;->b:Landroid/view/animation/Animation;

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1046
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/bb;->c:Landroid/view/animation/Animation;

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1048
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/viber/voip/messages/ui/media/bb;->d:Landroid/view/animation/Animation;

    .line 1049
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/bb;->d:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1050
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/bb;->d:Landroid/view/animation/Animation;

    invoke-virtual {v0, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1052
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v3, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/viber/voip/messages/ui/media/bb;->e:Landroid/view/animation/Animation;

    .line 1053
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/bb;->e:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1054
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/bb;->e:Landroid/view/animation/Animation;

    invoke-virtual {v0, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1056
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    .line 1057
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/bb;->b:Landroid/view/animation/Animation;

    iput-object v0, p0, Lcom/viber/voip/messages/ui/media/bb;->f:Landroid/view/animation/Animation;

    .line 1058
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/bb;->c:Landroid/view/animation/Animation;

    iput-object v0, p0, Lcom/viber/voip/messages/ui/media/bb;->g:Landroid/view/animation/Animation;

    .line 1063
    :goto_0
    return-void

    .line 1060
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/bb;->d:Landroid/view/animation/Animation;

    iput-object v0, p0, Lcom/viber/voip/messages/ui/media/bb;->f:Landroid/view/animation/Animation;

    .line 1061
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/bb;->e:Landroid/view/animation/Animation;

    iput-object v0, p0, Lcom/viber/voip/messages/ui/media/bb;->g:Landroid/view/animation/Animation;

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/viber/voip/messages/ui/media/ViewMediaActivity;Landroid/content/Context;Lcom/viber/voip/messages/ui/media/aq;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 962
    invoke-direct {p0, p1, p2}, Lcom/viber/voip/messages/ui/media/bb;-><init>(Lcom/viber/voip/messages/ui/media/ViewMediaActivity;Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/viber/voip/messages/ui/media/bb;)Landroid/view/animation/Animation;
    .locals 1
    .parameter

    .prologue
    .line 962
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/bb;->f:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic b(Lcom/viber/voip/messages/ui/media/bb;)Landroid/view/animation/Animation;
    .locals 1
    .parameter

    .prologue
    .line 962
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/bb;->b:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic c(Lcom/viber/voip/messages/ui/media/bb;)Landroid/view/animation/Animation;
    .locals 1
    .parameter

    .prologue
    .line 962
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/bb;->d:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic d(Lcom/viber/voip/messages/ui/media/bb;)Landroid/view/animation/Animation;
    .locals 1
    .parameter

    .prologue
    .line 962
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/bb;->g:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic e(Lcom/viber/voip/messages/ui/media/bb;)Landroid/view/animation/Animation;
    .locals 1
    .parameter

    .prologue
    .line 962
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/bb;->c:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic f(Lcom/viber/voip/messages/ui/media/bb;)Landroid/view/animation/Animation;
    .locals 1
    .parameter

    .prologue
    .line 962
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/bb;->e:Landroid/view/animation/Animation;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 984
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/bb;->a:Lcom/viber/voip/messages/ui/media/ViewMediaActivity;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->j(Lcom/viber/voip/messages/ui/media/ViewMediaActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/bb;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 985
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/bb;->a:Lcom/viber/voip/messages/ui/media/ViewMediaActivity;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->k(Lcom/viber/voip/messages/ui/media/ViewMediaActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/bb;->a:Lcom/viber/voip/messages/ui/media/ViewMediaActivity;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->l(Lcom/viber/voip/messages/ui/media/ViewMediaActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/bb;->a:Lcom/viber/voip/messages/ui/media/ViewMediaActivity;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->e(Lcom/viber/voip/messages/ui/media/ViewMediaActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 986
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/bb;->a:Lcom/viber/voip/messages/ui/media/ViewMediaActivity;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->l(Lcom/viber/voip/messages/ui/media/ViewMediaActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 987
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/bb;->a:Lcom/viber/voip/messages/ui/media/ViewMediaActivity;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->l(Lcom/viber/voip/messages/ui/media/ViewMediaActivity;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/bb;->a:Lcom/viber/voip/messages/ui/media/ViewMediaActivity;

    invoke-static {v1}, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->h(Lcom/viber/voip/messages/ui/media/ViewMediaActivity;)Lcom/viber/voip/messages/ui/media/bb;

    move-result-object v1

    iget-object v1, v1, Lcom/viber/voip/messages/ui/media/bb;->b:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 992
    :cond_0
    :goto_0
    return-void

    .line 988
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/bb;->a:Lcom/viber/voip/messages/ui/media/ViewMediaActivity;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->k(Lcom/viber/voip/messages/ui/media/ViewMediaActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/bb;->a:Lcom/viber/voip/messages/ui/media/ViewMediaActivity;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->l(Lcom/viber/voip/messages/ui/media/ViewMediaActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 989
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/bb;->a:Lcom/viber/voip/messages/ui/media/ViewMediaActivity;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->l(Lcom/viber/voip/messages/ui/media/ViewMediaActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 990
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/bb;->a:Lcom/viber/voip/messages/ui/media/ViewMediaActivity;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->l(Lcom/viber/voip/messages/ui/media/ViewMediaActivity;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/bb;->a:Lcom/viber/voip/messages/ui/media/ViewMediaActivity;

    invoke-static {v1}, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->h(Lcom/viber/voip/messages/ui/media/ViewMediaActivity;)Lcom/viber/voip/messages/ui/media/bb;

    move-result-object v1

    iget-object v1, v1, Lcom/viber/voip/messages/ui/media/bb;->c:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public a(I)V
    .locals 4
    .parameter

    .prologue
    .line 973
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/bb;->a:Lcom/viber/voip/messages/ui/media/ViewMediaActivity;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->j(Lcom/viber/voip/messages/ui/media/ViewMediaActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/bb;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 974
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/bb;->a:Lcom/viber/voip/messages/ui/media/ViewMediaActivity;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->j(Lcom/viber/voip/messages/ui/media/ViewMediaActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/bb;->h:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 975
    return-void
.end method

.method public b(I)V
    .locals 4
    .parameter

    .prologue
    .line 978
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/bb;->a:Lcom/viber/voip/messages/ui/media/ViewMediaActivity;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->j(Lcom/viber/voip/messages/ui/media/ViewMediaActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/bb;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 979
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/bb;->a:Lcom/viber/voip/messages/ui/media/ViewMediaActivity;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->j(Lcom/viber/voip/messages/ui/media/ViewMediaActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/bb;->i:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 980
    return-void
.end method
