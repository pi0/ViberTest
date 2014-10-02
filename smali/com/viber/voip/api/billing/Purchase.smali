.class public Lcom/viber/voip/api/billing/Purchase;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field mCategory:Lcom/viber/voip/api/billing/ProductCategory;

.field mConsumed:Z

.field mDeveloperPayload:Ljava/lang/String;

.field mFromDB:Z

.field mItemType:Ljava/lang/String;

.field mOrderId:Ljava/lang/String;

.field mOriginalJson:Ljava/lang/String;

.field mPackageName:Ljava/lang/String;

.field mPending:Z

.field mProductId:Ljava/lang/String;

.field mPurchaseState:I

.field mPurchaseTime:J

.field mSignature:Ljava/lang/String;

.field mToken:Ljava/lang/String;

.field mVerified:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/viber/voip/api/billing/Purchase;->mOriginalJson:Ljava/lang/String;

    .line 49
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/viber/voip/api/billing/Purchase;->mOriginalJson:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 50
    const-string/jumbo v1, "orderId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/viber/voip/api/billing/Purchase;->mOrderId:Ljava/lang/String;

    .line 51
    const-string/jumbo v1, "packageName"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/viber/voip/api/billing/Purchase;->mPackageName:Ljava/lang/String;

    .line 52
    const-string/jumbo v1, "productId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/viber/voip/api/billing/Purchase;->mProductId:Ljava/lang/String;

    .line 53
    const-string/jumbo v1, "purchaseTime"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/viber/voip/api/billing/Purchase;->mPurchaseTime:J

    .line 54
    const-string/jumbo v1, "purchaseState"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/viber/voip/api/billing/Purchase;->mPurchaseState:I

    .line 55
    const-string/jumbo v1, "developerPayload"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/viber/voip/api/billing/Purchase;->mDeveloperPayload:Ljava/lang/String;

    .line 56
    const-string/jumbo v1, "token"

    const-string/jumbo v2, "purchaseToken"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/api/billing/Purchase;->mToken:Ljava/lang/String;

    .line 57
    iput-object p2, p0, Lcom/viber/voip/api/billing/Purchase;->mSignature:Ljava/lang/String;

    .line 58
    iget-object v0, p0, Lcom/viber/voip/api/billing/Purchase;->mProductId:Ljava/lang/String;

    invoke-static {v0}, Lcom/viber/voip/api/billing/ProductCategoryDetector;->getItemTypeOfProductId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/api/billing/Purchase;->mItemType:Ljava/lang/String;

    .line 59
    iget-object v0, p0, Lcom/viber/voip/api/billing/Purchase;->mProductId:Ljava/lang/String;

    invoke-static {v0}, Lcom/viber/voip/api/billing/ProductCategoryDetector;->getCategoryOfProductId(Ljava/lang/String;)Lcom/viber/voip/api/billing/ProductCategory;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/api/billing/Purchase;->mCategory:Lcom/viber/voip/api/billing/ProductCategory;

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/viber/voip/api/billing/Purchase;->mPending:Z

    .line 61
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/viber/voip/api/billing/Purchase;->mItemType:Ljava/lang/String;

    .line 67
    invoke-static {p4}, Lcom/viber/voip/api/billing/ProductCategoryDetector;->getCategoryOfProductId(Ljava/lang/String;)Lcom/viber/voip/api/billing/ProductCategory;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/api/billing/Purchase;->mCategory:Lcom/viber/voip/api/billing/ProductCategory;

    .line 68
    iput-object p2, p0, Lcom/viber/voip/api/billing/Purchase;->mOrderId:Ljava/lang/String;

    .line 69
    iput-object p3, p0, Lcom/viber/voip/api/billing/Purchase;->mPackageName:Ljava/lang/String;

    .line 70
    iput-object p4, p0, Lcom/viber/voip/api/billing/Purchase;->mProductId:Ljava/lang/String;

    .line 71
    iput-wide p5, p0, Lcom/viber/voip/api/billing/Purchase;->mPurchaseTime:J

    .line 72
    iput p7, p0, Lcom/viber/voip/api/billing/Purchase;->mPurchaseState:I

    .line 73
    iput-object p8, p0, Lcom/viber/voip/api/billing/Purchase;->mDeveloperPayload:Ljava/lang/String;

    .line 74
    iput-object p9, p0, Lcom/viber/voip/api/billing/Purchase;->mToken:Ljava/lang/String;

    .line 75
    iput-object p10, p0, Lcom/viber/voip/api/billing/Purchase;->mOriginalJson:Ljava/lang/String;

    .line 76
    iput-object p11, p0, Lcom/viber/voip/api/billing/Purchase;->mSignature:Ljava/lang/String;

    .line 78
    iput-boolean p12, p0, Lcom/viber/voip/api/billing/Purchase;->mVerified:Z

    .line 79
    iput-boolean p13, p0, Lcom/viber/voip/api/billing/Purchase;->mConsumed:Z

    .line 80
    iput-boolean p14, p0, Lcom/viber/voip/api/billing/Purchase;->mPending:Z

    .line 81
    return-void
.end method


# virtual methods
.method public getDeveloperPayload()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/viber/voip/api/billing/Purchase;->mDeveloperPayload:Ljava/lang/String;

    return-object v0
.end method

.method public getItemType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/viber/voip/api/billing/Purchase;->mItemType:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/viber/voip/api/billing/Purchase;->mOrderId:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginalJson()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/viber/voip/api/billing/Purchase;->mOriginalJson:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/viber/voip/api/billing/Purchase;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getProductCategory()Lcom/viber/voip/api/billing/ProductCategory;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/viber/voip/api/billing/Purchase;->mCategory:Lcom/viber/voip/api/billing/ProductCategory;

    return-object v0
.end method

.method public getProductId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/viber/voip/api/billing/Purchase;->mProductId:Ljava/lang/String;

    return-object v0
.end method

.method public getPurchaseState()I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lcom/viber/voip/api/billing/Purchase;->mPurchaseState:I

    return v0
.end method

.method public getPurchaseTime()J
    .locals 2

    .prologue
    .line 87
    iget-wide v0, p0, Lcom/viber/voip/api/billing/Purchase;->mPurchaseTime:J

    return-wide v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/viber/voip/api/billing/Purchase;->mSignature:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/viber/voip/api/billing/Purchase;->mToken:Ljava/lang/String;

    return-object v0
.end method

.method public isConsumed()Z
    .locals 1

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/viber/voip/api/billing/Purchase;->mConsumed:Z

    return v0
.end method

.method isFromDB()Z
    .locals 1

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/viber/voip/api/billing/Purchase;->mFromDB:Z

    return v0
.end method

.method public isPending()Z
    .locals 1

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/viber/voip/api/billing/Purchase;->mPending:Z

    return v0
.end method

.method public isVerified()Z
    .locals 1

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/viber/voip/api/billing/Purchase;->mVerified:Z

    return v0
.end method

.method public setConsumed(Z)V
    .locals 0
    .parameter

    .prologue
    .line 99
    iput-boolean p1, p0, Lcom/viber/voip/api/billing/Purchase;->mConsumed:Z

    return-void
.end method

.method setFromDB(Z)V
    .locals 1
    .parameter

    .prologue
    .line 103
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/viber/voip/api/billing/Purchase;->mFromDB:Z

    .line 104
    return-void
.end method

.method public setPending(Z)V
    .locals 0
    .parameter

    .prologue
    .line 100
    iput-boolean p1, p0, Lcom/viber/voip/api/billing/Purchase;->mPending:Z

    return-void
.end method

.method public setVerified(Z)V
    .locals 0
    .parameter

    .prologue
    .line 98
    iput-boolean p1, p0, Lcom/viber/voip/api/billing/Purchase;->mVerified:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Purchase(type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/api/billing/Purchase;->mItemType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", category:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/api/billing/Purchase;->mCategory:Lcom/viber/voip/api/billing/ProductCategory;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", verified:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/viber/voip/api/billing/Purchase;->mVerified:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", consumed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/viber/voip/api/billing/Purchase;->mConsumed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " pending:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/viber/voip/api/billing/Purchase;->mPending:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "):"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/api/billing/Purchase;->mOriginalJson:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
