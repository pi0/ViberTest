.class public Lcom/viber/voip/market/b/a/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/market/b/a/c;


# instance fields
.field private a:Lcom/viber/voip/market/b/a/e;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
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
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Lcom/viber/voip/market/b/a/e;

    invoke-direct {v0, p1}, Lcom/viber/voip/market/b/a/e;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/viber/voip/market/b/a/f;->a:Lcom/viber/voip/market/b/a/e;

    .line 17
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/viber/voip/market/b/a/f;->a:Lcom/viber/voip/market/b/a/e;

    invoke-virtual {v0}, Lcom/viber/voip/market/b/a/e;->a()I

    move-result v0

    return v0
.end method

.method public a(I)Lcom/viber/voip/market/b/a/a;
    .locals 2
    .parameter

    .prologue
    .line 37
    .line 39
    const/4 v0, 0x0

    .line 43
    iget-object v1, p0, Lcom/viber/voip/market/b/a/f;->a:Lcom/viber/voip/market/b/a/e;

    sub-int v0, p1, v0

    invoke-virtual {v1, v0}, Lcom/viber/voip/market/b/a/e;->a(I)Lcom/viber/voip/market/b/a/a;

    move-result-object v0

    .line 46
    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {v0, p1}, Lcom/viber/voip/market/b/a/a;->a(I)V

    .line 50
    :cond_0
    return-object v0
.end method

.method public a(Ljava/util/List;)V
    .locals 1
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
    .line 21
    iget-object v0, p0, Lcom/viber/voip/market/b/a/f;->a:Lcom/viber/voip/market/b/a/e;

    invoke-virtual {v0, p1}, Lcom/viber/voip/market/b/a/e;->a(Ljava/util/List;)V

    .line 22
    return-void
.end method

.method public a(II)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 65
    .line 67
    if-lt p1, v0, :cond_0

    if-lt p2, v0, :cond_0

    .line 68
    iget-object v1, p0, Lcom/viber/voip/market/b/a/f;->a:Lcom/viber/voip/market/b/a/e;

    sub-int v2, p1, v0

    sub-int v0, p2, v0

    invoke-virtual {v1, v2, v0}, Lcom/viber/voip/market/b/a/e;->a(II)Z

    move-result v0

    .line 70
    :cond_0
    return v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/viber/voip/market/b/a/f;->a:Lcom/viber/voip/market/b/a/e;

    invoke-virtual {v0}, Lcom/viber/voip/market/b/a/e;->b()I

    move-result v0

    return v0
.end method

.method public c()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/viber/voip/market/b/a/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 25
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 26
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/viber/voip/market/b/a/f;->b()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 27
    invoke-virtual {p0, v0}, Lcom/viber/voip/market/b/a/f;->a(I)Lcom/viber/voip/market/b/a/a;

    move-result-object v2

    .line 28
    invoke-virtual {v2}, Lcom/viber/voip/market/b/a/a;->d()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 29
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 32
    :cond_1
    return-object v1
.end method
