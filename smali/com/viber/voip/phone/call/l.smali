.class public final enum Lcom/viber/voip/phone/call/l;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/viber/voip/phone/call/l;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/viber/voip/phone/call/l;

.field public static final enum b:Lcom/viber/voip/phone/call/l;

.field private static final synthetic c:[Lcom/viber/voip/phone/call/l;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 25
    new-instance v0, Lcom/viber/voip/phone/call/l;

    const-string/jumbo v1, "INCOMING"

    invoke-direct {v0, v1, v2}, Lcom/viber/voip/phone/call/l;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/viber/voip/phone/call/l;->a:Lcom/viber/voip/phone/call/l;

    new-instance v0, Lcom/viber/voip/phone/call/l;

    const-string/jumbo v1, "OUTGOING"

    invoke-direct {v0, v1, v3}, Lcom/viber/voip/phone/call/l;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/viber/voip/phone/call/l;->b:Lcom/viber/voip/phone/call/l;

    .line 24
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/viber/voip/phone/call/l;

    sget-object v1, Lcom/viber/voip/phone/call/l;->a:Lcom/viber/voip/phone/call/l;

    aput-object v1, v0, v2

    sget-object v1, Lcom/viber/voip/phone/call/l;->b:Lcom/viber/voip/phone/call/l;

    aput-object v1, v0, v3

    sput-object v0, Lcom/viber/voip/phone/call/l;->c:[Lcom/viber/voip/phone/call/l;

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
    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/viber/voip/phone/call/l;
    .locals 1
    .parameter

    .prologue
    .line 24
    const-class v0, Lcom/viber/voip/phone/call/l;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/phone/call/l;

    return-object v0
.end method

.method public static values()[Lcom/viber/voip/phone/call/l;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/viber/voip/phone/call/l;->c:[Lcom/viber/voip/phone/call/l;

    invoke-virtual {v0}, [Lcom/viber/voip/phone/call/l;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/viber/voip/phone/call/l;

    return-object v0
.end method
