.class public Lcom/viber/voip/messages/adapters/a/a/d;
.super Lcom/viber/voip/messages/adapters/a/a/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/viber/voip/messages/adapters/a/a;",
        ">",
        "Lcom/viber/voip/messages/adapters/a/a/e",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final b:Landroid/view/View;


# direct methods
.method protected constructor <init>(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/adapters/a/a/e;-><init>(Landroid/view/View;)V

    .line 17
    const v0, 0x7f0700e5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/adapters/a/a/d;->b:Landroid/view/View;

    .line 18
    return-void
.end method


# virtual methods
.method public a(Lcom/viber/voip/messages/adapters/a/a;Lcom/viber/voip/messages/adapters/a/b/a;)V
    .locals 5
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
    const/4 v1, 0x4

    const/4 v0, 0x0

    .line 22
    invoke-interface {p1}, Lcom/viber/voip/messages/adapters/a/a;->d()Z

    move-result v2

    .line 29
    invoke-interface {p1}, Lcom/viber/voip/messages/adapters/a/a;->b()I

    move-result v3

    .line 30
    invoke-interface {p1}, Lcom/viber/voip/messages/adapters/a/a;->c()I

    move-result v4

    .line 31
    if-eqz v2, :cond_0

    .line 32
    iget-object v2, p0, Lcom/viber/voip/messages/adapters/a/a/d;->a:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 33
    iget-object v2, p0, Lcom/viber/voip/messages/adapters/a/a/d;->a:Landroid/widget/TextView;

    add-int/2addr v3, v4

    invoke-static {v3}, Lcom/viber/voip/messages/j;->b(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    :goto_0
    iget-object v2, p0, Lcom/viber/voip/messages/adapters/a/a/d;->b:Landroid/view/View;

    if-eqz v4, :cond_1

    :goto_1
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 39
    return-void

    .line 35
    :cond_0
    iget-object v2, p0, Lcom/viber/voip/messages/adapters/a/a/d;->a:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 37
    goto :goto_1
.end method

.method public bridge synthetic a(Lcom/viber/voip/ui/b/f;Lcom/viber/voip/ui/b/a/a;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 11
    check-cast p1, Lcom/viber/voip/messages/adapters/a/a;

    check-cast p2, Lcom/viber/voip/messages/adapters/a/b/a;

    invoke-virtual {p0, p1, p2}, Lcom/viber/voip/messages/adapters/a/a/d;->a(Lcom/viber/voip/messages/adapters/a/a;Lcom/viber/voip/messages/adapters/a/b/a;)V

    return-void
.end method
