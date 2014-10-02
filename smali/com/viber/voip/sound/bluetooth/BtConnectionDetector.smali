.class public interface abstract Lcom/viber/voip/sound/bluetooth/BtConnectionDetector;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract anyHeadsetConnected()Z
.end method

.method public abstract close()V
.end method

.method public abstract getConnectedHeadsets()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation
.end method
