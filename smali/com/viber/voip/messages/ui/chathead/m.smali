.class Lcom/viber/voip/messages/ui/chathead/m;
.super Lcom/nineoldandroids/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/ui/chathead/d;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/ui/chathead/d;)V
    .locals 0
    .parameter

    .prologue
    .line 1303
    iput-object p1, p0, Lcom/viber/voip/messages/ui/chathead/m;->a:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-direct {p0}, Lcom/nineoldandroids/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lcom/nineoldandroids/animation/Animator;)V
    .locals 3
    .parameter

    .prologue
    .line 1311
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/m;->a:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/chathead/d;->g(Lcom/viber/voip/messages/ui/chathead/d;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1324
    :cond_0
    :goto_0
    return-void

    .line 1312
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/m;->a:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/chathead/d;->u(Lcom/viber/voip/messages/ui/chathead/d;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/ui/chathead/m;->a:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v1}, Lcom/viber/voip/messages/ui/chathead/d;->H(Lcom/viber/voip/messages/ui/chathead/d;)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1313
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/m;->a:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/chathead/d;->u(Lcom/viber/voip/messages/ui/chathead/d;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/ui/chathead/m;->a:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v1}, Lcom/viber/voip/messages/ui/chathead/d;->I(Lcom/viber/voip/messages/ui/chathead/d;)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1314
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/m;->a:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/chathead/d;->B(Lcom/viber/voip/messages/ui/chathead/d;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/ui/chathead/m;->a:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v1}, Lcom/viber/voip/messages/ui/chathead/d;->i(Lcom/viber/voip/messages/ui/chathead/d;)Lcom/viber/voip/messages/ui/chathead/a/a;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/messages/ui/chathead/m;->a:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v2}, Lcom/viber/voip/messages/ui/chathead/d;->u(Lcom/viber/voip/messages/ui/chathead/d;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1315
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/m;->a:Lcom/viber/voip/messages/ui/chathead/d;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/chathead/m;->a:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v1}, Lcom/viber/voip/messages/ui/chathead/d;->H(Lcom/viber/voip/messages/ui/chathead/d;)F

    move-result v1

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/chathead/d;->a(Lcom/viber/voip/messages/ui/chathead/d;F)F

    .line 1316
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/m;->a:Lcom/viber/voip/messages/ui/chathead/d;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/chathead/m;->a:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v1}, Lcom/viber/voip/messages/ui/chathead/d;->I(Lcom/viber/voip/messages/ui/chathead/d;)F

    move-result v1

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/chathead/d;->b(Lcom/viber/voip/messages/ui/chathead/d;F)F

    .line 1317
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/m;->a:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/chathead/d;->J(Lcom/viber/voip/messages/ui/chathead/d;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1318
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/m;->a:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/chathead/d;->o(Lcom/viber/voip/messages/ui/chathead/d;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1320
    :cond_2
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/m;->a:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/chathead/d;->l(Lcom/viber/voip/messages/ui/chathead/d;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1321
    const-string/jumbo v0, "popupCloseAnimation: animationEnd,!mToRestoreAfterCall"

    invoke-static {v0}, Lcom/viber/voip/messages/ui/chathead/d;->a(Ljava/lang/String;)V

    .line 1322
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/m;->a:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/chathead/d;->C(Lcom/viber/voip/messages/ui/chathead/d;)V

    goto :goto_0
.end method

.method public onAnimationStart(Lcom/nineoldandroids/animation/Animator;)V
    .locals 0
    .parameter

    .prologue
    .line 1307
    return-void
.end method
