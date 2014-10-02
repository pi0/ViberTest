.class Lcom/viber/voip/sound/MMControl$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/viber/voip/sound/MMControl;


# direct methods
.method constructor <init>(Lcom/viber/voip/sound/MMControl;)V
    .locals 0
    .parameter

    .prologue
    .line 123
    iput-object p1, p0, Lcom/viber/voip/sound/MMControl$1;->this$0:Lcom/viber/voip/sound/MMControl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 126
    if-nez p2, :cond_0

    .line 144
    :goto_0
    return-void

    .line 127
    :cond_0
    const/4 v0, 0x3

    sget-object v1, Lcom/viber/voip/sound/MMControl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "got broadcast in dummyReceiver: ordered? "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/viber/voip/sound/MMControl$1;->isOrderedBroadcast()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "; sticky? "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/viber/voip/sound/MMControl$1;->isInitialStickyBroadcast()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "; action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/viber/voip/sound/SoundFactory;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 129
    const-string/jumbo v0, "com.android.music.playbackcomplete"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 130
    iget-object v0, p0, Lcom/viber/voip/sound/MMControl$1;->this$0:Lcom/viber/voip/sound/MMControl;

    #setter for: Lcom/viber/voip/sound/MMControl;->wasPlaying_broadcasted:Z
    invoke-static {v0, v4}, Lcom/viber/voip/sound/MMControl;->access$002(Lcom/viber/voip/sound/MMControl;Z)Z

    .line 131
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/sound/MMControl$1;->this$0:Lcom/viber/voip/sound/MMControl;

    #setter for: Lcom/viber/voip/sound/MMControl;->guessControlIsBroadcastOnly:Z
    invoke-static {v0, v5}, Lcom/viber/voip/sound/MMControl;->access$102(Lcom/viber/voip/sound/MMControl;Z)Z

    .line 133
    const-string/jumbo v0, "playing"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 134
    iget-object v0, p0, Lcom/viber/voip/sound/MMControl$1;->this$0:Lcom/viber/voip/sound/MMControl;

    const-string/jumbo v1, "playing"

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    #setter for: Lcom/viber/voip/sound/MMControl;->wasPlaying_broadcasted:Z
    invoke-static {v0, v1}, Lcom/viber/voip/sound/MMControl;->access$002(Lcom/viber/voip/sound/MMControl;Z)Z

    goto :goto_0

    .line 135
    :cond_2
    const-string/jumbo v0, "musicPlayer.service.updatePlayInfo"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 136
    iget-object v0, p0, Lcom/viber/voip/sound/MMControl$1;->this$0:Lcom/viber/voip/sound/MMControl;

    iget-object v1, p0, Lcom/viber/voip/sound/MMControl$1;->this$0:Lcom/viber/voip/sound/MMControl;

    #calls: Lcom/viber/voip/sound/MMControl;->remote_isPlaying(Z)Z
    invoke-static {v1, v5}, Lcom/viber/voip/sound/MMControl;->access$200(Lcom/viber/voip/sound/MMControl;Z)Z

    move-result v1

    #setter for: Lcom/viber/voip/sound/MMControl;->wasPlaying_broadcasted:Z
    invoke-static {v0, v1}, Lcom/viber/voip/sound/MMControl;->access$002(Lcom/viber/voip/sound/MMControl;Z)Z

    goto/16 :goto_0

    .line 137
    :cond_3
    const-string/jumbo v0, "com.android.music.playstatechanged"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 138
    iget-object v0, p0, Lcom/viber/voip/sound/MMControl$1;->this$0:Lcom/viber/voip/sound/MMControl;

    iget-object v1, p0, Lcom/viber/voip/sound/MMControl$1;->this$0:Lcom/viber/voip/sound/MMControl;

    #calls: Lcom/viber/voip/sound/MMControl;->remote_isPlaying(Z)Z
    invoke-static {v1, v4}, Lcom/viber/voip/sound/MMControl;->access$200(Lcom/viber/voip/sound/MMControl;Z)Z

    move-result v1

    #setter for: Lcom/viber/voip/sound/MMControl;->wasPlaying_broadcasted:Z
    invoke-static {v0, v1}, Lcom/viber/voip/sound/MMControl;->access$002(Lcom/viber/voip/sound/MMControl;Z)Z

    goto/16 :goto_0

    .line 139
    :cond_4
    const-string/jumbo v0, "com.htc.music.playstatechanged"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 140
    iget-object v0, p0, Lcom/viber/voip/sound/MMControl$1;->this$0:Lcom/viber/voip/sound/MMControl;

    iget-object v1, p0, Lcom/viber/voip/sound/MMControl$1;->this$0:Lcom/viber/voip/sound/MMControl;

    #calls: Lcom/viber/voip/sound/MMControl;->remote_isPlaying(Z)Z
    invoke-static {v1, v4}, Lcom/viber/voip/sound/MMControl;->access$200(Lcom/viber/voip/sound/MMControl;Z)Z

    move-result v1

    #setter for: Lcom/viber/voip/sound/MMControl;->wasPlaying_broadcasted:Z
    invoke-static {v0, v1}, Lcom/viber/voip/sound/MMControl;->access$002(Lcom/viber/voip/sound/MMControl;Z)Z

    goto/16 :goto_0

    .line 142
    :cond_5
    iget-object v0, p0, Lcom/viber/voip/sound/MMControl$1;->this$0:Lcom/viber/voip/sound/MMControl;

    const-string/jumbo v1, "pause"

    const-string/jumbo v2, "command"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    #setter for: Lcom/viber/voip/sound/MMControl;->wasPlaying_broadcasted:Z
    invoke-static {v0, v1}, Lcom/viber/voip/sound/MMControl;->access$002(Lcom/viber/voip/sound/MMControl;Z)Z

    goto/16 :goto_0
.end method
