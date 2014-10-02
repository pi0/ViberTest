.class Lcom/viber/voip/messages/ui/chathead/o;
.super Lcom/nineoldandroids/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/viber/voip/messages/ui/chathead/a/a;

.field final synthetic c:Lcom/viber/voip/messages/ui/chathead/d;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/ui/chathead/d;ZLcom/viber/voip/messages/ui/chathead/a/a;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1433
    iput-object p1, p0, Lcom/viber/voip/messages/ui/chathead/o;->c:Lcom/viber/voip/messages/ui/chathead/d;

    iput-boolean p2, p0, Lcom/viber/voip/messages/ui/chathead/o;->a:Z

    iput-object p3, p0, Lcom/viber/voip/messages/ui/chathead/o;->b:Lcom/viber/voip/messages/ui/chathead/a/a;

    invoke-direct {p0}, Lcom/nineoldandroids/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lcom/nineoldandroids/animation/Animator;)V
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    const v3, 0x3f4ccccd

    .line 1437
    iget-object v1, p0, Lcom/viber/voip/messages/ui/chathead/o;->c:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v1}, Lcom/viber/voip/messages/ui/chathead/d;->g(Lcom/viber/voip/messages/ui/chathead/d;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1462
    :cond_0
    :goto_0
    return-void

    .line 1438
    :cond_1
    iget-boolean v1, p0, Lcom/viber/voip/messages/ui/chathead/o;->a:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/viber/voip/messages/ui/chathead/o;->c:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v1}, Lcom/viber/voip/messages/ui/chathead/d;->L(Lcom/viber/voip/messages/ui/chathead/d;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1439
    iget-object v1, p0, Lcom/viber/voip/messages/ui/chathead/o;->c:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v1}, Lcom/viber/voip/messages/ui/chathead/d;->n(Lcom/viber/voip/messages/ui/chathead/d;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1440
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/o;->c:Lcom/viber/voip/messages/ui/chathead/d;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/chathead/o;->c:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v1}, Lcom/viber/voip/messages/ui/chathead/d;->k(Lcom/viber/voip/messages/ui/chathead/d;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/chathead/d;->a(Lcom/viber/voip/messages/ui/chathead/d;Landroid/content/Context;)V

    goto :goto_0

    .line 1442
    :cond_2
    iget-object v1, p0, Lcom/viber/voip/messages/ui/chathead/o;->c:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v1}, Lcom/viber/voip/messages/ui/chathead/d;->t(Lcom/viber/voip/messages/ui/chathead/d;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_5

    .line 1443
    iget-object v1, p0, Lcom/viber/voip/messages/ui/chathead/o;->c:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v1, v0}, Lcom/viber/voip/messages/ui/chathead/d;->d(Lcom/viber/voip/messages/ui/chathead/d;Z)Z

    .line 1444
    iget-object v1, p0, Lcom/viber/voip/messages/ui/chathead/o;->c:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v1}, Lcom/viber/voip/messages/ui/chathead/d;->M(Lcom/viber/voip/messages/ui/chathead/d;)Landroid/widget/RelativeLayout;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1445
    iget-object v1, p0, Lcom/viber/voip/messages/ui/chathead/o;->c:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v1}, Lcom/viber/voip/messages/ui/chathead/d;->y(Lcom/viber/voip/messages/ui/chathead/d;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/nineoldandroids/view/ViewHelper;->setScaleX(Landroid/view/View;F)V

    .line 1446
    iget-object v1, p0, Lcom/viber/voip/messages/ui/chathead/o;->c:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v1}, Lcom/viber/voip/messages/ui/chathead/d;->y(Lcom/viber/voip/messages/ui/chathead/d;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/nineoldandroids/view/ViewHelper;->setScaleY(Landroid/view/View;F)V

    .line 1447
    iget-object v1, p0, Lcom/viber/voip/messages/ui/chathead/o;->c:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v1}, Lcom/viber/voip/messages/ui/chathead/d;->j(Lcom/viber/voip/messages/ui/chathead/d;)Landroid/widget/FrameLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/messages/ui/chathead/o;->b:Lcom/viber/voip/messages/ui/chathead/a/a;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->indexOfChild(Landroid/view/View;)I

    move-result v2

    .line 1448
    iget-object v1, p0, Lcom/viber/voip/messages/ui/chathead/o;->c:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v1}, Lcom/viber/voip/messages/ui/chathead/d;->j(Lcom/viber/voip/messages/ui/chathead/d;)Landroid/widget/FrameLayout;

    move-result-object v1

    iget-object v3, p0, Lcom/viber/voip/messages/ui/chathead/o;->b:Lcom/viber/voip/messages/ui/chathead/a/a;

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 1449
    iget-object v1, p0, Lcom/viber/voip/messages/ui/chathead/o;->c:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v1}, Lcom/viber/voip/messages/ui/chathead/d;->t(Lcom/viber/voip/messages/ui/chathead/d;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v3, p0, Lcom/viber/voip/messages/ui/chathead/o;->c:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v3}, Lcom/viber/voip/messages/ui/chathead/d;->t(Lcom/viber/voip/messages/ui/chathead/d;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move v1, v0

    .line 1450
    :goto_1
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/o;->c:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/chathead/d;->t(Lcom/viber/voip/messages/ui/chathead/d;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 1451
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/o;->c:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/chathead/d;->t(Lcom/viber/voip/messages/ui/chathead/d;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/ui/chathead/b;

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/chathead/b;->a()Lcom/viber/voip/messages/ui/chathead/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/chathead/a/a;->bringToFront()V

    .line 1450
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 1453
    :cond_3
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/o;->c:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/chathead/d;->D(Lcom/viber/voip/messages/ui/chathead/d;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1454
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/o;->c:Lcom/viber/voip/messages/ui/chathead/d;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/chathead/o;->c:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v1}, Lcom/viber/voip/messages/ui/chathead/d;->E(Lcom/viber/voip/messages/ui/chathead/d;)Lcom/viber/voip/messages/ui/chathead/a/a;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/chathead/d;->a(Lcom/viber/voip/messages/ui/chathead/d;Lcom/viber/voip/messages/ui/chathead/a/a;)Lcom/viber/voip/messages/ui/chathead/a/a;

    .line 1456
    :cond_4
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/o;->c:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v0, v2}, Lcom/viber/voip/messages/ui/chathead/d;->a(Lcom/viber/voip/messages/ui/chathead/d;I)V

    goto/16 :goto_0

    .line 1458
    :cond_5
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/o;->c:Lcom/viber/voip/messages/ui/chathead/d;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/chathead/o;->c:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v1}, Lcom/viber/voip/messages/ui/chathead/d;->k(Lcom/viber/voip/messages/ui/chathead/d;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/chathead/d;->a(Lcom/viber/voip/messages/ui/chathead/d;Landroid/content/Context;)V

    goto/16 :goto_0
.end method
