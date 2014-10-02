.class public final enum Lcom/viber/voip/sound/ISoundService$VocoderCtl;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/viber/voip/sound/ISoundService$VocoderCtl;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/viber/voip/sound/ISoundService$VocoderCtl;

.field public static final enum VOECTL_CODEC_BITRATE:Lcom/viber/voip/sound/ISoundService$VocoderCtl;

.field public static final enum VOECTL_CODEC_PAYLOAD:Lcom/viber/voip/sound/ISoundService$VocoderCtl;

.field public static final enum VOECTL_CODEC_TYPE:Lcom/viber/voip/sound/ISoundService$VocoderCtl;

.field public static final enum VOECTL_FORCE_CODEC:Lcom/viber/voip/sound/ISoundService$VocoderCtl;

.field public static final enum VOECTL_UNKNOWN:Lcom/viber/voip/sound/ISoundService$VocoderCtl;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 292
    new-instance v0, Lcom/viber/voip/sound/ISoundService$VocoderCtl;

    const-string/jumbo v1, "VOECTL_UNKNOWN"

    invoke-direct {v0, v1, v2}, Lcom/viber/voip/sound/ISoundService$VocoderCtl;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/viber/voip/sound/ISoundService$VocoderCtl;->VOECTL_UNKNOWN:Lcom/viber/voip/sound/ISoundService$VocoderCtl;

    .line 293
    new-instance v0, Lcom/viber/voip/sound/ISoundService$VocoderCtl;

    const-string/jumbo v1, "VOECTL_CODEC_TYPE"

    invoke-direct {v0, v1, v3}, Lcom/viber/voip/sound/ISoundService$VocoderCtl;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/viber/voip/sound/ISoundService$VocoderCtl;->VOECTL_CODEC_TYPE:Lcom/viber/voip/sound/ISoundService$VocoderCtl;

    .line 294
    new-instance v0, Lcom/viber/voip/sound/ISoundService$VocoderCtl;

    const-string/jumbo v1, "VOECTL_CODEC_BITRATE"

    invoke-direct {v0, v1, v4}, Lcom/viber/voip/sound/ISoundService$VocoderCtl;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/viber/voip/sound/ISoundService$VocoderCtl;->VOECTL_CODEC_BITRATE:Lcom/viber/voip/sound/ISoundService$VocoderCtl;

    .line 295
    new-instance v0, Lcom/viber/voip/sound/ISoundService$VocoderCtl;

    const-string/jumbo v1, "VOECTL_CODEC_PAYLOAD"

    invoke-direct {v0, v1, v5}, Lcom/viber/voip/sound/ISoundService$VocoderCtl;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/viber/voip/sound/ISoundService$VocoderCtl;->VOECTL_CODEC_PAYLOAD:Lcom/viber/voip/sound/ISoundService$VocoderCtl;

    .line 296
    new-instance v0, Lcom/viber/voip/sound/ISoundService$VocoderCtl;

    const-string/jumbo v1, "VOECTL_FORCE_CODEC"

    invoke-direct {v0, v1, v6}, Lcom/viber/voip/sound/ISoundService$VocoderCtl;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/viber/voip/sound/ISoundService$VocoderCtl;->VOECTL_FORCE_CODEC:Lcom/viber/voip/sound/ISoundService$VocoderCtl;

    .line 291
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/viber/voip/sound/ISoundService$VocoderCtl;

    sget-object v1, Lcom/viber/voip/sound/ISoundService$VocoderCtl;->VOECTL_UNKNOWN:Lcom/viber/voip/sound/ISoundService$VocoderCtl;

    aput-object v1, v0, v2

    sget-object v1, Lcom/viber/voip/sound/ISoundService$VocoderCtl;->VOECTL_CODEC_TYPE:Lcom/viber/voip/sound/ISoundService$VocoderCtl;

    aput-object v1, v0, v3

    sget-object v1, Lcom/viber/voip/sound/ISoundService$VocoderCtl;->VOECTL_CODEC_BITRATE:Lcom/viber/voip/sound/ISoundService$VocoderCtl;

    aput-object v1, v0, v4

    sget-object v1, Lcom/viber/voip/sound/ISoundService$VocoderCtl;->VOECTL_CODEC_PAYLOAD:Lcom/viber/voip/sound/ISoundService$VocoderCtl;

    aput-object v1, v0, v5

    sget-object v1, Lcom/viber/voip/sound/ISoundService$VocoderCtl;->VOECTL_FORCE_CODEC:Lcom/viber/voip/sound/ISoundService$VocoderCtl;

    aput-object v1, v0, v6

    sput-object v0, Lcom/viber/voip/sound/ISoundService$VocoderCtl;->$VALUES:[Lcom/viber/voip/sound/ISoundService$VocoderCtl;

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
    .line 291
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/viber/voip/sound/ISoundService$VocoderCtl;
    .locals 1
    .parameter

    .prologue
    .line 291
    const-class v0, Lcom/viber/voip/sound/ISoundService$VocoderCtl;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/sound/ISoundService$VocoderCtl;

    return-object v0
.end method

.method public static values()[Lcom/viber/voip/sound/ISoundService$VocoderCtl;
    .locals 1

    .prologue
    .line 291
    sget-object v0, Lcom/viber/voip/sound/ISoundService$VocoderCtl;->$VALUES:[Lcom/viber/voip/sound/ISoundService$VocoderCtl;

    invoke-virtual {v0}, [Lcom/viber/voip/sound/ISoundService$VocoderCtl;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/viber/voip/sound/ISoundService$VocoderCtl;

    return-object v0
.end method
