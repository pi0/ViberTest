.class Lorg/webrtc/videoengine/EngineDelegate$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lorg/webrtc/videoengine/EngineDelegate;

.field final synthetic val$failureCode:I


# direct methods
.method constructor <init>(Lorg/webrtc/videoengine/EngineDelegate;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 139
    iput-object p1, p0, Lorg/webrtc/videoengine/EngineDelegate$5;->this$0:Lorg/webrtc/videoengine/EngineDelegate;

    iput p2, p0, Lorg/webrtc/videoengine/EngineDelegate$5;->val$failureCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 145
    invoke-static {}, Lorg/webrtc/videoengine/EngineDelegate;->access$000()Ljava/util/Set;

    move-result-object v1

    monitor-enter v1

    .line 146
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

    .line 147
    iget v3, p0, Lorg/webrtc/videoengine/EngineDelegate$5;->val$failureCode:I

    invoke-interface {v0, v3}, Lorg/webrtc/videoengine/EngineDelegate$VideoEngineEventSubscriber;->onFailure(I)V

    goto :goto_0

    .line 149
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

    .line 150
    return-void
.end method
