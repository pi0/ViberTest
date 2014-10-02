.class final Lcom/viber/voip/sound/ToneGeneratorFactory$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/sound/tonegen/TonePlayer$StateChangeListener;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPlayEnd(Lcom/viber/voip/sound/tonegen/TonePlayer;)V
    .locals 2
    .parameter

    .prologue
    .line 225
    invoke-virtual {p1}, Lcom/viber/voip/sound/tonegen/TonePlayer;->getSoundService()Lcom/viber/voip/sound/AbstractSoundService;

    move-result-object v0

    if-nez v0, :cond_0

    .line 228
    :goto_0
    return-void

    .line 226
    :cond_0
    invoke-virtual {p1}, Lcom/viber/voip/sound/tonegen/TonePlayer;->getSoundService()Lcom/viber/voip/sound/AbstractSoundService;

    move-result-object v0

    invoke-virtual {p1}, Lcom/viber/voip/sound/tonegen/TonePlayer;->getSoundService()Lcom/viber/voip/sound/AbstractSoundService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/sound/AbstractSoundService;->mode_Normal()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/sound/AbstractSoundService;->setMode(I)V

    .line 227
    invoke-virtual {p1}, Lcom/viber/voip/sound/tonegen/TonePlayer;->getSoundService()Lcom/viber/voip/sound/AbstractSoundService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/sound/AbstractSoundService;->unlockModeChange()V

    goto :goto_0
.end method

.method public onPlayStart(Lcom/viber/voip/sound/tonegen/TonePlayer;)V
    .locals 0
    .parameter

    .prologue
    .line 232
    return-void
.end method

.method public onPlayStop(Lcom/viber/voip/sound/tonegen/TonePlayer;)V
    .locals 0
    .parameter

    .prologue
    .line 222
    return-void
.end method

.method public onSampleLoop(Lcom/viber/voip/sound/tonegen/TonePlayer;)V
    .locals 0
    .parameter

    .prologue
    .line 219
    return-void
.end method
