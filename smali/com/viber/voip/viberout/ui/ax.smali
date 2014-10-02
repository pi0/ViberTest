.class final enum Lcom/viber/voip/viberout/ui/ax;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/viber/voip/viberout/ui/ax;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/viber/voip/viberout/ui/ax;

.field public static final enum b:Lcom/viber/voip/viberout/ui/ax;

.field public static final enum c:Lcom/viber/voip/viberout/ui/ax;

.field public static final enum d:Lcom/viber/voip/viberout/ui/ax;

.field public static final enum e:Lcom/viber/voip/viberout/ui/ax;

.field public static final enum f:Lcom/viber/voip/viberout/ui/ax;

.field private static final synthetic g:[Lcom/viber/voip/viberout/ui/ax;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 74
    new-instance v0, Lcom/viber/voip/viberout/ui/ax;

    const-string/jumbo v1, "ShowBuyCreditsDialogForContactDetails"

    invoke-direct {v0, v1, v3}, Lcom/viber/voip/viberout/ui/ax;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/viber/voip/viberout/ui/ax;->a:Lcom/viber/voip/viberout/ui/ax;

    .line 75
    new-instance v0, Lcom/viber/voip/viberout/ui/ax;

    const-string/jumbo v1, "ShowBuyCreditsDialogForDialpad"

    invoke-direct {v0, v1, v4}, Lcom/viber/voip/viberout/ui/ax;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/viber/voip/viberout/ui/ax;->b:Lcom/viber/voip/viberout/ui/ax;

    .line 76
    new-instance v0, Lcom/viber/voip/viberout/ui/ax;

    const-string/jumbo v1, "ShowBuyCreditsDialogForMainActivity"

    invoke-direct {v0, v1, v5}, Lcom/viber/voip/viberout/ui/ax;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/viber/voip/viberout/ui/ax;->c:Lcom/viber/voip/viberout/ui/ax;

    .line 77
    new-instance v0, Lcom/viber/voip/viberout/ui/ax;

    const-string/jumbo v1, "ShowRegularCallDialog"

    invoke-direct {v0, v1, v6}, Lcom/viber/voip/viberout/ui/ax;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/viber/voip/viberout/ui/ax;->d:Lcom/viber/voip/viberout/ui/ax;

    .line 78
    new-instance v0, Lcom/viber/voip/viberout/ui/ax;

    const-string/jumbo v1, "ShowNoNetworkErrorDialog"

    invoke-direct {v0, v1, v7}, Lcom/viber/voip/viberout/ui/ax;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/viber/voip/viberout/ui/ax;->e:Lcom/viber/voip/viberout/ui/ax;

    .line 79
    new-instance v0, Lcom/viber/voip/viberout/ui/ax;

    const-string/jumbo v1, "ShowNoServiceErrorDialog"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/viber/voip/viberout/ui/ax;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/viber/voip/viberout/ui/ax;->f:Lcom/viber/voip/viberout/ui/ax;

    .line 73
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/viber/voip/viberout/ui/ax;

    sget-object v1, Lcom/viber/voip/viberout/ui/ax;->a:Lcom/viber/voip/viberout/ui/ax;

    aput-object v1, v0, v3

    sget-object v1, Lcom/viber/voip/viberout/ui/ax;->b:Lcom/viber/voip/viberout/ui/ax;

    aput-object v1, v0, v4

    sget-object v1, Lcom/viber/voip/viberout/ui/ax;->c:Lcom/viber/voip/viberout/ui/ax;

    aput-object v1, v0, v5

    sget-object v1, Lcom/viber/voip/viberout/ui/ax;->d:Lcom/viber/voip/viberout/ui/ax;

    aput-object v1, v0, v6

    sget-object v1, Lcom/viber/voip/viberout/ui/ax;->e:Lcom/viber/voip/viberout/ui/ax;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/viber/voip/viberout/ui/ax;->f:Lcom/viber/voip/viberout/ui/ax;

    aput-object v2, v0, v1

    sput-object v0, Lcom/viber/voip/viberout/ui/ax;->g:[Lcom/viber/voip/viberout/ui/ax;

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
    .line 73
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/viber/voip/viberout/ui/ax;
    .locals 1
    .parameter

    .prologue
    .line 73
    const-class v0, Lcom/viber/voip/viberout/ui/ax;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/viberout/ui/ax;

    return-object v0
.end method

.method public static values()[Lcom/viber/voip/viberout/ui/ax;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/viber/voip/viberout/ui/ax;->g:[Lcom/viber/voip/viberout/ui/ax;

    invoke-virtual {v0}, [Lcom/viber/voip/viberout/ui/ax;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/viber/voip/viberout/ui/ax;

    return-object v0
.end method
