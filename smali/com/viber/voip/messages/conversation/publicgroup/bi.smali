.class public Lcom/viber/voip/messages/conversation/publicgroup/bi;
.super Lcom/viber/voip/ui/e;
.source "SourceFile"


# instance fields
.field public a:Landroid/widget/TextView;

.field public b:Landroid/widget/TextView;

.field public c:Landroid/widget/Button;

.field public d:Landroid/view/View;

.field public e:Landroid/view/View;

.field public f:Lit/sephiroth/android/library/widget/HListView;

.field public g:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 485
    invoke-direct {p0}, Lcom/viber/voip/ui/e;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 514
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/publicgroup/bi;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 523
    :goto_0
    return-void

    .line 517
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/conversation/publicgroup/bi;->b(Z)V

    .line 518
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/bi;->c:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 519
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/bi;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 520
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/bi;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 521
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/bi;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 522
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/bi;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/viber/jni/PublicGroupInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 559
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/publicgroup/bi;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 571
    :goto_0
    return-void

    .line 562
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/conversation/publicgroup/bi;->a(Z)V

    .line 564
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/bi;->f:Lit/sephiroth/android/library/widget/HListView;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/HListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-nez v0, :cond_1

    .line 565
    new-instance v0, Lcom/viber/voip/messages/conversation/publicgroup/bl;

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/bi;->a:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/viber/voip/messages/conversation/publicgroup/bl;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 566
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/bi;->f:Lit/sephiroth/android/library/widget/HListView;

    invoke-virtual {v1, v0}, Lit/sephiroth/android/library/widget/HListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 568
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/bi;->f:Lit/sephiroth/android/library/widget/HListView;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/HListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/conversation/publicgroup/bl;

    .line 569
    invoke-virtual {v0, p1}, Lcom/viber/voip/messages/conversation/publicgroup/bl;->a(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public a(Z)V
    .locals 5
    .parameter

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 526
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/publicgroup/bi;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 540
    :goto_0
    return-void

    .line 529
    :cond_0
    invoke-virtual {p0, v2}, Lcom/viber/voip/messages/conversation/publicgroup/bi;->b(Z)V

    .line 530
    iget-object v3, p0, Lcom/viber/voip/messages/conversation/publicgroup/bi;->c:Landroid/widget/Button;

    if-eqz p1, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 531
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/bi;->c:Landroid/widget/Button;

    iget-object v3, p0, Lcom/viber/voip/messages/conversation/publicgroup/bi;->c:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0c0694

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 532
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/bi;->a:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/viber/voip/messages/conversation/publicgroup/bi;->c:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a01fa

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 533
    iget-object v3, p0, Lcom/viber/voip/messages/conversation/publicgroup/bi;->b:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 534
    iget-object v3, p0, Lcom/viber/voip/messages/conversation/publicgroup/bi;->f:Lit/sephiroth/android/library/widget/HListView;

    if-eqz p1, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Lit/sephiroth/android/library/widget/HListView;->setVisibility(I)V

    .line 535
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/bi;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 536
    iget-object v2, p0, Lcom/viber/voip/messages/conversation/publicgroup/bi;->a:Landroid/widget/TextView;

    if-eqz p1, :cond_4

    const v0, 0x7f0c0671

    :goto_4
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 537
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/bi;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 538
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/bi;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 539
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/bi;->f:Lit/sephiroth/android/library/widget/HListView;

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/bi;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Lit/sephiroth/android/library/widget/HListView;->setEmptyView(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    move v0, v2

    .line 530
    goto :goto_1

    :cond_2
    move v0, v2

    .line 533
    goto :goto_2

    :cond_3
    move v0, v2

    .line 534
    goto :goto_3

    .line 536
    :cond_4
    const v0, 0x7f0c0691

    goto :goto_4
.end method

.method public a(Landroid/view/View;Landroid/view/View$OnClickListener;Lit/sephiroth/android/library/widget/y;)Z
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 495
    invoke-super {p0, p1}, Lcom/viber/voip/ui/e;->a(Landroid/view/View;)Z

    move-result v0

    .line 496
    if-nez v0, :cond_0

    .line 497
    const/4 v0, 0x0

    .line 510
    :goto_0
    return v0

    .line 499
    :cond_0
    const v0, 0x7f0700ff

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/bi;->c:Landroid/widget/Button;

    .line 500
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/bi;->c:Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 501
    const v0, 0x7f070107

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/bi;->a:Landroid/widget/TextView;

    .line 502
    const v0, 0x7f070108

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/bi;->b:Landroid/widget/TextView;

    .line 503
    const v0, 0x7f07010a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/bi;->g:Landroid/view/View;

    .line 504
    const v0, 0x7f070109

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lit/sephiroth/android/library/widget/HListView;

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/bi;->f:Lit/sephiroth/android/library/widget/HListView;

    .line 505
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/bi;->f:Lit/sephiroth/android/library/widget/HListView;

    invoke-virtual {v0, p3}, Lit/sephiroth/android/library/widget/HListView;->setOnItemClickListener(Lit/sephiroth/android/library/widget/y;)V

    .line 506
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/bi;->f:Lit/sephiroth/android/library/widget/HListView;

    invoke-virtual {v0, v1}, Lit/sephiroth/android/library/widget/HListView;->setNeedInterceptEvents(Z)V

    .line 507
    const v0, 0x7f07010b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/bi;->d:Landroid/view/View;

    .line 508
    const v0, 0x7f07010c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/bi;->e:Landroid/view/View;

    move v0, v1

    .line 510
    goto :goto_0
.end method

.method public b()V
    .locals 4

    .prologue
    const/16 v1, 0x8

    const/4 v3, 0x0

    .line 543
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/publicgroup/bi;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 552
    :goto_0
    return-void

    .line 546
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/bi;->d:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 547
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/bi;->e:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 548
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/bi;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 549
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/bi;->f:Lit/sephiroth/android/library/widget/HListView;

    invoke-virtual {v0, v1}, Lit/sephiroth/android/library/widget/HListView;->setVisibility(I)V

    .line 550
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/bi;->c:Landroid/widget/Button;

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/bi;->c:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c0333

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 551
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/bi;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/bi;->c:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a01fb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 555
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/bi;->d:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/bi;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/viber/jni/PublicGroupInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 574
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/bi;->f:Lit/sephiroth/android/library/widget/HListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/bi;->f:Lit/sephiroth/android/library/widget/HListView;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/HListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/bi;->f:Lit/sephiroth/android/library/widget/HListView;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/HListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/conversation/publicgroup/bl;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/publicgroup/bl;->a()Ljava/util/ArrayList;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
