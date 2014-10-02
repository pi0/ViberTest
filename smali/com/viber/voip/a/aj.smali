.class public final enum Lcom/viber/voip/a/aj;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/viber/voip/a/aj;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/viber/voip/a/aj;

.field public static final enum b:Lcom/viber/voip/a/aj;

.field public static final enum c:Lcom/viber/voip/a/aj;

.field public static final enum d:Lcom/viber/voip/a/aj;

.field public static final enum e:Lcom/viber/voip/a/aj;

.field private static final synthetic g:[Lcom/viber/voip/a/aj;


# instance fields
.field private f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 744
    new-instance v0, Lcom/viber/voip/a/aj;

    const-string/jumbo v1, "TEXT"

    const-string/jumbo v2, "Text"

    invoke-direct {v0, v1, v3, v2}, Lcom/viber/voip/a/aj;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/viber/voip/a/aj;->a:Lcom/viber/voip/a/aj;

    .line 745
    new-instance v0, Lcom/viber/voip/a/aj;

    const-string/jumbo v1, "PHOTO"

    const-string/jumbo v2, "photo"

    invoke-direct {v0, v1, v4, v2}, Lcom/viber/voip/a/aj;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/viber/voip/a/aj;->b:Lcom/viber/voip/a/aj;

    .line 746
    new-instance v0, Lcom/viber/voip/a/aj;

    const-string/jumbo v1, "VIDEO"

    const-string/jumbo v2, "Video"

    invoke-direct {v0, v1, v5, v2}, Lcom/viber/voip/a/aj;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/viber/voip/a/aj;->c:Lcom/viber/voip/a/aj;

    .line 747
    new-instance v0, Lcom/viber/voip/a/aj;

    const-string/jumbo v1, "STICKER"

    const-string/jumbo v2, "sticker"

    invoke-direct {v0, v1, v6, v2}, Lcom/viber/voip/a/aj;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/viber/voip/a/aj;->d:Lcom/viber/voip/a/aj;

    .line 748
    new-instance v0, Lcom/viber/voip/a/aj;

    const-string/jumbo v1, "CUSTOMLOCATION"

    const-string/jumbo v2, "Custom_Location"

    invoke-direct {v0, v1, v7, v2}, Lcom/viber/voip/a/aj;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/viber/voip/a/aj;->e:Lcom/viber/voip/a/aj;

    .line 742
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/viber/voip/a/aj;

    sget-object v1, Lcom/viber/voip/a/aj;->a:Lcom/viber/voip/a/aj;

    aput-object v1, v0, v3

    sget-object v1, Lcom/viber/voip/a/aj;->b:Lcom/viber/voip/a/aj;

    aput-object v1, v0, v4

    sget-object v1, Lcom/viber/voip/a/aj;->c:Lcom/viber/voip/a/aj;

    aput-object v1, v0, v5

    sget-object v1, Lcom/viber/voip/a/aj;->d:Lcom/viber/voip/a/aj;

    aput-object v1, v0, v6

    sget-object v1, Lcom/viber/voip/a/aj;->e:Lcom/viber/voip/a/aj;

    aput-object v1, v0, v7

    sput-object v0, Lcom/viber/voip/a/aj;->g:[Lcom/viber/voip/a/aj;

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
    .line 752
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 753
    iput-object p3, p0, Lcom/viber/voip/a/aj;->f:Ljava/lang/String;

    .line 754
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/viber/voip/a/aj;
    .locals 1
    .parameter

    .prologue
    .line 742
    const-class v0, Lcom/viber/voip/a/aj;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/a/aj;

    return-object v0
.end method

.method public static values()[Lcom/viber/voip/a/aj;
    .locals 1

    .prologue
    .line 742
    sget-object v0, Lcom/viber/voip/a/aj;->g:[Lcom/viber/voip/a/aj;

    invoke-virtual {v0}, [Lcom/viber/voip/a/aj;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/viber/voip/a/aj;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 757
    iget-object v0, p0, Lcom/viber/voip/a/aj;->f:Ljava/lang/String;

    return-object v0
.end method
