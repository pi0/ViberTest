.class Lcom/viber/voip/sound/CommonAbstractSoundService$AudioSettingsImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/sound/ISoundService$IAudioSettings;


# instance fields
.field private _aecMode:Ljava/util/concurrent/atomic/AtomicInteger;

.field private _agcMode:Ljava/util/concurrent/atomic/AtomicInteger;

.field private _listeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/viber/voip/sound/ISoundService$IAudioSettings$IAudioSettingsListener;",
            ">;"
        }
    .end annotation
.end field

.field private _nsMode:Ljava/util/concurrent/atomic/AtomicInteger;

.field private _rxAgcMode:Ljava/util/concurrent/atomic/AtomicInteger;

.field private _rxNsMode:Ljava/util/concurrent/atomic/AtomicInteger;

.field private _vadMode:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic this$0:Lcom/viber/voip/sound/CommonAbstractSoundService;


# direct methods
.method constructor <init>(Lcom/viber/voip/sound/CommonAbstractSoundService;)V
    .locals 1
    .parameter

    .prologue
    .line 185
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/viber/voip/sound/CommonAbstractSoundService$AudioSettingsImpl;-><init>(Lcom/viber/voip/sound/CommonAbstractSoundService;Lcom/viber/voip/sound/ISoundService$IAudioSettings$IAudioSettingsListener;)V

    .line 186
    return-void
.end method

.method constructor <init>(Lcom/viber/voip/sound/CommonAbstractSoundService;Lcom/viber/voip/sound/ISoundService$IAudioSettings$IAudioSettingsListener;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, -0x1

    .line 187
    iput-object p1, p0, Lcom/viber/voip/sound/CommonAbstractSoundService$AudioSettingsImpl;->this$0:Lcom/viber/voip/sound/CommonAbstractSoundService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/viber/voip/sound/CommonAbstractSoundService$AudioSettingsImpl;->_vadMode:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 178
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/viber/voip/sound/CommonAbstractSoundService$AudioSettingsImpl;->_rxNsMode:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 179
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/viber/voip/sound/CommonAbstractSoundService$AudioSettingsImpl;->_rxAgcMode:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 180
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/viber/voip/sound/CommonAbstractSoundService$AudioSettingsImpl;->_nsMode:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 181
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/viber/voip/sound/CommonAbstractSoundService$AudioSettingsImpl;->_agcMode:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 182
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/viber/voip/sound/CommonAbstractSoundService$AudioSettingsImpl;->_aecMode:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 183
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/sound/CommonAbstractSoundService$AudioSettingsImpl;->_listeners:Ljava/util/Set;

    .line 188
    invoke-virtual {p0, p2}, Lcom/viber/voip/sound/CommonAbstractSoundService$AudioSettingsImpl;->addListener(Lcom/viber/voip/sound/ISoundService$IAudioSettings$IAudioSettingsListener;)V

    .line 189
    return-void
.end method

.method private _getListeners()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/viber/voip/sound/ISoundService$IAudioSettings$IAudioSettingsListener;",
            ">;"
        }
    .end annotation

    .prologue
    .line 260
    iget-object v1, p0, Lcom/viber/voip/sound/CommonAbstractSoundService$AudioSettingsImpl;->_listeners:Ljava/util/Set;

    monitor-enter v1

    .line 261
    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v2, p0, Lcom/viber/voip/sound/CommonAbstractSoundService$AudioSettingsImpl;->_listeners:Ljava/util/Set;

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 262
    monitor-exit v1

    .line 263
    return-object v0

    .line 262
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public addListener(Lcom/viber/voip/sound/ISoundService$IAudioSettings$IAudioSettingsListener;)V
    .locals 2
    .parameter

    .prologue
    .line 267
    if-nez p1, :cond_0

    .line 271
    :goto_0
    return-void

    .line 268
    :cond_0
    iget-object v1, p0, Lcom/viber/voip/sound/CommonAbstractSoundService$AudioSettingsImpl;->_listeners:Ljava/util/Set;

    monitor-enter v1

    .line 269
    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/sound/CommonAbstractSoundService$AudioSettingsImpl;->_listeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 270
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getAECMode()I
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/viber/voip/sound/CommonAbstractSoundService$AudioSettingsImpl;->_aecMode:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public getAGCMode()I
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/viber/voip/sound/CommonAbstractSoundService$AudioSettingsImpl;->_agcMode:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public getNSMode()I
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/viber/voip/sound/CommonAbstractSoundService$AudioSettingsImpl;->_nsMode:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public getRxAGCMode()I
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/viber/voip/sound/CommonAbstractSoundService$AudioSettingsImpl;->_rxAgcMode:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public getRxNSMode()I
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/viber/voip/sound/CommonAbstractSoundService$AudioSettingsImpl;->_rxNsMode:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public getVADMode()I
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/viber/voip/sound/CommonAbstractSoundService$AudioSettingsImpl;->_vadMode:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public removeListener(Lcom/viber/voip/sound/ISoundService$IAudioSettings$IAudioSettingsListener;)V
    .locals 2
    .parameter

    .prologue
    .line 274
    if-nez p1, :cond_0

    .line 278
    :goto_0
    return-void

    .line 275
    :cond_0
    iget-object v1, p0, Lcom/viber/voip/sound/CommonAbstractSoundService$AudioSettingsImpl;->_listeners:Ljava/util/Set;

    monitor-enter v1

    .line 276
    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/sound/CommonAbstractSoundService$AudioSettingsImpl;->_listeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 277
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setAECMode(I)I
    .locals 3
    .parameter

    .prologue
    .line 243
    iget-object v0, p0, Lcom/viber/voip/sound/CommonAbstractSoundService$AudioSettingsImpl;->_aecMode:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v1

    .line 244
    invoke-direct {p0}, Lcom/viber/voip/sound/CommonAbstractSoundService$AudioSettingsImpl;->_getListeners()Ljava/util/Set;

    move-result-object v0

    .line 245
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/sound/ISoundService$IAudioSettings$IAudioSettingsListener;

    .line 246
    invoke-interface {v0, v1, p1}, Lcom/viber/voip/sound/ISoundService$IAudioSettings$IAudioSettingsListener;->onAECChange(II)V

    goto :goto_0

    .line 248
    :cond_0
    return v1
.end method

.method public setAGCMode(I)I
    .locals 3
    .parameter

    .prologue
    .line 233
    iget-object v0, p0, Lcom/viber/voip/sound/CommonAbstractSoundService$AudioSettingsImpl;->_agcMode:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v1

    .line 234
    invoke-direct {p0}, Lcom/viber/voip/sound/CommonAbstractSoundService$AudioSettingsImpl;->_getListeners()Ljava/util/Set;

    move-result-object v0

    .line 235
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/sound/ISoundService$IAudioSettings$IAudioSettingsListener;

    .line 236
    invoke-interface {v0, v1, p1}, Lcom/viber/voip/sound/ISoundService$IAudioSettings$IAudioSettingsListener;->onAGCChange(II)V

    goto :goto_0

    .line 238
    :cond_0
    return v1
.end method

.method public setNSMode(I)I
    .locals 3
    .parameter

    .prologue
    .line 223
    iget-object v0, p0, Lcom/viber/voip/sound/CommonAbstractSoundService$AudioSettingsImpl;->_nsMode:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v1

    .line 224
    invoke-direct {p0}, Lcom/viber/voip/sound/CommonAbstractSoundService$AudioSettingsImpl;->_getListeners()Ljava/util/Set;

    move-result-object v0

    .line 225
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/sound/ISoundService$IAudioSettings$IAudioSettingsListener;

    .line 226
    invoke-interface {v0, v1, p1}, Lcom/viber/voip/sound/ISoundService$IAudioSettings$IAudioSettingsListener;->onNSChange(II)V

    goto :goto_0

    .line 228
    :cond_0
    return v1
.end method

.method public setRxAGCMode(I)I
    .locals 3
    .parameter

    .prologue
    .line 213
    iget-object v0, p0, Lcom/viber/voip/sound/CommonAbstractSoundService$AudioSettingsImpl;->_rxAgcMode:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v1

    .line 214
    invoke-direct {p0}, Lcom/viber/voip/sound/CommonAbstractSoundService$AudioSettingsImpl;->_getListeners()Ljava/util/Set;

    move-result-object v0

    .line 215
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/sound/ISoundService$IAudioSettings$IAudioSettingsListener;

    .line 216
    invoke-interface {v0, v1, p1}, Lcom/viber/voip/sound/ISoundService$IAudioSettings$IAudioSettingsListener;->onRxAGCChange(II)V

    goto :goto_0

    .line 218
    :cond_0
    return v1
.end method

.method public setRxNSMode(I)I
    .locals 3
    .parameter

    .prologue
    .line 203
    iget-object v0, p0, Lcom/viber/voip/sound/CommonAbstractSoundService$AudioSettingsImpl;->_rxNsMode:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v1

    .line 204
    invoke-direct {p0}, Lcom/viber/voip/sound/CommonAbstractSoundService$AudioSettingsImpl;->_getListeners()Ljava/util/Set;

    move-result-object v0

    .line 205
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/sound/ISoundService$IAudioSettings$IAudioSettingsListener;

    .line 206
    invoke-interface {v0, v1, p1}, Lcom/viber/voip/sound/ISoundService$IAudioSettings$IAudioSettingsListener;->onRxNSChange(II)V

    goto :goto_0

    .line 208
    :cond_0
    return v1
.end method

.method public setVADMode(I)I
    .locals 3
    .parameter

    .prologue
    .line 193
    iget-object v0, p0, Lcom/viber/voip/sound/CommonAbstractSoundService$AudioSettingsImpl;->_vadMode:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v1

    .line 194
    invoke-direct {p0}, Lcom/viber/voip/sound/CommonAbstractSoundService$AudioSettingsImpl;->_getListeners()Ljava/util/Set;

    move-result-object v0

    .line 195
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/sound/ISoundService$IAudioSettings$IAudioSettingsListener;

    .line 196
    invoke-interface {v0, v1, p1}, Lcom/viber/voip/sound/ISoundService$IAudioSettings$IAudioSettingsListener;->onVADChange(II)V

    goto :goto_0

    .line 198
    :cond_0
    return v1
.end method
