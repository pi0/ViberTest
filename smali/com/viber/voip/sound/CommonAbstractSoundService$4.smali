.class Lcom/viber/voip/sound/CommonAbstractSoundService$4;
.super Lcom/viber/voip/sound/ISoundService$ModeStateListener;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/viber/voip/sound/CommonAbstractSoundService;


# direct methods
.method constructor <init>(Lcom/viber/voip/sound/CommonAbstractSoundService;)V
    .locals 0
    .parameter

    .prologue
    .line 1732
    iput-object p1, p0, Lcom/viber/voip/sound/CommonAbstractSoundService$4;->this$0:Lcom/viber/voip/sound/CommonAbstractSoundService;

    invoke-direct {p0}, Lcom/viber/voip/sound/ISoundService$ModeStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onModeStateChanged(I)V
    .locals 1
    .parameter

    .prologue
    .line 1735
    iget-object v0, p0, Lcom/viber/voip/sound/CommonAbstractSoundService$4;->this$0:Lcom/viber/voip/sound/CommonAbstractSoundService;

    invoke-virtual {v0}, Lcom/viber/voip/sound/CommonAbstractSoundService;->lockModeChange()V

    .line 1736
    return-void
.end method

.method public onModeStatePreChanged(I)V
    .locals 0
    .parameter

    .prologue
    .line 1739
    return-void
.end method
