.class public Lorg/webrtc/videoengine/EngineDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = null

.field public static final VIDEO_FAILURE_CODE_BAD_CHANNEL:I = 0x2

.field public static final VIDEO_FAILURE_CODE_GENERIC:I = 0x0

.field public static final VIDEO_FAILURE_CODE_UNKNOWN:I = 0x1

.field private static _subscribers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lorg/webrtc/videoengine/EngineDelegate$VideoEngineEventSubscriber;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final delegateAddr:Ljava/lang/Object;

.field final gcd:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lorg/webrtc/videoengine/EngineDelegate;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/webrtc/videoengine/EngineDelegate;->TAG:Ljava/lang/String;

    .line 38
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lorg/webrtc/videoengine/EngineDelegate;->_subscribers:Ljava/util/Set;

    return-void
.end method

.method constructor <init>(J)V
    .locals 1
    .parameter

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lorg/webrtc/videoengine/EngineDelegate;->delegateAddr:Ljava/lang/Object;

    .line 54
    sget-object v0, Lcom/viber/voip/dk;->a:Lcom/viber/voip/dk;

    invoke-static {v0}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lorg/webrtc/videoengine/EngineDelegate;->gcd:Landroid/os/Handler;

    .line 55
    return-void
.end method

.method static synthetic access$000()Ljava/util/Set;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lorg/webrtc/videoengine/EngineDelegate;->_subscribers:Ljava/util/Set;

    return-object v0
.end method

.method public static addEventSubscriber(Lorg/webrtc/videoengine/EngineDelegate$VideoEngineEventSubscriber;)V
    .locals 2
    .parameter

    .prologue
    .line 41
    sget-object v1, Lorg/webrtc/videoengine/EngineDelegate;->_subscribers:Ljava/util/Set;

    monitor-enter v1

    .line 42
    :try_start_0
    sget-object v0, Lorg/webrtc/videoengine/EngineDelegate;->_subscribers:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 43
    monitor-exit v1

    .line 44
    return-void

    .line 43
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static final log_d(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 27
    sget-object v0, Lorg/webrtc/videoengine/EngineDelegate;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    return-void
.end method

.method public static removeEventSubscriber(Lorg/webrtc/videoengine/EngineDelegate$VideoEngineEventSubscriber;)V
    .locals 2
    .parameter

    .prologue
    .line 47
    sget-object v1, Lorg/webrtc/videoengine/EngineDelegate;->_subscribers:Ljava/util/Set;

    monitor-enter v1

    .line 48
    :try_start_0
    sget-object v0, Lorg/webrtc/videoengine/EngineDelegate;->_subscribers:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 49
    monitor-exit v1

    .line 50
    return-void

    .line 49
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method onDeinitVideoRecv(J)I
    .locals 2
    .parameter

    .prologue
    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onDeinitVideoRecv: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/webrtc/videoengine/EngineDelegate;->log_d(Ljava/lang/String;)V

    .line 101
    const/4 v0, 0x0

    return v0
.end method

.method onInitVideoRecv(JJ)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onInitVideoRecv: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/webrtc/videoengine/EngineDelegate;->log_d(Ljava/lang/String;)V

    .line 96
    const/4 v0, 0x0

    return v0
.end method

.method onStartRecvVideo(JJ)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onStartRecvVideo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/webrtc/videoengine/EngineDelegate;->log_d(Ljava/lang/String;)V

    .line 106
    const-wide/16 v0, 0x0

    cmp-long v0, v0, p3

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lorg/webrtc/videoengine/EngineDelegate;->gcd:Landroid/os/Handler;

    new-instance v1, Lorg/webrtc/videoengine/EngineDelegate$3;

    invoke-direct {v1, p0, p1, p2}, Lorg/webrtc/videoengine/EngineDelegate$3;-><init>(Lorg/webrtc/videoengine/EngineDelegate;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 118
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method onStartSendVideo(JJ)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onStartSendVideo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/webrtc/videoengine/EngineDelegate;->log_d(Ljava/lang/String;)V

    .line 59
    sget-boolean v0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->USE_LIVE_CAMERA_PREVIEW:Z

    if-nez v0, :cond_0

    .line 60
    iget-object v0, p0, Lorg/webrtc/videoengine/EngineDelegate;->gcd:Landroid/os/Handler;

    new-instance v1, Lorg/webrtc/videoengine/EngineDelegate$1;

    invoke-direct {v1, p0, p1, p2}, Lorg/webrtc/videoengine/EngineDelegate$1;-><init>(Lorg/webrtc/videoengine/EngineDelegate;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 75
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method onStopRecvVideo(J)I
    .locals 2
    .parameter

    .prologue
    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onStopRecvVideo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/webrtc/videoengine/EngineDelegate;->log_d(Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lorg/webrtc/videoengine/EngineDelegate;->gcd:Landroid/os/Handler;

    new-instance v1, Lorg/webrtc/videoengine/EngineDelegate$4;

    invoke-direct {v1, p0, p1, p2}, Lorg/webrtc/videoengine/EngineDelegate$4;-><init>(Lorg/webrtc/videoengine/EngineDelegate;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 134
    const/4 v0, 0x0

    return v0
.end method

.method onStopSendVideo(J)I
    .locals 2
    .parameter

    .prologue
    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onStopSendVideo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/webrtc/videoengine/EngineDelegate;->log_d(Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lorg/webrtc/videoengine/EngineDelegate;->gcd:Landroid/os/Handler;

    new-instance v1, Lorg/webrtc/videoengine/EngineDelegate$2;

    invoke-direct {v1, p0, p1, p2}, Lorg/webrtc/videoengine/EngineDelegate$2;-><init>(Lorg/webrtc/videoengine/EngineDelegate;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 91
    const/4 v0, 0x0

    return v0
.end method

.method onVideoFailure(JI)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onVideoFailure: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", failure:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/webrtc/videoengine/EngineDelegate;->log_d(Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lorg/webrtc/videoengine/EngineDelegate;->gcd:Landroid/os/Handler;

    new-instance v1, Lorg/webrtc/videoengine/EngineDelegate$5;

    invoke-direct {v1, p0, p3}, Lorg/webrtc/videoengine/EngineDelegate$5;-><init>(Lorg/webrtc/videoengine/EngineDelegate;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 152
    const/4 v0, 0x0

    return v0
.end method
