.class public Lcom/viber/voip/messages/ui/bm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/messages/ui/bi;


# instance fields
.field private a:Lcom/viber/voip/messages/ui/bi;

.field private b:Landroid/support/v4/util/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SparseArrayCompat",
            "<",
            "Lcom/viber/voip/messages/ui/bn;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/viber/voip/messages/ui/bn;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/viber/voip/messages/ui/bi;Landroid/support/v4/util/SparseArrayCompat;)V
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/viber/voip/messages/ui/bi;",
            "Landroid/support/v4/util/SparseArrayCompat",
            "<",
            "Lcom/viber/voip/messages/ui/bn;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Landroid/support/v4/util/SparseArrayCompat;

    invoke-direct {v0}, Landroid/support/v4/util/SparseArrayCompat;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/messages/ui/bm;->b:Landroid/support/v4/util/SparseArrayCompat;

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/messages/ui/bm;->c:Ljava/util/List;

    .line 22
    iput-object p1, p0, Lcom/viber/voip/messages/ui/bm;->a:Lcom/viber/voip/messages/ui/bi;

    .line 23
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p2}, Landroid/support/v4/util/SparseArrayCompat;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 24
    invoke-virtual {p2, v1}, Landroid/support/v4/util/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/ui/bn;

    .line 25
    iget-object v2, p0, Lcom/viber/voip/messages/ui/bm;->c:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    iget-object v2, p0, Lcom/viber/voip/messages/ui/bm;->b:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {p2, v1}, Landroid/support/v4/util/SparseArrayCompat;->keyAt(I)I

    move-result v3

    invoke-virtual {v2, v3, v0}, Landroid/support/v4/util/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 23
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 28
    :cond_0
    return-void
.end method

.method private c(I)I
    .locals 1
    .parameter

    .prologue
    .line 103
    iget-object v0, p0, Lcom/viber/voip/messages/ui/bm;->a:Lcom/viber/voip/messages/ui/bi;

    if-nez v0, :cond_0

    :goto_0
    return p1

    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/ui/bm;->a:Lcom/viber/voip/messages/ui/bi;

    invoke-interface {v0}, Lcom/viber/voip/messages/ui/bi;->a()I

    move-result v0

    sub-int/2addr p1, v0

    goto :goto_0
.end method

.method private d(I)I
    .locals 1
    .parameter

    .prologue
    .line 107
    iget-object v0, p0, Lcom/viber/voip/messages/ui/bm;->a:Lcom/viber/voip/messages/ui/bi;

    if-nez v0, :cond_0

    :goto_0
    return p1

    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/ui/bm;->a:Lcom/viber/voip/messages/ui/bi;

    invoke-interface {v0}, Lcom/viber/voip/messages/ui/bi;->a()I

    move-result v0

    add-int/2addr p1, v0

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/viber/voip/messages/ui/bm;->a:Lcom/viber/voip/messages/ui/bi;

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/viber/voip/messages/ui/bm;->a:Lcom/viber/voip/messages/ui/bi;

    invoke-interface {v0}, Lcom/viber/voip/messages/ui/bi;->a()I

    move-result v0

    iget-object v1, p0, Lcom/viber/voip/messages/ui/bm;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    .line 35
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/ui/bm;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public a(I)I
    .locals 3
    .parameter

    .prologue
    const/4 v1, -0x1

    .line 70
    iget-object v0, p0, Lcom/viber/voip/messages/ui/bm;->a:Lcom/viber/voip/messages/ui/bi;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/ui/bm;->a:Lcom/viber/voip/messages/ui/bi;

    invoke-interface {v0}, Lcom/viber/voip/messages/ui/bi;->a()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 71
    iget-object v0, p0, Lcom/viber/voip/messages/ui/bm;->a:Lcom/viber/voip/messages/ui/bi;

    invoke-interface {v0, p1}, Lcom/viber/voip/messages/ui/bi;->a(I)I

    move-result v0

    .line 82
    :goto_0
    return v0

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/ui/bm;->c:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/viber/voip/messages/ui/bm;->c(I)I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/ui/bn;

    .line 75
    if-eqz v0, :cond_1

    .line 76
    iget-object v2, p0, Lcom/viber/voip/messages/ui/bm;->b:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v2, v0}, Landroid/support/v4/util/SparseArrayCompat;->indexOfValue(Ljava/lang/Object;)I

    move-result v0

    .line 77
    if-eq v1, v0, :cond_1

    .line 78
    iget-object v1, p0, Lcom/viber/voip/messages/ui/bm;->b:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v1, v0}, Landroid/support/v4/util/SparseArrayCompat;->keyAt(I)I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 82
    goto :goto_0
.end method

.method public a(ILandroid/view/View;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 41
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 51
    :goto_0
    return-object v1

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/ui/bm;->a:Lcom/viber/voip/messages/ui/bi;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/viber/voip/messages/ui/bm;->a:Lcom/viber/voip/messages/ui/bi;

    invoke-interface {v0}, Lcom/viber/voip/messages/ui/bi;->a()I

    move-result v0

    if-le v0, p1, :cond_1

    .line 46
    iget-object v0, p0, Lcom/viber/voip/messages/ui/bm;->a:Lcom/viber/voip/messages/ui/bi;

    invoke-interface {v0, p1, p2}, Lcom/viber/voip/messages/ui/bi;->a(ILandroid/view/View;)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 49
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/messages/ui/bm;->c:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/viber/voip/messages/ui/bm;->c(I)I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/ui/bn;

    .line 51
    if-eqz v0, :cond_2

    invoke-interface {v0, p2}, Lcom/viber/voip/messages/ui/bn;->a(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    :goto_1
    move-object v1, v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method public b(I)I
    .locals 2
    .parameter

    .prologue
    const/4 v1, -0x1

    .line 87
    iget-object v0, p0, Lcom/viber/voip/messages/ui/bm;->a:Lcom/viber/voip/messages/ui/bi;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/viber/voip/messages/ui/bm;->a:Lcom/viber/voip/messages/ui/bi;

    invoke-interface {v0, p1}, Lcom/viber/voip/messages/ui/bi;->b(I)I

    move-result v0

    .line 89
    if-eq v1, v0, :cond_0

    .line 99
    :goto_0
    return v0

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/ui/bm;->b:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/ui/bn;

    .line 95
    if-eqz v0, :cond_1

    .line 96
    iget-object v1, p0, Lcom/viber/voip/messages/ui/bm;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/ui/bm;->d(I)I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 99
    goto :goto_0
.end method
