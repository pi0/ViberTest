.class public Lcom/viber/voip/sound/bluetooth/Pre10BtConnectionDetector;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/sound/bluetooth/BtConnectionDetector;


# static fields
.field private static final BLUETOOTH_HEADSET_CLASS:Ljava/lang/String; = "android.bluetooth.BluetoothHeadset"

.field private static final CLOSE_METHOD_NAME:Ljava/lang/String; = "close"

.field private static final GET_CURRENT_HEADSET_METHOD_NAME:Ljava/lang/String; = "getCurrentHeadset"


# instance fields
.field bluetoothHeadset:Ljava/lang/Object;

.field closeMethod:Ljava/lang/reflect/Method;

.field getCurrentHeadsetMethod:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object v0, p0, Lcom/viber/voip/sound/bluetooth/Pre10BtConnectionDetector;->bluetoothHeadset:Ljava/lang/Object;

    .line 19
    iput-object v0, p0, Lcom/viber/voip/sound/bluetooth/Pre10BtConnectionDetector;->getCurrentHeadsetMethod:Ljava/lang/reflect/Method;

    .line 20
    iput-object v0, p0, Lcom/viber/voip/sound/bluetooth/Pre10BtConnectionDetector;->closeMethod:Ljava/lang/reflect/Method;

    .line 25
    :try_start_0
    const-string/jumbo v0, "android.bluetooth.BluetoothHeadset"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 27
    invoke-virtual {v0}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 28
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/viber/voip/sound/bluetooth/Pre10BtConnectionDetector;->bluetoothHeadset:Ljava/lang/Object;

    .line 30
    const-string/jumbo v1, "getCurrentHeadset"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/viber/voip/sound/bluetooth/Pre10BtConnectionDetector;->getCurrentHeadsetMethod:Ljava/lang/reflect/Method;

    .line 32
    const-string/jumbo v1, "close"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/sound/bluetooth/Pre10BtConnectionDetector;->closeMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    :goto_0
    return-void

    .line 44
    :catch_0
    move-exception v0

    goto :goto_0

    .line 42
    :catch_1
    move-exception v0

    goto :goto_0

    .line 40
    :catch_2
    move-exception v0

    goto :goto_0

    .line 38
    :catch_3
    move-exception v0

    goto :goto_0

    .line 36
    :catch_4
    move-exception v0

    goto :goto_0

    .line 34
    :catch_5
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public anyHeadsetConnected()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 50
    .line 52
    :try_start_0
    iget-object v1, p0, Lcom/viber/voip/sound/bluetooth/Pre10BtConnectionDetector;->bluetoothHeadset:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/viber/voip/sound/bluetooth/Pre10BtConnectionDetector;->getCurrentHeadsetMethod:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 53
    iget-object v1, p0, Lcom/viber/voip/sound/bluetooth/Pre10BtConnectionDetector;->getCurrentHeadsetMethod:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/viber/voip/sound/bluetooth/Pre10BtConnectionDetector;->bluetoothHeadset:Ljava/lang/Object;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 62
    :cond_0
    :goto_0
    return v0

    .line 59
    :catch_0
    move-exception v1

    goto :goto_0

    .line 57
    :catch_1
    move-exception v1

    goto :goto_0

    .line 55
    :catch_2
    move-exception v1

    goto :goto_0
.end method

.method public close()V
    .locals 3

    .prologue
    .line 88
    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/sound/bluetooth/Pre10BtConnectionDetector;->bluetoothHeadset:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/sound/bluetooth/Pre10BtConnectionDetector;->closeMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/viber/voip/sound/bluetooth/Pre10BtConnectionDetector;->closeMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/viber/voip/sound/bluetooth/Pre10BtConnectionDetector;->bluetoothHeadset:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 94
    :catch_0
    move-exception v0

    goto :goto_0

    .line 92
    :catch_1
    move-exception v0

    goto :goto_0

    .line 90
    :catch_2
    move-exception v0

    goto :goto_0
.end method

.method public getConnectedHeadsets()Ljava/util/List;
    .locals 4
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
    .line 67
    new-instance v1, Ljava/util/ArrayList;

    const/4 v0, 0x2

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 70
    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/sound/bluetooth/Pre10BtConnectionDetector;->bluetoothHeadset:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/sound/bluetooth/Pre10BtConnectionDetector;->getCurrentHeadsetMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/viber/voip/sound/bluetooth/Pre10BtConnectionDetector;->getCurrentHeadsetMethod:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/viber/voip/sound/bluetooth/Pre10BtConnectionDetector;->bluetoothHeadset:Ljava/lang/Object;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 72
    if-eqz v0, :cond_0

    .line 73
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :cond_0
    :goto_0
    return-object v1

    .line 79
    :catch_0
    move-exception v0

    goto :goto_0

    .line 77
    :catch_1
    move-exception v0

    goto :goto_0

    .line 75
    :catch_2
    move-exception v0

    goto :goto_0
.end method
