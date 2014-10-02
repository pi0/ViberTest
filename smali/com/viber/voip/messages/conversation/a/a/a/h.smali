.class public Lcom/viber/voip/messages/conversation/a/a/a/h;
.super Lcom/viber/voip/messages/conversation/a/a/a/l;
.source "SourceFile"


# instance fields
.field private final a:I


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/support/v4/app/Fragment;ZLcom/viber/voip/messages/ui/bb;Lcom/viber/voip/messages/conversation/a/r;Lcom/viber/voip/messages/conversation/a/s;Lcom/viber/voip/messages/conversation/a/s;Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 23
    invoke-direct/range {p0 .. p7}, Lcom/viber/voip/messages/conversation/a/a/a/l;-><init>(Landroid/view/View;Landroid/support/v4/app/Fragment;ZLcom/viber/voip/messages/ui/bb;Lcom/viber/voip/messages/conversation/a/r;Lcom/viber/voip/messages/conversation/a/s;Lcom/viber/voip/messages/conversation/a/s;)V

    .line 25
    if-eqz p3, :cond_0

    const/4 v0, 0x3

    :goto_0
    iput v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/h;->a:I

    .line 27
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/h;->j:Ljava/util/List;

    new-instance v2, Lcom/viber/voip/messages/conversation/a/a/a/i;

    invoke-direct {v2, p1, p0, p8}, Lcom/viber/voip/messages/conversation/a/a/a/i;-><init>(Landroid/view/View;Lcom/viber/voip/messages/conversation/a/a/a/k;Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/h;->j:Ljava/util/List;

    new-instance v2, Lcom/viber/voip/messages/conversation/a/a/a/m;

    check-cast p2, Lcom/viber/voip/messages/conversation/a/b/e;

    invoke-direct {v2, p1, p2, v1}, Lcom/viber/voip/messages/conversation/a/a/a/m;-><init>(Landroid/view/View;Lcom/viber/voip/messages/conversation/a/b/e;Z)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    return-void

    :cond_0
    move v0, v1

    .line 25
    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic a()V
    .locals 0

    .prologue
    .line 15
    invoke-super {p0}, Lcom/viber/voip/messages/conversation/a/a/a/l;->a()V

    return-void
.end method

.method public a(Lcom/viber/voip/messages/conversation/a/a/a;Lcom/viber/voip/messages/conversation/a/a/b/a/b;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-super {p0, p1, p2}, Lcom/viber/voip/messages/conversation/a/a/a/l;->a(Lcom/viber/voip/messages/conversation/a/a/a;Lcom/viber/voip/messages/conversation/a/a/b/a/b;)V

    .line 34
    return-void
.end method

.method public bridge synthetic a(Lcom/viber/voip/ui/b/f;Lcom/viber/voip/ui/b/a/a;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 15
    check-cast p1, Lcom/viber/voip/messages/conversation/a/a/a;

    check-cast p2, Lcom/viber/voip/messages/conversation/a/a/b/a/b;

    invoke-virtual {p0, p1, p2}, Lcom/viber/voip/messages/conversation/a/a/a/h;->a(Lcom/viber/voip/messages/conversation/a/a/a;Lcom/viber/voip/messages/conversation/a/a/b/a/b;)V

    return-void
.end method
