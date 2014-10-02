.class public final enum Lcom/viber/voip/phone/x;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/viber/voip/phone/x;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/viber/voip/phone/x;

.field public static final enum b:Lcom/viber/voip/phone/x;

.field private static final synthetic c:[Lcom/viber/voip/phone/x;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 54
    new-instance v0, Lcom/viber/voip/phone/x;

    const-string/jumbo v1, "SLEEP"

    invoke-direct {v0, v1, v2}, Lcom/viber/voip/phone/x;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/viber/voip/phone/x;->a:Lcom/viber/voip/phone/x;

    .line 55
    new-instance v0, Lcom/viber/voip/phone/x;

    const-string/jumbo v1, "FULL"

    invoke-direct {v0, v1, v3}, Lcom/viber/voip/phone/x;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/viber/voip/phone/x;->b:Lcom/viber/voip/phone/x;

    .line 53
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/viber/voip/phone/x;

    sget-object v1, Lcom/viber/voip/phone/x;->a:Lcom/viber/voip/phone/x;

    aput-object v1, v0, v2

    sget-object v1, Lcom/viber/voip/phone/x;->b:Lcom/viber/voip/phone/x;

    aput-object v1, v0, v3

    sput-object v0, Lcom/viber/voip/phone/x;->c:[Lcom/viber/voip/phone/x;

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
    .line 53
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/viber/voip/phone/x;
    .locals 1
    .parameter

    .prologue
    .line 53
    const-class v0, Lcom/viber/voip/phone/x;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/phone/x;

    return-object v0
.end method

.method public static values()[Lcom/viber/voip/phone/x;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/viber/voip/phone/x;->c:[Lcom/viber/voip/phone/x;

    invoke-virtual {v0}, [Lcom/viber/voip/phone/x;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/viber/voip/phone/x;

    return-object v0
.end method
