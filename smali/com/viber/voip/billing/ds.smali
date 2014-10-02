.class public final enum Lcom/viber/voip/billing/ds;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/viber/voip/billing/ds;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/viber/voip/billing/ds;

.field public static final enum b:Lcom/viber/voip/billing/ds;

.field public static final enum c:Lcom/viber/voip/billing/ds;

.field private static final synthetic d:[Lcom/viber/voip/billing/ds;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4
    new-instance v0, Lcom/viber/voip/billing/ds;

    const-string/jumbo v1, "VERIFIED"

    invoke-direct {v0, v1, v2}, Lcom/viber/voip/billing/ds;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/viber/voip/billing/ds;->a:Lcom/viber/voip/billing/ds;

    .line 5
    new-instance v0, Lcom/viber/voip/billing/ds;

    const-string/jumbo v1, "INVALID"

    invoke-direct {v0, v1, v3}, Lcom/viber/voip/billing/ds;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/viber/voip/billing/ds;->b:Lcom/viber/voip/billing/ds;

    .line 6
    new-instance v0, Lcom/viber/voip/billing/ds;

    const-string/jumbo v1, "ERROR"

    invoke-direct {v0, v1, v4}, Lcom/viber/voip/billing/ds;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/viber/voip/billing/ds;->c:Lcom/viber/voip/billing/ds;

    .line 3
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/viber/voip/billing/ds;

    sget-object v1, Lcom/viber/voip/billing/ds;->a:Lcom/viber/voip/billing/ds;

    aput-object v1, v0, v2

    sget-object v1, Lcom/viber/voip/billing/ds;->b:Lcom/viber/voip/billing/ds;

    aput-object v1, v0, v3

    sget-object v1, Lcom/viber/voip/billing/ds;->c:Lcom/viber/voip/billing/ds;

    aput-object v1, v0, v4

    sput-object v0, Lcom/viber/voip/billing/ds;->d:[Lcom/viber/voip/billing/ds;

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

.method public static valueOf(Ljava/lang/String;)Lcom/viber/voip/billing/ds;
    .locals 1
    .parameter

    .prologue
    .line 3
    const-class v0, Lcom/viber/voip/billing/ds;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/billing/ds;

    return-object v0
.end method

.method public static values()[Lcom/viber/voip/billing/ds;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/viber/voip/billing/ds;->d:[Lcom/viber/voip/billing/ds;

    invoke-virtual {v0}, [Lcom/viber/voip/billing/ds;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/viber/voip/billing/ds;

    return-object v0
.end method
