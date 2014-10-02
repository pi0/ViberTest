.class Lcom/viber/voip/messages/conversation/a/a/a/g;
.super Lcom/viber/voip/ui/b/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/viber/voip/ui/b/a",
        "<",
        "Lcom/viber/voip/messages/conversation/a/a/a;",
        "Lcom/viber/voip/messages/conversation/a/a/b/a/b;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/view/View;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/view/ViewStub;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/viber/voip/ui/b/a;-><init>(Landroid/view/View;)V

    .line 23
    const v0, 0x7f070307

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/g;->d:Landroid/view/ViewStub;

    .line 24
    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/g;->d:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/g;->a:Landroid/view/View;

    .line 62
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/g;->a:Landroid/view/View;

    const v1, 0x7f070312

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/g;->b:Landroid/view/View;

    .line 63
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/g;->a:Landroid/view/View;

    const v1, 0x7f0700e3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/g;->c:Landroid/widget/TextView;

    .line 64
    return-void
.end method


# virtual methods
.method public a(Lcom/viber/voip/messages/conversation/a/a/a;Lcom/viber/voip/messages/conversation/a/a/b/a/b;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x4

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 29
    invoke-interface {p1}, Lcom/viber/voip/messages/conversation/a/a/a;->i()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lcom/viber/voip/messages/conversation/a/a/a;->j()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/g;->a:Landroid/view/View;

    if-nez v0, :cond_1

    .line 32
    invoke-direct {p0}, Lcom/viber/voip/messages/conversation/a/a/a/g;->a()V

    .line 35
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/g;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_2

    .line 36
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/g;->a:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 38
    :cond_2
    invoke-interface {p1}, Lcom/viber/voip/messages/conversation/a/a/a;->j()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 39
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/g;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_3

    .line 40
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/g;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 41
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/g;->c:Landroid/widget/TextView;

    invoke-interface {p1}, Lcom/viber/voip/messages/conversation/a/a/a;->O()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/g;->c:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/viber/voip/messages/conversation/a/a/b/a/b;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 43
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/g;->c:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 49
    :cond_3
    :goto_0
    invoke-interface {p1}, Lcom/viber/voip/messages/conversation/a/a/a;->i()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 50
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/g;->b:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 57
    :cond_4
    :goto_1
    return-void

    .line 46
    :cond_5
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/g;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 52
    :cond_6
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/g;->b:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 55
    :cond_7
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/g;->a:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/g;->a:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public bridge synthetic a(Lcom/viber/voip/ui/b/f;Lcom/viber/voip/ui/b/a/a;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 13
    check-cast p1, Lcom/viber/voip/messages/conversation/a/a/a;

    check-cast p2, Lcom/viber/voip/messages/conversation/a/a/b/a/b;

    invoke-virtual {p0, p1, p2}, Lcom/viber/voip/messages/conversation/a/a/a/g;->a(Lcom/viber/voip/messages/conversation/a/a/a;Lcom/viber/voip/messages/conversation/a/a/b/a/b;)V

    return-void
.end method
