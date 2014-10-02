.class public final enum Lcom/viber/voip/a/n;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/viber/voip/a/n;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/viber/voip/a/n;

.field public static final enum b:Lcom/viber/voip/a/n;

.field public static final enum c:Lcom/viber/voip/a/n;

.field public static final enum d:Lcom/viber/voip/a/n;

.field public static final enum e:Lcom/viber/voip/a/n;

.field private static final synthetic g:[Lcom/viber/voip/a/n;


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

    .line 649
    new-instance v0, Lcom/viber/voip/a/n;

    const-string/jumbo v1, "SENT_ATTACHED"

    const-string/jumbo v2, "sent_Attached"

    invoke-direct {v0, v1, v3, v2}, Lcom/viber/voip/a/n;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/viber/voip/a/n;->a:Lcom/viber/voip/a/n;

    .line 650
    new-instance v0, Lcom/viber/voip/a/n;

    const-string/jumbo v1, "RECEIVED_ATTACHED"

    const-string/jumbo v2, "received_Attached"

    invoke-direct {v0, v1, v4, v2}, Lcom/viber/voip/a/n;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/viber/voip/a/n;->b:Lcom/viber/voip/a/n;

    .line 651
    new-instance v0, Lcom/viber/voip/a/n;

    const-string/jumbo v1, "CUSTOM_LOCATION"

    const-string/jumbo v2, "custom_Location"

    invoke-direct {v0, v1, v5, v2}, Lcom/viber/voip/a/n;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/viber/voip/a/n;->c:Lcom/viber/voip/a/n;

    .line 652
    new-instance v0, Lcom/viber/voip/a/n;

    const-string/jumbo v1, "VIDEO"

    const-string/jumbo v2, "Video"

    invoke-direct {v0, v1, v6, v2}, Lcom/viber/voip/a/n;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/viber/voip/a/n;->d:Lcom/viber/voip/a/n;

    .line 653
    new-instance v0, Lcom/viber/voip/a/n;

    const-string/jumbo v1, "PHOTO"

    const-string/jumbo v2, "Photo"

    invoke-direct {v0, v1, v7, v2}, Lcom/viber/voip/a/n;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/viber/voip/a/n;->e:Lcom/viber/voip/a/n;

    .line 647
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/viber/voip/a/n;

    sget-object v1, Lcom/viber/voip/a/n;->a:Lcom/viber/voip/a/n;

    aput-object v1, v0, v3

    sget-object v1, Lcom/viber/voip/a/n;->b:Lcom/viber/voip/a/n;

    aput-object v1, v0, v4

    sget-object v1, Lcom/viber/voip/a/n;->c:Lcom/viber/voip/a/n;

    aput-object v1, v0, v5

    sget-object v1, Lcom/viber/voip/a/n;->d:Lcom/viber/voip/a/n;

    aput-object v1, v0, v6

    sget-object v1, Lcom/viber/voip/a/n;->e:Lcom/viber/voip/a/n;

    aput-object v1, v0, v7

    sput-object v0, Lcom/viber/voip/a/n;->g:[Lcom/viber/voip/a/n;

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
    .line 657
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 658
    iput-object p3, p0, Lcom/viber/voip/a/n;->f:Ljava/lang/String;

    .line 659
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/viber/voip/a/n;
    .locals 1
    .parameter

    .prologue
    .line 647
    const-class v0, Lcom/viber/voip/a/n;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/a/n;

    return-object v0
.end method

.method public static values()[Lcom/viber/voip/a/n;
    .locals 1

    .prologue
    .line 647
    sget-object v0, Lcom/viber/voip/a/n;->g:[Lcom/viber/voip/a/n;

    invoke-virtual {v0}, [Lcom/viber/voip/a/n;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/viber/voip/a/n;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 662
    iget-object v0, p0, Lcom/viber/voip/a/n;->f:Ljava/lang/String;

    return-object v0
.end method
