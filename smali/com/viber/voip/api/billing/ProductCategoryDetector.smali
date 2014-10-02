.class public Lcom/viber/voip/api/billing/ProductCategoryDetector;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCategoryOfProductId(Ljava/lang/String;)Lcom/viber/voip/api/billing/ProductCategory;
    .locals 1
    .parameter

    .prologue
    .line 5
    const-string/jumbo v0, "sticker"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    sget-object v0, Lcom/viber/voip/api/billing/ProductCategory;->STICKER_PACKAGE:Lcom/viber/voip/api/billing/ProductCategory;

    .line 8
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/viber/voip/api/billing/ProductCategory;->VIBER_OUT_CREDIT:Lcom/viber/voip/api/billing/ProductCategory;

    goto :goto_0
.end method

.method public static getItemTypeOfProductId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 13
    const-string/jumbo v0, "inapp"

    return-object v0
.end method
