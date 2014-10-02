.class Lcom/viber/voip/sound/CommonAbstractSoundService$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/viber/voip/sound/CommonAbstractSoundService;


# direct methods
.method constructor <init>(Lcom/viber/voip/sound/CommonAbstractSoundService;)V
    .locals 0
    .parameter

    .prologue
    .line 1582
    iput-object p1, p0, Lcom/viber/voip/sound/CommonAbstractSoundService$3;->this$0:Lcom/viber/voip/sound/CommonAbstractSoundService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1585
    iget-object v0, p0, Lcom/viber/voip/sound/CommonAbstractSoundService$3;->this$0:Lcom/viber/voip/sound/CommonAbstractSoundService;

    iget-object v1, p0, Lcom/viber/voip/sound/CommonAbstractSoundService$3;->this$0:Lcom/viber/voip/sound/CommonAbstractSoundService;

    invoke-virtual {v1}, Lcom/viber/voip/sound/CommonAbstractSoundService;->isSpeakerphoneOn()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/sound/CommonAbstractSoundService;->setSpeakerphoneOnFallback(Z)V

    .line 1586
    return-void
.end method
