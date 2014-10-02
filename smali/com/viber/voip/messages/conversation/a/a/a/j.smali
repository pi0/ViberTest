.class public Lcom/viber/voip/messages/conversation/a/a/a/j;
.super Lcom/viber/voip/messages/conversation/a/a/a/r;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private final l:Landroid/view/View;

.field private final m:Landroid/support/v4/app/Fragment;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/support/v4/app/Fragment;Lcom/viber/voip/messages/conversation/a/r;Lcom/viber/voip/messages/conversation/a/s;Lcom/viber/voip/messages/conversation/a/s;Landroid/widget/CompoundButton$OnCheckedChangeListener;Lcom/viber/voip/stickers/b;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 28
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/viber/voip/messages/conversation/a/a/a/r;-><init>(Landroid/view/View;Landroid/support/v4/app/Fragment;Lcom/viber/voip/messages/conversation/a/r;Lcom/viber/voip/messages/conversation/a/s;Lcom/viber/voip/messages/conversation/a/s;Lcom/viber/voip/stickers/b;)V

    .line 30
    const v0, 0x7f070323

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/j;->l:Landroid/view/View;

    .line 31
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/j;->l:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/j;->j:Ljava/util/List;

    new-instance v1, Lcom/viber/voip/messages/conversation/a/a/a/i;

    invoke-direct {v1, p1, p0, p6}, Lcom/viber/voip/messages/conversation/a/a/a/i;-><init>(Landroid/view/View;Lcom/viber/voip/messages/conversation/a/a/a/k;Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/a/a/a/j;->j:Ljava/util/List;

    new-instance v2, Lcom/viber/voip/messages/conversation/a/a/a/m;

    move-object v0, p2

    check-cast v0, Lcom/viber/voip/messages/conversation/a/b/e;

    const/4 v3, 0x1

    invoke-direct {v2, p1, v0, v3}, Lcom/viber/voip/messages/conversation/a/a/a/m;-><init>(Landroid/view/View;Lcom/viber/voip/messages/conversation/a/b/e;Z)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    iput-object p2, p0, Lcom/viber/voip/messages/conversation/a/a/a/j;->m:Landroid/support/v4/app/Fragment;

    .line 35
    return-void
.end method


# virtual methods
.method public a(Lcom/viber/voip/messages/conversation/a/a/a;Lcom/viber/voip/messages/conversation/a/a/b/a/b;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 39
    invoke-super {p0, p1, p2}, Lcom/viber/voip/messages/conversation/a/a/a/r;->a(Lcom/viber/voip/messages/conversation/a/a/a;Lcom/viber/voip/messages/conversation/a/a/b/a/b;)V

    .line 40
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/a/a/a/j;->a()Lcom/viber/voip/stickers/c/a;

    move-result-object v0

    .line 41
    if-eqz v0, :cond_0

    .line 42
    invoke-virtual {p2}, Lcom/viber/voip/messages/conversation/a/a/b/a/b;->n()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/viber/voip/messages/conversation/a/a/a/j;->a(Lcom/viber/voip/stickers/c/a;Z)V

    .line 59
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/a/a/a/j;->l:Landroid/view/View;

    iget-object v2, v0, Lcom/viber/voip/stickers/c/a;->c:Lcom/viber/voip/stickers/c/c;

    sget-object v3, Lcom/viber/voip/stickers/c/c;->c:Lcom/viber/voip/stickers/c/c;

    if-ne v2, v3, :cond_1

    invoke-virtual {v0}, Lcom/viber/voip/stickers/c/a;->e()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Lcom/viber/voip/messages/conversation/a/a/a;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 61
    :cond_0
    return-void

    .line 59
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public bridge synthetic a(Lcom/viber/voip/ui/b/f;Lcom/viber/voip/ui/b/a/a;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 20
    check-cast p1, Lcom/viber/voip/messages/conversation/a/a/a;

    check-cast p2, Lcom/viber/voip/messages/conversation/a/a/b/a/b;

    invoke-virtual {p0, p1, p2}, Lcom/viber/voip/messages/conversation/a/a/a/j;->a(Lcom/viber/voip/messages/conversation/a/a/a;Lcom/viber/voip/messages/conversation/a/a/b/a/b;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/j;->l:Landroid/view/View;

    if-ne p1, v0, :cond_1

    .line 71
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/j;->m:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/j;->m:Landroid/support/v4/app/Fragment;

    instance-of v0, v0, Lcom/viber/voip/messages/ui/chathead/a/b;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/j;->m:Landroid/support/v4/app/Fragment;

    check-cast v0, Lcom/viber/voip/messages/ui/chathead/a/b;

    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/a/a/a/j;->a()Lcom/viber/voip/stickers/c/a;

    move-result-object v1

    iget v1, v1, Lcom/viber/voip/stickers/c/a;->b:I

    invoke-static {v1}, Lcom/viber/voip/stickers/b/h;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/ui/chathead/a/b;->f_(I)V

    .line 79
    :goto_0
    return-void

    .line 74
    :cond_0
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/a/a/a/j;->a()Lcom/viber/voip/stickers/c/a;

    move-result-object v0

    iget v0, v0, Lcom/viber/voip/stickers/c/a;->b:I

    invoke-static {v0}, Lcom/viber/voip/stickers/b/h;->d(I)I

    move-result v0

    invoke-static {v0}, Lcom/viber/voip/market/MarketActivity;->e(I)V

    goto :goto_0

    .line 77
    :cond_1
    invoke-super {p0, p1}, Lcom/viber/voip/messages/conversation/a/a/a/r;->onClick(Landroid/view/View;)V

    goto :goto_0
.end method
