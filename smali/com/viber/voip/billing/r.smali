.class public Lcom/viber/voip/billing/r;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:[Lcom/viber/voip/billing/q;

.field private b:Lcom/viber/voip/billing/bo;

.field private c:Lcom/viber/voip/billing/s;


# direct methods
.method public constructor <init>(Lcom/viber/voip/billing/m;)V
    .locals 11
    .parameter

    .prologue
    const/4 v7, 0x0

    .line 626
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 627
    invoke-virtual {p1}, Lcom/viber/voip/billing/m;->b()Lcom/viber/voip/billing/s;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/billing/r;->c:Lcom/viber/voip/billing/s;

    .line 628
    invoke-virtual {p1}, Lcom/viber/voip/billing/m;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 630
    :try_start_0
    iget-object v0, p1, Lcom/viber/voip/billing/m;->a:Lorg/json/JSONObject;

    const-string/jumbo v1, "products"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    .line 631
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v10, v0, [Lcom/viber/voip/billing/q;

    move v8, v7

    .line 633
    :goto_0
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v8, v0, :cond_1

    .line 634
    invoke-virtual {v9, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 635
    const-string/jumbo v1, "merchant_product_id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 636
    invoke-static {v1}, Lcom/viber/voip/billing/bn;->b(Ljava/lang/String;)Lcom/viber/voip/billing/bn;

    move-result-object v1

    .line 637
    const-string/jumbo v2, "price"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 638
    const-string/jumbo v2, "currency"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 641
    const-string/jumbo v4, "sort"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 642
    const-string/jumbo v4, "sort"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 643
    if-eqz v0, :cond_3

    .line 645
    :try_start_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v6

    .line 651
    :goto_1
    :try_start_2
    const-string/jumbo v0, "840"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 652
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v5}, Lcom/viber/voip/billing/a;->a(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 654
    new-instance v0, Lcom/viber/voip/billing/q;

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    if-eqz v5, :cond_0

    const-string/jumbo v5, "USD"

    :goto_2
    invoke-direct/range {v0 .. v6}, Lcom/viber/voip/billing/q;-><init>(Lcom/viber/voip/billing/bn;Ljava/lang/String;DLjava/lang/String;I)V

    .line 656
    aput-object v0, v10, v8

    .line 633
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_0

    .line 646
    :catch_0
    move-exception v0

    move v6, v7

    goto :goto_1

    .line 654
    :cond_0
    const-string/jumbo v5, "EUR"

    goto :goto_2

    .line 658
    :cond_1
    iput-object v10, p0, Lcom/viber/voip/billing/r;->a:[Lcom/viber/voip/billing/q;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    .line 665
    :cond_2
    :goto_3
    return-void

    .line 660
    :catch_1
    move-exception v0

    .line 661
    const-string/jumbo v1, "json exception"

    invoke-static {v1, v0}, Lcom/viber/voip/billing/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 662
    sget-object v0, Lcom/viber/voip/billing/s;->b:Lcom/viber/voip/billing/s;

    iput-object v0, p0, Lcom/viber/voip/billing/r;->c:Lcom/viber/voip/billing/s;

    goto :goto_3

    :cond_3
    move v6, v7

    goto :goto_1
.end method

.method static synthetic a(Lcom/viber/voip/billing/r;Lcom/viber/voip/billing/bo;)Lcom/viber/voip/billing/bo;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 621
    iput-object p1, p0, Lcom/viber/voip/billing/r;->b:Lcom/viber/voip/billing/bo;

    return-object p1
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 668
    iget-object v0, p0, Lcom/viber/voip/billing/r;->c:Lcom/viber/voip/billing/s;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Lcom/viber/voip/billing/s;
    .locals 1

    .prologue
    .line 672
    iget-object v0, p0, Lcom/viber/voip/billing/r;->c:Lcom/viber/voip/billing/s;

    return-object v0
.end method

.method public c()[Lcom/viber/voip/billing/q;
    .locals 1

    .prologue
    .line 680
    iget-object v0, p0, Lcom/viber/voip/billing/r;->a:[Lcom/viber/voip/billing/q;

    return-object v0
.end method
