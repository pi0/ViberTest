.class Lorg/webrtc/videoengine/EngineDelegate$2;
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
    .line 80
    iput-object p1, p0, Lorg/webrtc/videoengine/EngineDelegate$2;->this$0:Lorg/webrtc/videoengine/EngineDelegate;

    iput-wide p2, p0, Lorg/webrtc/videoengine/EngineDelegate$2;->val$nativeEngineAddr:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 83
    iget-wide v0, p0, Lorg/webrtc/videoengine/EngineDelegate$2;->val$nativeEngineAddr:J

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/viber/voip/sound/AbstractSoundService;->removeLocalVideoRenderer(JLjava/lang/Object;)I

    .line 84
    invoke-static {}, Lorg/webrtc/videoengine/EngineDelegate;->access$000()Ljava/util/Set;

    move-result-object v1

    monitor-enter v1

    .line 85
    :try_start_0
    invoke-static {}, Lorg/webrtc/videoengine/EngineDelegate;->access$000()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/webrtc/videoengine/EngineDelegate$VideoEngineEventSubscriber;

    .line 86
    invoke-interface {v0}, Lorg/webrtc/videoengine/EngineDelegate$VideoEngineEventSubscriber;->onStopSendVideo()V

    goto :goto_0

    .line 88
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

    .line 89
    return-void
.end method
