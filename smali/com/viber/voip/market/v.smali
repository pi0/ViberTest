.class public final enum Lcom/viber/voip/market/v;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/viber/voip/market/v;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/viber/voip/market/v;

.field public static final enum b:Lcom/viber/voip/market/v;

.field public static final enum c:Lcom/viber/voip/market/v;

.field public static final enum d:Lcom/viber/voip/market/v;

.field public static final enum e:Lcom/viber/voip/market/v;

.field private static final synthetic f:[Lcom/viber/voip/market/v;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 39
    new-instance v0, Lcom/viber/voip/market/v;

    const-string/jumbo v1, "ERROR"

    invoke-direct {v0, v1, v2}, Lcom/viber/voip/market/v;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/viber/voip/market/v;->a:Lcom/viber/voip/market/v;

    .line 40
    new-instance v0, Lcom/viber/voip/market/v;

    const-string/jumbo v1, "IDLE"

    invoke-direct {v0, v1, v3}, Lcom/viber/voip/market/v;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/viber/voip/market/v;->b:Lcom/viber/voip/market/v;

    .line 41
    new-instance v0, Lcom/viber/voip/market/v;

    const-string/jumbo v1, "PENDING"

    invoke-direct {v0, v1, v4}, Lcom/viber/voip/market/v;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/viber/voip/market/v;->c:Lcom/viber/voip/market/v;

    .line 42
    new-instance v0, Lcom/viber/voip/market/v;

    const-string/jumbo v1, "DOWNLOADING"

    invoke-direct {v0, v1, v5}, Lcom/viber/voip/market/v;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/viber/voip/market/v;->d:Lcom/viber/voip/market/v;

    .line 43
    new-instance v0, Lcom/viber/voip/market/v;

    const-string/jumbo v1, "INSTALLED"

    invoke-direct {v0, v1, v6}, Lcom/viber/voip/market/v;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/viber/voip/market/v;->e:Lcom/viber/voip/market/v;

    .line 38
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/viber/voip/market/v;

    sget-object v1, Lcom/viber/voip/market/v;->a:Lcom/viber/voip/market/v;

    aput-object v1, v0, v2

    sget-object v1, Lcom/viber/voip/market/v;->b:Lcom/viber/voip/market/v;

    aput-object v1, v0, v3

    sget-object v1, Lcom/viber/voip/market/v;->c:Lcom/viber/voip/market/v;

    aput-object v1, v0, v4

    sget-object v1, Lcom/viber/voip/market/v;->d:Lcom/viber/voip/market/v;

    aput-object v1, v0, v5

    sget-object v1, Lcom/viber/voip/market/v;->e:Lcom/viber/voip/market/v;

    aput-object v1, v0, v6

    sput-object v0, Lcom/viber/voip/market/v;->f:[Lcom/viber/voip/market/v;

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
    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/viber/voip/market/v;
    .locals 1
    .parameter

    .prologue
    .line 38
    const-class v0, Lcom/viber/voip/market/v;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/market/v;

    return-object v0
.end method

.method public static values()[Lcom/viber/voip/market/v;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/viber/voip/market/v;->f:[Lcom/viber/voip/market/v;

    invoke-virtual {v0}, [Lcom/viber/voip/market/v;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/viber/voip/market/v;

    return-object v0
.end method
