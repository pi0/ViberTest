.class Lcom/viber/voip/sound/ToneGeneratorFactory$3$1;
.super Lcom/viber/voip/sound/ISoundService$ModeStateListener;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/viber/voip/sound/ToneGeneratorFactory$3;

.field final synthetic val$tonePlayer:Lcom/viber/voip/sound/tonegen/TonePlayer;


# direct methods
.method constructor <init>(Lcom/viber/voip/sound/ToneGeneratorFactory$3;Lcom/viber/voip/sound/tonegen/TonePlayer;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 286
    iput-object p1, p0, Lcom/viber/voip/sound/ToneGeneratorFactory$3$1;->this$0:Lcom/viber/voip/sound/ToneGeneratorFactory$3;

    iput-object p2, p0, Lcom/viber/voip/sound/ToneGeneratorFactory$3$1;->val$tonePlayer:Lcom/viber/voip/sound/tonegen/TonePlayer;

    invoke-direct {p0}, Lcom/viber/voip/sound/ISoundService$ModeStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onModeStateChanged(I)V
    .locals 2
    .parameter

    .prologue
    .line 289
    iget-object v0, p0, Lcom/viber/voip/sound/ToneGeneratorFactory$3$1;->val$tonePlayer:Lcom/viber/voip/sound/tonegen/TonePlayer;

    invoke-virtual {v0}, Lcom/viber/voip/sound/tonegen/TonePlayer;->getSoundService()Lcom/viber/voip/sound/AbstractSoundService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/sound/AbstractSoundService;->stopAllTones()V

    .line 290
    iget-object v0, p0, Lcom/viber/voip/sound/ToneGeneratorFactory$3$1;->val$tonePlayer:Lcom/viber/voip/sound/tonegen/TonePlayer;

    invoke-virtual {v0}, Lcom/viber/voip/sound/tonegen/TonePlayer;->getSoundService()Lcom/viber/voip/sound/AbstractSoundService;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/viber/voip/sound/AbstractSoundService;->setSpeakerphoneOn(Z)V

    .line 291
    return-void
.end method

.method public onModeStatePreChanged(I)V
    .locals 0
    .parameter

    .prologue
    .line 295
    return-void
.end method
