.class public final enum Lcom/viber/voip/util/b/aa;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/viber/voip/util/b/aa;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/viber/voip/util/b/aa;

.field public static final enum b:Lcom/viber/voip/util/b/aa;

.field public static final enum c:Lcom/viber/voip/util/b/aa;

.field public static final enum d:Lcom/viber/voip/util/b/aa;

.field private static final synthetic e:[Lcom/viber/voip/util/b/aa;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 402
    new-instance v0, Lcom/viber/voip/util/b/aa;

    const-string/jumbo v1, "SMALL"

    invoke-direct {v0, v1, v2}, Lcom/viber/voip/util/b/aa;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/viber/voip/util/b/aa;->a:Lcom/viber/voip/util/b/aa;

    .line 407
    new-instance v0, Lcom/viber/voip/util/b/aa;

    const-string/jumbo v1, "MEDIUM"

    invoke-direct {v0, v1, v3}, Lcom/viber/voip/util/b/aa;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/viber/voip/util/b/aa;->b:Lcom/viber/voip/util/b/aa;

    .line 416
    new-instance v0, Lcom/viber/voip/util/b/aa;

    const-string/jumbo v1, "CUSTOM"

    invoke-direct {v0, v1, v4}, Lcom/viber/voip/util/b/aa;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/viber/voip/util/b/aa;->c:Lcom/viber/voip/util/b/aa;

    .line 421
    new-instance v0, Lcom/viber/voip/util/b/aa;

    const-string/jumbo v1, "ORIGINAL"

    invoke-direct {v0, v1, v5}, Lcom/viber/voip/util/b/aa;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/viber/voip/util/b/aa;->d:Lcom/viber/voip/util/b/aa;

    .line 398
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/viber/voip/util/b/aa;

    sget-object v1, Lcom/viber/voip/util/b/aa;->a:Lcom/viber/voip/util/b/aa;

    aput-object v1, v0, v2

    sget-object v1, Lcom/viber/voip/util/b/aa;->b:Lcom/viber/voip/util/b/aa;

    aput-object v1, v0, v3

    sget-object v1, Lcom/viber/voip/util/b/aa;->c:Lcom/viber/voip/util/b/aa;

    aput-object v1, v0, v4

    sget-object v1, Lcom/viber/voip/util/b/aa;->d:Lcom/viber/voip/util/b/aa;

    aput-object v1, v0, v5

    sput-object v0, Lcom/viber/voip/util/b/aa;->e:[Lcom/viber/voip/util/b/aa;

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
    .line 398
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/viber/voip/util/b/aa;
    .locals 1
    .parameter

    .prologue
    .line 398
    const-class v0, Lcom/viber/voip/util/b/aa;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/util/b/aa;

    return-object v0
.end method

.method public static values()[Lcom/viber/voip/util/b/aa;
    .locals 1

    .prologue
    .line 398
    sget-object v0, Lcom/viber/voip/util/b/aa;->e:[Lcom/viber/voip/util/b/aa;

    invoke-virtual {v0}, [Lcom/viber/voip/util/b/aa;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/viber/voip/util/b/aa;

    return-object v0
.end method
