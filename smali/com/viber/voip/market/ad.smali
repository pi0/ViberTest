.class final enum Lcom/viber/voip/market/ad;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/viber/voip/market/ad;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/viber/voip/market/ad;

.field public static final enum b:Lcom/viber/voip/market/ad;

.field private static final synthetic c:[Lcom/viber/voip/market/ad;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 20
    new-instance v0, Lcom/viber/voip/market/ad;

    const-string/jumbo v1, "FOLLOW"

    invoke-direct {v0, v1, v2}, Lcom/viber/voip/market/ad;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/viber/voip/market/ad;->a:Lcom/viber/voip/market/ad;

    .line 21
    new-instance v0, Lcom/viber/voip/market/ad;

    const-string/jumbo v1, "UNFOLLOW"

    invoke-direct {v0, v1, v3}, Lcom/viber/voip/market/ad;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/viber/voip/market/ad;->b:Lcom/viber/voip/market/ad;

    .line 19
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/viber/voip/market/ad;

    sget-object v1, Lcom/viber/voip/market/ad;->a:Lcom/viber/voip/market/ad;

    aput-object v1, v0, v2

    sget-object v1, Lcom/viber/voip/market/ad;->b:Lcom/viber/voip/market/ad;

    aput-object v1, v0, v3

    sput-object v0, Lcom/viber/voip/market/ad;->c:[Lcom/viber/voip/market/ad;

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
    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/viber/voip/market/ad;
    .locals 1
    .parameter

    .prologue
    .line 19
    const-class v0, Lcom/viber/voip/market/ad;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/market/ad;

    return-object v0
.end method

.method public static values()[Lcom/viber/voip/market/ad;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/viber/voip/market/ad;->c:[Lcom/viber/voip/market/ad;

    invoke-virtual {v0}, [Lcom/viber/voip/market/ad;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/viber/voip/market/ad;

    return-object v0
.end method
