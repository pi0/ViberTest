.class public Lcom/viber/voip/api/billing/ProductDetails;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field mDescription:Ljava/lang/String;

.field mItemType:Ljava/lang/String;

.field mJson:Ljava/lang/String;

.field mPrice:Ljava/lang/String;

.field mProductId:Ljava/lang/String;

.field mTitle:Ljava/lang/String;

.field mType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 34
    const-string/jumbo v0, "inapp"

    invoke-direct {p0, v0, p1}, Lcom/viber/voip/api/billing/ProductDetails;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/viber/voip/api/billing/ProductDetails;->mItemType:Ljava/lang/String;

    .line 39
    iput-object p2, p0, Lcom/viber/voip/api/billing/ProductDetails;->mJson:Ljava/lang/String;

    .line 40
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/viber/voip/api/billing/ProductDetails;->mJson:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 41
    const-string/jumbo v1, "productId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/viber/voip/api/billing/ProductDetails;->mProductId:Ljava/lang/String;

    .line 42
    const-string/jumbo v1, "type"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/viber/voip/api/billing/ProductDetails;->mType:Ljava/lang/String;

    .line 43
    const-string/jumbo v1, "price"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/viber/voip/api/billing/ProductDetails;->mPrice:Ljava/lang/String;

    .line 44
    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/viber/voip/api/billing/ProductDetails;->mTitle:Ljava/lang/String;

    .line 45
    const-string/jumbo v1, "description"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/api/billing/ProductDetails;->mDescription:Ljava/lang/String;

    .line 46
    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/viber/voip/api/billing/ProductDetails;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getJson()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/viber/voip/api/billing/ProductDetails;->mJson:Ljava/lang/String;

    return-object v0
.end method

.method public getPriceString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/viber/voip/api/billing/ProductDetails;->mPrice:Ljava/lang/String;

    return-object v0
.end method

.method public getProductId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/viber/voip/api/billing/ProductDetails;->mProductId:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/viber/voip/api/billing/ProductDetails;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/viber/voip/api/billing/ProductDetails;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SkuDetails:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/api/billing/ProductDetails;->mJson:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
