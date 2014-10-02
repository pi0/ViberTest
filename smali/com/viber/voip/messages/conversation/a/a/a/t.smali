.class public Lcom/viber/voip/messages/conversation/a/a/a/t;
.super Lcom/viber/voip/ui/b/a;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/viber/voip/ui/b/a",
        "<",
        "Lcom/viber/voip/messages/conversation/a/a/a;",
        "Lcom/viber/voip/messages/conversation/a/a/b/a/b;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Lcom/viber/voip/messages/conversation/a/a/a;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/view/View;

.field private e:Lcom/viber/voip/messages/conversation/a/b/e;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/viber/voip/messages/conversation/a/a/a/t;-><init>(Landroid/view/View;Lcom/viber/voip/messages/conversation/a/b/e;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/viber/voip/messages/conversation/a/b/e;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/viber/voip/ui/b/a;-><init>(Landroid/view/View;)V

    .line 32
    iput-object p2, p0, Lcom/viber/voip/messages/conversation/a/a/a/t;->e:Lcom/viber/voip/messages/conversation/a/b/e;

    .line 33
    return-void
.end method

.method private a()V
    .locals 6

    .prologue
    const/high16 v5, 0x3f80

    const/4 v4, 0x0

    .line 45
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/t;->a:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/t;->k:Landroid/view/View;

    const v1, 0x7f070327

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/t;->a:Landroid/widget/TextView;

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/t;->a:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 68
    :goto_0
    return-void

    .line 52
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/t;->b:Lcom/viber/voip/messages/conversation/a/a/a;

    invoke-interface {v0}, Lcom/viber/voip/messages/conversation/a/a/a;->Q()Ljava/lang/String;

    move-result-object v0

    .line 53
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/a/a/a/t;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/t;->k:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0900ae

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 57
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/a/a/a/t;->b:Lcom/viber/voip/messages/conversation/a/a/a;

    invoke-interface {v1}, Lcom/viber/voip/messages/conversation/a/a/a;->r()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/a/a/a/t;->b:Lcom/viber/voip/messages/conversation/a/a/a;

    invoke-interface {v1}, Lcom/viber/voip/messages/conversation/a/a/a;->w()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 58
    :cond_2
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/a/a/a/t;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 59
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/a/a/a/t;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v4, v4, v4, v0}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    goto :goto_0

    .line 60
    :cond_3
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/a/a/a/t;->b:Lcom/viber/voip/messages/conversation/a/a/a;

    invoke-interface {v1}, Lcom/viber/voip/messages/conversation/a/a/a;->v()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 61
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/a/a/a/t;->a:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/viber/voip/messages/conversation/a/a/a/t;->a:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0900c5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 62
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/a/a/a/t;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v4, v4, v4, v0}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    goto :goto_0

    .line 65
    :cond_4
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/a/a/a/t;->a:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/viber/voip/messages/conversation/a/a/a/t;->k:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0900a2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 66
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/a/a/a/t;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v5, v4, v5, v0}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    goto :goto_0
.end method

.method private a(Lcom/viber/voip/messages/conversation/a/a/b/a/b;)V
    .locals 6
    .parameter

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 71
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/t;->b:Lcom/viber/voip/messages/conversation/a/a/a;

    invoke-interface {v0}, Lcom/viber/voip/messages/conversation/a/a/a;->f()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/t;->b:Lcom/viber/voip/messages/conversation/a/a/a;

    invoke-interface {v0}, Lcom/viber/voip/messages/conversation/a/a/a;->g()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/t;->b:Lcom/viber/voip/messages/conversation/a/a/a;

    invoke-interface {v0}, Lcom/viber/voip/messages/conversation/a/a/a;->e()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/t;->b:Lcom/viber/voip/messages/conversation/a/a/a;

    invoke-interface {v0}, Lcom/viber/voip/messages/conversation/a/a/a;->e()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "location"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/t;->b:Lcom/viber/voip/messages/conversation/a/a/a;

    invoke-interface {v0}, Lcom/viber/voip/messages/conversation/a/a/a;->R()I

    move-result v0

    if-nez v0, :cond_5

    :cond_1
    move v1, v3

    .line 77
    :goto_0
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/t;->k:Landroid/view/View;

    const v5, 0x7f070328

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/t;->c:Landroid/widget/ImageView;

    .line 79
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/t;->b:Lcom/viber/voip/messages/conversation/a/a/a;

    invoke-interface {v0}, Lcom/viber/voip/messages/conversation/a/a/a;->r()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/t;->b:Lcom/viber/voip/messages/conversation/a/a/a;

    invoke-interface {v0}, Lcom/viber/voip/messages/conversation/a/a/a;->w()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_2
    move v0, v3

    .line 80
    :goto_1
    iget-object v5, p0, Lcom/viber/voip/messages/conversation/a/a/a/t;->b:Lcom/viber/voip/messages/conversation/a/a/a;

    invoke-interface {v5}, Lcom/viber/voip/messages/conversation/a/a/a;->s()Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/viber/voip/messages/conversation/a/a/a/t;->b:Lcom/viber/voip/messages/conversation/a/a/a;

    invoke-interface {v5}, Lcom/viber/voip/messages/conversation/a/a/a;->w()Z

    move-result v5

    if-nez v5, :cond_7

    iget-object v5, p0, Lcom/viber/voip/messages/conversation/a/a/a/t;->b:Lcom/viber/voip/messages/conversation/a/a/a;

    invoke-interface {v5}, Lcom/viber/voip/messages/conversation/a/a/a;->x()Z

    move-result v5

    if-nez v5, :cond_7

    .line 82
    :goto_2
    if-eqz v3, :cond_9

    .line 83
    iget-object v3, p0, Lcom/viber/voip/messages/conversation/a/a/a/t;->k:Landroid/view/View;

    const v5, 0x7f070331

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/viber/voip/messages/conversation/a/a/a/t;->d:Landroid/view/View;

    .line 85
    iget-object v3, p0, Lcom/viber/voip/messages/conversation/a/a/a/t;->d:Landroid/view/View;

    if-eqz v3, :cond_3

    .line 86
    iget-object v5, p0, Lcom/viber/voip/messages/conversation/a/a/a/t;->d:Landroid/view/View;

    if-eqz v1, :cond_8

    move v3, v2

    :goto_3
    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    .line 93
    :cond_3
    :goto_4
    iget-object v3, p0, Lcom/viber/voip/messages/conversation/a/a/a/t;->d:Landroid/view/View;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/viber/voip/messages/conversation/a/a/a/t;->e:Lcom/viber/voip/messages/conversation/a/b/e;

    if-eqz v3, :cond_4

    .line 94
    iget-object v5, p0, Lcom/viber/voip/messages/conversation/a/a/a/t;->d:Landroid/view/View;

    if-eqz v1, :cond_a

    move-object v3, p0

    :goto_5
    invoke-virtual {v5, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    :cond_4
    iget-object v3, p0, Lcom/viber/voip/messages/conversation/a/a/a/t;->c:Landroid/widget/ImageView;

    if-nez v3, :cond_b

    .line 102
    :goto_6
    return-void

    :cond_5
    move v1, v2

    .line 71
    goto :goto_0

    :cond_6
    move v0, v2

    .line 79
    goto :goto_1

    :cond_7
    move v3, v2

    .line 80
    goto :goto_2

    :cond_8
    move v3, v4

    .line 86
    goto :goto_3

    .line 90
    :cond_9
    iget-object v3, p0, Lcom/viber/voip/messages/conversation/a/a/a/t;->k:Landroid/view/View;

    const v5, 0x7f070326

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/viber/voip/messages/conversation/a/a/a/t;->d:Landroid/view/View;

    goto :goto_4

    .line 94
    :cond_a
    const/4 v3, 0x0

    goto :goto_5

    .line 98
    :cond_b
    iget-object v3, p0, Lcom/viber/voip/messages/conversation/a/a/a/t;->c:Landroid/widget/ImageView;

    if-eqz v1, :cond_c

    :goto_7
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 100
    if-eqz v0, :cond_d

    const v0, 0x7f0202f3

    .line 101
    :goto_8
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/a/a/a/t;->c:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_6

    :cond_c
    move v2, v4

    .line 98
    goto :goto_7

    .line 100
    :cond_d
    const v0, 0x7f0202f4

    goto :goto_8
.end method


# virtual methods
.method public a(Lcom/viber/voip/messages/conversation/a/a/a;Lcom/viber/voip/messages/conversation/a/a/b/a/b;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Lcom/viber/voip/messages/conversation/a/a/a/t;->b:Lcom/viber/voip/messages/conversation/a/a/a;

    .line 40
    invoke-direct {p0}, Lcom/viber/voip/messages/conversation/a/a/a/t;->a()V

    .line 41
    invoke-direct {p0, p2}, Lcom/viber/voip/messages/conversation/a/a/a/t;->a(Lcom/viber/voip/messages/conversation/a/a/b/a/b;)V

    .line 42
    return-void
.end method

.method public bridge synthetic a(Lcom/viber/voip/ui/b/f;Lcom/viber/voip/ui/b/a/a;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 18
    check-cast p1, Lcom/viber/voip/messages/conversation/a/a/a;

    check-cast p2, Lcom/viber/voip/messages/conversation/a/a/b/a/b;

    invoke-virtual {p0, p1, p2}, Lcom/viber/voip/messages/conversation/a/a/a/t;->a(Lcom/viber/voip/messages/conversation/a/a/a;Lcom/viber/voip/messages/conversation/a/a/b/a/b;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 106
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/t;->e:Lcom/viber/voip/messages/conversation/a/b/e;

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/a/a/a/t;->b:Lcom/viber/voip/messages/conversation/a/a/a;

    invoke-interface {v0, v1}, Lcom/viber/voip/messages/conversation/a/b/e;->g(Lcom/viber/voip/messages/conversation/a/a/a;)V

    .line 107
    return-void
.end method
