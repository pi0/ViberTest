.class abstract Lcom/viber/voip/messages/conversation/a/a/a/l;
.super Lcom/viber/voip/messages/conversation/a/a/a/k;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/ui/b/c;


# instance fields
.field private a:Landroid/view/View;

.field private b:Lcom/viber/voip/messages/conversation/a/r;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/support/v4/app/Fragment;ZLcom/viber/voip/messages/ui/bb;Lcom/viber/voip/messages/conversation/a/r;Lcom/viber/voip/messages/conversation/a/s;Lcom/viber/voip/messages/conversation/a/s;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/conversation/a/a/a/k;-><init>(Landroid/view/View;)V

    .line 28
    iput-object p5, p0, Lcom/viber/voip/messages/conversation/a/a/a/l;->b:Lcom/viber/voip/messages/conversation/a/r;

    .line 29
    const v0, 0x7f070309

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/l;->a:Landroid/view/View;

    .line 31
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/l;->j:Ljava/util/List;

    new-instance v1, Lcom/viber/voip/messages/conversation/a/a/a/g;

    invoke-direct {v1, p1}, Lcom/viber/voip/messages/conversation/a/a/a/g;-><init>(Landroid/view/View;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/a/a/a/l;->j:Ljava/util/List;

    new-instance v2, Lcom/viber/voip/messages/conversation/a/a/a/a;

    move-object v0, p2

    check-cast v0, Lcom/viber/voip/messages/conversation/a/b/a;

    invoke-direct {v2, p1, v0}, Lcom/viber/voip/messages/conversation/a/a/a/a;-><init>(Landroid/view/View;Lcom/viber/voip/messages/conversation/a/b/a;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    iget-object v7, p0, Lcom/viber/voip/messages/conversation/a/a/a/l;->j:Ljava/util/List;

    new-instance v0, Lcom/viber/voip/messages/conversation/a/a/a/b;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p0

    move-object v4, p4

    move-object v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/viber/voip/messages/conversation/a/a/a/b;-><init>(Landroid/view/View;Landroid/support/v4/app/Fragment;Lcom/viber/voip/messages/conversation/a/a/a/k;Lcom/viber/voip/messages/ui/bb;Lcom/viber/voip/messages/conversation/a/s;Lcom/viber/voip/messages/conversation/a/s;)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/l;->j:Ljava/util/List;

    new-instance v1, Lcom/viber/voip/messages/conversation/a/a/a/t;

    invoke-direct {v1, p1}, Lcom/viber/voip/messages/conversation/a/a/a/t;-><init>(Landroid/view/View;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 59
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/l;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/ui/b/a;

    .line 60
    instance-of v2, v0, Lcom/viber/voip/ui/b/c;

    if-eqz v2, :cond_0

    .line 61
    check-cast v0, Lcom/viber/voip/ui/b/c;

    .line 62
    invoke-interface {v0}, Lcom/viber/voip/ui/b/c;->a()V

    goto :goto_0

    .line 65
    :cond_1
    return-void
.end method

.method public a(Lcom/viber/voip/messages/conversation/a/a/a;Lcom/viber/voip/messages/conversation/a/a/b/a/b;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 45
    invoke-super {p0, p1, p2}, Lcom/viber/voip/messages/conversation/a/a/a/k;->a(Lcom/viber/voip/ui/b/f;Lcom/viber/voip/ui/b/a/a;)V

    .line 47
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/l;->a:Landroid/view/View;

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/a/a/a/l;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p2, p1}, Lcom/viber/voip/messages/conversation/a/a/b/a/b;->h(Lcom/viber/voip/messages/conversation/a/a/a;)I

    move-result v2

    iget-object v3, p0, Lcom/viber/voip/messages/conversation/a/a/a/l;->a:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    invoke-virtual {p2, p1}, Lcom/viber/voip/messages/conversation/a/a/b/a/b;->i(Lcom/viber/voip/messages/conversation/a/a/a;)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 53
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/l;->b:Lcom/viber/voip/messages/conversation/a/r;

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/a/a/a/l;->a:Landroid/view/View;

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/viber/voip/messages/conversation/a/a/a/l;->a(Lcom/viber/voip/messages/conversation/a/a/a;Lcom/viber/voip/messages/conversation/a/a/b/a;Lcom/viber/voip/messages/conversation/a/r;Landroid/view/View;)V

    .line 55
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

    invoke-virtual {p0, p1, p2}, Lcom/viber/voip/messages/conversation/a/a/a/l;->a(Lcom/viber/voip/messages/conversation/a/a/a;Lcom/viber/voip/messages/conversation/a/a/b/a/b;)V

    return-void
.end method
