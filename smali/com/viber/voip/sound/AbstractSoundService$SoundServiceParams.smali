.class public Lcom/viber/voip/sound/AbstractSoundService$SoundServiceParams;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field isBluetoothScoOn:Z

.field isMicrophoneMute:Z

.field isSpeakerphoneOn:Z

.field mode:I

.field ringerMode:I

.field private stream_volume:[I

.field final synthetic this$0:Lcom/viber/voip/sound/AbstractSoundService;


# direct methods
.method constructor <init>(Lcom/viber/voip/sound/AbstractSoundService;Lcom/viber/voip/sound/ISoundService;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 37
    iput-object p1, p0, Lcom/viber/voip/sound/AbstractSoundService$SoundServiceParams;->this$0:Lcom/viber/voip/sound/AbstractSoundService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/16 v0, 0x9

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/viber/voip/sound/AbstractSoundService$SoundServiceParams;->stream_volume:[I

    .line 38
    invoke-virtual {p0, p2}, Lcom/viber/voip/sound/AbstractSoundService$SoundServiceParams;->grabFrom(Lcom/viber/voip/sound/ISoundService;)V

    .line 39
    return-void
.end method


# virtual methods
.method public grabFrom(Lcom/viber/voip/sound/ISoundService;)V
    .locals 3
    .parameter

    .prologue
    .line 41
    invoke-interface {p1}, Lcom/viber/voip/sound/ISoundService;->getMode()I

    move-result v0

    iput v0, p0, Lcom/viber/voip/sound/AbstractSoundService$SoundServiceParams;->mode:I

    .line 42
    invoke-interface {p1}, Lcom/viber/voip/sound/ISoundService;->getRingerMode()I

    move-result v0

    iput v0, p0, Lcom/viber/voip/sound/AbstractSoundService$SoundServiceParams;->ringerMode:I

    .line 43
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/viber/voip/sound/AbstractSoundService$SoundServiceParams;->stream_volume:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/viber/voip/sound/AbstractSoundService$SoundServiceParams;->stream_volume:[I

    invoke-interface {p1, v0}, Lcom/viber/voip/sound/ISoundService;->getStreamVolume(I)I

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 44
    :cond_0
    invoke-interface {p1}, Lcom/viber/voip/sound/ISoundService;->isBluetoothScoOn()Z

    move-result v0

    iput-boolean v0, p0, Lcom/viber/voip/sound/AbstractSoundService$SoundServiceParams;->isBluetoothScoOn:Z

    .line 45
    invoke-interface {p1}, Lcom/viber/voip/sound/ISoundService;->isMicrophoneMute()Z

    move-result v0

    iput-boolean v0, p0, Lcom/viber/voip/sound/AbstractSoundService$SoundServiceParams;->isMicrophoneMute:Z

    .line 46
    invoke-interface {p1}, Lcom/viber/voip/sound/ISoundService;->isSpeakerphoneOn()Z

    move-result v0

    iput-boolean v0, p0, Lcom/viber/voip/sound/AbstractSoundService$SoundServiceParams;->isSpeakerphoneOn:Z

    .line 47
    return-void
.end method
