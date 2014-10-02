.class public final enum Lcom/viber/voip/util/upload/ak;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/viber/voip/util/upload/ak;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/viber/voip/util/upload/ak;

.field public static final enum b:Lcom/viber/voip/util/upload/ak;

.field public static final enum c:Lcom/viber/voip/util/upload/ak;

.field public static final enum d:Lcom/viber/voip/util/upload/ak;

.field public static final enum e:Lcom/viber/voip/util/upload/ak;

.field public static final enum f:Lcom/viber/voip/util/upload/ak;

.field private static final synthetic h:[Lcom/viber/voip/util/upload/ak;


# instance fields
.field private g:Ljava/lang/String;


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
    new-instance v0, Lcom/viber/voip/util/upload/ak;

    const-string/jumbo v1, "UPLOAD_MEDIA"

    const-string/jumbo v2, "upload_media"

    invoke-direct {v0, v1, v4, v2}, Lcom/viber/voip/util/upload/ak;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/viber/voip/util/upload/ak;->a:Lcom/viber/voip/util/upload/ak;

    .line 97
    new-instance v0, Lcom/viber/voip/util/upload/ak;

    const-string/jumbo v1, "UPLOAD_USER_IMAGE"

    const-string/jumbo v2, "upload_user_image"

    invoke-direct {v0, v1, v5, v2}, Lcom/viber/voip/util/upload/ak;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/viber/voip/util/upload/ak;->b:Lcom/viber/voip/util/upload/ak;

    .line 98
    new-instance v0, Lcom/viber/voip/util/upload/ak;

    const-string/jumbo v1, "UPLOAD_BIG_USER_IMAGE"

    const-string/jumbo v2, "upload_big_user_image"

    invoke-direct {v0, v1, v6, v2}, Lcom/viber/voip/util/upload/ak;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/viber/voip/util/upload/ak;->c:Lcom/viber/voip/util/upload/ak;

    .line 99
    new-instance v0, Lcom/viber/voip/util/upload/ak;

    const-string/jumbo v1, "PG_ICON"

    const-string/jumbo v2, "pg_icon"

    invoke-direct {v0, v1, v7, v2}, Lcom/viber/voip/util/upload/ak;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/viber/voip/util/upload/ak;->d:Lcom/viber/voip/util/upload/ak;

    .line 100
    new-instance v0, Lcom/viber/voip/util/upload/ak;

    const-string/jumbo v1, "PG_BACKGROUND"

    const-string/jumbo v2, "pg_background"

    invoke-direct {v0, v1, v8, v2}, Lcom/viber/voip/util/upload/ak;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/viber/voip/util/upload/ak;->e:Lcom/viber/voip/util/upload/ak;

    .line 101
    new-instance v0, Lcom/viber/voip/util/upload/ak;

    const-string/jumbo v1, "PG_MEDIA"

    const/4 v2, 0x5

    const-string/jumbo v3, "pg_media"

    invoke-direct {v0, v1, v2, v3}, Lcom/viber/voip/util/upload/ak;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/viber/voip/util/upload/ak;->f:Lcom/viber/voip/util/upload/ak;

    .line 95
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/viber/voip/util/upload/ak;

    sget-object v1, Lcom/viber/voip/util/upload/ak;->a:Lcom/viber/voip/util/upload/ak;

    aput-object v1, v0, v4

    sget-object v1, Lcom/viber/voip/util/upload/ak;->b:Lcom/viber/voip/util/upload/ak;

    aput-object v1, v0, v5

    sget-object v1, Lcom/viber/voip/util/upload/ak;->c:Lcom/viber/voip/util/upload/ak;

    aput-object v1, v0, v6

    sget-object v1, Lcom/viber/voip/util/upload/ak;->d:Lcom/viber/voip/util/upload/ak;

    aput-object v1, v0, v7

    sget-object v1, Lcom/viber/voip/util/upload/ak;->e:Lcom/viber/voip/util/upload/ak;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/viber/voip/util/upload/ak;->f:Lcom/viber/voip/util/upload/ak;

    aput-object v2, v0, v1

    sput-object v0, Lcom/viber/voip/util/upload/ak;->h:[Lcom/viber/voip/util/upload/ak;

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
    .line 105
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 106
    iput-object p3, p0, Lcom/viber/voip/util/upload/ak;->g:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/viber/voip/util/upload/ak;
    .locals 1
    .parameter

    .prologue
    .line 95
    const-class v0, Lcom/viber/voip/util/upload/ak;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/util/upload/ak;

    return-object v0
.end method

.method public static values()[Lcom/viber/voip/util/upload/ak;
    .locals 1

    .prologue
    .line 95
    sget-object v0, Lcom/viber/voip/util/upload/ak;->h:[Lcom/viber/voip/util/upload/ak;

    invoke-virtual {v0}, [Lcom/viber/voip/util/upload/ak;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/viber/voip/util/upload/ak;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/viber/voip/util/upload/ak;->g:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 114
    sget-object v0, Lcom/viber/voip/util/upload/ag;->a:[I

    invoke-virtual {p0}, Lcom/viber/voip/util/upload/ak;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 118
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 115
    :pswitch_0
    const-string/jumbo v0, "icon"

    goto :goto_0

    .line 116
    :pswitch_1
    const-string/jumbo v0, "bg"

    goto :goto_0

    .line 117
    :pswitch_2
    const-string/jumbo v0, "media"

    goto :goto_0

    .line 114
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
