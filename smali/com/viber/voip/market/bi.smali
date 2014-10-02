.class public final enum Lcom/viber/voip/market/bi;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/viber/voip/market/bi;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/viber/voip/market/bi;

.field public static final enum b:Lcom/viber/voip/market/bi;

.field private static final synthetic c:[Lcom/viber/voip/market/bi;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 66
    new-instance v0, Lcom/viber/voip/market/bi;

    const-string/jumbo v1, "LOADING"

    invoke-direct {v0, v1, v2}, Lcom/viber/voip/market/bi;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/viber/voip/market/bi;->a:Lcom/viber/voip/market/bi;

    .line 67
    new-instance v0, Lcom/viber/voip/market/bi;

    const-string/jumbo v1, "READY"

    invoke-direct {v0, v1, v3}, Lcom/viber/voip/market/bi;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/viber/voip/market/bi;->b:Lcom/viber/voip/market/bi;

    .line 65
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/viber/voip/market/bi;

    sget-object v1, Lcom/viber/voip/market/bi;->a:Lcom/viber/voip/market/bi;

    aput-object v1, v0, v2

    sget-object v1, Lcom/viber/voip/market/bi;->b:Lcom/viber/voip/market/bi;

    aput-object v1, v0, v3

    sput-object v0, Lcom/viber/voip/market/bi;->c:[Lcom/viber/voip/market/bi;

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
    .line 65
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/viber/voip/market/bi;
    .locals 1
    .parameter

    .prologue
    .line 65
    const-class v0, Lcom/viber/voip/market/bi;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/market/bi;

    return-object v0
.end method

.method public static values()[Lcom/viber/voip/market/bi;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/viber/voip/market/bi;->c:[Lcom/viber/voip/market/bi;

    invoke-virtual {v0}, [Lcom/viber/voip/market/bi;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/viber/voip/market/bi;

    return-object v0
.end method
