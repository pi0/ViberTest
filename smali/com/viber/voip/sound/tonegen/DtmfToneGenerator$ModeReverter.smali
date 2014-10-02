.class Lcom/viber/voip/sound/tonegen/DtmfToneGenerator$ModeReverter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field volatile soundService:Lcom/viber/voip/sound/ISoundService;

.field volatile targetMode:I

.field volatile targetVolume:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, -0x1

    iput v0, p0, Lcom/viber/voip/sound/tonegen/DtmfToneGenerator$ModeReverter;->targetVolume:I

    return-void
.end method


# virtual methods
.method public revertTo(Lcom/viber/voip/sound/ISoundService;I)Lcom/viber/voip/sound/tonegen/DtmfToneGenerator$ModeReverter;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 43
    iput p2, p0, Lcom/viber/voip/sound/tonegen/DtmfToneGenerator$ModeReverter;->targetMode:I

    .line 44
    iput-object p1, p0, Lcom/viber/voip/sound/tonegen/DtmfToneGenerator$ModeReverter;->soundService:Lcom/viber/voip/sound/ISoundService;

    .line 45
    const/4 v0, -0x1

    iget v1, p0, Lcom/viber/voip/sound/tonegen/DtmfToneGenerator$ModeReverter;->targetVolume:I

    if-ne v0, v1, :cond_0

    .line 46
    invoke-interface {p1}, Lcom/viber/voip/sound/ISoundService;->stream_Dtmf()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/viber/voip/sound/ISoundService;->getStreamVolume(I)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/sound/tonegen/DtmfToneGenerator$ModeReverter;->targetVolume:I

    .line 48
    :cond_0
    return-object p0
.end method

.method public run()V
    .locals 4

    .prologue
    .line 52
    const/4 v0, 0x3

    sget-object v1, Lcom/viber/voip/sound/tonegen/DtmfToneGenerator;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "DTMF callback: reverting mode and volume to previously settled"

    invoke-static {v0, v1, v2}, Lcom/viber/voip/sound/SoundFactory;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lcom/viber/voip/sound/tonegen/DtmfToneGenerator$ModeReverter;->soundService:Lcom/viber/voip/sound/ISoundService;

    iget v1, p0, Lcom/viber/voip/sound/tonegen/DtmfToneGenerator$ModeReverter;->targetMode:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/viber/voip/sound/ISoundService;->setMode(ILcom/viber/voip/sound/ISoundService$ModeStateListenerIntf;I)V

    .line 56
    const/4 v0, -0x1

    iput v0, p0, Lcom/viber/voip/sound/tonegen/DtmfToneGenerator$ModeReverter;->targetVolume:I

    .line 57
    return-void
.end method
