.class public final enum Lcom/viber/voip/sound/ISoundService$AudioCtl;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/viber/voip/sound/ISoundService$AudioCtl;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/viber/voip/sound/ISoundService$AudioCtl;

.field public static final enum AUCTL_AEC_MODE:Lcom/viber/voip/sound/ISoundService$AudioCtl;

.field public static final enum AUCTL_AGC_MODE:Lcom/viber/voip/sound/ISoundService$AudioCtl;

.field public static final enum AUCTL_NS_MODE:Lcom/viber/voip/sound/ISoundService$AudioCtl;

.field public static final enum AUCTL_RX_AGC_MODE:Lcom/viber/voip/sound/ISoundService$AudioCtl;

.field public static final enum AUCTL_RX_NS_MODE:Lcom/viber/voip/sound/ISoundService$AudioCtl;

.field public static final enum AUCTL_UNKNOWN:Lcom/viber/voip/sound/ISoundService$AudioCtl;

.field public static final enum AUCTL_VAD_MODE:Lcom/viber/voip/sound/ISoundService$AudioCtl;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 247
    new-instance v0, Lcom/viber/voip/sound/ISoundService$AudioCtl;

    const-string/jumbo v1, "AUCTL_UNKNOWN"

    invoke-direct {v0, v1, v3}, Lcom/viber/voip/sound/ISoundService$AudioCtl;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/viber/voip/sound/ISoundService$AudioCtl;->AUCTL_UNKNOWN:Lcom/viber/voip/sound/ISoundService$AudioCtl;

    .line 248
    new-instance v0, Lcom/viber/voip/sound/ISoundService$AudioCtl;

    const-string/jumbo v1, "AUCTL_AEC_MODE"

    invoke-direct {v0, v1, v4}, Lcom/viber/voip/sound/ISoundService$AudioCtl;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/viber/voip/sound/ISoundService$AudioCtl;->AUCTL_AEC_MODE:Lcom/viber/voip/sound/ISoundService$AudioCtl;

    .line 249
    new-instance v0, Lcom/viber/voip/sound/ISoundService$AudioCtl;

    const-string/jumbo v1, "AUCTL_AGC_MODE"

    invoke-direct {v0, v1, v5}, Lcom/viber/voip/sound/ISoundService$AudioCtl;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/viber/voip/sound/ISoundService$AudioCtl;->AUCTL_AGC_MODE:Lcom/viber/voip/sound/ISoundService$AudioCtl;

    .line 250
    new-instance v0, Lcom/viber/voip/sound/ISoundService$AudioCtl;

    const-string/jumbo v1, "AUCTL_RX_AGC_MODE"

    invoke-direct {v0, v1, v6}, Lcom/viber/voip/sound/ISoundService$AudioCtl;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/viber/voip/sound/ISoundService$AudioCtl;->AUCTL_RX_AGC_MODE:Lcom/viber/voip/sound/ISoundService$AudioCtl;

    .line 251
    new-instance v0, Lcom/viber/voip/sound/ISoundService$AudioCtl;

    const-string/jumbo v1, "AUCTL_NS_MODE"

    invoke-direct {v0, v1, v7}, Lcom/viber/voip/sound/ISoundService$AudioCtl;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/viber/voip/sound/ISoundService$AudioCtl;->AUCTL_NS_MODE:Lcom/viber/voip/sound/ISoundService$AudioCtl;

    .line 252
    new-instance v0, Lcom/viber/voip/sound/ISoundService$AudioCtl;

    const-string/jumbo v1, "AUCTL_RX_NS_MODE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/viber/voip/sound/ISoundService$AudioCtl;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/viber/voip/sound/ISoundService$AudioCtl;->AUCTL_RX_NS_MODE:Lcom/viber/voip/sound/ISoundService$AudioCtl;

    .line 253
    new-instance v0, Lcom/viber/voip/sound/ISoundService$AudioCtl;

    const-string/jumbo v1, "AUCTL_VAD_MODE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/viber/voip/sound/ISoundService$AudioCtl;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/viber/voip/sound/ISoundService$AudioCtl;->AUCTL_VAD_MODE:Lcom/viber/voip/sound/ISoundService$AudioCtl;

    .line 246
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/viber/voip/sound/ISoundService$AudioCtl;

    sget-object v1, Lcom/viber/voip/sound/ISoundService$AudioCtl;->AUCTL_UNKNOWN:Lcom/viber/voip/sound/ISoundService$AudioCtl;

    aput-object v1, v0, v3

    sget-object v1, Lcom/viber/voip/sound/ISoundService$AudioCtl;->AUCTL_AEC_MODE:Lcom/viber/voip/sound/ISoundService$AudioCtl;

    aput-object v1, v0, v4

    sget-object v1, Lcom/viber/voip/sound/ISoundService$AudioCtl;->AUCTL_AGC_MODE:Lcom/viber/voip/sound/ISoundService$AudioCtl;

    aput-object v1, v0, v5

    sget-object v1, Lcom/viber/voip/sound/ISoundService$AudioCtl;->AUCTL_RX_AGC_MODE:Lcom/viber/voip/sound/ISoundService$AudioCtl;

    aput-object v1, v0, v6

    sget-object v1, Lcom/viber/voip/sound/ISoundService$AudioCtl;->AUCTL_NS_MODE:Lcom/viber/voip/sound/ISoundService$AudioCtl;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/viber/voip/sound/ISoundService$AudioCtl;->AUCTL_RX_NS_MODE:Lcom/viber/voip/sound/ISoundService$AudioCtl;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/viber/voip/sound/ISoundService$AudioCtl;->AUCTL_VAD_MODE:Lcom/viber/voip/sound/ISoundService$AudioCtl;

    aput-object v2, v0, v1

    sput-object v0, Lcom/viber/voip/sound/ISoundService$AudioCtl;->$VALUES:[Lcom/viber/voip/sound/ISoundService$AudioCtl;

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
    .line 246
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/viber/voip/sound/ISoundService$AudioCtl;
    .locals 1
    .parameter

    .prologue
    .line 246
    const-class v0, Lcom/viber/voip/sound/ISoundService$AudioCtl;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/sound/ISoundService$AudioCtl;

    return-object v0
.end method

.method public static values()[Lcom/viber/voip/sound/ISoundService$AudioCtl;
    .locals 1

    .prologue
    .line 246
    sget-object v0, Lcom/viber/voip/sound/ISoundService$AudioCtl;->$VALUES:[Lcom/viber/voip/sound/ISoundService$AudioCtl;

    invoke-virtual {v0}, [Lcom/viber/voip/sound/ISoundService$AudioCtl;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/viber/voip/sound/ISoundService$AudioCtl;

    return-object v0
.end method
