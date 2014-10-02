.class final Lcom/viber/voip/sound/ToneGeneratorFactory$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/sound/tonegen/TonePlayer$StateChangeListener;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 275
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPlayEnd(Lcom/viber/voip/sound/tonegen/TonePlayer;)V
    .locals 3
    .parameter

    .prologue
    .line 284
    invoke-virtual {p1}, Lcom/viber/voip/sound/tonegen/TonePlayer;->getSoundService()Lcom/viber/voip/sound/AbstractSoundService;

    move-result-object v0

    if-nez v0, :cond_0

    .line 298
    :goto_0
    return-void

    .line 286
    :cond_0
    invoke-virtual {p1}, Lcom/viber/voip/sound/tonegen/TonePlayer;->getSoundService()Lcom/viber/voip/sound/AbstractSoundService;

    move-result-object v0

    invoke-virtual {p1}, Lcom/viber/voip/sound/tonegen/TonePlayer;->getSoundService()Lcom/viber/voip/sound/AbstractSoundService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/sound/AbstractSoundService;->mode_Normal()I

    move-result v1

    new-instance v2, Lcom/viber/voip/sound/ToneGeneratorFactory$3$1;

    invoke-direct {v2, p0, p1}, Lcom/viber/voip/sound/ToneGeneratorFactory$3$1;-><init>(Lcom/viber/voip/sound/ToneGeneratorFactory$3;Lcom/viber/voip/sound/tonegen/TonePlayer;)V

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/sound/AbstractSoundService;->setMode(ILcom/viber/voip/sound/ISoundService$ModeStateListenerIntf;)V

    .line 297
    invoke-virtual {p1}, Lcom/viber/voip/sound/tonegen/TonePlayer;->getSoundService()Lcom/viber/voip/sound/AbstractSoundService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/sound/AbstractSoundService;->unlockModeChange()V

    goto :goto_0
.end method

.method public onPlayStart(Lcom/viber/voip/sound/tonegen/TonePlayer;)V
    .locals 0
    .parameter

    .prologue
    .line 305
    return-void
.end method

.method public onPlayStop(Lcom/viber/voip/sound/tonegen/TonePlayer;)V
    .locals 0
    .parameter

    .prologue
    .line 281
    return-void
.end method

.method public onSampleLoop(Lcom/viber/voip/sound/tonegen/TonePlayer;)V
    .locals 0
    .parameter

    .prologue
    .line 278
    return-void
.end method
