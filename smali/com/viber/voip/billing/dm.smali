.class final enum Lcom/viber/voip/billing/dm;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/viber/voip/billing/dm;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/viber/voip/billing/dm;

.field public static final enum b:Lcom/viber/voip/billing/dm;

.field public static final enum c:Lcom/viber/voip/billing/dm;

.field public static final enum d:Lcom/viber/voip/billing/dm;

.field private static final synthetic e:[Lcom/viber/voip/billing/dm;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 36
    new-instance v0, Lcom/viber/voip/billing/dm;

    const-string/jumbo v1, "StartPurchase"

    invoke-direct {v0, v1, v2}, Lcom/viber/voip/billing/dm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/viber/voip/billing/dm;->a:Lcom/viber/voip/billing/dm;

    .line 37
    new-instance v0, Lcom/viber/voip/billing/dm;

    const-string/jumbo v1, "ShowErrorDialog"

    invoke-direct {v0, v1, v3}, Lcom/viber/voip/billing/dm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/viber/voip/billing/dm;->b:Lcom/viber/voip/billing/dm;

    .line 38
    new-instance v0, Lcom/viber/voip/billing/dm;

    const-string/jumbo v1, "ShowProgressDialog"

    invoke-direct {v0, v1, v4}, Lcom/viber/voip/billing/dm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/viber/voip/billing/dm;->c:Lcom/viber/voip/billing/dm;

    .line 39
    new-instance v0, Lcom/viber/voip/billing/dm;

    const-string/jumbo v1, "ShowViberOutPaymentSuccessDialog"

    invoke-direct {v0, v1, v5}, Lcom/viber/voip/billing/dm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/viber/voip/billing/dm;->d:Lcom/viber/voip/billing/dm;

    .line 35
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/viber/voip/billing/dm;

    sget-object v1, Lcom/viber/voip/billing/dm;->a:Lcom/viber/voip/billing/dm;

    aput-object v1, v0, v2

    sget-object v1, Lcom/viber/voip/billing/dm;->b:Lcom/viber/voip/billing/dm;

    aput-object v1, v0, v3

    sget-object v1, Lcom/viber/voip/billing/dm;->c:Lcom/viber/voip/billing/dm;

    aput-object v1, v0, v4

    sget-object v1, Lcom/viber/voip/billing/dm;->d:Lcom/viber/voip/billing/dm;

    aput-object v1, v0, v5

    sput-object v0, Lcom/viber/voip/billing/dm;->e:[Lcom/viber/voip/billing/dm;

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
    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/viber/voip/billing/dm;
    .locals 1
    .parameter

    .prologue
    .line 35
    const-class v0, Lcom/viber/voip/billing/dm;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/billing/dm;

    return-object v0
.end method

.method public static values()[Lcom/viber/voip/billing/dm;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/viber/voip/billing/dm;->e:[Lcom/viber/voip/billing/dm;

    invoke-virtual {v0}, [Lcom/viber/voip/billing/dm;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/viber/voip/billing/dm;

    return-object v0
.end method
