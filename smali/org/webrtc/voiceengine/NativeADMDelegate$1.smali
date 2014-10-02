.class Lorg/webrtc/voiceengine/NativeADMDelegate$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lorg/webrtc/voiceengine/NativeADMDelegate;

.field final synthetic val$soundService:Lcom/viber/voip/sound/ISoundService;


# direct methods
.method constructor <init>(Lorg/webrtc/voiceengine/NativeADMDelegate;Lcom/viber/voip/sound/ISoundService;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 123
    iput-object p1, p0, Lorg/webrtc/voiceengine/NativeADMDelegate$1;->this$0:Lorg/webrtc/voiceengine/NativeADMDelegate;

    iput-object p2, p0, Lorg/webrtc/voiceengine/NativeADMDelegate$1;->val$soundService:Lcom/viber/voip/sound/ISoundService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lorg/webrtc/voiceengine/NativeADMDelegate$1;->val$soundService:Lcom/viber/voip/sound/ISoundService;

    invoke-interface {v0}, Lcom/viber/voip/sound/ISoundService;->getBluetoothCtl()Lcom/viber/voip/sound/bluetooth/BTControl;

    move-result-object v0

    .line 127
    invoke-static {}, Lcom/viber/voip/sound/bluetooth/BTControl;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 128
    invoke-virtual {v0}, Lcom/viber/voip/sound/bluetooth/BTControl;->enableBluetoothRoute()V

    .line 129
    :cond_0
    return-void
.end method
