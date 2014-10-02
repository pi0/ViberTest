.class Lcom/viber/voip/market/bf;
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
    .line 337
    iput-object p1, p0, Lcom/viber/voip/market/bf;->c:Lcom/viber/voip/market/am;

    iput-object p2, p0, Lcom/viber/voip/market/bf;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/viber/voip/market/bf;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 340
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "viewPublicGroup, groupId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/market/bf;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", dataJson:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/market/bf;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/market/ak;->a(Ljava/lang/String;)V

    .line 342
    :try_start_0
    new-instance v0, Lcom/viber/voip/market/MarketPublicGroupInfo;

    iget-object v1, p0, Lcom/viber/voip/market/bf;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/viber/voip/market/bf;->b:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/viber/voip/market/MarketPublicGroupInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    iget-object v1, p0, Lcom/viber/voip/market/bf;->c:Lcom/viber/voip/market/am;

    iget-object v1, v1, Lcom/viber/voip/market/am;->a:Lcom/viber/voip/market/ak;

    invoke-static {v1}, Lcom/viber/voip/market/ak;->a(Lcom/viber/voip/market/ak;)Lcom/viber/voip/market/bk;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/viber/voip/market/bk;->a(Lcom/viber/voip/market/MarketPublicGroupInfo;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 347
    :goto_0
    return-void

    .line 344
    :catch_0
    move-exception v0

    .line 345
    const-string/jumbo v1, "error parsing json"

    invoke-static {v1, v0}, Lcom/viber/voip/market/ak;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
