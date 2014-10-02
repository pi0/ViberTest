.class public Lcom/viber/voip/messages/ui/bh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/messages/ui/bi;


# instance fields
.field private a:Landroid/view/ViewGroup;

.field private b:Landroid/support/v4/util/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SparseArrayCompat",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/List;
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
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 5
    .parameter

    .prologue
    .line 493
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 490
    new-instance v0, Landroid/support/v4/util/SparseArrayCompat;

    invoke-direct {v0}, Landroid/support/v4/util/SparseArrayCompat;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/messages/ui/bh;->b:Landroid/support/v4/util/SparseArrayCompat;

    .line 494
    iput-object p1, p0, Lcom/viber/voip/messages/ui/bh;->a:Landroid/view/ViewGroup;

    .line 495
    iget-object v0, p0, Lcom/viber/voip/messages/ui/bh;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 496
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/viber/voip/messages/ui/bh;->c:Ljava/util/List;

    .line 497
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 498
    iget-object v2, p0, Lcom/viber/voip/messages/ui/bh;->a:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 499
    const/4 v3, -0x1

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v4

    if-eq v3, v4, :cond_0

    .line 500
    iget-object v3, p0, Lcom/viber/voip/messages/ui/bh;->b:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v4

    invoke-virtual {v3, v4, v2}, Landroid/support/v4/util/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 502
    :cond_0
    iget-object v3, p0, Lcom/viber/voip/messages/ui/bh;->c:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 497
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 504
    :cond_1
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 508
    iget-object v0, p0, Lcom/viber/voip/messages/ui/bh;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public a(I)I
    .locals 1
    .parameter

    .prologue
    .line 523
    iget-object v0, p0, Lcom/viber/voip/messages/ui/bh;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    return v0
.end method

.method public a(ILandroid/view/View;)Landroid/view/View;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 513
    iget-object v0, p0, Lcom/viber/voip/messages/ui/bh;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public b(I)I
    .locals 2
    .parameter

    .prologue
    .line 529
    iget-object v0, p0, Lcom/viber/voip/messages/ui/bh;->b:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 530
    if-eqz v0, :cond_0

    .line 531
    iget-object v1, p0, Lcom/viber/voip/messages/ui/bh;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 533
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method
