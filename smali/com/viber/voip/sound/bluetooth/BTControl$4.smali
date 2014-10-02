.class Lcom/viber/voip/sound/bluetooth/BTControl$4;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/viber/voip/sound/bluetooth/BTControl;


# direct methods
.method constructor <init>(Lcom/viber/voip/sound/bluetooth/BTControl;)V
    .locals 0
    .parameter

    .prologue
    .line 268
    iput-object p1, p0, Lcom/viber/voip/sound/bluetooth/BTControl$4;->this$0:Lcom/viber/voip/sound/bluetooth/BTControl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v1, -0x1

    .line 271
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 273
    const-string/jumbo v0, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 274
    if-nez v0, :cond_0

    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{Bt} null device for intent "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", something wrong"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    #calls: Lcom/viber/voip/sound/bluetooth/BTControl;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/viber/voip/sound/bluetooth/BTControl;->access$100(Ljava/lang/String;)V

    .line 290
    :goto_0
    return-void

    .line 280
    :cond_0
    const-string/jumbo v3, "android.bluetooth.headset.action.STATE_CHANGED"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 281
    const-string/jumbo v2, "android.bluetooth.headset.extra.STATE"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 282
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "{Bt} {ACTION_HEADSET_STATE_CHANGED} device="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ", state="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/viber/voip/sound/bluetooth/BTControl;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/viber/voip/sound/bluetooth/BTControl;->access$100(Ljava/lang/String;)V

    move v1, v2

    .line 289
    :cond_1
    :goto_2
    iget-object v2, p0, Lcom/viber/voip/sound/bluetooth/BTControl$4;->this$0:Lcom/viber/voip/sound/bluetooth/BTControl;

    #calls: Lcom/viber/voip/sound/bluetooth/BTControl;->handleConnectionStateChange(Landroid/bluetooth/BluetoothDevice;I)V
    invoke-static {v2, v0, v1}, Lcom/viber/voip/sound/bluetooth/BTControl;->access$600(Lcom/viber/voip/sound/bluetooth/BTControl;Landroid/bluetooth/BluetoothDevice;I)V

    goto :goto_0

    .line 282
    :cond_2
    const-string/jumbo v1, "null"

    goto :goto_1

    .line 284
    :cond_3
    const-string/jumbo v3, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 285
    const-string/jumbo v1, "android.bluetooth.profile.extra.STATE"

    const/16 v2, 0xa

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 286
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "{Bt} {ACTION_CONNECTION_STATE_CHANGED} device="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    :goto_3
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ", state="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/viber/voip/sound/bluetooth/BTControl;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/viber/voip/sound/bluetooth/BTControl;->access$100(Ljava/lang/String;)V

    move v1, v2

    goto :goto_2

    :cond_4
    const-string/jumbo v1, "null"

    goto :goto_3
.end method
