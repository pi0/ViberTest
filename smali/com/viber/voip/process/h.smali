.class final enum Lcom/viber/voip/process/h;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/viber/voip/process/h;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/viber/voip/process/h;

.field public static final enum b:Lcom/viber/voip/process/h;

.field public static final enum c:Lcom/viber/voip/process/h;

.field public static final enum d:Lcom/viber/voip/process/h;

.field public static final enum e:Lcom/viber/voip/process/h;

.field private static final synthetic f:[Lcom/viber/voip/process/h;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 56
    new-instance v0, Lcom/viber/voip/process/h;

    const-string/jumbo v1, "OnStickerPackageDeployed"

    invoke-direct {v0, v1, v2}, Lcom/viber/voip/process/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/viber/voip/process/h;->a:Lcom/viber/voip/process/h;

    .line 57
    new-instance v0, Lcom/viber/voip/process/h;

    const-string/jumbo v1, "OnStickerPackageDownloadScheduled"

    invoke-direct {v0, v1, v3}, Lcom/viber/voip/process/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/viber/voip/process/h;->b:Lcom/viber/voip/process/h;

    .line 58
    new-instance v0, Lcom/viber/voip/process/h;

    const-string/jumbo v1, "OnStickerPackageDownloadStarted"

    invoke-direct {v0, v1, v4}, Lcom/viber/voip/process/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/viber/voip/process/h;->c:Lcom/viber/voip/process/h;

    .line 59
    new-instance v0, Lcom/viber/voip/process/h;

    const-string/jumbo v1, "OnStickerPackageDownloading"

    invoke-direct {v0, v1, v5}, Lcom/viber/voip/process/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/viber/voip/process/h;->d:Lcom/viber/voip/process/h;

    .line 60
    new-instance v0, Lcom/viber/voip/process/h;

    const-string/jumbo v1, "OnStickerPackageDownloadError"

    invoke-direct {v0, v1, v6}, Lcom/viber/voip/process/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/viber/voip/process/h;->e:Lcom/viber/voip/process/h;

    .line 55
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/viber/voip/process/h;

    sget-object v1, Lcom/viber/voip/process/h;->a:Lcom/viber/voip/process/h;

    aput-object v1, v0, v2

    sget-object v1, Lcom/viber/voip/process/h;->b:Lcom/viber/voip/process/h;

    aput-object v1, v0, v3

    sget-object v1, Lcom/viber/voip/process/h;->c:Lcom/viber/voip/process/h;

    aput-object v1, v0, v4

    sget-object v1, Lcom/viber/voip/process/h;->d:Lcom/viber/voip/process/h;

    aput-object v1, v0, v5

    sget-object v1, Lcom/viber/voip/process/h;->e:Lcom/viber/voip/process/h;

    aput-object v1, v0, v6

    sput-object v0, Lcom/viber/voip/process/h;->f:[Lcom/viber/voip/process/h;

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
    .line 55
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/viber/voip/process/h;
    .locals 1
    .parameter

    .prologue
    .line 55
    const-class v0, Lcom/viber/voip/process/h;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/process/h;

    return-object v0
.end method

.method public static values()[Lcom/viber/voip/process/h;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/viber/voip/process/h;->f:[Lcom/viber/voip/process/h;

    invoke-virtual {v0}, [Lcom/viber/voip/process/h;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/viber/voip/process/h;

    return-object v0
.end method
