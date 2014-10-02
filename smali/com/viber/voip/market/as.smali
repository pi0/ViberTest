.class Lcom/viber/voip/market/as;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/viber/voip/market/am;


# direct methods
.method constructor <init>(Lcom/viber/voip/market/am;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 382
    iput-object p1, p0, Lcom/viber/voip/market/as;->c:Lcom/viber/voip/market/am;

    iput-object p2, p0, Lcom/viber/voip/market/as;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/viber/voip/market/as;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 385
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unfollowPublicGroup, groupId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/market/as;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", dataJson:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/market/as;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/market/ak;->a(Ljava/lang/String;)V

    .line 387
    :try_start_0
    new-instance v0, Lcom/viber/voip/market/MarketPublicGroupInfo;

    iget-object v1, p0, Lcom/viber/voip/market/as;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/viber/voip/market/as;->b:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/viber/voip/market/MarketPublicGroupInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    iget-object v1, p0, Lcom/viber/voip/market/as;->c:Lcom/viber/voip/market/am;

    iget-object v1, v1, Lcom/viber/voip/market/am;->a:Lcom/viber/voip/market/ak;

    invoke-static {v1}, Lcom/viber/voip/market/ak;->a(Lcom/viber/voip/market/ak;)Lcom/viber/voip/market/bk;

    move-result-object v1

    new-instance v2, Lcom/viber/voip/market/at;

    invoke-direct {v2, p0}, Lcom/viber/voip/market/at;-><init>(Lcom/viber/voip/market/as;)V

    invoke-virtual {v1, v0, v2}, Lcom/viber/voip/market/bk;->b(Lcom/viber/voip/market/MarketPublicGroupInfo;Lcom/viber/voip/market/r;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 404
    :goto_0
    return-void

    .line 395
    :catch_0
    move-exception v0

    .line 396
    const-string/jumbo v1, "error parsing json"

    invoke-static {v1, v0}, Lcom/viber/voip/market/ak;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 397
    iget-object v0, p0, Lcom/viber/voip/market/as;->c:Lcom/viber/voip/market/am;

    iget-object v0, v0, Lcom/viber/voip/market/am;->a:Lcom/viber/voip/market/ak;

    new-instance v1, Lcom/viber/voip/market/au;

    invoke-direct {v1, p0}, Lcom/viber/voip/market/au;-><init>(Lcom/viber/voip/market/as;)V

    invoke-static {v0, v1}, Lcom/viber/voip/market/ak;->a(Lcom/viber/voip/market/ak;Ljava/lang/Runnable;)V

    goto :goto_0
.end method
