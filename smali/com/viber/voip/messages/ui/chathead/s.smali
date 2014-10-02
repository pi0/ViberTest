.class Lcom/viber/voip/messages/ui/chathead/s;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/ui/chathead/d;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/ui/chathead/d;)V
    .locals 0
    .parameter

    .prologue
    .line 1576
    iput-object p1, p0, Lcom/viber/voip/messages/ui/chathead/s;->a:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x4

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1580
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1581
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/s;->a:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/chathead/d;->r(Lcom/viber/voip/messages/ui/chathead/d;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1671
    :cond_0
    :goto_0
    return-void

    .line 1584
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/s;->a:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/chathead/d;->P(Lcom/viber/voip/messages/ui/chathead/d;)Lcom/nineoldandroids/animation/AnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/s;->a:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/chathead/d;->P(Lcom/viber/voip/messages/ui/chathead/d;)Lcom/nineoldandroids/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nineoldandroids/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1590
    :cond_2
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/s;->a:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/chathead/d;->i(Lcom/viber/voip/messages/ui/chathead/d;)Lcom/viber/voip/messages/ui/chathead/a/a;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/viber/voip/messages/ui/chathead/a/a;->setVisibility(I)V

    .line 1591
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/s;->a:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/chathead/d;->u(Lcom/viber/voip/messages/ui/chathead/d;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    if-gtz v0, :cond_3

    move v0, v1

    .line 1592
    :goto_1
    iget-object v4, p0, Lcom/viber/voip/messages/ui/chathead/s;->a:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v4}, Lcom/viber/voip/messages/ui/chathead/d;->u(Lcom/viber/voip/messages/ui/chathead/d;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/viber/voip/messages/ui/chathead/s;->a:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v5}, Lcom/viber/voip/messages/ui/chathead/d;->Q(Lcom/viber/voip/messages/ui/chathead/d;)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    .line 1596
    iget-object v5, p0, Lcom/viber/voip/messages/ui/chathead/s;->a:Lcom/viber/voip/messages/ui/chathead/d;

    iget-object v6, p0, Lcom/viber/voip/messages/ui/chathead/s;->a:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v6}, Lcom/viber/voip/messages/ui/chathead/d;->c(Lcom/viber/voip/messages/ui/chathead/d;)Lcom/viber/voip/messages/ui/chathead/c;

    move-result-object v6

    iget-object v6, v6, Lcom/viber/voip/messages/ui/chathead/c;->p:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    int-to-float v6, v6

    invoke-static {v5, v6}, Lcom/viber/voip/messages/ui/chathead/d;->c(Lcom/viber/voip/messages/ui/chathead/d;F)F

    .line 1597
    iget-object v5, p0, Lcom/viber/voip/messages/ui/chathead/s;->a:Lcom/viber/voip/messages/ui/chathead/d;

    iget-object v6, p0, Lcom/viber/voip/messages/ui/chathead/s;->a:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v6}, Lcom/viber/voip/messages/ui/chathead/d;->c(Lcom/viber/voip/messages/ui/chathead/d;)Lcom/viber/voip/messages/ui/chathead/c;

    move-result-object v6

    iget-object v6, v6, Lcom/viber/voip/messages/ui/chathead/c;->p:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    int-to-float v6, v6

    invoke-static {v5, v6}, Lcom/viber/voip/messages/ui/chathead/d;->d(Lcom/viber/voip/messages/ui/chathead/d;F)F

    .line 1599
    iget-object v5, p0, Lcom/viber/voip/messages/ui/chathead/s;->a:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {p1}, Lcom/viber/voip/util/gl;->e(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_4

    :goto_2
    invoke-static {v5, v2}, Lcom/viber/voip/messages/ui/chathead/d;->e(Lcom/viber/voip/messages/ui/chathead/d;Z)Z

    .line 1600
    iget-object v2, p0, Lcom/viber/voip/messages/ui/chathead/s;->a:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v2}, Lcom/viber/voip/messages/ui/chathead/d;->R(Lcom/viber/voip/messages/ui/chathead/d;)V

    .line 1601
    iget-object v2, p0, Lcom/viber/voip/messages/ui/chathead/s;->a:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v2}, Lcom/viber/voip/messages/ui/chathead/d;->S(Lcom/viber/voip/messages/ui/chathead/d;)V

    .line 1603
    iget-object v2, p0, Lcom/viber/voip/messages/ui/chathead/s;->a:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v2}, Lcom/viber/voip/messages/ui/chathead/d;->B(Lcom/viber/voip/messages/ui/chathead/d;)Landroid/view/WindowManager;

    move-result-object v2

    iget-object v5, p0, Lcom/viber/voip/messages/ui/chathead/s;->a:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v5}, Lcom/viber/voip/messages/ui/chathead/d;->j(Lcom/viber/voip/messages/ui/chathead/d;)Landroid/widget/FrameLayout;

    move-result-object v5

    iget-object v6, p0, Lcom/viber/voip/messages/ui/chathead/s;->a:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v6}, Lcom/viber/voip/messages/ui/chathead/d;->T(Lcom/viber/voip/messages/ui/chathead/d;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1605
    iget-object v2, p0, Lcom/viber/voip/messages/ui/chathead/s;->a:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v2}, Lcom/viber/voip/messages/ui/chathead/d;->a(Lcom/viber/voip/messages/ui/chathead/d;)Lcom/viber/voip/messages/ui/chathead/a/l;

    move-result-object v2

    invoke-virtual {v2}, Lcom/viber/voip/messages/ui/chathead/a/l;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1624
    :goto_3
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/s;->a:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/chathead/d;->U(Lcom/viber/voip/messages/ui/chathead/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1625
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/s;->a:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/chathead/d;->V(Lcom/viber/voip/messages/ui/chathead/d;)V

    .line 1626
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/s;->a:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v0, v3}, Lcom/viber/voip/messages/ui/chathead/d;->f(Lcom/viber/voip/messages/ui/chathead/d;Z)Z

    goto/16 :goto_0

    .line 1591
    :cond_3
    const/high16 v0, 0x3f80

    goto :goto_1

    :cond_4
    move v2, v3

    .line 1599
    goto :goto_2

    .line 1608
    :cond_5
    iget-object v2, p0, Lcom/viber/voip/messages/ui/chathead/s;->a:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v2}, Lcom/viber/voip/messages/ui/chathead/d;->u(Lcom/viber/voip/messages/ui/chathead/d;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    cmpl-float v0, v0, v1

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/s;->a:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/chathead/d;->c(Lcom/viber/voip/messages/ui/chathead/d;)Lcom/viber/voip/messages/ui/chathead/c;

    move-result-object v0

    iget v0, v0, Lcom/viber/voip/messages/ui/chathead/c;->t:I

    neg-int v0, v0

    :goto_4
    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1609
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/s;->a:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/chathead/d;->Q(Lcom/viber/voip/messages/ui/chathead/d;)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v4

    float-to-int v0, v0

    .line 1610
    iget-object v1, p0, Lcom/viber/voip/messages/ui/chathead/s;->a:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v1}, Lcom/viber/voip/messages/ui/chathead/d;->Q(Lcom/viber/voip/messages/ui/chathead/d;)I

    move-result v1

    iget-object v2, p0, Lcom/viber/voip/messages/ui/chathead/s;->a:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v2}, Lcom/viber/voip/messages/ui/chathead/d;->c(Lcom/viber/voip/messages/ui/chathead/d;)Lcom/viber/voip/messages/ui/chathead/c;

    move-result-object v2

    iget v2, v2, Lcom/viber/voip/messages/ui/chathead/c;->b:I

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_6

    .line 1611
    iget-object v1, p0, Lcom/viber/voip/messages/ui/chathead/s;->a:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v1}, Lcom/viber/voip/messages/ui/chathead/d;->c(Lcom/viber/voip/messages/ui/chathead/d;)Lcom/viber/voip/messages/ui/chathead/c;

    move-result-object v1

    iget v1, v1, Lcom/viber/voip/messages/ui/chathead/c;->b:I

    sub-int/2addr v0, v1

    .line 1613
    :cond_6
    iget-object v1, p0, Lcom/viber/voip/messages/ui/chathead/s;->a:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v1}, Lcom/viber/voip/messages/ui/chathead/d;->u(Lcom/viber/voip/messages/ui/chathead/d;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    if-gez v0, :cond_7

    move v0, v3

    :cond_7
    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1614
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/s;->a:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/chathead/d;->B(Lcom/viber/voip/messages/ui/chathead/d;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/ui/chathead/s;->a:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v1}, Lcom/viber/voip/messages/ui/chathead/d;->i(Lcom/viber/voip/messages/ui/chathead/d;)Lcom/viber/voip/messages/ui/chathead/a/a;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/messages/ui/chathead/s;->a:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v2}, Lcom/viber/voip/messages/ui/chathead/d;->u(Lcom/viber/voip/messages/ui/chathead/d;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1615
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/s;->a:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/chathead/d;->t(Lcom/viber/voip/messages/ui/chathead/d;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/ui/chathead/b;

    .line 1616
    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/chathead/b;->a()Lcom/viber/voip/messages/ui/chathead/a/a;

    move-result-object v2

    iget-object v4, p0, Lcom/viber/voip/messages/ui/chathead/s;->a:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v4}, Lcom/viber/voip/messages/ui/chathead/d;->u(Lcom/viber/voip/messages/ui/chathead/d;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v4, v4

    invoke-static {v2, v4}, Lcom/viber/voip/messages/ui/chathead/ay;->a(Landroid/view/View;F)V

    .line 1617
    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/chathead/b;->a()Lcom/viber/voip/messages/ui/chathead/a/a;

    move-result-object v0

    iget-object v2, p0, Lcom/viber/voip/messages/ui/chathead/s;->a:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v2}, Lcom/viber/voip/messages/ui/chathead/d;->u(Lcom/viber/voip/messages/ui/chathead/d;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float v2, v2

    invoke-static {v0, v2}, Lcom/viber/voip/messages/ui/chathead/ay;->b(Landroid/view/View;F)V

    goto :goto_5

    .line 1608
    :cond_8
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/s;->a:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/chathead/d;->f(Lcom/viber/voip/messages/ui/chathead/d;)I

    move-result v0

    iget-object v1, p0, Lcom/viber/voip/messages/ui/chathead/s;->a:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v1}, Lcom/viber/voip/messages/ui/chathead/d;->c(Lcom/viber/voip/messages/ui/chathead/d;)Lcom/viber/voip/messages/ui/chathead/c;

    move-result-object v1

    iget v1, v1, Lcom/viber/voip/messages/ui/chathead/c;->b:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/viber/voip/messages/ui/chathead/s;->a:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v1}, Lcom/viber/voip/messages/ui/chathead/d;->c(Lcom/viber/voip/messages/ui/chathead/d;)Lcom/viber/voip/messages/ui/chathead/c;

    move-result-object v1

    iget v1, v1, Lcom/viber/voip/messages/ui/chathead/c;->t:I

    add-int/2addr v0, v1

    goto/16 :goto_4

    .line 1619
    :cond_9
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/s;->a:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/chathead/d;->U(Lcom/viber/voip/messages/ui/chathead/d;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1620
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/s;->a:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/chathead/d;->i(Lcom/viber/voip/messages/ui/chathead/d;)Lcom/viber/voip/messages/ui/chathead/a/a;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/viber/voip/messages/ui/chathead/a/a;->setVisibility(I)V

    .line 1622
    :cond_a
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/s;->a:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/chathead/d;->o(Lcom/viber/voip/messages/ui/chathead/d;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    .line 1643
    :cond_b
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "com.viber.voip.action.POPUP_SERVICE_ACTION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1644
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/s;->a:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v0, v3}, Lcom/viber/voip/messages/ui/chathead/d;->a(Lcom/viber/voip/messages/ui/chathead/d;Z)Z

    .line 1645
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/s;->a:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/chathead/d;->a(Lcom/viber/voip/messages/ui/chathead/d;)Lcom/viber/voip/messages/ui/chathead/a/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/chathead/a/l;->dismiss()V

    goto/16 :goto_0

    .line 1646
    :cond_c
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1647
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/s;->a:Lcom/viber/voip/messages/ui/chathead/d;

    new-instance v1, Lcom/viber/voip/messages/ui/chathead/au;

    iget-object v2, p0, Lcom/viber/voip/messages/ui/chathead/s;->a:Lcom/viber/voip/messages/ui/chathead/d;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/viber/voip/messages/ui/chathead/au;-><init>(Lcom/viber/voip/messages/ui/chathead/d;Lcom/viber/voip/messages/ui/chathead/e;)V

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/chathead/d;->a(Lcom/viber/voip/messages/ui/chathead/d;Lcom/viber/voip/messages/ui/chathead/au;)Lcom/viber/voip/messages/ui/chathead/au;

    .line 1648
    iget-object v1, p0, Lcom/viber/voip/messages/ui/chathead/s;->a:Lcom/viber/voip/messages/ui/chathead/d;

    const-string/jumbo v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-static {v1, v0}, Lcom/viber/voip/messages/ui/chathead/d;->a(Lcom/viber/voip/messages/ui/chathead/d;Landroid/telephony/TelephonyManager;)Landroid/telephony/TelephonyManager;

    .line 1649
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/s;->a:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/chathead/d;->X(Lcom/viber/voip/messages/ui/chathead/d;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/ui/chathead/s;->a:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v1}, Lcom/viber/voip/messages/ui/chathead/d;->W(Lcom/viber/voip/messages/ui/chathead/d;)Lcom/viber/voip/messages/ui/chathead/au;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto/16 :goto_0

    .line 1650
    :cond_d
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1651
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/s;->a:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v0, v3}, Lcom/viber/voip/messages/ui/chathead/d;->g(Lcom/viber/voip/messages/ui/chathead/d;Z)Z

    .line 1652
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->isOnForeground()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1653
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/s;->a:Lcom/viber/voip/messages/ui/chathead/d;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/chathead/s;->a:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v1}, Lcom/viber/voip/messages/ui/chathead/d;->k(Lcom/viber/voip/messages/ui/chathead/d;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/chathead/d;->a(Lcom/viber/voip/messages/ui/chathead/d;Landroid/content/Context;)V

    goto/16 :goto_0

    .line 1655
    :cond_e
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1656
    const-string/jumbo v0, "mRotationReceiver: ACTION_SCREEN_OFF"

    invoke-static {v0}, Lcom/viber/voip/messages/ui/chathead/d;->a(Ljava/lang/String;)V

    .line 1657
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/s;->a:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/chathead/d;->a(Lcom/viber/voip/messages/ui/chathead/d;)Lcom/viber/voip/messages/ui/chathead/a/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/chathead/a/l;->j()V

    .line 1658
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/s;->a:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v0, v2}, Lcom/viber/voip/messages/ui/chathead/d;->g(Lcom/viber/voip/messages/ui/chathead/d;Z)Z

    goto/16 :goto_0

    .line 1659
    :cond_f
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1660
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/s;->a:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/chathead/d;->i(Lcom/viber/voip/messages/ui/chathead/d;)Lcom/viber/voip/messages/ui/chathead/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/chathead/a/a;->invalidate()V

    .line 1661
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/s;->a:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/chathead/d;->B(Lcom/viber/voip/messages/ui/chathead/d;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/ui/chathead/s;->a:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v1}, Lcom/viber/voip/messages/ui/chathead/d;->i(Lcom/viber/voip/messages/ui/chathead/d;)Lcom/viber/voip/messages/ui/chathead/a/a;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/messages/ui/chathead/s;->a:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v2}, Lcom/viber/voip/messages/ui/chathead/d;->u(Lcom/viber/voip/messages/ui/chathead/d;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 1662
    :cond_10
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1663
    const-string/jumbo v0, "mRotationReceiver : ACTION_CLOSE_SYSTEM_DIALOGS"

    invoke-static {v0}, Lcom/viber/voip/messages/ui/chathead/d;->a(Ljava/lang/String;)V

    .line 1664
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/s;->a:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/chathead/d;->n(Lcom/viber/voip/messages/ui/chathead/d;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1665
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/s;->a:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/chathead/d;->a(Lcom/viber/voip/messages/ui/chathead/d;)Lcom/viber/voip/messages/ui/chathead/a/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/chathead/a/l;->j()V

    .line 1666
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/s;->a:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v0, v3}, Lcom/viber/voip/messages/ui/chathead/d;->a(Lcom/viber/voip/messages/ui/chathead/d;Z)Z

    .line 1667
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/s;->a:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v0, v2}, Lcom/viber/voip/messages/ui/chathead/d;->h(Lcom/viber/voip/messages/ui/chathead/d;Z)Z

    .line 1668
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/s;->a:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/chathead/d;->a(Lcom/viber/voip/messages/ui/chathead/d;)Lcom/viber/voip/messages/ui/chathead/a/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/chathead/a/l;->dismiss()V

    goto/16 :goto_0
.end method
