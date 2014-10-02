.class public Lcom/viber/voip/market/b/a/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/market/b/a/c;


# static fields
.field private static final c:Ljava/lang/String;


# instance fields
.field protected a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/viber/voip/market/b/a/a;",
            ">;"
        }
    .end annotation
.end field

.field protected b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/viber/voip/market/b/a/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/viber/voip/market/b/a/d;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/market/b/a/d;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/viber/voip/stickers/c/f;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/market/b/a/d;->a:Ljava/util/List;

    .line 21
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/market/b/a/d;->b:Landroid/util/SparseArray;

    .line 24
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/stickers/c/f;

    .line 25
    new-instance v2, Lcom/viber/voip/market/b/a/a;

    invoke-direct {v2, v0}, Lcom/viber/voip/market/b/a/a;-><init>(Lcom/viber/voip/stickers/c/f;)V

    .line 27
    iget-object v0, p0, Lcom/viber/voip/market/b/a/d;->a:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    iget-object v0, p0, Lcom/viber/voip/market/b/a/d;->b:Landroid/util/SparseArray;

    invoke-virtual {v2}, Lcom/viber/voip/market/b/a/a;->e()I

    move-result v3

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    goto :goto_0

    .line 30
    :cond_0
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method public a(I)Lcom/viber/voip/market/b/a/a;
    .locals 1
    .parameter

    .prologue
    .line 75
    iget-object v0, p0, Lcom/viber/voip/market/b/a/d;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/market/b/a/a;

    return-object v0
.end method

.method protected a(Lcom/viber/voip/market/b/a/a;)V
    .locals 2
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/viber/voip/market/b/a/d;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    iget-object v0, p0, Lcom/viber/voip/market/b/a/d;->b:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/viber/voip/market/b/a/a;->e()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 66
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/viber/voip/stickers/c/f;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 33
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 36
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/stickers/c/f;

    .line 37
    invoke-interface {v0}, Lcom/viber/voip/stickers/c/f;->e()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 39
    iget-object v1, p0, Lcom/viber/voip/market/b/a/d;->b:Landroid/util/SparseArray;

    invoke-interface {v0}, Lcom/viber/voip/stickers/c/f;->e()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/viber/voip/market/b/a/a;

    .line 40
    if-eqz v1, :cond_0

    .line 41
    invoke-virtual {v1, v0}, Lcom/viber/voip/market/b/a/a;->a(Lcom/viber/voip/stickers/c/f;)V

    goto :goto_0

    .line 43
    :cond_0
    new-instance v1, Lcom/viber/voip/market/b/a/a;

    invoke-direct {v1, v0}, Lcom/viber/voip/market/b/a/a;-><init>(Lcom/viber/voip/stickers/c/f;)V

    invoke-virtual {p0, v1}, Lcom/viber/voip/market/b/a/d;->a(Lcom/viber/voip/market/b/a/a;)V

    goto :goto_0

    .line 47
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 50
    iget-object v0, p0, Lcom/viber/voip/market/b/a/d;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/market/b/a/a;

    .line 51
    invoke-virtual {v0}, Lcom/viber/voip/market/b/a/a;->e()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 54
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    iget-object v4, p0, Lcom/viber/voip/market/b/a/d;->b:Landroid/util/SparseArray;

    invoke-virtual {v0}, Lcom/viber/voip/market/b/a/a;->e()I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_1

    .line 58
    :cond_3
    iget-object v0, p0, Lcom/viber/voip/market/b/a/d;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 60
    return-void
.end method

.method public a(II)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 86
    const/4 v0, 0x0

    return v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/viber/voip/market/b/a/d;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
