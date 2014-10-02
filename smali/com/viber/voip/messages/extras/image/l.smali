.class public final enum Lcom/viber/voip/messages/extras/image/l;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/viber/voip/messages/extras/image/l;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/viber/voip/messages/extras/image/l;

.field public static final enum b:Lcom/viber/voip/messages/extras/image/l;

.field public static final enum c:Lcom/viber/voip/messages/extras/image/l;

.field public static final enum d:Lcom/viber/voip/messages/extras/image/l;

.field public static final enum e:Lcom/viber/voip/messages/extras/image/l;

.field public static final enum f:Lcom/viber/voip/messages/extras/image/l;

.field public static final enum g:Lcom/viber/voip/messages/extras/image/l;

.field public static final enum h:Lcom/viber/voip/messages/extras/image/l;

.field private static final synthetic j:[Lcom/viber/voip/messages/extras/image/l;


# instance fields
.field private i:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 96
    new-instance v0, Lcom/viber/voip/messages/extras/image/l;

    const-string/jumbo v1, "THUMBNAIL"

    sget-object v2, Lcom/viber/voip/w;->v:Ljava/lang/String;

    invoke-direct {v0, v1, v4, v2}, Lcom/viber/voip/messages/extras/image/l;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/viber/voip/messages/extras/image/l;->a:Lcom/viber/voip/messages/extras/image/l;

    .line 97
    new-instance v0, Lcom/viber/voip/messages/extras/image/l;

    const-string/jumbo v1, "GALLERY_IMAGE"

    sget-object v2, Lcom/viber/voip/w;->q:Ljava/lang/String;

    invoke-direct {v0, v1, v5, v2}, Lcom/viber/voip/messages/extras/image/l;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/viber/voip/messages/extras/image/l;->b:Lcom/viber/voip/messages/extras/image/l;

    .line 98
    new-instance v0, Lcom/viber/voip/messages/extras/image/l;

    const-string/jumbo v1, "GALLERY_VIDEO"

    sget-object v2, Lcom/viber/voip/w;->r:Ljava/lang/String;

    invoke-direct {v0, v1, v6, v2}, Lcom/viber/voip/messages/extras/image/l;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/viber/voip/messages/extras/image/l;->c:Lcom/viber/voip/messages/extras/image/l;

    .line 99
    new-instance v0, Lcom/viber/voip/messages/extras/image/l;

    const-string/jumbo v1, "TEMP"

    sget-object v2, Lcom/viber/voip/w;->z:Ljava/lang/String;

    invoke-direct {v0, v1, v7, v2}, Lcom/viber/voip/messages/extras/image/l;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/viber/voip/messages/extras/image/l;->d:Lcom/viber/voip/messages/extras/image/l;

    .line 100
    new-instance v0, Lcom/viber/voip/messages/extras/image/l;

    const-string/jumbo v1, "PICASA_IMAGE"

    sget-object v2, Lcom/viber/voip/w;->z:Ljava/lang/String;

    invoke-direct {v0, v1, v8, v2}, Lcom/viber/voip/messages/extras/image/l;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/viber/voip/messages/extras/image/l;->e:Lcom/viber/voip/messages/extras/image/l;

    .line 101
    new-instance v0, Lcom/viber/voip/messages/extras/image/l;

    const-string/jumbo v1, "PICASA_VIDEO"

    const/4 v2, 0x5

    sget-object v3, Lcom/viber/voip/w;->z:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/viber/voip/messages/extras/image/l;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/viber/voip/messages/extras/image/l;->f:Lcom/viber/voip/messages/extras/image/l;

    .line 102
    new-instance v0, Lcom/viber/voip/messages/extras/image/l;

    const-string/jumbo v1, "USER_PHOTO"

    const/4 v2, 0x6

    sget-object v3, Lcom/viber/voip/w;->A:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/viber/voip/messages/extras/image/l;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/viber/voip/messages/extras/image/l;->g:Lcom/viber/voip/messages/extras/image/l;

    .line 103
    new-instance v0, Lcom/viber/voip/messages/extras/image/l;

    const-string/jumbo v1, "QR_CODE"

    const/4 v2, 0x7

    sget-object v3, Lcom/viber/voip/w;->z:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/viber/voip/messages/extras/image/l;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/viber/voip/messages/extras/image/l;->h:Lcom/viber/voip/messages/extras/image/l;

    .line 95
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/viber/voip/messages/extras/image/l;

    sget-object v1, Lcom/viber/voip/messages/extras/image/l;->a:Lcom/viber/voip/messages/extras/image/l;

    aput-object v1, v0, v4

    sget-object v1, Lcom/viber/voip/messages/extras/image/l;->b:Lcom/viber/voip/messages/extras/image/l;

    aput-object v1, v0, v5

    sget-object v1, Lcom/viber/voip/messages/extras/image/l;->c:Lcom/viber/voip/messages/extras/image/l;

    aput-object v1, v0, v6

    sget-object v1, Lcom/viber/voip/messages/extras/image/l;->d:Lcom/viber/voip/messages/extras/image/l;

    aput-object v1, v0, v7

    sget-object v1, Lcom/viber/voip/messages/extras/image/l;->e:Lcom/viber/voip/messages/extras/image/l;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/viber/voip/messages/extras/image/l;->f:Lcom/viber/voip/messages/extras/image/l;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/viber/voip/messages/extras/image/l;->g:Lcom/viber/voip/messages/extras/image/l;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/viber/voip/messages/extras/image/l;->h:Lcom/viber/voip/messages/extras/image/l;

    aput-object v2, v0, v1

    sput-object v0, Lcom/viber/voip/messages/extras/image/l;->j:[Lcom/viber/voip/messages/extras/image/l;

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
    .line 107
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 108
    iput-object p3, p0, Lcom/viber/voip/messages/extras/image/l;->i:Ljava/lang/String;

    .line 109
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/viber/voip/messages/extras/image/l;
    .locals 1
    .parameter

    .prologue
    .line 95
    const-class v0, Lcom/viber/voip/messages/extras/image/l;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/extras/image/l;

    return-object v0
.end method

.method public static values()[Lcom/viber/voip/messages/extras/image/l;
    .locals 1

    .prologue
    .line 95
    sget-object v0, Lcom/viber/voip/messages/extras/image/l;->j:[Lcom/viber/voip/messages/extras/image/l;

    invoke-virtual {v0}, [Lcom/viber/voip/messages/extras/image/l;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/viber/voip/messages/extras/image/l;

    return-object v0
.end method
