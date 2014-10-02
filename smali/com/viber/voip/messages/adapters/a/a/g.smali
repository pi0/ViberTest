.class public Lcom/viber/voip/messages/adapters/a/a/g;
.super Lcom/viber/voip/messages/adapters/a/a/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/viber/voip/messages/adapters/a/a/c",
        "<",
        "Lcom/viber/voip/messages/adapters/a/b;",
        ">;"
    }
.end annotation


# instance fields
.field private final h:Landroid/widget/TextView;

.field private final i:Landroid/view/View;


# direct methods
.method protected constructor <init>(Landroid/view/View;Lcom/viber/voip/messages/h;Lcom/viber/voip/messages/ui/bb;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 20
    invoke-direct {p0, p1, p2, p3}, Lcom/viber/voip/messages/adapters/a/a/c;-><init>(Landroid/view/View;Lcom/viber/voip/messages/h;Lcom/viber/voip/messages/ui/bb;)V

    .line 21
    const v0, 0x7f0700eb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/viber/voip/messages/adapters/a/a/g;->h:Landroid/widget/TextView;

    .line 22
    const v0, 0x7f0700ea

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/adapters/a/a/g;->i:Landroid/view/View;

    .line 23
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/viber/voip/messages/adapters/a/a;Lcom/viber/voip/messages/adapters/a/b/a;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 14
    check-cast p1, Lcom/viber/voip/messages/adapters/a/b;

    invoke-virtual {p0, p1, p2}, Lcom/viber/voip/messages/adapters/a/a/g;->a(Lcom/viber/voip/messages/adapters/a/b;Lcom/viber/voip/messages/adapters/a/b/a;)V

    return-void
.end method

.method public a(Lcom/viber/voip/messages/adapters/a/b;Lcom/viber/voip/messages/adapters/a/b/a;)V
    .locals 7
    .parameter
    .parameter
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 28
    invoke-super {p0, p1, p2}, Lcom/viber/voip/messages/adapters/a/a/c;->a(Lcom/viber/voip/messages/adapters/a/a;Lcom/viber/voip/messages/adapters/a/b/a;)V

    .line 30
    iget-object v2, p0, Lcom/viber/voip/messages/adapters/a/a/g;->h:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/viber/voip/messages/adapters/a/a/g;->k:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0672

    new-array v5, v0, [Ljava/lang/Object;

    invoke-interface {p1}, Lcom/viber/voip/messages/adapters/a/b;->E()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    invoke-interface {p1}, Lcom/viber/voip/messages/adapters/a/b;->D()I

    move-result v2

    if-ne v0, v2, :cond_0

    .line 33
    :goto_0
    invoke-interface {p1}, Lcom/viber/voip/messages/adapters/a/b;->H()Z

    move-result v2

    .line 34
    iget-object v3, p0, Lcom/viber/voip/messages/adapters/a/a/g;->a:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    const v2, 0x7f02041f

    :goto_1
    invoke-virtual {v3, v1, v1, v2, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 35
    iget-object v2, p0, Lcom/viber/voip/messages/adapters/a/a/g;->i:Landroid/view/View;

    if-eqz v0, :cond_2

    :goto_2
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 37
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/a/a/g;->h:Landroid/widget/TextView;

    invoke-interface {p1}, Lcom/viber/voip/messages/adapters/a/b;->d()Z

    move-result v1

    invoke-virtual {p2}, Lcom/viber/voip/messages/adapters/a/b/a;->h()Z

    move-result v2

    invoke-virtual {p2, v1, v2}, Lcom/viber/voip/messages/adapters/a/b/a;->b(ZZ)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 38
    return-void

    :cond_0
    move v0, v1

    .line 32
    goto :goto_0

    :cond_1
    move v2, v1

    .line 34
    goto :goto_1

    .line 35
    :cond_2
    const/4 v1, 0x4

    goto :goto_2
.end method

.method public bridge synthetic a(Lcom/viber/voip/ui/b/f;Lcom/viber/voip/ui/b/a/a;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 14
    check-cast p1, Lcom/viber/voip/messages/adapters/a/b;

    check-cast p2, Lcom/viber/voip/messages/adapters/a/b/a;

    invoke-virtual {p0, p1, p2}, Lcom/viber/voip/messages/adapters/a/a/g;->a(Lcom/viber/voip/messages/adapters/a/b;Lcom/viber/voip/messages/adapters/a/b/a;)V

    return-void
.end method
