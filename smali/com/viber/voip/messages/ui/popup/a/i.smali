.class public abstract Lcom/viber/voip/messages/ui/popup/a/i;
.super Lcom/viber/voip/messages/ui/popup/a/l;
.source "SourceFile"


# instance fields
.field private a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/viber/voip/messages/conversation/ai;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/viber/voip/messages/ui/popup/a/l;-><init>(Landroid/app/Activity;Lcom/viber/voip/messages/conversation/ai;Z)V

    .line 23
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/messages/ui/popup/a/i;->a:Landroid/util/SparseArray;

    .line 24
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/messages/ui/popup/a/i;->b:Landroid/util/SparseArray;

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/messages/ui/popup/a/i;->c:Ljava/util/List;

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/messages/ui/popup/a/i;->d:Ljava/util/Map;

    .line 30
    return-void
.end method


# virtual methods
.method public a(I)I
    .locals 1
    .parameter

    .prologue
    .line 83
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/a/i;->a:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 84
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/a/i;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 86
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public a()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 124
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/a/i;->a:Landroid/util/SparseArray;

    return-object v0
.end method

.method public a(Landroid/view/View;I)Landroid/view/View;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/popup/a/i;->g()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 35
    const v1, 0x7f0300ba

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 36
    invoke-virtual {p0, v0, p2}, Lcom/viber/voip/messages/ui/popup/a/i;->b(Landroid/view/View;I)V

    .line 37
    return-object v0
.end method

.method public abstract a(ILcom/viber/voip/messages/conversation/an;)Ljava/lang/String;
.end method

.method public a(IZ)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/popup/a/i;->a()Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 92
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/popup/a/i;->e()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 93
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/popup/a/i;->e()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 112
    :cond_0
    return-void
.end method

.method public a(II)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 75
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/a/i;->a:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/a/i;->a:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-le v0, p2, :cond_0

    .line 76
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/a/i;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/popup/a/i;->a:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 78
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(I)I
    .locals 2
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 116
    iget-object v1, p0, Lcom/viber/voip/messages/ui/popup/a/i;->a:Landroid/util/SparseArray;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/viber/voip/messages/ui/popup/a/i;->a:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/a/i;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public abstract b(Landroid/view/View;I)V
.end method

.method public b()Z
    .locals 4

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/popup/a/i;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 47
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/popup/a/i;->a()Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 48
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/popup/a/i;->e()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 50
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/popup/a/i;->f()Lcom/viber/voip/messages/conversation/ai;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ai;->getCount()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 51
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/popup/a/i;->f()Lcom/viber/voip/messages/conversation/ai;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/conversation/ai;->e(I)Lcom/viber/voip/messages/conversation/an;

    move-result-object v0

    .line 52
    invoke-virtual {p0, v1, v0}, Lcom/viber/voip/messages/ui/popup/a/i;->a(ILcom/viber/voip/messages/conversation/an;)Ljava/lang/String;

    move-result-object v0

    .line 53
    if-nez v0, :cond_4

    .line 54
    const-string/jumbo v0, ""

    move-object v2, v0

    .line 56
    :goto_1
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/a/i;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/a/i;->c:Ljava/util/List;

    iget-object v3, p0, Lcom/viber/voip/messages/ui/popup/a/i;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/a/i;->c:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/a/i;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 60
    iget-object v2, p0, Lcom/viber/voip/messages/ui/popup/a/i;->a:Landroid/util/SparseArray;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 61
    iget-object v2, p0, Lcom/viber/voip/messages/ui/popup/a/i;->b:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    .line 62
    iget-object v2, p0, Lcom/viber/voip/messages/ui/popup/a/i;->b:Landroid/util/SparseArray;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 50
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 65
    :cond_3
    const/4 v0, 0x1

    return v0

    :cond_4
    move-object v2, v0

    goto :goto_1
.end method

.method public c()I
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/a/i;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public c(I)I
    .locals 1
    .parameter

    .prologue
    .line 120
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/a/i;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 128
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/a/i;->c:Ljava/util/List;

    return-object v0
.end method

.method public e()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 132
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/a/i;->d:Ljava/util/Map;

    return-object v0
.end method
