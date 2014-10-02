.class public final enum Lcom/viber/voip/util/af;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/viber/voip/util/af;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/viber/voip/util/af;

.field public static final enum b:Lcom/viber/voip/util/af;

.field public static final enum c:Lcom/viber/voip/util/af;

.field private static final synthetic d:[Lcom/viber/voip/util/af;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 316
    new-instance v0, Lcom/viber/voip/util/af;

    const-string/jumbo v1, "MULTI_CHOICE"

    invoke-direct {v0, v1, v2}, Lcom/viber/voip/util/af;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/viber/voip/util/af;->a:Lcom/viber/voip/util/af;

    .line 317
    new-instance v0, Lcom/viber/voip/util/af;

    const-string/jumbo v1, "SIMPLE"

    invoke-direct {v0, v1, v3}, Lcom/viber/voip/util/af;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/viber/voip/util/af;->b:Lcom/viber/voip/util/af;

    .line 318
    new-instance v0, Lcom/viber/voip/util/af;

    const-string/jumbo v1, "RETURN_FIRST_VIBER_NUMBER"

    invoke-direct {v0, v1, v4}, Lcom/viber/voip/util/af;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/viber/voip/util/af;->c:Lcom/viber/voip/util/af;

    .line 315
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/viber/voip/util/af;

    sget-object v1, Lcom/viber/voip/util/af;->a:Lcom/viber/voip/util/af;

    aput-object v1, v0, v2

    sget-object v1, Lcom/viber/voip/util/af;->b:Lcom/viber/voip/util/af;

    aput-object v1, v0, v3

    sget-object v1, Lcom/viber/voip/util/af;->c:Lcom/viber/voip/util/af;

    aput-object v1, v0, v4

    sput-object v0, Lcom/viber/voip/util/af;->d:[Lcom/viber/voip/util/af;

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
    .line 315
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/viber/voip/util/af;
    .locals 1
    .parameter

    .prologue
    .line 315
    const-class v0, Lcom/viber/voip/util/af;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/util/af;

    return-object v0
.end method

.method public static values()[Lcom/viber/voip/util/af;
    .locals 1

    .prologue
    .line 315
    sget-object v0, Lcom/viber/voip/util/af;->d:[Lcom/viber/voip/util/af;

    invoke-virtual {v0}, [Lcom/viber/voip/util/af;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/viber/voip/util/af;

    return-object v0
.end method
