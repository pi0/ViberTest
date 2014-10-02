.class public final enum Lcom/viber/voip/pixie/PixieControllerImpl$PixieSettings;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/viber/voip/pixie/PixieControllerImpl$PixieSettings;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/viber/voip/pixie/PixieControllerImpl$PixieSettings;

.field public static final enum PIXIE_MODE_ALWAYS_ON:Lcom/viber/voip/pixie/PixieControllerImpl$PixieSettings;

.field public static final enum PIXIE_MODE_AUTO:Lcom/viber/voip/pixie/PixieControllerImpl$PixieSettings;

.field public static final enum PIXIE_MODE_OFF:Lcom/viber/voip/pixie/PixieControllerImpl$PixieSettings;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 40
    new-instance v0, Lcom/viber/voip/pixie/PixieControllerImpl$PixieSettings;

    const-string/jumbo v1, "PIXIE_MODE_AUTO"

    invoke-direct {v0, v1, v2}, Lcom/viber/voip/pixie/PixieControllerImpl$PixieSettings;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/viber/voip/pixie/PixieControllerImpl$PixieSettings;->PIXIE_MODE_AUTO:Lcom/viber/voip/pixie/PixieControllerImpl$PixieSettings;

    .line 41
    new-instance v0, Lcom/viber/voip/pixie/PixieControllerImpl$PixieSettings;

    const-string/jumbo v1, "PIXIE_MODE_ALWAYS_ON"

    invoke-direct {v0, v1, v3}, Lcom/viber/voip/pixie/PixieControllerImpl$PixieSettings;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/viber/voip/pixie/PixieControllerImpl$PixieSettings;->PIXIE_MODE_ALWAYS_ON:Lcom/viber/voip/pixie/PixieControllerImpl$PixieSettings;

    .line 42
    new-instance v0, Lcom/viber/voip/pixie/PixieControllerImpl$PixieSettings;

    const-string/jumbo v1, "PIXIE_MODE_OFF"

    invoke-direct {v0, v1, v4}, Lcom/viber/voip/pixie/PixieControllerImpl$PixieSettings;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/viber/voip/pixie/PixieControllerImpl$PixieSettings;->PIXIE_MODE_OFF:Lcom/viber/voip/pixie/PixieControllerImpl$PixieSettings;

    .line 38
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/viber/voip/pixie/PixieControllerImpl$PixieSettings;

    sget-object v1, Lcom/viber/voip/pixie/PixieControllerImpl$PixieSettings;->PIXIE_MODE_AUTO:Lcom/viber/voip/pixie/PixieControllerImpl$PixieSettings;

    aput-object v1, v0, v2

    sget-object v1, Lcom/viber/voip/pixie/PixieControllerImpl$PixieSettings;->PIXIE_MODE_ALWAYS_ON:Lcom/viber/voip/pixie/PixieControllerImpl$PixieSettings;

    aput-object v1, v0, v3

    sget-object v1, Lcom/viber/voip/pixie/PixieControllerImpl$PixieSettings;->PIXIE_MODE_OFF:Lcom/viber/voip/pixie/PixieControllerImpl$PixieSettings;

    aput-object v1, v0, v4

    sput-object v0, Lcom/viber/voip/pixie/PixieControllerImpl$PixieSettings;->$VALUES:[Lcom/viber/voip/pixie/PixieControllerImpl$PixieSettings;

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
    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/viber/voip/pixie/PixieControllerImpl$PixieSettings;
    .locals 1
    .parameter

    .prologue
    .line 38
    const-class v0, Lcom/viber/voip/pixie/PixieControllerImpl$PixieSettings;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/pixie/PixieControllerImpl$PixieSettings;

    return-object v0
.end method

.method public static values()[Lcom/viber/voip/pixie/PixieControllerImpl$PixieSettings;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/viber/voip/pixie/PixieControllerImpl$PixieSettings;->$VALUES:[Lcom/viber/voip/pixie/PixieControllerImpl$PixieSettings;

    invoke-virtual {v0}, [Lcom/viber/voip/pixie/PixieControllerImpl$PixieSettings;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/viber/voip/pixie/PixieControllerImpl$PixieSettings;

    return-object v0
.end method
