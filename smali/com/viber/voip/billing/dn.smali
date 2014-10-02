.class final enum Lcom/viber/voip/billing/dn;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/viber/voip/billing/dn;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/viber/voip/billing/dn;

.field public static final enum b:Lcom/viber/voip/billing/dn;

.field public static final enum c:Lcom/viber/voip/billing/dn;

.field public static final enum d:Lcom/viber/voip/billing/dn;

.field public static final enum e:Lcom/viber/voip/billing/dn;

.field public static final enum f:Lcom/viber/voip/billing/dn;

.field public static final enum g:Lcom/viber/voip/billing/dn;

.field private static final synthetic h:[Lcom/viber/voip/billing/dn;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 43
    new-instance v0, Lcom/viber/voip/billing/dn;

    const-string/jumbo v1, "TITLE_TEXT"

    invoke-direct {v0, v1, v3}, Lcom/viber/voip/billing/dn;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/viber/voip/billing/dn;->a:Lcom/viber/voip/billing/dn;

    .line 44
    new-instance v0, Lcom/viber/voip/billing/dn;

    const-string/jumbo v1, "MESSAGE_TEXT"

    invoke-direct {v0, v1, v4}, Lcom/viber/voip/billing/dn;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/viber/voip/billing/dn;->b:Lcom/viber/voip/billing/dn;

    .line 45
    new-instance v0, Lcom/viber/voip/billing/dn;

    const-string/jumbo v1, "ANALYTICS_DIALOG"

    invoke-direct {v0, v1, v5}, Lcom/viber/voip/billing/dn;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/viber/voip/billing/dn;->c:Lcom/viber/voip/billing/dn;

    .line 46
    new-instance v0, Lcom/viber/voip/billing/dn;

    const-string/jumbo v1, "PRODUCT_ID"

    invoke-direct {v0, v1, v6}, Lcom/viber/voip/billing/dn;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/viber/voip/billing/dn;->d:Lcom/viber/voip/billing/dn;

    .line 47
    new-instance v0, Lcom/viber/voip/billing/dn;

    const-string/jumbo v1, "PAYLOAD"

    invoke-direct {v0, v1, v7}, Lcom/viber/voip/billing/dn;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/viber/voip/billing/dn;->e:Lcom/viber/voip/billing/dn;

    .line 48
    new-instance v0, Lcom/viber/voip/billing/dn;

    const-string/jumbo v1, "VO_CREDITS_DISPLAY"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/viber/voip/billing/dn;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/viber/voip/billing/dn;->f:Lcom/viber/voip/billing/dn;

    .line 49
    new-instance v0, Lcom/viber/voip/billing/dn;

    const-string/jumbo v1, "VO_NUMBER"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/viber/voip/billing/dn;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/viber/voip/billing/dn;->g:Lcom/viber/voip/billing/dn;

    .line 42
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/viber/voip/billing/dn;

    sget-object v1, Lcom/viber/voip/billing/dn;->a:Lcom/viber/voip/billing/dn;

    aput-object v1, v0, v3

    sget-object v1, Lcom/viber/voip/billing/dn;->b:Lcom/viber/voip/billing/dn;

    aput-object v1, v0, v4

    sget-object v1, Lcom/viber/voip/billing/dn;->c:Lcom/viber/voip/billing/dn;

    aput-object v1, v0, v5

    sget-object v1, Lcom/viber/voip/billing/dn;->d:Lcom/viber/voip/billing/dn;

    aput-object v1, v0, v6

    sget-object v1, Lcom/viber/voip/billing/dn;->e:Lcom/viber/voip/billing/dn;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/viber/voip/billing/dn;->f:Lcom/viber/voip/billing/dn;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/viber/voip/billing/dn;->g:Lcom/viber/voip/billing/dn;

    aput-object v2, v0, v1

    sput-object v0, Lcom/viber/voip/billing/dn;->h:[Lcom/viber/voip/billing/dn;

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
    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/viber/voip/billing/dn;
    .locals 1
    .parameter

    .prologue
    .line 42
    const-class v0, Lcom/viber/voip/billing/dn;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/billing/dn;

    return-object v0
.end method

.method public static values()[Lcom/viber/voip/billing/dn;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/viber/voip/billing/dn;->h:[Lcom/viber/voip/billing/dn;

    invoke-virtual {v0}, [Lcom/viber/voip/billing/dn;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/viber/voip/billing/dn;

    return-object v0
.end method
