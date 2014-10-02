.class Lcom/viber/voip/sound/bluetooth/BTControl$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/viber/voip/sound/bluetooth/BTControl;


# direct methods
.method constructor <init>(Lcom/viber/voip/sound/bluetooth/BTControl;)V
    .locals 0
    .parameter

    .prologue
    .line 246
    iput-object p1, p0, Lcom/viber/voip/sound/bluetooth/BTControl$3;->this$0:Lcom/viber/voip/sound/bluetooth/BTControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/viber/voip/sound/bluetooth/BTControl$3;->this$0:Lcom/viber/voip/sound/bluetooth/BTControl;

    #calls: Lcom/viber/voip/sound/bluetooth/BTControl;->isAdapterEnabled()Z
    invoke-static {v0}, Lcom/viber/voip/sound/bluetooth/BTControl;->access$300(Lcom/viber/voip/sound/bluetooth/BTControl;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 257
    :cond_0
    :goto_0
    return-void

    .line 252
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/sound/bluetooth/BTControl$3;->this$0:Lcom/viber/voip/sound/bluetooth/BTControl;

    #getter for: Lcom/viber/voip/sound/bluetooth/BTControl;->wasDisconnected:Z
    invoke-static {v0}, Lcom/viber/voip/sound/bluetooth/BTControl;->access$400(Lcom/viber/voip/sound/bluetooth/BTControl;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/sound/bluetooth/BTControl$3;->this$0:Lcom/viber/voip/sound/bluetooth/BTControl;

    invoke-virtual {v0}, Lcom/viber/voip/sound/bluetooth/BTControl;->isHeadsetConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 254
    const-string/jumbo v0, "{Bt} handling button"

    #calls: Lcom/viber/voip/sound/bluetooth/BTControl;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/viber/voip/sound/bluetooth/BTControl;->access$100(Ljava/lang/String;)V

    .line 255
    iget-object v0, p0, Lcom/viber/voip/sound/bluetooth/BTControl$3;->this$0:Lcom/viber/voip/sound/bluetooth/BTControl;

    #calls: Lcom/viber/voip/sound/bluetooth/BTControl;->notifyButtonClicked()V
    invoke-static {v0}, Lcom/viber/voip/sound/bluetooth/BTControl;->access$500(Lcom/viber/voip/sound/bluetooth/BTControl;)V

    goto :goto_0
.end method
