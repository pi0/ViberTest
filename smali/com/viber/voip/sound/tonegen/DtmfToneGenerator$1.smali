.class Lcom/viber/voip/sound/tonegen/DtmfToneGenerator$1;
.super Lcom/viber/voip/sound/ISoundService$ModeStateListener;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/viber/voip/sound/tonegen/DtmfToneGenerator;

.field final synthetic val$callback:Ljava/lang/Runnable;

.field final synthetic val$durationMs:I

.field final synthetic val$toneId:I


# direct methods
.method constructor <init>(Lcom/viber/voip/sound/tonegen/DtmfToneGenerator;IILjava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Lcom/viber/voip/sound/tonegen/DtmfToneGenerator$1;->this$0:Lcom/viber/voip/sound/tonegen/DtmfToneGenerator;

    iput p2, p0, Lcom/viber/voip/sound/tonegen/DtmfToneGenerator$1;->val$toneId:I

    iput p3, p0, Lcom/viber/voip/sound/tonegen/DtmfToneGenerator$1;->val$durationMs:I

    iput-object p4, p0, Lcom/viber/voip/sound/tonegen/DtmfToneGenerator$1;->val$callback:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/viber/voip/sound/ISoundService$ModeStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onModeStateChanged(I)V
    .locals 4
    .parameter

    .prologue
    .line 86
    iget-object v0, p0, Lcom/viber/voip/sound/tonegen/DtmfToneGenerator$1;->this$0:Lcom/viber/voip/sound/tonegen/DtmfToneGenerator;

    #getter for: Lcom/viber/voip/sound/tonegen/DtmfToneGenerator;->soundService:Lcom/viber/voip/sound/ISoundService;
    invoke-static {v0}, Lcom/viber/voip/sound/tonegen/DtmfToneGenerator;->access$000(Lcom/viber/voip/sound/tonegen/DtmfToneGenerator;)Lcom/viber/voip/sound/ISoundService;

    move-result-object v0

    invoke-interface {v0}, Lcom/viber/voip/sound/ISoundService;->mode_Dtmf()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 94
    :goto_0
    return-void

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/sound/tonegen/DtmfToneGenerator$1;->this$0:Lcom/viber/voip/sound/tonegen/DtmfToneGenerator;

    iget-object v0, v0, Lcom/viber/voip/sound/tonegen/DtmfToneGenerator;->mediaGenerator:Lcom/viber/voip/sound/tonegen/IToneGenerator;

    iget v1, p0, Lcom/viber/voip/sound/tonegen/DtmfToneGenerator$1;->val$toneId:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/viber/voip/sound/tonegen/IToneGenerator;->startTone(IILjava/lang/Runnable;)V

    .line 92
    iget-object v0, p0, Lcom/viber/voip/sound/tonegen/DtmfToneGenerator$1;->this$0:Lcom/viber/voip/sound/tonegen/DtmfToneGenerator;

    iget-object v1, p0, Lcom/viber/voip/sound/tonegen/DtmfToneGenerator$1;->val$callback:Ljava/lang/Runnable;

    iget v2, p0, Lcom/viber/voip/sound/tonegen/DtmfToneGenerator$1;->val$durationMs:I

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/sound/tonegen/DtmfToneGenerator;->repostCallbackAfter(Ljava/lang/Runnable;I)V

    goto :goto_0
.end method

.method public onModeStatePreChanged(I)V
    .locals 0
    .parameter

    .prologue
    .line 82
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    const-string/jumbo v0, "DTMF audio route listener"

    return-object v0
.end method
