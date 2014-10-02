.class Lcom/viber/voip/sound/bluetooth/BTControl$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/viber/voip/sound/bluetooth/BTControl;


# direct methods
.method constructor <init>(Lcom/viber/voip/sound/bluetooth/BTControl;)V
    .locals 0
    .parameter

    .prologue
    .line 197
    iput-object p1, p0, Lcom/viber/voip/sound/bluetooth/BTControl$1;->this$0:Lcom/viber/voip/sound/bluetooth/BTControl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 200
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 202
    const-string/jumbo v1, "android.media.SCO_AUDIO_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "android.media.ACTION_SCO_AUDIO_STATE_UPDATED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/sound/bluetooth/BTControl$1;->this$0:Lcom/viber/voip/sound/bluetooth/BTControl;

    #calls: Lcom/viber/voip/sound/bluetooth/BTControl;->getScoStateFromIntent(Landroid/content/Intent;)I
    invoke-static {v0, p2}, Lcom/viber/voip/sound/bluetooth/BTControl;->access$000(Lcom/viber/voip/sound/bluetooth/BTControl;Landroid/content/Intent;)I

    move-result v0

    .line 204
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "{Bt} {SCO_AUDIO_STATE_CHANGED} scoAudioState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/viber/voip/sound/bluetooth/BTControl;->getStateString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/viber/voip/sound/bluetooth/BTControl;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/viber/voip/sound/bluetooth/BTControl;->access$100(Ljava/lang/String;)V

    .line 205
    iget-object v1, p0, Lcom/viber/voip/sound/bluetooth/BTControl$1;->this$0:Lcom/viber/voip/sound/bluetooth/BTControl;

    invoke-virtual {v1, v0}, Lcom/viber/voip/sound/bluetooth/BTControl;->handleScoStateChange(I)V

    .line 208
    :cond_1
    return-void
.end method
