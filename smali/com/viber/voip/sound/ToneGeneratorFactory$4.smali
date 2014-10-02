.class final Lcom/viber/voip/sound/ToneGeneratorFactory$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/sound/tonegen/TonePlayer$StateChangeListener;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPlayEnd(Lcom/viber/voip/sound/tonegen/TonePlayer;)V
    .locals 1
    .parameter

    .prologue
    .line 328
    invoke-virtual {p1}, Lcom/viber/voip/sound/tonegen/TonePlayer;->getSoundService()Lcom/viber/voip/sound/AbstractSoundService;

    move-result-object v0

    if-nez v0, :cond_0

    .line 330
    :cond_0
    return-void
.end method

.method public onPlayStart(Lcom/viber/voip/sound/tonegen/TonePlayer;)V
    .locals 0
    .parameter

    .prologue
    .line 333
    return-void
.end method

.method public onPlayStop(Lcom/viber/voip/sound/tonegen/TonePlayer;)V
    .locals 0
    .parameter

    .prologue
    .line 325
    return-void
.end method

.method public onSampleLoop(Lcom/viber/voip/sound/tonegen/TonePlayer;)V
    .locals 0
    .parameter

    .prologue
    .line 322
    return-void
.end method
