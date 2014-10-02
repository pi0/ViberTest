.class public Lcom/viber/voip/messages/conversation/a/a/a/q;
.super Lcom/viber/voip/messages/conversation/a/a/a/r;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/support/v4/app/Fragment;Lcom/viber/voip/messages/conversation/a/r;Lcom/viber/voip/messages/conversation/a/s;Lcom/viber/voip/messages/conversation/a/s;Landroid/widget/CompoundButton$OnCheckedChangeListener;Lcom/viber/voip/stickers/b;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    .line 24
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/viber/voip/messages/conversation/a/a/a/r;-><init>(Landroid/view/View;Landroid/support/v4/app/Fragment;Lcom/viber/voip/messages/conversation/a/r;Lcom/viber/voip/messages/conversation/a/s;Lcom/viber/voip/messages/conversation/a/s;Lcom/viber/voip/stickers/b;)V

    .line 26
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/q;->e:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setMinimumWidth(I)V

    .line 28
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/q;->j:Ljava/util/List;

    new-instance v1, Lcom/viber/voip/messages/conversation/a/a/a/i;

    invoke-direct {v1, p1, p0, p6}, Lcom/viber/voip/messages/conversation/a/a/a/i;-><init>(Landroid/view/View;Lcom/viber/voip/messages/conversation/a/a/a/k;Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/a/a/a/q;->j:Ljava/util/List;

    new-instance v2, Lcom/viber/voip/messages/conversation/a/a/a/p;

    move-object v0, p2

    check-cast v0, Lcom/viber/voip/messages/conversation/a/b/f;

    invoke-direct {v2, p1, v0}, Lcom/viber/voip/messages/conversation/a/a/a/p;-><init>(Landroid/view/View;Lcom/viber/voip/messages/conversation/a/b/f;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/q;->j:Ljava/util/List;

    new-instance v1, Lcom/viber/voip/messages/conversation/a/a/a/m;

    check-cast p2, Lcom/viber/voip/messages/conversation/a/b/e;

    invoke-direct {v1, p1, p2, v7}, Lcom/viber/voip/messages/conversation/a/a/a/m;-><init>(Landroid/view/View;Lcom/viber/voip/messages/conversation/a/b/e;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    return-void
.end method


# virtual methods
.method public a(Lcom/viber/voip/messages/conversation/a/a/a;Lcom/viber/voip/messages/conversation/a/a/b/a/b;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 36
    invoke-super {p0, p1, p2}, Lcom/viber/voip/messages/conversation/a/a/a/r;->a(Lcom/viber/voip/messages/conversation/a/a/a;Lcom/viber/voip/messages/conversation/a/a/b/a/b;)V

    .line 38
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/a/a/a/q;->a()Lcom/viber/voip/stickers/c/a;

    move-result-object v0

    .line 39
    if-eqz v0, :cond_0

    .line 40
    invoke-virtual {p2}, Lcom/viber/voip/messages/conversation/a/a/b/a/b;->n()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/viber/voip/messages/conversation/a/a/a/q;->a(Lcom/viber/voip/stickers/c/a;Z)V

    .line 42
    :cond_0
    return-void
.end method

.method public bridge synthetic a(Lcom/viber/voip/ui/b/f;Lcom/viber/voip/ui/b/a/a;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 17
    check-cast p1, Lcom/viber/voip/messages/conversation/a/a/a;

    check-cast p2, Lcom/viber/voip/messages/conversation/a/a/b/a/b;

    invoke-virtual {p0, p1, p2}, Lcom/viber/voip/messages/conversation/a/a/a/q;->a(Lcom/viber/voip/messages/conversation/a/a/a;Lcom/viber/voip/messages/conversation/a/a/b/a/b;)V

    return-void
.end method
