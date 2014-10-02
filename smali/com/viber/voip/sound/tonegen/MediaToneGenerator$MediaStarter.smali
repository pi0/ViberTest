.class Lcom/viber/voip/sound/tonegen/MediaToneGenerator$MediaStarter;
.super Lcom/viber/voip/sound/ISoundService$ModeStateListener;
.source "SourceFile"


# instance fields
.field private volatile durationMs:I

.field private volatile toneGenerator:Lcom/viber/voip/sound/tonegen/MediaToneGenerator;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/viber/voip/sound/ISoundService$ModeStateListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/viber/voip/sound/tonegen/MediaToneGenerator$1;)V
    .locals 0
    .parameter

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/viber/voip/sound/tonegen/MediaToneGenerator$MediaStarter;-><init>()V

    return-void
.end method


# virtual methods
.method public onModeStateChanged(I)V
    .locals 3
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/viber/voip/sound/tonegen/MediaToneGenerator$MediaStarter;->toneGenerator:Lcom/viber/voip/sound/tonegen/MediaToneGenerator;

    if-nez v0, :cond_1

    .line 57
    :cond_0
    :goto_0
    return-void

    .line 47
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/sound/tonegen/MediaToneGenerator$MediaStarter;->toneGenerator:Lcom/viber/voip/sound/tonegen/MediaToneGenerator;

    #getter for: Lcom/viber/voip/sound/tonegen/MediaToneGenerator;->_modeSet:I
    invoke-static {v0}, Lcom/viber/voip/sound/tonegen/MediaToneGenerator;->access$100(Lcom/viber/voip/sound/tonegen/MediaToneGenerator;)I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/viber/voip/sound/tonegen/MediaToneGenerator$MediaStarter;->toneGenerator:Lcom/viber/voip/sound/tonegen/MediaToneGenerator;

    .line 49
    #getter for: Lcom/viber/voip/sound/tonegen/MediaToneGenerator;->tonePlayer:Lcom/viber/voip/sound/tonegen/TonePlayer;
    invoke-static {v0}, Lcom/viber/voip/sound/tonegen/MediaToneGenerator;->access$200(Lcom/viber/voip/sound/tonegen/MediaToneGenerator;)Lcom/viber/voip/sound/tonegen/TonePlayer;

    move-result-object v1

    .line 50
    invoke-static {}, Lcom/viber/voip/sound/tonegen/MediaToneGenerator;->access$000()Landroid/media/MediaPlayer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->start()V

    .line 51
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/viber/voip/sound/tonegen/TonePlayer;->getToneRule()Lcom/viber/voip/sound/tonegen/ToneRule;

    move-result-object v2

    invoke-virtual {v2}, Lcom/viber/voip/sound/tonegen/ToneRule;->isUrgent()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/viber/voip/sound/tonegen/MediaToneGenerator;->access$000()Landroid/media/MediaPlayer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v2

    if-lez v2, :cond_2

    .line 52
    invoke-static {}, Lcom/viber/voip/sound/tonegen/MediaToneGenerator;->access$000()Landroid/media/MediaPlayer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v2

    #getter for: Lcom/viber/voip/sound/tonegen/MediaToneGenerator;->urgencyGuard:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/viber/voip/sound/tonegen/MediaToneGenerator;->access$300(Lcom/viber/voip/sound/tonegen/MediaToneGenerator;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/viber/voip/sound/tonegen/TonePlayer;->scheduleDeferredGuard(ILjava/lang/Runnable;)V

    goto :goto_0

    .line 53
    :cond_2
    iget v0, p0, Lcom/viber/voip/sound/tonegen/MediaToneGenerator$MediaStarter;->durationMs:I

    if-lez v0, :cond_0

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/viber/voip/sound/tonegen/MediaToneGenerator$MediaStarter;->toneGenerator:Lcom/viber/voip/sound/tonegen/MediaToneGenerator;

    #getter for: Lcom/viber/voip/sound/tonegen/MediaToneGenerator;->callback:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/viber/voip/sound/tonegen/MediaToneGenerator;->access$400(Lcom/viber/voip/sound/tonegen/MediaToneGenerator;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 54
    iget v0, p0, Lcom/viber/voip/sound/tonegen/MediaToneGenerator$MediaStarter;->durationMs:I

    iget-object v2, p0, Lcom/viber/voip/sound/tonegen/MediaToneGenerator$MediaStarter;->toneGenerator:Lcom/viber/voip/sound/tonegen/MediaToneGenerator;

    #getter for: Lcom/viber/voip/sound/tonegen/MediaToneGenerator;->callback:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/viber/voip/sound/tonegen/MediaToneGenerator;->access$400(Lcom/viber/voip/sound/tonegen/MediaToneGenerator;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/viber/voip/sound/tonegen/TonePlayer;->scheduleDeferredGuard(ILjava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onModeStatePreChanged(I)V
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/viber/voip/sound/tonegen/MediaToneGenerator$MediaStarter;->toneGenerator:Lcom/viber/voip/sound/tonegen/MediaToneGenerator;

    if-nez v0, :cond_1

    .line 42
    :cond_0
    :goto_0
    return-void

    .line 40
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/sound/tonegen/MediaToneGenerator$MediaStarter;->toneGenerator:Lcom/viber/voip/sound/tonegen/MediaToneGenerator;

    #getter for: Lcom/viber/voip/sound/tonegen/MediaToneGenerator;->_modeSet:I
    invoke-static {v0}, Lcom/viber/voip/sound/tonegen/MediaToneGenerator;->access$100(Lcom/viber/voip/sound/tonegen/MediaToneGenerator;)I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/viber/voip/sound/tonegen/MediaToneGenerator$MediaStarter;->toneGenerator:Lcom/viber/voip/sound/tonegen/MediaToneGenerator;

    invoke-virtual {v0}, Lcom/viber/voip/sound/tonegen/MediaToneGenerator;->stopTone()V

    goto :goto_0
.end method

.method public start(Lcom/viber/voip/sound/tonegen/MediaToneGenerator;I)Lcom/viber/voip/sound/tonegen/MediaToneGenerator$MediaStarter;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lcom/viber/voip/sound/tonegen/MediaToneGenerator$MediaStarter;->toneGenerator:Lcom/viber/voip/sound/tonegen/MediaToneGenerator;

    .line 61
    iput p2, p0, Lcom/viber/voip/sound/tonegen/MediaToneGenerator$MediaStarter;->durationMs:I

    .line 62
    return-object p0
.end method
