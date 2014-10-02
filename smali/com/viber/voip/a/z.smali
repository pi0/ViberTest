.class public final enum Lcom/viber/voip/a/z;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/viber/voip/a/z;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/viber/voip/a/z;

.field public static final enum b:Lcom/viber/voip/a/z;

.field public static final enum c:Lcom/viber/voip/a/z;

.field public static final enum d:Lcom/viber/voip/a/z;

.field public static final enum e:Lcom/viber/voip/a/z;

.field public static final enum f:Lcom/viber/voip/a/z;

.field private static final synthetic h:[Lcom/viber/voip/a/z;


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

    .line 774
    new-instance v0, Lcom/viber/voip/a/z;

    const-string/jumbo v1, "TEXT"

    const-string/jumbo v2, "Text"

    invoke-direct {v0, v1, v4, v2}, Lcom/viber/voip/a/z;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/viber/voip/a/z;->a:Lcom/viber/voip/a/z;

    .line 775
    new-instance v0, Lcom/viber/voip/a/z;

    const-string/jumbo v1, "PHOTO"

    const-string/jumbo v2, "photo"

    invoke-direct {v0, v1, v5, v2}, Lcom/viber/voip/a/z;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/viber/voip/a/z;->b:Lcom/viber/voip/a/z;

    .line 776
    new-instance v0, Lcom/viber/voip/a/z;

    const-string/jumbo v1, "VIDEO"

    const-string/jumbo v2, "Video"

    invoke-direct {v0, v1, v6, v2}, Lcom/viber/voip/a/z;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/viber/voip/a/z;->c:Lcom/viber/voip/a/z;

    .line 777
    new-instance v0, Lcom/viber/voip/a/z;

    const-string/jumbo v1, "STICKER"

    const-string/jumbo v2, "sticker"

    invoke-direct {v0, v1, v7, v2}, Lcom/viber/voip/a/z;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/viber/voip/a/z;->d:Lcom/viber/voip/a/z;

    .line 778
    new-instance v0, Lcom/viber/voip/a/z;

    const-string/jumbo v1, "CUSTOMLOCATION"

    const-string/jumbo v2, "Custom_Location"

    invoke-direct {v0, v1, v8, v2}, Lcom/viber/voip/a/z;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/viber/voip/a/z;->e:Lcom/viber/voip/a/z;

    .line 779
    new-instance v0, Lcom/viber/voip/a/z;

    const-string/jumbo v1, "ANIMATION_ZOOBE"

    const/4 v2, 0x5

    const-string/jumbo v3, "Animation_zoobe"

    invoke-direct {v0, v1, v2, v3}, Lcom/viber/voip/a/z;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/viber/voip/a/z;->f:Lcom/viber/voip/a/z;

    .line 772
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/viber/voip/a/z;

    sget-object v1, Lcom/viber/voip/a/z;->a:Lcom/viber/voip/a/z;

    aput-object v1, v0, v4

    sget-object v1, Lcom/viber/voip/a/z;->b:Lcom/viber/voip/a/z;

    aput-object v1, v0, v5

    sget-object v1, Lcom/viber/voip/a/z;->c:Lcom/viber/voip/a/z;

    aput-object v1, v0, v6

    sget-object v1, Lcom/viber/voip/a/z;->d:Lcom/viber/voip/a/z;

    aput-object v1, v0, v7

    sget-object v1, Lcom/viber/voip/a/z;->e:Lcom/viber/voip/a/z;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/viber/voip/a/z;->f:Lcom/viber/voip/a/z;

    aput-object v2, v0, v1

    sput-object v0, Lcom/viber/voip/a/z;->h:[Lcom/viber/voip/a/z;

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
    .line 783
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 784
    iput-object p3, p0, Lcom/viber/voip/a/z;->g:Ljava/lang/String;

    .line 785
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/viber/voip/a/z;
    .locals 1
    .parameter

    .prologue
    .line 772
    const-class v0, Lcom/viber/voip/a/z;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/a/z;

    return-object v0
.end method

.method public static values()[Lcom/viber/voip/a/z;
    .locals 1

    .prologue
    .line 772
    sget-object v0, Lcom/viber/voip/a/z;->h:[Lcom/viber/voip/a/z;

    invoke-virtual {v0}, [Lcom/viber/voip/a/z;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/viber/voip/a/z;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 788
    iget-object v0, p0, Lcom/viber/voip/a/z;->g:Ljava/lang/String;

    return-object v0
.end method
