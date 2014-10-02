.class Lcom/viber/voip/market/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/billing/bk;


# instance fields
.field final synthetic a:[Lcom/viber/voip/billing/bn;

.field final synthetic b:Lcom/viber/voip/market/u;

.field final synthetic c:Lcom/viber/voip/market/MarketApi;


# direct methods
.method constructor <init>(Lcom/viber/voip/market/MarketApi;[Lcom/viber/voip/billing/bn;Lcom/viber/voip/market/u;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 212
    iput-object p1, p0, Lcom/viber/voip/market/p;->c:Lcom/viber/voip/market/MarketApi;

    iput-object p2, p0, Lcom/viber/voip/market/p;->a:[Lcom/viber/voip/billing/bn;

    iput-object p3, p0, Lcom/viber/voip/market/p;->b:Lcom/viber/voip/market/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/viber/voip/billing/bo;Lcom/viber/voip/billing/bm;)V
    .locals 11
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 215
    invoke-static {}, Lcom/viber/voip/market/MarketApi;->a()Lcom/viber/voip/market/MarketApi;

    move-result-object v3

    .line 217
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 218
    invoke-virtual {p1}, Lcom/viber/voip/billing/bo;->c()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 219
    iget-object v5, p0, Lcom/viber/voip/market/p;->a:[Lcom/viber/voip/billing/bn;

    array-length v6, v5

    move v2, v0

    :goto_0
    if-ge v2, v6, :cond_4

    aget-object v0, v5, v2

    .line 220
    invoke-virtual {p2, v0}, Lcom/viber/voip/billing/bm;->a(Lcom/viber/voip/billing/bn;)Lcom/viber/voip/billing/bq;

    move-result-object v7

    .line 221
    invoke-virtual {v0}, Lcom/viber/voip/billing/bn;->a()Lcom/viber/voip/billing/bt;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/viber/voip/market/MarketApi;->b(Lcom/viber/voip/billing/bt;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 222
    new-instance v8, Lcom/viber/voip/market/MarketApi$ProductInfo;

    invoke-virtual {v0}, Lcom/viber/voip/billing/bn;->a()Lcom/viber/voip/billing/bt;

    move-result-object v9

    invoke-virtual {v0}, Lcom/viber/voip/billing/bn;->a()Lcom/viber/voip/billing/bt;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/viber/voip/market/MarketApi;->a(Lcom/viber/voip/billing/bt;)Lcom/viber/voip/market/v;

    move-result-object v10

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Lcom/viber/voip/billing/bq;->b()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-direct {v8, v9, v10, v0}, Lcom/viber/voip/market/MarketApi$ProductInfo;-><init>(Lcom/viber/voip/billing/bt;Lcom/viber/voip/market/v;Ljava/lang/String;)V

    .line 225
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 219
    :goto_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 222
    goto :goto_1

    .line 227
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getProductsInfo: skipping product unsupported by MarketApi: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/market/MarketApi;->a(Ljava/lang/String;)V

    goto :goto_2

    .line 231
    :cond_2
    const-string/jumbo v2, "query products info failed, responding without price data"

    invoke-static {v2}, Lcom/viber/voip/market/MarketApi;->a(Ljava/lang/String;)V

    .line 232
    iget-object v2, p0, Lcom/viber/voip/market/p;->a:[Lcom/viber/voip/billing/bn;

    array-length v5, v2

    :goto_3
    if-ge v0, v5, :cond_4

    aget-object v6, v2, v0

    .line 233
    invoke-virtual {v6}, Lcom/viber/voip/billing/bn;->a()Lcom/viber/voip/billing/bt;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/viber/voip/market/MarketApi;->b(Lcom/viber/voip/billing/bt;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 234
    new-instance v7, Lcom/viber/voip/market/MarketApi$ProductInfo;

    invoke-virtual {v6}, Lcom/viber/voip/billing/bn;->a()Lcom/viber/voip/billing/bt;

    move-result-object v8

    invoke-virtual {v6}, Lcom/viber/voip/billing/bn;->a()Lcom/viber/voip/billing/bt;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/viber/voip/market/MarketApi;->a(Lcom/viber/voip/billing/bt;)Lcom/viber/voip/market/v;

    move-result-object v6

    invoke-direct {v7, v8, v6, v1}, Lcom/viber/voip/market/MarketApi$ProductInfo;-><init>(Lcom/viber/voip/billing/bt;Lcom/viber/voip/market/v;Ljava/lang/String;)V

    .line 236
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 232
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 238
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getProductsInfo: skipping product unsupported by MarketApi: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/viber/voip/market/MarketApi;->a(Ljava/lang/String;)V

    goto :goto_4

    .line 243
    :cond_4
    iget-object v1, p0, Lcom/viber/voip/market/p;->b:Lcom/viber/voip/market/u;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/viber/voip/market/MarketApi$ProductInfo;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/viber/voip/market/MarketApi$ProductInfo;

    invoke-interface {v1, v0}, Lcom/viber/voip/market/u;->a([Lcom/viber/voip/market/MarketApi$ProductInfo;)V

    .line 244
    return-void
.end method
