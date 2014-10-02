.class public Lcom/viber/voip/messages/conversation/a/a/a/o;
.super Lcom/viber/voip/messages/conversation/a/a/a/l;
.source "SourceFile"


# instance fields
.field private final a:I


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/support/v4/app/Fragment;ZLcom/viber/voip/messages/ui/bb;Lcom/viber/voip/messages/conversation/a/r;Lcom/viber/voip/messages/conversation/a/s;Lcom/viber/voip/messages/conversation/a/s;Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 25
    invoke-direct/range {p0 .. p7}, Lcom/viber/voip/messages/conversation/a/a/a/l;-><init>(Landroid/view/View;Landroid/support/v4/app/Fragment;ZLcom/viber/voip/messages/ui/bb;Lcom/viber/voip/messages/conversation/a/r;Lcom/viber/voip/messages/conversation/a/s;Lcom/viber/voip/messages/conversation/a/s;)V

    .line 27
    if-eqz p3, :cond_0

    const/4 v0, 0x4

    :goto_0
    iput v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/o;->a:I

    .line 29
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/a/a/a/o;->j:Ljava/util/List;

    new-instance v2, Lcom/viber/voip/messages/conversation/a/a/a/p;

    const v0, 0x7f070314

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v0, p2

    check-cast v0, Lcom/viber/voip/messages/conversation/a/b/f;

    invoke-direct {v2, v3, v0}, Lcom/viber/voip/messages/conversation/a/a/a/p;-><init>(Landroid/view/View;Lcom/viber/voip/messages/conversation/a/b/f;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/o;->j:Ljava/util/List;

    new-instance v1, Lcom/viber/voip/messages/conversation/a/a/a/i;

    invoke-direct {v1, p1, p0, p8}, Lcom/viber/voip/messages/conversation/a/a/a/i;-><init>(Landroid/view/View;Lcom/viber/voip/messages/conversation/a/a/a/k;Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/o;->j:Ljava/util/List;

    new-instance v1, Lcom/viber/voip/messages/conversation/a/a/a/m;

    check-cast p2, Lcom/viber/voip/messages/conversation/a/b/e;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Lcom/viber/voip/messages/conversation/a/a/a/m;-><init>(Landroid/view/View;Lcom/viber/voip/messages/conversation/a/b/e;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    return-void

    .line 27
    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic a()V
    .locals 0

    .prologue
    .line 17
    invoke-super {p0}, Lcom/viber/voip/messages/conversation/a/a/a/l;->a()V

    return-void
.end method

.method public a(Lcom/viber/voip/messages/conversation/a/a/a;Lcom/viber/voip/messages/conversation/a/a/b/a/b;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 36
    invoke-super {p0, p1, p2}, Lcom/viber/voip/messages/conversation/a/a/a/l;->a(Lcom/viber/voip/messages/conversation/a/a/a;Lcom/viber/voip/messages/conversation/a/a/b/a/b;)V

    .line 37
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

    invoke-virtual {p0, p1, p2}, Lcom/viber/voip/messages/conversation/a/a/a/o;->a(Lcom/viber/voip/messages/conversation/a/a/a;Lcom/viber/voip/messages/conversation/a/a/b/a/b;)V

    return-void
.end method
