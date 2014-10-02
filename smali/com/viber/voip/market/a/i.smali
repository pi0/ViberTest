.class public Lcom/viber/voip/market/a/i;
.super Lcom/viber/voip/process/c;
.source "SourceFile"


# instance fields
.field private a:Lcom/viber/voip/market/u;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/viber/voip/process/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a([Lcom/viber/voip/billing/bn;Lcom/viber/voip/market/u;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 22
    iput-object p2, p0, Lcom/viber/voip/market/a/i;->a:Lcom/viber/voip/market/u;

    .line 24
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 25
    array-length v0, p1

    new-array v2, v0, [Ljava/lang/String;

    .line 26
    const/4 v0, 0x0

    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_0

    .line 27
    aget-object v3, p1, v0

    invoke-virtual {v3}, Lcom/viber/voip/billing/bn;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 26
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 30
    :cond_0
    const-string/jumbo v0, "product_ids"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 31
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    const-class v2, Lcom/viber/voip/market/a/i;

    invoke-virtual {p0, v0, v2, v1}, Lcom/viber/voip/market/a/i;->execute(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 32
    return-void
.end method

.method public doInTargetProcess(Landroid/os/Bundle;Lcom/viber/voip/process/b;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 36
    const-string/jumbo v0, "product_ids"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 37
    array-length v0, v1

    new-array v2, v0, [Lcom/viber/voip/billing/bn;

    .line 38
    const/4 v0, 0x0

    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_0

    .line 39
    aget-object v3, v1, v0

    invoke-static {v3}, Lcom/viber/voip/billing/bn;->a(Ljava/lang/String;)Lcom/viber/voip/billing/bn;

    move-result-object v3

    aput-object v3, v2, v0

    .line 38
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 41
    :cond_0
    invoke-static {}, Lcom/viber/voip/market/MarketApi;->a()Lcom/viber/voip/market/MarketApi;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/market/a/j;

    invoke-direct {v1, p0, p2}, Lcom/viber/voip/market/a/j;-><init>(Lcom/viber/voip/market/a/i;Lcom/viber/voip/process/b;)V

    invoke-virtual {v0, v2, v1}, Lcom/viber/voip/market/MarketApi;->a([Lcom/viber/voip/billing/bn;Lcom/viber/voip/market/u;)V

    .line 49
    return-void
.end method

.method public processResult(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    .line 53
    const-string/jumbo v0, "products_info"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v2

    .line 54
    array-length v0, v2

    new-array v3, v0, [Lcom/viber/voip/market/MarketApi$ProductInfo;

    .line 55
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v0, v2

    if-ge v1, v0, :cond_0

    .line 56
    aget-object v0, v2, v1

    check-cast v0, Lcom/viber/voip/market/MarketApi$ProductInfo;

    aput-object v0, v3, v1

    .line 55
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/market/a/i;->a:Lcom/viber/voip/market/u;

    invoke-interface {v0, v3}, Lcom/viber/voip/market/u;->a([Lcom/viber/voip/market/MarketApi$ProductInfo;)V

    .line 59
    return-void
.end method
