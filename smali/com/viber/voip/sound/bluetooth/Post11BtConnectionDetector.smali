.class public Lcom/viber/voip/sound/bluetooth/Post11BtConnectionDetector;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/sound/bluetooth/BtConnectionDetector;


# instance fields
.field headset:Landroid/bluetooth/BluetoothHeadset;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/viber/voip/sound/bluetooth/Post11BtConnectionDetector;->headset:Landroid/bluetooth/BluetoothHeadset;

    .line 17
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 18
    if-nez v0, :cond_0

    .line 36
    :goto_0
    return-void

    .line 21
    :cond_0
    new-instance v1, Lcom/viber/voip/sound/bluetooth/Post11BtConnectionDetector$1;

    invoke-direct {v1, p0}, Lcom/viber/voip/sound/bluetooth/Post11BtConnectionDetector$1;-><init>(Lcom/viber/voip/sound/bluetooth/Post11BtConnectionDetector;)V

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    goto :goto_0
.end method


# virtual methods
.method public anyHeadsetConnected()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 39
    iget-object v1, p0, Lcom/viber/voip/sound/bluetooth/Post11BtConnectionDetector;->headset:Landroid/bluetooth/BluetoothHeadset;

    if-nez v1, :cond_1

    .line 44
    :cond_0
    :goto_0
    return v0

    .line 43
    :cond_1
    iget-object v1, p0, Lcom/viber/voip/sound/bluetooth/Post11BtConnectionDetector;->headset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothHeadset;->getConnectedDevices()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 44
    if-lez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public close()V
    .locals 3

    .prologue
    .line 57
    iget-object v0, p0, Lcom/viber/voip/sound/bluetooth/Post11BtConnectionDetector;->headset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_0

    .line 58
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 59
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/viber/voip/sound/bluetooth/Post11BtConnectionDetector;->headset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v1, :cond_0

    .line 60
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/viber/voip/sound/bluetooth/Post11BtConnectionDetector;->headset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 63
    :cond_0
    return-void
.end method

.method public getConnectedHeadsets()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 49
    iget-object v0, p0, Lcom/viber/voip/sound/bluetooth/Post11BtConnectionDetector;->headset:Landroid/bluetooth/BluetoothHeadset;

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 53
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/viber/voip/sound/bluetooth/Post11BtConnectionDetector;->headset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHeadset;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method
