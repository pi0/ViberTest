.class Lcom/viber/voip/market/af;
.super Lcom/viber/voip/market/b/a/b;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/viber/voip/market/ae;


# direct methods
.method constructor <init>(Lcom/viber/voip/market/ae;Lcom/viber/voip/stickers/r;Lcom/viber/voip/market/b/a/f;Lcom/viber/voip/market/b/a/i;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/viber/voip/market/af;->a:Lcom/viber/voip/market/ae;

    invoke-direct {p0, p2, p3, p4}, Lcom/viber/voip/market/b/a/b;-><init>(Lcom/viber/voip/stickers/r;Lcom/viber/voip/market/b/a/f;Lcom/viber/voip/market/b/a/i;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/viber/voip/stickers/c/d;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 73
    iget-object v0, p0, Lcom/viber/voip/market/af;->a:Lcom/viber/voip/market/ae;

    invoke-virtual {v0}, Lcom/viber/voip/market/ae;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 76
    :goto_0
    return-void

    .line 74
    :cond_0
    invoke-super {p0, p1}, Lcom/viber/voip/market/b/a/b;->a(Ljava/util/List;)V

    .line 75
    iget-object v0, p0, Lcom/viber/voip/market/af;->a:Lcom/viber/voip/market/ae;

    invoke-static {v0, p1}, Lcom/viber/voip/market/ae;->a(Lcom/viber/voip/market/ae;Ljava/util/List;)V

    goto :goto_0
.end method
