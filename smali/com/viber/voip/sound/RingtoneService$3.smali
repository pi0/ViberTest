.class Lcom/viber/voip/sound/RingtoneService$3;
.super Lcom/viber/voip/sound/ISoundService$ModeStateListener;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/viber/voip/sound/RingtoneService;

.field final synthetic val$r:Lcom/viber/voip/sound/IRingtoneService$Ringtone;


# direct methods
.method constructor <init>(Lcom/viber/voip/sound/RingtoneService;Lcom/viber/voip/sound/IRingtoneService$Ringtone;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 136
    iput-object p1, p0, Lcom/viber/voip/sound/RingtoneService$3;->this$0:Lcom/viber/voip/sound/RingtoneService;

    iput-object p2, p0, Lcom/viber/voip/sound/RingtoneService$3;->val$r:Lcom/viber/voip/sound/IRingtoneService$Ringtone;

    invoke-direct {p0}, Lcom/viber/voip/sound/ISoundService$ModeStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onModeStateChanged(I)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 139
    const/4 v0, 0x3

    sget-object v1, Lcom/viber/voip/sound/RingtoneService$3;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "got mode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/viber/voip/sound/CommonAbstractSoundService;->getModeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": starting ringtone playback"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/viber/voip/sound/SoundFactory;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/viber/voip/sound/RingtoneService$3;->this$0:Lcom/viber/voip/sound/RingtoneService;

    #getter for: Lcom/viber/voip/sound/RingtoneService;->soundService:Lcom/viber/voip/sound/AbstractSoundService;
    invoke-static {v0}, Lcom/viber/voip/sound/RingtoneService;->access$100(Lcom/viber/voip/sound/RingtoneService;)Lcom/viber/voip/sound/AbstractSoundService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/sound/AbstractSoundService;->lockModeChange()V

    .line 141
    iget-object v0, p0, Lcom/viber/voip/sound/RingtoneService$3;->this$0:Lcom/viber/voip/sound/RingtoneService;

    #getter for: Lcom/viber/voip/sound/RingtoneService;->soundService:Lcom/viber/voip/sound/AbstractSoundService;
    invoke-static {v0}, Lcom/viber/voip/sound/RingtoneService;->access$100(Lcom/viber/voip/sound/RingtoneService;)Lcom/viber/voip/sound/AbstractSoundService;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/viber/voip/sound/AbstractSoundService;->setRouteFlags(I)I

    .line 142
    iget-object v0, p0, Lcom/viber/voip/sound/RingtoneService$3;->this$0:Lcom/viber/voip/sound/RingtoneService;

    iget-object v1, p0, Lcom/viber/voip/sound/RingtoneService$3;->val$r:Lcom/viber/voip/sound/IRingtoneService$Ringtone;

    #setter for: Lcom/viber/voip/sound/RingtoneService;->_lastRingtone:Lcom/viber/voip/sound/IRingtoneService$Ringtone;
    invoke-static {v0, v1}, Lcom/viber/voip/sound/RingtoneService;->access$202(Lcom/viber/voip/sound/RingtoneService;Lcom/viber/voip/sound/IRingtoneService$Ringtone;)Lcom/viber/voip/sound/IRingtoneService$Ringtone;

    .line 143
    const/4 v0, -0x1

    iget-object v1, p0, Lcom/viber/voip/sound/RingtoneService$3;->val$r:Lcom/viber/voip/sound/IRingtoneService$Ringtone;

    invoke-virtual {v1}, Lcom/viber/voip/sound/IRingtoneService$Ringtone;->getDuration()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 144
    iget-object v0, p0, Lcom/viber/voip/sound/RingtoneService$3;->this$0:Lcom/viber/voip/sound/RingtoneService;

    #getter for: Lcom/viber/voip/sound/RingtoneService;->durationControlHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/viber/voip/sound/RingtoneService;->access$300(Lcom/viber/voip/sound/RingtoneService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 145
    iget-object v0, p0, Lcom/viber/voip/sound/RingtoneService$3;->this$0:Lcom/viber/voip/sound/RingtoneService;

    #getter for: Lcom/viber/voip/sound/RingtoneService;->durationControlHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/viber/voip/sound/RingtoneService;->access$300(Lcom/viber/voip/sound/RingtoneService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/sound/RingtoneService$3;->val$r:Lcom/viber/voip/sound/IRingtoneService$Ringtone;

    invoke-virtual {v1}, Lcom/viber/voip/sound/IRingtoneService$Ringtone;->getDuration()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v4, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/sound/RingtoneService$3;->val$r:Lcom/viber/voip/sound/IRingtoneService$Ringtone;

    invoke-virtual {v0}, Lcom/viber/voip/sound/IRingtoneService$Ringtone;->getStartPlaybackCallback()Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 148
    iget-object v0, p0, Lcom/viber/voip/sound/RingtoneService$3;->val$r:Lcom/viber/voip/sound/IRingtoneService$Ringtone;

    invoke-virtual {v0}, Lcom/viber/voip/sound/IRingtoneService$Ringtone;->getStartPlaybackCallback()Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 150
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/sound/RingtoneService$3;->this$0:Lcom/viber/voip/sound/RingtoneService;

    #getter for: Lcom/viber/voip/sound/RingtoneService;->soundService:Lcom/viber/voip/sound/AbstractSoundService;
    invoke-static {v0}, Lcom/viber/voip/sound/RingtoneService;->access$100(Lcom/viber/voip/sound/RingtoneService;)Lcom/viber/voip/sound/AbstractSoundService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/sound/AbstractSoundService;->startMediaPlayer()V

    .line 151
    return-void
.end method

.method public onModeStatePreChanged(I)V
    .locals 0
    .parameter

    .prologue
    .line 155
    return-void
.end method
