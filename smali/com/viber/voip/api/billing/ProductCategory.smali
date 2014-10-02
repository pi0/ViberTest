.class public final enum Lcom/viber/voip/api/billing/ProductCategory;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/viber/voip/api/billing/ProductCategory;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/viber/voip/api/billing/ProductCategory;

.field public static final enum STICKER_PACKAGE:Lcom/viber/voip/api/billing/ProductCategory;

.field public static final enum VIBER_OUT_CREDIT:Lcom/viber/voip/api/billing/ProductCategory;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4
    new-instance v0, Lcom/viber/voip/api/billing/ProductCategory;

    const-string/jumbo v1, "VIBER_OUT_CREDIT"

    invoke-direct {v0, v1, v2}, Lcom/viber/voip/api/billing/ProductCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/viber/voip/api/billing/ProductCategory;->VIBER_OUT_CREDIT:Lcom/viber/voip/api/billing/ProductCategory;

    .line 5
    new-instance v0, Lcom/viber/voip/api/billing/ProductCategory;

    const-string/jumbo v1, "STICKER_PACKAGE"

    invoke-direct {v0, v1, v3}, Lcom/viber/voip/api/billing/ProductCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/viber/voip/api/billing/ProductCategory;->STICKER_PACKAGE:Lcom/viber/voip/api/billing/ProductCategory;

    .line 3
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/viber/voip/api/billing/ProductCategory;

    sget-object v1, Lcom/viber/voip/api/billing/ProductCategory;->VIBER_OUT_CREDIT:Lcom/viber/voip/api/billing/ProductCategory;

    aput-object v1, v0, v2

    sget-object v1, Lcom/viber/voip/api/billing/ProductCategory;->STICKER_PACKAGE:Lcom/viber/voip/api/billing/ProductCategory;

    aput-object v1, v0, v3

    sput-object v0, Lcom/viber/voip/api/billing/ProductCategory;->$VALUES:[Lcom/viber/voip/api/billing/ProductCategory;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/viber/voip/api/billing/ProductCategory;
    .locals 1
    .parameter

    .prologue
    .line 3
    const-class v0, Lcom/viber/voip/api/billing/ProductCategory;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/api/billing/ProductCategory;

    return-object v0
.end method

.method public static values()[Lcom/viber/voip/api/billing/ProductCategory;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/viber/voip/api/billing/ProductCategory;->$VALUES:[Lcom/viber/voip/api/billing/ProductCategory;

    invoke-virtual {v0}, [Lcom/viber/voip/api/billing/ProductCategory;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/viber/voip/api/billing/ProductCategory;

    return-object v0
.end method
