.class Lcom/viber/voip/sound/CommonAbstractSoundService$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/viber/voip/sound/CommonAbstractSoundService$1;


# direct methods
.method constructor <init>(Lcom/viber/voip/sound/CommonAbstractSoundService$1;)V
    .locals 0
    .parameter

    .prologue
    .line 382
    iput-object p1, p0, Lcom/viber/voip/sound/CommonAbstractSoundService$1$1;->this$1:Lcom/viber/voip/sound/CommonAbstractSoundService$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 385
    iget-object v0, p0, Lcom/viber/voip/sound/CommonAbstractSoundService$1$1;->this$1:Lcom/viber/voip/sound/CommonAbstractSoundService$1;

    iget-object v0, v0, Lcom/viber/voip/sound/CommonAbstractSoundService$1;->this$0:Lcom/viber/voip/sound/CommonAbstractSoundService;

    invoke-virtual {v0}, Lcom/viber/voip/sound/CommonAbstractSoundService;->processAudioDevStopSignalOnce()V

    .line 386
    return-void
.end method
