.class public Lcom/a/a/b/a;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 72
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/a/a/b/a;->a:Ljava/util/List;

    .line 74
    iput-object p1, p0, Lcom/a/a/b/a;->a:Ljava/util/List;

    .line 75
    return-void
.end method


# virtual methods
.method protected a(ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 175
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "You must override newView()!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Landroid/view/View;)Z
    .locals 1
    .parameter

    .prologue
    .line 165
    iget-object v0, p0, Lcom/a/a/b/a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/a/a/b/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 84
    iget-object v0, p0, Lcom/a/a/b/a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 161
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 0
    .parameter

    .prologue
    .line 112
    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 144
    iget-object v0, p0, Lcom/a/a/b/a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 146
    if-nez v0, :cond_0

    .line 147
    invoke-virtual {p0, p1, p3}, Lcom/a/a/b/a;->a(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 148
    iget-object v1, p0, Lcom/a/a/b/a;->a:Ljava/util/List;

    invoke-interface {v1, p1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 151
    :cond_0
    return-object v0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/a/a/b/a;->getCount()I

    move-result v0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .parameter

    .prologue
    .line 131
    const/4 v0, 0x0

    return v0
.end method
