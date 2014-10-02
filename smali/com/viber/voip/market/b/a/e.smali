.class public Lcom/viber/voip/market/b/a/e;
.super Lcom/viber/voip/market/b/a/d;
.source "SourceFile"


# static fields
.field private static final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/viber/voip/market/b/a/e;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/market/b/a/e;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0
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
    invoke-direct {p0, p1}, Lcom/viber/voip/market/b/a/d;-><init>(Ljava/util/List;)V

    .line 24
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 28
    invoke-super {p0}, Lcom/viber/voip/market/b/a/d;->a()I

    move-result v0

    return v0
.end method

.method protected a(Lcom/viber/voip/market/b/a/a;)V
    .locals 3
    .parameter

    .prologue
    .line 32
    const/4 v1, 0x0

    .line 33
    iget-object v0, p0, Lcom/viber/voip/market/b/a/e;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_0
    if-ltz v2, :cond_1

    .line 34
    iget-object v0, p0, Lcom/viber/voip/market/b/a/e;->a:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/market/b/a/a;

    invoke-virtual {v0}, Lcom/viber/voip/market/b/a/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    add-int/lit8 v0, v2, 0x1

    .line 40
    :goto_1
    invoke-virtual {p1, v0}, Lcom/viber/voip/market/b/a/a;->a(I)V

    .line 43
    iget-object v1, p0, Lcom/viber/voip/market/b/a/e;->a:Ljava/util/List;

    invoke-interface {v1, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 44
    iget-object v0, p0, Lcom/viber/voip/market/b/a/e;->b:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/viber/voip/market/b/a/a;->e()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 45
    return-void

    .line 33
    :cond_0
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public a(II)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/viber/voip/market/b/a/e;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/market/b/a/a;

    .line 51
    iget-object v1, p0, Lcom/viber/voip/market/b/a/e;->a:Ljava/util/List;

    invoke-interface {v1, p2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 53
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v1

    sget-object v2, Lcom/viber/voip/a/a;->D:Lcom/viber/voip/a/ab;

    invoke-virtual {v0}, Lcom/viber/voip/market/b/a/a;->e()I

    move-result v0

    invoke-virtual {v2, v0, p2}, Lcom/viber/voip/a/ab;->a(II)Lcom/viber/voip/a/x;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 54
    const/4 v0, 0x1

    return v0
.end method
