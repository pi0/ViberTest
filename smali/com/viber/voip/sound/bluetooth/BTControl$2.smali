.class Lcom/viber/voip/sound/bluetooth/BTControl$2;
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
    .line 231
    iput-object p1, p0, Lcom/viber/voip/sound/bluetooth/BTControl$2;->this$0:Lcom/viber/voip/sound/bluetooth/BTControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/viber/voip/sound/bluetooth/BTControl$2;->this$0:Lcom/viber/voip/sound/bluetooth/BTControl;

    #getter for: Lcom/viber/voip/sound/bluetooth/BTControl;->mAudioManagerWrapper:Lcom/viber/voip/sound/bluetooth/AudioManagerWrapper;
    invoke-static {v0}, Lcom/viber/voip/sound/bluetooth/BTControl;->access$200(Lcom/viber/voip/sound/bluetooth/BTControl;)Lcom/viber/voip/sound/bluetooth/AudioManagerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/sound/bluetooth/AudioManagerWrapper;->startBluetoothSco()V

    .line 235
    return-void
.end method
