.class Lcom/viber/voip/sound/CommonAbstractSoundService$2;
.super Lcom/viber/voip/sound/ISoundService$ModeStateListener;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/viber/voip/sound/CommonAbstractSoundService;

.field final synthetic val$startNative:Z


# direct methods
.method constructor <init>(Lcom/viber/voip/sound/CommonAbstractSoundService;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1228
    iput-object p1, p0, Lcom/viber/voip/sound/CommonAbstractSoundService$2;->this$0:Lcom/viber/voip/sound/CommonAbstractSoundService;

    iput-boolean p2, p0, Lcom/viber/voip/sound/CommonAbstractSoundService$2;->val$startNative:Z

    invoke-direct {p0}, Lcom/viber/voip/sound/ISoundService$ModeStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onModeStateChanged(I)V
    .locals 3
    .parameter

    .prologue
    .line 1231
    iget-boolean v0, p0, Lcom/viber/voip/sound/CommonAbstractSoundService$2;->val$startNative:Z

    if-nez v0, :cond_0

    .line 1234
    :goto_0
    return-void

    .line 1232
    :cond_0
    const/4 v0, 0x3

    sget-object v1, Lcom/viber/voip/sound/CommonAbstractSoundService$2;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "starting native VVE media thread"

    invoke-static {v0, v1, v2}, Lcom/viber/voip/sound/SoundFactory;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 1233
    iget-object v0, p0, Lcom/viber/voip/sound/CommonAbstractSoundService$2;->this$0:Lcom/viber/voip/sound/CommonAbstractSoundService;

    iget-object v1, p0, Lcom/viber/voip/sound/CommonAbstractSoundService$2;->this$0:Lcom/viber/voip/sound/CommonAbstractSoundService;

    invoke-virtual {v1}, Lcom/viber/voip/sound/CommonAbstractSoundService;->shouldKillMediaManagerOnSuspend()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/sound/CommonAbstractSoundService;->resumeSound(Z)I

    goto :goto_0
.end method

.method public onModeStatePreChanged(I)V
    .locals 1
    .parameter

    .prologue
    .line 1238
    iget-object v0, p0, Lcom/viber/voip/sound/CommonAbstractSoundService$2;->this$0:Lcom/viber/voip/sound/CommonAbstractSoundService;

    invoke-virtual {v0}, Lcom/viber/voip/sound/CommonAbstractSoundService;->lockModeChange()V

    .line 1239
    return-void
.end method
