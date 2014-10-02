.class public Lcom/viber/voip/messages/adapters/a/a/e;
.super Lcom/viber/voip/ui/b/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/viber/voip/messages/adapters/a/a;",
        ">",
        "Lcom/viber/voip/ui/b/a",
        "<TT;",
        "Lcom/viber/voip/messages/adapters/a/b/a;",
        ">;"
    }
.end annotation


# instance fields
.field protected final a:Landroid/widget/TextView;


# direct methods
.method protected constructor <init>(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/viber/voip/ui/b/a;-><init>(Landroid/view/View;)V

    .line 19
    const v0, 0x7f0700e6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/viber/voip/messages/adapters/a/a/e;->a:Landroid/widget/TextView;

    .line 20
    return-void
.end method


# virtual methods
.method public a(Lcom/viber/voip/messages/adapters/a/a;Lcom/viber/voip/messages/adapters/a/b/a;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/viber/voip/messages/adapters/a/b/a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 24
    invoke-interface {p1}, Lcom/viber/voip/messages/adapters/a/a;->b()I

    move-result v0

    .line 27
    if-nez v0, :cond_0

    .line 28
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/a/a/e;->a:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 33
    :goto_0
    return-void

    .line 30
    :cond_0
    iget-object v1, p0, Lcom/viber/voip/messages/adapters/a/a/e;->a:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 31
    iget-object v1, p0, Lcom/viber/voip/messages/adapters/a/a/e;->a:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/viber/voip/messages/j;->b(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public bridge synthetic a(Lcom/viber/voip/ui/b/f;Lcom/viber/voip/ui/b/a/a;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 13
    check-cast p1, Lcom/viber/voip/messages/adapters/a/a;

    check-cast p2, Lcom/viber/voip/messages/adapters/a/b/a;

    invoke-virtual {p0, p1, p2}, Lcom/viber/voip/messages/adapters/a/a/e;->a(Lcom/viber/voip/messages/adapters/a/a;Lcom/viber/voip/messages/adapters/a/b/a;)V

    return-void
.end method
