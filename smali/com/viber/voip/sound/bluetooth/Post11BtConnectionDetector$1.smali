.class Lcom/viber/voip/sound/bluetooth/Post11BtConnectionDetector$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# instance fields
.field final synthetic this$0:Lcom/viber/voip/sound/bluetooth/Post11BtConnectionDetector;


# direct methods
.method constructor <init>(Lcom/viber/voip/sound/bluetooth/Post11BtConnectionDetector;)V
    .locals 0
    .parameter

    .prologue
    .line 21
    iput-object p1, p0, Lcom/viber/voip/sound/bluetooth/Post11BtConnectionDetector$1;->this$0:Lcom/viber/voip/sound/bluetooth/Post11BtConnectionDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 31
    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    .line 32
    iget-object v0, p0, Lcom/viber/voip/sound/bluetooth/Post11BtConnectionDetector$1;->this$0:Lcom/viber/voip/sound/bluetooth/Post11BtConnectionDetector;

    check-cast p2, Landroid/bluetooth/BluetoothHeadset;

    iput-object p2, v0, Lcom/viber/voip/sound/bluetooth/Post11BtConnectionDetector;->headset:Landroid/bluetooth/BluetoothHeadset;

    .line 34
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 2
    .parameter

    .prologue
    .line 25
    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    .line 26
    iget-object v0, p0, Lcom/viber/voip/sound/bluetooth/Post11BtConnectionDetector$1;->this$0:Lcom/viber/voip/sound/bluetooth/Post11BtConnectionDetector;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/viber/voip/sound/bluetooth/Post11BtConnectionDetector;->headset:Landroid/bluetooth/BluetoothHeadset;

    .line 28
    :cond_0
    return-void
.end method
