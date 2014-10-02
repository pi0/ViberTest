.class Lorg/webrtc/videoengine/EngineDelegate$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lorg/webrtc/videoengine/EngineDelegate;

.field final synthetic val$nativeEngineAddr:J


# direct methods
.method constructor <init>(Lorg/webrtc/videoengine/EngineDelegate;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lorg/webrtc/videoengine/EngineDelegate$1;->this$0:Lorg/webrtc/videoengine/EngineDelegate;

    iput-wide p2, p0, Lorg/webrtc/videoengine/EngineDelegate$1;->val$nativeEngineAddr:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 63
    iget-wide v1, p0, Lorg/webrtc/videoengine/EngineDelegate$1;->val$nativeEngineAddr:J

    sget-boolean v0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->USE_LIVE_CAMERA_PREVIEW:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {v1, v2, v0}, Lcom/viber/voip/sound/AbstractSoundService;->addLocalVideoRenderer(JLjava/lang/Object;)I

    .line 68
    invoke-static {}, Lorg/webrtc/videoengine/EngineDelegate;->access$000()Ljava/util/Set;

    move-result-object v1

    monitor-enter v1

    .line 69
    :try_start_0
    invoke-static {}, Lorg/webrtc/videoengine/EngineDelegate;->access$000()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/webrtc/videoengine/EngineDelegate$VideoEngineEventSubscriber;

    .line 70
    invoke-interface {v0}, Lorg/webrtc/videoengine/EngineDelegate$VideoEngineEventSubscriber;->onStartSendVideo()V

    goto :goto_1

    .line 72
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 63
    :cond_0
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-static {v0}, Lorg/webrtc/videoengine/ViERenderer;->CreateLocalRenderView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 72
    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    return-void
.end method
