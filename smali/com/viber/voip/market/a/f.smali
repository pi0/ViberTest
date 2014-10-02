.class Lcom/viber/voip/market/a/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/messages/controller/aa;


# instance fields
.field final synthetic a:Lcom/viber/voip/process/b;

.field final synthetic b:Lcom/viber/voip/market/MarketPublicGroupInfo;

.field final synthetic c:Lcom/viber/voip/market/a/d;


# direct methods
.method constructor <init>(Lcom/viber/voip/market/a/d;Lcom/viber/voip/process/b;Lcom/viber/voip/market/MarketPublicGroupInfo;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 80
    iput-object p1, p0, Lcom/viber/voip/market/a/f;->c:Lcom/viber/voip/market/a/d;

    iput-object p2, p0, Lcom/viber/voip/market/a/f;->a:Lcom/viber/voip/process/b;

    iput-object p3, p0, Lcom/viber/voip/market/a/f;->b:Lcom/viber/voip/market/MarketPublicGroupInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Set;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 83
    iget-object v0, p0, Lcom/viber/voip/market/a/f;->a:Lcom/viber/voip/process/b;

    iget-object v1, p0, Lcom/viber/voip/market/a/f;->c:Lcom/viber/voip/market/a/d;

    iget-object v2, p0, Lcom/viber/voip/market/a/f;->b:Lcom/viber/voip/market/MarketPublicGroupInfo;

    iget-wide v2, v2, Lcom/viber/voip/market/MarketPublicGroupInfo;->a:J

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Lcom/viber/voip/market/a/d;->a(Lcom/viber/voip/market/a/d;JI)Landroid/os/Bundle;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/viber/voip/process/b;->a(Landroid/os/Bundle;)V

    .line 84
    return-void
.end method
