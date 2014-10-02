.class public Lcom/viber/voip/market/b/a/i;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/viber/voip/widget/dslv/o;


# instance fields
.field private a:Lcom/viber/voip/market/b/a/c;

.field private b:Lcom/viber/voip/util/b/ad;

.field private c:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/viber/voip/market/b/a/c;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 38
    const-string/jumbo v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/viber/voip/market/b/a/i;->c:Landroid/view/LayoutInflater;

    .line 39
    iput-object p2, p0, Lcom/viber/voip/market/b/a/i;->a:Lcom/viber/voip/market/b/a/c;

    .line 40
    invoke-static {p1}, Lcom/viber/voip/util/b/w;->a(Landroid/content/Context;)Lcom/viber/voip/util/b/w;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/market/b/a/i;->b:Lcom/viber/voip/util/b/ad;

    .line 41
    return-void
.end method

.method private a(ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 117
    iget-object v0, p0, Lcom/viber/voip/market/b/a/i;->c:Landroid/view/LayoutInflater;

    const v1, 0x7f0300cc

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 118
    if-nez p1, :cond_0

    new-instance v0, Lcom/viber/voip/market/b/a/k;

    invoke-direct {v0, v1, p0}, Lcom/viber/voip/market/b/a/k;-><init>(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 120
    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 121
    iget-object v2, v0, Lcom/viber/voip/market/b/a/j;->h:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 123
    return-object v1

    .line 118
    :cond_0
    new-instance v0, Lcom/viber/voip/market/b/a/j;

    invoke-direct {v0, v1, p0}, Lcom/viber/voip/market/b/a/j;-><init>(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method


# virtual methods
.method public a(I)Lcom/viber/voip/market/b/a/a;
    .locals 1
    .parameter

    .prologue
    .line 86
    iget-object v0, p0, Lcom/viber/voip/market/b/a/i;->a:Lcom/viber/voip/market/b/a/c;

    invoke-interface {v0, p1}, Lcom/viber/voip/market/b/a/c;->a(I)Lcom/viber/voip/market/b/a/a;

    move-result-object v0

    return-object v0
.end method

.method public a_(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 45
    if-eq p1, p2, :cond_0

    .line 46
    iget-object v0, p0, Lcom/viber/voip/market/b/a/i;->a:Lcom/viber/voip/market/b/a/c;

    invoke-interface {v0, p1, p2}, Lcom/viber/voip/market/b/a/c;->a(II)Z

    .line 47
    invoke-virtual {p0}, Lcom/viber/voip/market/b/a/i;->notifyDataSetChanged()V

    .line 49
    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/viber/voip/market/b/a/i;->a:Lcom/viber/voip/market/b/a/c;

    invoke-interface {v0}, Lcom/viber/voip/market/b/a/c;->b()I

    move-result v0

    return v0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 25
    invoke-virtual {p0, p1}, Lcom/viber/voip/market/b/a/i;->a(I)Lcom/viber/voip/market/b/a/a;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 91
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .parameter

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Lcom/viber/voip/market/b/a/i;->a(I)Lcom/viber/voip/market/b/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/market/b/a/a;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 97
    const/4 v0, 0x0

    .line 99
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 105
    if-nez p2, :cond_0

    .line 106
    invoke-virtual {p0, p1}, Lcom/viber/voip/market/b/a/i;->getItemViewType(I)I

    move-result v0

    invoke-direct {p0, v0, p3}, Lcom/viber/voip/market/b/a/i;->a(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 109
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/market/b/a/j;

    .line 110
    invoke-virtual {p0, p1}, Lcom/viber/voip/market/b/a/i;->a(I)Lcom/viber/voip/market/b/a/a;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/market/b/a/i;->b:Lcom/viber/voip/util/b/ad;

    invoke-static {v0, v1, v2}, Lcom/viber/voip/market/b/a/j;->a(Lcom/viber/voip/market/b/a/j;Lcom/viber/voip/market/b/a/a;Lcom/viber/voip/util/b/ad;)V

    .line 111
    iget-object v1, v0, Lcom/viber/voip/market/b/a/j;->g:Landroid/view/View;

    if-lez p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 113
    return-object p2

    .line 111
    :cond_1
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x2

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 53
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/market/b/a/j;

    .line 54
    invoke-virtual {v0}, Lcom/viber/voip/market/b/a/j;->a()Lcom/viber/voip/market/b/a/a;

    move-result-object v1

    .line 55
    invoke-virtual {v1}, Lcom/viber/voip/market/b/a/a;->c()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 56
    :goto_0
    invoke-virtual {v1, v0}, Lcom/viber/voip/market/b/a/a;->a(Z)V

    .line 58
    invoke-virtual {p0}, Lcom/viber/voip/market/b/a/i;->notifyDataSetChanged()V

    .line 60
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v2

    sget-object v3, Lcom/viber/voip/a/a;->D:Lcom/viber/voip/a/ab;

    invoke-virtual {v1}, Lcom/viber/voip/market/b/a/a;->e()I

    move-result v1

    invoke-virtual {v3, v1, v0}, Lcom/viber/voip/a/ab;->a(IZ)Lcom/viber/voip/a/x;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 61
    return-void

    .line 55
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
