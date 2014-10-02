.class final enum Lcom/viber/voip/viberout/promotion/ui/c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/viber/voip/viberout/promotion/ui/c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/viber/voip/viberout/promotion/ui/c;

.field public static final enum b:Lcom/viber/voip/viberout/promotion/ui/c;

.field public static final enum c:Lcom/viber/voip/viberout/promotion/ui/c;

.field private static final synthetic d:[Lcom/viber/voip/viberout/promotion/ui/c;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 30
    new-instance v0, Lcom/viber/voip/viberout/promotion/ui/c;

    const-string/jumbo v1, "ACTION"

    invoke-direct {v0, v1, v2}, Lcom/viber/voip/viberout/promotion/ui/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/viber/voip/viberout/promotion/ui/c;->a:Lcom/viber/voip/viberout/promotion/ui/c;

    .line 31
    new-instance v0, Lcom/viber/voip/viberout/promotion/ui/c;

    const-string/jumbo v1, "RATE"

    invoke-direct {v0, v1, v3}, Lcom/viber/voip/viberout/promotion/ui/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/viber/voip/viberout/promotion/ui/c;->b:Lcom/viber/voip/viberout/promotion/ui/c;

    .line 32
    new-instance v0, Lcom/viber/voip/viberout/promotion/ui/c;

    const-string/jumbo v1, "COUNTRY"

    invoke-direct {v0, v1, v4}, Lcom/viber/voip/viberout/promotion/ui/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/viber/voip/viberout/promotion/ui/c;->c:Lcom/viber/voip/viberout/promotion/ui/c;

    .line 29
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/viber/voip/viberout/promotion/ui/c;

    sget-object v1, Lcom/viber/voip/viberout/promotion/ui/c;->a:Lcom/viber/voip/viberout/promotion/ui/c;

    aput-object v1, v0, v2

    sget-object v1, Lcom/viber/voip/viberout/promotion/ui/c;->b:Lcom/viber/voip/viberout/promotion/ui/c;

    aput-object v1, v0, v3

    sget-object v1, Lcom/viber/voip/viberout/promotion/ui/c;->c:Lcom/viber/voip/viberout/promotion/ui/c;

    aput-object v1, v0, v4

    sput-object v0, Lcom/viber/voip/viberout/promotion/ui/c;->d:[Lcom/viber/voip/viberout/promotion/ui/c;

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
    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/viber/voip/viberout/promotion/ui/c;
    .locals 1
    .parameter

    .prologue
    .line 29
    const-class v0, Lcom/viber/voip/viberout/promotion/ui/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/viberout/promotion/ui/c;

    return-object v0
.end method

.method public static values()[Lcom/viber/voip/viberout/promotion/ui/c;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/viber/voip/viberout/promotion/ui/c;->d:[Lcom/viber/voip/viberout/promotion/ui/c;

    invoke-virtual {v0}, [Lcom/viber/voip/viberout/promotion/ui/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/viber/voip/viberout/promotion/ui/c;

    return-object v0
.end method
