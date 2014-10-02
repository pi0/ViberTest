.class public final enum Lcom/viber/voip/messages/extras/image/j;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/viber/voip/messages/extras/image/j;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/viber/voip/messages/extras/image/j;

.field public static final enum b:Lcom/viber/voip/messages/extras/image/j;

.field private static final synthetic c:[Lcom/viber/voip/messages/extras/image/j;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 113
    new-instance v0, Lcom/viber/voip/messages/extras/image/j;

    const-string/jumbo v1, "WIDTH"

    invoke-direct {v0, v1, v2}, Lcom/viber/voip/messages/extras/image/j;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/viber/voip/messages/extras/image/j;->a:Lcom/viber/voip/messages/extras/image/j;

    .line 114
    new-instance v0, Lcom/viber/voip/messages/extras/image/j;

    const-string/jumbo v1, "HEIGHT"

    invoke-direct {v0, v1, v3}, Lcom/viber/voip/messages/extras/image/j;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/viber/voip/messages/extras/image/j;->b:Lcom/viber/voip/messages/extras/image/j;

    .line 112
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/viber/voip/messages/extras/image/j;

    sget-object v1, Lcom/viber/voip/messages/extras/image/j;->a:Lcom/viber/voip/messages/extras/image/j;

    aput-object v1, v0, v2

    sget-object v1, Lcom/viber/voip/messages/extras/image/j;->b:Lcom/viber/voip/messages/extras/image/j;

    aput-object v1, v0, v3

    sput-object v0, Lcom/viber/voip/messages/extras/image/j;->c:[Lcom/viber/voip/messages/extras/image/j;

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
    .line 112
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/viber/voip/messages/extras/image/j;
    .locals 1
    .parameter

    .prologue
    .line 112
    const-class v0, Lcom/viber/voip/messages/extras/image/j;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/extras/image/j;

    return-object v0
.end method

.method public static values()[Lcom/viber/voip/messages/extras/image/j;
    .locals 1

    .prologue
    .line 112
    sget-object v0, Lcom/viber/voip/messages/extras/image/j;->c:[Lcom/viber/voip/messages/extras/image/j;

    invoke-virtual {v0}, [Lcom/viber/voip/messages/extras/image/j;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/viber/voip/messages/extras/image/j;

    return-object v0
.end method
