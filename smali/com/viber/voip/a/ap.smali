.class public final enum Lcom/viber/voip/a/ap;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/viber/voip/a/ap;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/viber/voip/a/ap;

.field public static final enum b:Lcom/viber/voip/a/ap;

.field private static final synthetic d:[Lcom/viber/voip/a/ap;


# instance fields
.field private c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1265
    new-instance v0, Lcom/viber/voip/a/ap;

    const-string/jumbo v1, "WEBVIEW"

    const-string/jumbo v2, "Web_view"

    invoke-direct {v0, v1, v3, v2}, Lcom/viber/voip/a/ap;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/viber/voip/a/ap;->a:Lcom/viber/voip/a/ap;

    .line 1266
    new-instance v0, Lcom/viber/voip/a/ap;

    const-string/jumbo v1, "APP"

    const-string/jumbo v2, "app"

    invoke-direct {v0, v1, v4, v2}, Lcom/viber/voip/a/ap;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/viber/voip/a/ap;->b:Lcom/viber/voip/a/ap;

    .line 1263
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/viber/voip/a/ap;

    sget-object v1, Lcom/viber/voip/a/ap;->a:Lcom/viber/voip/a/ap;

    aput-object v1, v0, v3

    sget-object v1, Lcom/viber/voip/a/ap;->b:Lcom/viber/voip/a/ap;

    aput-object v1, v0, v4

    sput-object v0, Lcom/viber/voip/a/ap;->d:[Lcom/viber/voip/a/ap;

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
    .line 1270
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1271
    iput-object p3, p0, Lcom/viber/voip/a/ap;->c:Ljava/lang/String;

    .line 1272
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/viber/voip/a/ap;
    .locals 1
    .parameter

    .prologue
    .line 1263
    const-class v0, Lcom/viber/voip/a/ap;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/a/ap;

    return-object v0
.end method

.method public static values()[Lcom/viber/voip/a/ap;
    .locals 1

    .prologue
    .line 1263
    sget-object v0, Lcom/viber/voip/a/ap;->d:[Lcom/viber/voip/a/ap;

    invoke-virtual {v0}, [Lcom/viber/voip/a/ap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/viber/voip/a/ap;

    return-object v0
.end method
