.class Lcom/viber/voip/sound/bluetooth/BTControl$8;
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
    .line 346
    iput-object p1, p0, Lcom/viber/voip/sound/bluetooth/BTControl$8;->this$0:Lcom/viber/voip/sound/bluetooth/BTControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 349
    iget-object v0, p0, Lcom/viber/voip/sound/bluetooth/BTControl$8;->this$0:Lcom/viber/voip/sound/bluetooth/BTControl;

    #getter for: Lcom/viber/voip/sound/bluetooth/BTControl;->mListeners:Ljava/util/Set;
    invoke-static {v0}, Lcom/viber/voip/sound/bluetooth/BTControl;->access$700(Lcom/viber/voip/sound/bluetooth/BTControl;)Ljava/util/Set;

    move-result-object v1

    monitor-enter v1

    .line 350
    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/sound/bluetooth/BTControl$8;->this$0:Lcom/viber/voip/sound/bluetooth/BTControl;

    #getter for: Lcom/viber/voip/sound/bluetooth/BTControl;->mListeners:Ljava/util/Set;
    invoke-static {v0}, Lcom/viber/voip/sound/bluetooth/BTControl;->access$700(Lcom/viber/voip/sound/bluetooth/BTControl;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/sound/bluetooth/BTControl$IBluetoothDeviceListener;

    .line 351
    invoke-interface {v0}, Lcom/viber/voip/sound/bluetooth/BTControl$IBluetoothDeviceListener;->onAnswerButtonClick()V

    goto :goto_0

    .line 353
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 354
    return-void
.end method
