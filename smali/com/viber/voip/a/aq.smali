.class public final enum Lcom/viber/voip/a/aq;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/viber/voip/a/aq;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/viber/voip/a/aq;

.field public static final enum b:Lcom/viber/voip/a/aq;

.field private static final synthetic d:[Lcom/viber/voip/a/aq;


# instance fields
.field private c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1249
    new-instance v0, Lcom/viber/voip/a/aq;

    const-string/jumbo v1, "FACEBOOK"

    const-string/jumbo v2, "Facebook"

    invoke-direct {v0, v1, v3, v2}, Lcom/viber/voip/a/aq;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/viber/voip/a/aq;->a:Lcom/viber/voip/a/aq;

    .line 1250
    new-instance v0, Lcom/viber/voip/a/aq;

    const-string/jumbo v1, "TWITTER"

    const-string/jumbo v2, "twitter"

    invoke-direct {v0, v1, v4, v2}, Lcom/viber/voip/a/aq;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/viber/voip/a/aq;->b:Lcom/viber/voip/a/aq;

    .line 1247
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/viber/voip/a/aq;

    sget-object v1, Lcom/viber/voip/a/aq;->a:Lcom/viber/voip/a/aq;

    aput-object v1, v0, v3

    sget-object v1, Lcom/viber/voip/a/aq;->b:Lcom/viber/voip/a/aq;

    aput-object v1, v0, v4

    sput-object v0, Lcom/viber/voip/a/aq;->d:[Lcom/viber/voip/a/aq;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1254
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1255
    iput-object p3, p0, Lcom/viber/voip/a/aq;->c:Ljava/lang/String;

    .line 1256
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/viber/voip/a/aq;
    .locals 1
    .parameter

    .prologue
    .line 1247
    const-class v0, Lcom/viber/voip/a/aq;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/a/aq;

    return-object v0
.end method

.method public static values()[Lcom/viber/voip/a/aq;
    .locals 1

    .prologue
    .line 1247
    sget-object v0, Lcom/viber/voip/a/aq;->d:[Lcom/viber/voip/a/aq;

    invoke-virtual {v0}, [Lcom/viber/voip/a/aq;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/viber/voip/a/aq;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1259
    iget-object v0, p0, Lcom/viber/voip/a/aq;->c:Ljava/lang/String;

    return-object v0
.end method
