.class public final enum Lcom/viber/voip/billing/s;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/viber/voip/billing/s;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/viber/voip/billing/s;

.field public static final enum b:Lcom/viber/voip/billing/s;

.field public static final enum c:Lcom/viber/voip/billing/s;

.field private static final synthetic d:[Lcom/viber/voip/billing/s;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 82
    new-instance v0, Lcom/viber/voip/billing/s;

    const-string/jumbo v1, "NO_NETWORK"

    invoke-direct {v0, v1, v2}, Lcom/viber/voip/billing/s;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/viber/voip/billing/s;->a:Lcom/viber/voip/billing/s;

    .line 83
    new-instance v0, Lcom/viber/voip/billing/s;

    const-string/jumbo v1, "NO_SERVICE"

    invoke-direct {v0, v1, v3}, Lcom/viber/voip/billing/s;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/viber/voip/billing/s;->b:Lcom/viber/voip/billing/s;

    .line 84
    new-instance v0, Lcom/viber/voip/billing/s;

    const-string/jumbo v1, "NETWORK_ERROR"

    invoke-direct {v0, v1, v4}, Lcom/viber/voip/billing/s;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/viber/voip/billing/s;->c:Lcom/viber/voip/billing/s;

    .line 81
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/viber/voip/billing/s;

    sget-object v1, Lcom/viber/voip/billing/s;->a:Lcom/viber/voip/billing/s;

    aput-object v1, v0, v2

    sget-object v1, Lcom/viber/voip/billing/s;->b:Lcom/viber/voip/billing/s;

    aput-object v1, v0, v3

    sget-object v1, Lcom/viber/voip/billing/s;->c:Lcom/viber/voip/billing/s;

    aput-object v1, v0, v4

    sput-object v0, Lcom/viber/voip/billing/s;->d:[Lcom/viber/voip/billing/s;

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
    .line 81
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/viber/voip/billing/s;
    .locals 1
    .parameter

    .prologue
    .line 81
    const-class v0, Lcom/viber/voip/billing/s;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/billing/s;

    return-object v0
.end method

.method public static values()[Lcom/viber/voip/billing/s;
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lcom/viber/voip/billing/s;->d:[Lcom/viber/voip/billing/s;

    invoke-virtual {v0}, [Lcom/viber/voip/billing/s;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/viber/voip/billing/s;

    return-object v0
.end method
