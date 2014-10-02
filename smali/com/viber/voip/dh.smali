.class final enum Lcom/viber/voip/dh;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/viber/voip/dh;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/viber/voip/dh;

.field public static final enum b:Lcom/viber/voip/dh;

.field public static final enum c:Lcom/viber/voip/dh;

.field public static final enum d:Lcom/viber/voip/dh;

.field private static final synthetic e:[Lcom/viber/voip/dh;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 23
    new-instance v0, Lcom/viber/voip/dh;

    const-string/jumbo v1, "IDLE"

    invoke-direct {v0, v1, v2}, Lcom/viber/voip/dh;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/viber/voip/dh;->a:Lcom/viber/voip/dh;

    new-instance v0, Lcom/viber/voip/dh;

    const-string/jumbo v1, "START_APPLICATION"

    invoke-direct {v0, v1, v3}, Lcom/viber/voip/dh;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/viber/voip/dh;->b:Lcom/viber/voip/dh;

    new-instance v0, Lcom/viber/voip/dh;

    const-string/jumbo v1, "RECORDING_PTT"

    invoke-direct {v0, v1, v4}, Lcom/viber/voip/dh;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/viber/voip/dh;->c:Lcom/viber/voip/dh;

    new-instance v0, Lcom/viber/voip/dh;

    const-string/jumbo v1, "IN_CALL"

    invoke-direct {v0, v1, v5}, Lcom/viber/voip/dh;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/viber/voip/dh;->d:Lcom/viber/voip/dh;

    .line 21
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/viber/voip/dh;

    sget-object v1, Lcom/viber/voip/dh;->a:Lcom/viber/voip/dh;

    aput-object v1, v0, v2

    sget-object v1, Lcom/viber/voip/dh;->b:Lcom/viber/voip/dh;

    aput-object v1, v0, v3

    sget-object v1, Lcom/viber/voip/dh;->c:Lcom/viber/voip/dh;

    aput-object v1, v0, v4

    sget-object v1, Lcom/viber/voip/dh;->d:Lcom/viber/voip/dh;

    aput-object v1, v0, v5

    sput-object v0, Lcom/viber/voip/dh;->e:[Lcom/viber/voip/dh;

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
    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/viber/voip/dh;
    .locals 1
    .parameter

    .prologue
    .line 21
    const-class v0, Lcom/viber/voip/dh;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/dh;

    return-object v0
.end method

.method public static values()[Lcom/viber/voip/dh;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/viber/voip/dh;->e:[Lcom/viber/voip/dh;

    invoke-virtual {v0}, [Lcom/viber/voip/dh;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/viber/voip/dh;

    return-object v0
.end method
