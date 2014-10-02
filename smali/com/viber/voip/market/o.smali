.class final enum Lcom/viber/voip/market/o;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/viber/voip/market/o;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/viber/voip/market/o;

.field public static final enum b:Lcom/viber/voip/market/o;

.field public static final enum c:Lcom/viber/voip/market/o;

.field public static final enum d:Lcom/viber/voip/market/o;

.field private static final synthetic e:[Lcom/viber/voip/market/o;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 78
    new-instance v0, Lcom/viber/voip/market/o;

    const-string/jumbo v1, "StickerOverview"

    invoke-direct {v0, v1, v2}, Lcom/viber/voip/market/o;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/viber/voip/market/o;->a:Lcom/viber/voip/market/o;

    .line 79
    new-instance v0, Lcom/viber/voip/market/o;

    const-string/jumbo v1, "StickerPackage"

    invoke-direct {v0, v1, v3}, Lcom/viber/voip/market/o;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/viber/voip/market/o;->b:Lcom/viber/voip/market/o;

    .line 80
    new-instance v0, Lcom/viber/voip/market/o;

    const-string/jumbo v1, "StickerPackageWithExtras"

    invoke-direct {v0, v1, v4}, Lcom/viber/voip/market/o;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/viber/voip/market/o;->c:Lcom/viber/voip/market/o;

    .line 81
    new-instance v0, Lcom/viber/voip/market/o;

    const-string/jumbo v1, "PublicGroups"

    invoke-direct {v0, v1, v5}, Lcom/viber/voip/market/o;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/viber/voip/market/o;->d:Lcom/viber/voip/market/o;

    .line 77
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/viber/voip/market/o;

    sget-object v1, Lcom/viber/voip/market/o;->a:Lcom/viber/voip/market/o;

    aput-object v1, v0, v2

    sget-object v1, Lcom/viber/voip/market/o;->b:Lcom/viber/voip/market/o;

    aput-object v1, v0, v3

    sget-object v1, Lcom/viber/voip/market/o;->c:Lcom/viber/voip/market/o;

    aput-object v1, v0, v4

    sget-object v1, Lcom/viber/voip/market/o;->d:Lcom/viber/voip/market/o;

    aput-object v1, v0, v5

    sput-object v0, Lcom/viber/voip/market/o;->e:[Lcom/viber/voip/market/o;

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
    .line 77
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/viber/voip/market/o;
    .locals 1
    .parameter

    .prologue
    .line 77
    const-class v0, Lcom/viber/voip/market/o;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/market/o;

    return-object v0
.end method

.method public static values()[Lcom/viber/voip/market/o;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lcom/viber/voip/market/o;->e:[Lcom/viber/voip/market/o;

    invoke-virtual {v0}, [Lcom/viber/voip/market/o;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/viber/voip/market/o;

    return-object v0
.end method
