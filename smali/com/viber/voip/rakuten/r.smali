.class final enum Lcom/viber/voip/rakuten/r;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/viber/voip/rakuten/r;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/viber/voip/rakuten/r;

.field public static final enum b:Lcom/viber/voip/rakuten/r;

.field public static final enum c:Lcom/viber/voip/rakuten/r;

.field public static final enum d:Lcom/viber/voip/rakuten/r;

.field public static final enum e:Lcom/viber/voip/rakuten/r;

.field public static final enum f:Lcom/viber/voip/rakuten/r;

.field private static final synthetic g:[Lcom/viber/voip/rakuten/r;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 38
    new-instance v0, Lcom/viber/voip/rakuten/r;

    const-string/jumbo v1, "INITIAL"

    invoke-direct {v0, v1, v3}, Lcom/viber/voip/rakuten/r;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/viber/voip/rakuten/r;->a:Lcom/viber/voip/rakuten/r;

    .line 39
    new-instance v0, Lcom/viber/voip/rakuten/r;

    const-string/jumbo v1, "REG_PART1"

    invoke-direct {v0, v1, v4}, Lcom/viber/voip/rakuten/r;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/viber/voip/rakuten/r;->b:Lcom/viber/voip/rakuten/r;

    .line 40
    new-instance v0, Lcom/viber/voip/rakuten/r;

    const-string/jumbo v1, "REG_CONFIRM"

    invoke-direct {v0, v1, v5}, Lcom/viber/voip/rakuten/r;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/viber/voip/rakuten/r;->c:Lcom/viber/voip/rakuten/r;

    .line 41
    new-instance v0, Lcom/viber/voip/rakuten/r;

    const-string/jumbo v1, "REG_PART2"

    invoke-direct {v0, v1, v6}, Lcom/viber/voip/rakuten/r;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/viber/voip/rakuten/r;->d:Lcom/viber/voip/rakuten/r;

    .line 42
    new-instance v0, Lcom/viber/voip/rakuten/r;

    const-string/jumbo v1, "REG_SUCCESS"

    invoke-direct {v0, v1, v7}, Lcom/viber/voip/rakuten/r;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/viber/voip/rakuten/r;->e:Lcom/viber/voip/rakuten/r;

    .line 43
    new-instance v0, Lcom/viber/voip/rakuten/r;

    const-string/jumbo v1, "REG_FAILURE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/viber/voip/rakuten/r;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/viber/voip/rakuten/r;->f:Lcom/viber/voip/rakuten/r;

    .line 37
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/viber/voip/rakuten/r;

    sget-object v1, Lcom/viber/voip/rakuten/r;->a:Lcom/viber/voip/rakuten/r;

    aput-object v1, v0, v3

    sget-object v1, Lcom/viber/voip/rakuten/r;->b:Lcom/viber/voip/rakuten/r;

    aput-object v1, v0, v4

    sget-object v1, Lcom/viber/voip/rakuten/r;->c:Lcom/viber/voip/rakuten/r;

    aput-object v1, v0, v5

    sget-object v1, Lcom/viber/voip/rakuten/r;->d:Lcom/viber/voip/rakuten/r;

    aput-object v1, v0, v6

    sget-object v1, Lcom/viber/voip/rakuten/r;->e:Lcom/viber/voip/rakuten/r;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/viber/voip/rakuten/r;->f:Lcom/viber/voip/rakuten/r;

    aput-object v2, v0, v1

    sput-object v0, Lcom/viber/voip/rakuten/r;->g:[Lcom/viber/voip/rakuten/r;

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
    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/viber/voip/rakuten/r;
    .locals 1
    .parameter

    .prologue
    .line 37
    const-class v0, Lcom/viber/voip/rakuten/r;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/rakuten/r;

    return-object v0
.end method

.method public static values()[Lcom/viber/voip/rakuten/r;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/viber/voip/rakuten/r;->g:[Lcom/viber/voip/rakuten/r;

    invoke-virtual {v0}, [Lcom/viber/voip/rakuten/r;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/viber/voip/rakuten/r;

    return-object v0
.end method
