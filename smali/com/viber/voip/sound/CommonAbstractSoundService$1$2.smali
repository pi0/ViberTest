.class Lcom/viber/voip/sound/CommonAbstractSoundService$1$2;
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
    .line 395
    iput-object p1, p0, Lcom/viber/voip/sound/CommonAbstractSoundService$1$2;->this$1:Lcom/viber/voip/sound/CommonAbstractSoundService$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 398
    iget-object v0, p0, Lcom/viber/voip/sound/CommonAbstractSoundService$1$2;->this$1:Lcom/viber/voip/sound/CommonAbstractSoundService$1;

    iget-object v0, v0, Lcom/viber/voip/sound/CommonAbstractSoundService$1;->this$0:Lcom/viber/voip/sound/CommonAbstractSoundService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/viber/voip/sound/CommonAbstractSoundService;->processAudioDevStartSignalOnce(Z)V

    .line 399
    return-void
.end method
