.class public final enum Lcom/viber/voip/billing/bp;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/viber/voip/billing/bp;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/viber/voip/billing/bp;

.field public static final enum b:Lcom/viber/voip/billing/bp;

.field public static final enum c:Lcom/viber/voip/billing/bp;

.field private static final synthetic d:[Lcom/viber/voip/billing/bp;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4
    new-instance v0, Lcom/viber/voip/billing/bp;

    const-string/jumbo v1, "VIBER_OUT_CREDIT"

    invoke-direct {v0, v1, v2}, Lcom/viber/voip/billing/bp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/viber/voip/billing/bp;->a:Lcom/viber/voip/billing/bp;

    .line 5
    new-instance v0, Lcom/viber/voip/billing/bp;

    const-string/jumbo v1, "STICKER_PACKAGE"

    invoke-direct {v0, v1, v3}, Lcom/viber/voip/billing/bp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/viber/voip/billing/bp;->b:Lcom/viber/voip/billing/bp;

    .line 6
    new-instance v0, Lcom/viber/voip/billing/bp;

    const-string/jumbo v1, "UNKNOWN"

    invoke-direct {v0, v1, v4}, Lcom/viber/voip/billing/bp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/viber/voip/billing/bp;->c:Lcom/viber/voip/billing/bp;

    .line 3
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/viber/voip/billing/bp;

    sget-object v1, Lcom/viber/voip/billing/bp;->a:Lcom/viber/voip/billing/bp;

    aput-object v1, v0, v2

    sget-object v1, Lcom/viber/voip/billing/bp;->b:Lcom/viber/voip/billing/bp;

    aput-object v1, v0, v3

    sget-object v1, Lcom/viber/voip/billing/bp;->c:Lcom/viber/voip/billing/bp;

    aput-object v1, v0, v4

    sput-object v0, Lcom/viber/voip/billing/bp;->d:[Lcom/viber/voip/billing/bp;

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

.method public static valueOf(Ljava/lang/String;)Lcom/viber/voip/billing/bp;
    .locals 1
    .parameter

    .prologue
    .line 3
    const-class v0, Lcom/viber/voip/billing/bp;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/billing/bp;

    return-object v0
.end method

.method public static values()[Lcom/viber/voip/billing/bp;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/viber/voip/billing/bp;->d:[Lcom/viber/voip/billing/bp;

    invoke-virtual {v0}, [Lcom/viber/voip/billing/bp;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/viber/voip/billing/bp;

    return-object v0
.end method
