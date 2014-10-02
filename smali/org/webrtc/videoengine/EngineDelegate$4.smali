.class Lorg/webrtc/videoengine/EngineDelegate$4;
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
    .line 123
    iput-object p1, p0, Lorg/webrtc/videoengine/EngineDelegate$4;->this$0:Lorg/webrtc/videoengine/EngineDelegate;

    iput-wide p2, p0, Lorg/webrtc/videoengine/EngineDelegate$4;->val$nativeEngineAddr:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 126
    iget-wide v0, p0, Lorg/webrtc/videoengine/EngineDelegate$4;->val$nativeEngineAddr:J

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/viber/voip/sound/AbstractSoundService;->removeRemoteVideoRenderer(JLjava/lang/Object;)I

    .line 127
    invoke-static {}, Lorg/webrtc/videoengine/EngineDelegate;->access$000()Ljava/util/Set;

    move-result-object v1

    monitor-enter v1

    .line 128
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

    .line 129
    invoke-interface {v0}, Lorg/webrtc/videoengine/EngineDelegate$VideoEngineEventSubscriber;->onStopRecvVideo()V

    goto :goto_0

    .line 131
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

    .line 132
    return-void
.end method
