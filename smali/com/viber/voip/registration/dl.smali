.class public final enum Lcom/viber/voip/registration/dl;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/viber/voip/registration/dl;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/viber/voip/registration/dl;

.field public static final enum b:Lcom/viber/voip/registration/dl;

.field public static final enum c:Lcom/viber/voip/registration/dl;

.field public static final enum d:Lcom/viber/voip/registration/dl;

.field public static final enum e:Lcom/viber/voip/registration/dl;

.field public static final enum f:Lcom/viber/voip/registration/dl;

.field public static final enum g:Lcom/viber/voip/registration/dl;

.field private static final synthetic h:[Lcom/viber/voip/registration/dl;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 35
    new-instance v0, Lcom/viber/voip/registration/dl;

    const-string/jumbo v1, "DEVICE_KEY"

    invoke-direct {v0, v1, v3}, Lcom/viber/voip/registration/dl;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/viber/voip/registration/dl;->a:Lcom/viber/voip/registration/dl;

    new-instance v0, Lcom/viber/voip/registration/dl;

    const-string/jumbo v1, "UDID"

    invoke-direct {v0, v1, v4}, Lcom/viber/voip/registration/dl;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/viber/voip/registration/dl;->b:Lcom/viber/voip/registration/dl;

    new-instance v0, Lcom/viber/voip/registration/dl;

    const-string/jumbo v1, "HARDWARE_KEY"

    invoke-direct {v0, v1, v5}, Lcom/viber/voip/registration/dl;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/viber/voip/registration/dl;->c:Lcom/viber/voip/registration/dl;

    new-instance v0, Lcom/viber/voip/registration/dl;

    const-string/jumbo v1, "SECONDARY_DEVICE_KEY"

    invoke-direct {v0, v1, v6}, Lcom/viber/voip/registration/dl;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/viber/voip/registration/dl;->d:Lcom/viber/voip/registration/dl;

    new-instance v0, Lcom/viber/voip/registration/dl;

    const-string/jumbo v1, "SECONDARY_UDID"

    invoke-direct {v0, v1, v7}, Lcom/viber/voip/registration/dl;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/viber/voip/registration/dl;->e:Lcom/viber/voip/registration/dl;

    new-instance v0, Lcom/viber/voip/registration/dl;

    const-string/jumbo v1, "RAKUTEN_R_TOKEN"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/viber/voip/registration/dl;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/viber/voip/registration/dl;->f:Lcom/viber/voip/registration/dl;

    new-instance v0, Lcom/viber/voip/registration/dl;

    const-string/jumbo v1, "ENCRYPTED_PHONE_NUMBER"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/viber/voip/registration/dl;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/viber/voip/registration/dl;->g:Lcom/viber/voip/registration/dl;

    .line 34
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/viber/voip/registration/dl;

    sget-object v1, Lcom/viber/voip/registration/dl;->a:Lcom/viber/voip/registration/dl;

    aput-object v1, v0, v3

    sget-object v1, Lcom/viber/voip/registration/dl;->b:Lcom/viber/voip/registration/dl;

    aput-object v1, v0, v4

    sget-object v1, Lcom/viber/voip/registration/dl;->c:Lcom/viber/voip/registration/dl;

    aput-object v1, v0, v5

    sget-object v1, Lcom/viber/voip/registration/dl;->d:Lcom/viber/voip/registration/dl;

    aput-object v1, v0, v6

    sget-object v1, Lcom/viber/voip/registration/dl;->e:Lcom/viber/voip/registration/dl;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/viber/voip/registration/dl;->f:Lcom/viber/voip/registration/dl;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/viber/voip/registration/dl;->g:Lcom/viber/voip/registration/dl;

    aput-object v2, v0, v1

    sput-object v0, Lcom/viber/voip/registration/dl;->h:[Lcom/viber/voip/registration/dl;

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
    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/viber/voip/registration/dl;
    .locals 1
    .parameter

    .prologue
    .line 34
    const-class v0, Lcom/viber/voip/registration/dl;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/registration/dl;

    return-object v0
.end method

.method public static values()[Lcom/viber/voip/registration/dl;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/viber/voip/registration/dl;->h:[Lcom/viber/voip/registration/dl;

    invoke-virtual {v0}, [Lcom/viber/voip/registration/dl;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/viber/voip/registration/dl;

    return-object v0
.end method
