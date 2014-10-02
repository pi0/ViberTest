.class public final enum Lcom/viber/voip/util/upload/f;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/viber/voip/util/upload/f;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/viber/voip/util/upload/f;

.field public static final enum b:Lcom/viber/voip/util/upload/f;

.field public static final enum c:Lcom/viber/voip/util/upload/f;

.field public static final enum d:Lcom/viber/voip/util/upload/f;

.field public static final enum e:Lcom/viber/voip/util/upload/f;

.field public static final enum f:Lcom/viber/voip/util/upload/f;

.field public static final enum g:Lcom/viber/voip/util/upload/f;

.field private static final synthetic h:[Lcom/viber/voip/util/upload/f;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 33
    new-instance v0, Lcom/viber/voip/util/upload/f;

    const-string/jumbo v1, "REDIRECT"

    invoke-direct {v0, v1, v3}, Lcom/viber/voip/util/upload/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/viber/voip/util/upload/f;->a:Lcom/viber/voip/util/upload/f;

    .line 34
    new-instance v0, Lcom/viber/voip/util/upload/f;

    const-string/jumbo v1, "TOO_MANY_REDIRECTS"

    invoke-direct {v0, v1, v4}, Lcom/viber/voip/util/upload/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/viber/voip/util/upload/f;->b:Lcom/viber/voip/util/upload/f;

    .line 35
    new-instance v0, Lcom/viber/voip/util/upload/f;

    const-string/jumbo v1, "INTERRUPTED"

    invoke-direct {v0, v1, v5}, Lcom/viber/voip/util/upload/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/viber/voip/util/upload/f;->c:Lcom/viber/voip/util/upload/f;

    .line 36
    new-instance v0, Lcom/viber/voip/util/upload/f;

    const-string/jumbo v1, "INCOMPLETE"

    invoke-direct {v0, v1, v6}, Lcom/viber/voip/util/upload/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/viber/voip/util/upload/f;->d:Lcom/viber/voip/util/upload/f;

    .line 37
    new-instance v0, Lcom/viber/voip/util/upload/f;

    const-string/jumbo v1, "FORBIDDEN"

    invoke-direct {v0, v1, v7}, Lcom/viber/voip/util/upload/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/viber/voip/util/upload/f;->e:Lcom/viber/voip/util/upload/f;

    .line 38
    new-instance v0, Lcom/viber/voip/util/upload/f;

    const-string/jumbo v1, "UNKNOWN"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/viber/voip/util/upload/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/viber/voip/util/upload/f;->f:Lcom/viber/voip/util/upload/f;

    .line 39
    new-instance v0, Lcom/viber/voip/util/upload/f;

    const-string/jumbo v1, "NO_SPACE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/viber/voip/util/upload/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/viber/voip/util/upload/f;->g:Lcom/viber/voip/util/upload/f;

    .line 32
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/viber/voip/util/upload/f;

    sget-object v1, Lcom/viber/voip/util/upload/f;->a:Lcom/viber/voip/util/upload/f;

    aput-object v1, v0, v3

    sget-object v1, Lcom/viber/voip/util/upload/f;->b:Lcom/viber/voip/util/upload/f;

    aput-object v1, v0, v4

    sget-object v1, Lcom/viber/voip/util/upload/f;->c:Lcom/viber/voip/util/upload/f;

    aput-object v1, v0, v5

    sget-object v1, Lcom/viber/voip/util/upload/f;->d:Lcom/viber/voip/util/upload/f;

    aput-object v1, v0, v6

    sget-object v1, Lcom/viber/voip/util/upload/f;->e:Lcom/viber/voip/util/upload/f;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/viber/voip/util/upload/f;->f:Lcom/viber/voip/util/upload/f;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/viber/voip/util/upload/f;->g:Lcom/viber/voip/util/upload/f;

    aput-object v2, v0, v1

    sput-object v0, Lcom/viber/voip/util/upload/f;->h:[Lcom/viber/voip/util/upload/f;

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
    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/viber/voip/util/upload/f;
    .locals 1
    .parameter

    .prologue
    .line 32
    const-class v0, Lcom/viber/voip/util/upload/f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/util/upload/f;

    return-object v0
.end method

.method public static values()[Lcom/viber/voip/util/upload/f;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/viber/voip/util/upload/f;->h:[Lcom/viber/voip/util/upload/f;

    invoke-virtual {v0}, [Lcom/viber/voip/util/upload/f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/viber/voip/util/upload/f;

    return-object v0
.end method
