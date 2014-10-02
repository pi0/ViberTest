.class public Lcom/viber/voip/sound/bluetooth/AudioManagerWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mInstance:Landroid/media/AudioManager;


# direct methods
.method public constructor <init>(Landroid/media/AudioManager;)V
    .locals 0
    .parameter

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/viber/voip/sound/bluetooth/AudioManagerWrapper;->mInstance:Landroid/media/AudioManager;

    .line 10
    return-void
.end method


# virtual methods
.method public getAudioManager()Landroid/media/AudioManager;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/viber/voip/sound/bluetooth/AudioManagerWrapper;->mInstance:Landroid/media/AudioManager;

    return-object v0
.end method

.method public isBluetoothScoAvailableOffCall()Z
    .locals 1

    .prologue
    .line 15
    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/sound/bluetooth/AudioManagerWrapper;->mInstance:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothScoAvailableOffCall()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 17
    :goto_0
    return v0

    .line 16
    :catch_0
    move-exception v0

    .line 17
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startBluetoothSco()V
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/viber/voip/sound/bluetooth/AudioManagerWrapper;->isBluetoothScoAvailableOffCall()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23
    iget-object v0, p0, Lcom/viber/voip/sound/bluetooth/AudioManagerWrapper;->mInstance:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->startBluetoothSco()V

    .line 24
    :cond_0
    return-void
.end method

.method public stopBluetoothSco()V
    .locals 1

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/viber/voip/sound/bluetooth/AudioManagerWrapper;->isBluetoothScoAvailableOffCall()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    iget-object v0, p0, Lcom/viber/voip/sound/bluetooth/AudioManagerWrapper;->mInstance:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->stopBluetoothSco()V

    .line 29
    :cond_0
    return-void
.end method
