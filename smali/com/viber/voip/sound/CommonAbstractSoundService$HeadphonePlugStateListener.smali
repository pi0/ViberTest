.class Lcom/viber/voip/sound/CommonAbstractSoundService$HeadphonePlugStateListener;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/viber/voip/sound/CommonAbstractSoundService;


# direct methods
.method constructor <init>(Lcom/viber/voip/sound/CommonAbstractSoundService;)V
    .locals 0
    .parameter

    .prologue
    .line 359
    iput-object p1, p0, Lcom/viber/voip/sound/CommonAbstractSoundService$HeadphonePlugStateListener;->this$0:Lcom/viber/voip/sound/CommonAbstractSoundService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/16 v6, 0x20

    const/4 v0, 0x0

    .line 363
    const-string/jumbo v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 375
    :goto_0
    return-void

    .line 364
    :cond_0
    const-string/jumbo v1, "state"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 365
    const/4 v2, 0x3

    sget-object v3, Lcom/viber/voip/sound/CommonAbstractSoundService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "headphones state broadcast intent recieved. State = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/viber/voip/sound/SoundFactory;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 366
    if-eqz v1, :cond_2

    .line 367
    iget-object v2, p0, Lcom/viber/voip/sound/CommonAbstractSoundService$HeadphonePlugStateListener;->this$0:Lcom/viber/voip/sound/CommonAbstractSoundService;

    invoke-virtual {v2, v6}, Lcom/viber/voip/sound/CommonAbstractSoundService;->setRouteFlags(I)I

    .line 368
    iget-object v2, p0, Lcom/viber/voip/sound/CommonAbstractSoundService$HeadphonePlugStateListener;->this$0:Lcom/viber/voip/sound/CommonAbstractSoundService;

    invoke-virtual {v2}, Lcom/viber/voip/sound/CommonAbstractSoundService;->onHeadsetPlug()V

    .line 374
    :goto_1
    iget-object v2, p0, Lcom/viber/voip/sound/CommonAbstractSoundService$HeadphonePlugStateListener;->this$0:Lcom/viber/voip/sound/CommonAbstractSoundService;

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-virtual {v2, v0}, Lcom/viber/voip/sound/CommonAbstractSoundService;->notifyHeadphonesConnectionChange(Z)V

    goto :goto_0

    .line 370
    :cond_2
    iget-object v2, p0, Lcom/viber/voip/sound/CommonAbstractSoundService$HeadphonePlugStateListener;->this$0:Lcom/viber/voip/sound/CommonAbstractSoundService;

    invoke-virtual {v2, v6}, Lcom/viber/voip/sound/CommonAbstractSoundService;->clearRouteFlags(I)I

    .line 371
    iget-object v2, p0, Lcom/viber/voip/sound/CommonAbstractSoundService$HeadphonePlugStateListener;->this$0:Lcom/viber/voip/sound/CommonAbstractSoundService;

    invoke-virtual {v2}, Lcom/viber/voip/sound/CommonAbstractSoundService;->onHeadsetUnplug()V

    goto :goto_1
.end method
