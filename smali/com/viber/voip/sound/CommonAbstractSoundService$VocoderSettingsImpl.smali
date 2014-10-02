.class Lcom/viber/voip/sound/CommonAbstractSoundService$VocoderSettingsImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/sound/ISoundService$IVocoderSettings;


# instance fields
.field _vocoders:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/viber/voip/sound/ISoundService$IVocoderSettings$IVocoderDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/viber/voip/sound/CommonAbstractSoundService;


# direct methods
.method private constructor <init>(Lcom/viber/voip/sound/CommonAbstractSoundService;)V
    .locals 1
    .parameter

    .prologue
    .line 281
    iput-object p1, p0, Lcom/viber/voip/sound/CommonAbstractSoundService$VocoderSettingsImpl;->this$0:Lcom/viber/voip/sound/CommonAbstractSoundService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 306
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/viber/voip/sound/CommonAbstractSoundService$VocoderSettingsImpl;->_vocoders:Ljava/util/Set;

    return-void
.end method

.method synthetic constructor <init>(Lcom/viber/voip/sound/CommonAbstractSoundService;Lcom/viber/voip/sound/CommonAbstractSoundService$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 281
    invoke-direct {p0, p1}, Lcom/viber/voip/sound/CommonAbstractSoundService$VocoderSettingsImpl;-><init>(Lcom/viber/voip/sound/CommonAbstractSoundService;)V

    return-void
.end method

.method private fillVocodersList()Ljava/util/Set;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/viber/voip/sound/ISoundService$IVocoderSettings$IVocoderDescriptor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 308
    invoke-static {}, Lcom/viber/voip/sound/AbstractSoundService;->getSupportedCodecsCount()I

    move-result v7

    .line 309
    new-instance v8, Ljava/util/TreeSet;

    new-instance v0, Lcom/viber/voip/sound/CommonAbstractSoundService$VocoderSettingsImpl$1;

    invoke-direct {v0, p0}, Lcom/viber/voip/sound/CommonAbstractSoundService$VocoderSettingsImpl$1;-><init>(Lcom/viber/voip/sound/CommonAbstractSoundService$VocoderSettingsImpl;)V

    invoke-direct {v8, v0}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 312
    const/4 v0, 0x0

    move v6, v0

    :goto_0
    if-ge v6, v7, :cond_0

    .line 313
    invoke-static {v6}, Lcom/viber/voip/sound/AbstractSoundService;->getCodecName(I)Ljava/lang/String;

    move-result-object v3

    .line 314
    sget-object v0, Lcom/viber/voip/sound/ISoundService$VocoderCtl;->VOECTL_CODEC_TYPE:Lcom/viber/voip/sound/ISoundService$VocoderCtl;

    invoke-virtual {v0}, Lcom/viber/voip/sound/ISoundService$VocoderCtl;->ordinal()I

    move-result v0

    invoke-static {v0, v6}, Lcom/viber/voip/sound/AbstractSoundService;->getCodecCtl(II)I

    move-result v2

    .line 315
    sget-object v0, Lcom/viber/voip/sound/ISoundService$VocoderCtl;->VOECTL_CODEC_PAYLOAD:Lcom/viber/voip/sound/ISoundService$VocoderCtl;

    invoke-virtual {v0}, Lcom/viber/voip/sound/ISoundService$VocoderCtl;->ordinal()I

    move-result v0

    invoke-static {v0, v6}, Lcom/viber/voip/sound/AbstractSoundService;->getCodecCtl(II)I

    move-result v4

    .line 316
    sget-object v0, Lcom/viber/voip/sound/ISoundService$VocoderCtl;->VOECTL_CODEC_BITRATE:Lcom/viber/voip/sound/ISoundService$VocoderCtl;

    invoke-virtual {v0}, Lcom/viber/voip/sound/ISoundService$VocoderCtl;->ordinal()I

    move-result v0

    invoke-static {v0, v6}, Lcom/viber/voip/sound/AbstractSoundService;->getCodecCtl(II)I

    move-result v5

    .line 317
    new-instance v0, Lcom/viber/voip/sound/CommonAbstractSoundService$VocoderSettingsImpl$VocoderDescriptor;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/sound/CommonAbstractSoundService$VocoderSettingsImpl$VocoderDescriptor;-><init>(Lcom/viber/voip/sound/CommonAbstractSoundService$VocoderSettingsImpl;ILjava/lang/String;II)V

    invoke-interface {v8, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 312
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    .line 319
    :cond_0
    return-object v8
.end method


# virtual methods
.method public declared-synchronized getSupportedCodecs()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/viber/voip/sound/ISoundService$IVocoderSettings$IVocoderDescriptor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 323
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/sound/CommonAbstractSoundService$VocoderSettingsImpl;->_vocoders:Ljava/util/Set;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/viber/voip/sound/CommonAbstractSoundService$VocoderSettingsImpl;->fillVocodersList()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/sound/CommonAbstractSoundService$VocoderSettingsImpl;->_vocoders:Ljava/util/Set;

    .line 324
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/sound/CommonAbstractSoundService$VocoderSettingsImpl;->_vocoders:Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 323
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getVocoderCtl(Lcom/viber/voip/sound/ISoundService$VocoderCtl;II)I
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 328
    invoke-virtual {p1}, Lcom/viber/voip/sound/ISoundService$VocoderCtl;->ordinal()I

    move-result v0

    invoke-static {v0, p2}, Lcom/viber/voip/sound/AbstractSoundService;->getCodecCtl(II)I

    move-result v0

    .line 329
    const/4 v1, -0x1

    if-ne v1, v0, :cond_0

    .line 330
    :goto_0
    return p3

    :cond_0
    move p3, v0

    goto :goto_0
.end method

.method public setVocoderCtl(Lcom/viber/voip/sound/ISoundService$VocoderCtl;II)I
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 334
    invoke-virtual {p1}, Lcom/viber/voip/sound/ISoundService$VocoderCtl;->ordinal()I

    move-result v0

    invoke-static {v0, p2, p3}, Lcom/viber/voip/sound/AbstractSoundService;->setCodecCtl(III)I

    move-result v0

    return v0
.end method
