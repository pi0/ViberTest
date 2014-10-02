.class public Lorg/webrtc/videoengine/ViERenderer;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static final TAG:Ljava/lang/String;

.field private static _subscribers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lorg/webrtc/videoengine/ViERenderer$ViERendererCallback;",
            ">;"
        }
    .end annotation
.end field

.field private static g_localRenderer:Landroid/view/SurfaceHolder;

.field private static g_localSurface:Landroid/view/View;

.field private static g_remoteRenderer:Landroid/view/SurfaceHolder;

.field private static g_remoteSurface:Landroid/view/SurfaceView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 31
    const-class v0, Lorg/webrtc/videoengine/ViERenderer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/webrtc/videoengine/ViERenderer;->TAG:Ljava/lang/String;

    .line 33
    sput-object v1, Lorg/webrtc/videoengine/ViERenderer;->g_localRenderer:Landroid/view/SurfaceHolder;

    .line 34
    sput-object v1, Lorg/webrtc/videoengine/ViERenderer;->g_localSurface:Landroid/view/View;

    .line 35
    sput-object v1, Lorg/webrtc/videoengine/ViERenderer;->g_remoteRenderer:Landroid/view/SurfaceHolder;

    .line 36
    sput-object v1, Lorg/webrtc/videoengine/ViERenderer;->g_remoteSurface:Landroid/view/SurfaceView;

    .line 38
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lorg/webrtc/videoengine/ViERenderer;->_subscribers:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    return-void
.end method

.method public static CreateLocalRenderView(Landroid/content/Context;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 134
    sget-object v0, Lorg/webrtc/videoengine/ViERenderer;->g_localSurface:Landroid/view/View;

    if-nez v0, :cond_0

    .line 135
    new-instance v0, Landroid/view/SurfaceView;

    invoke-direct {v0, p0}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    sput-object v0, Lorg/webrtc/videoengine/ViERenderer;->g_localSurface:Landroid/view/View;

    .line 137
    :cond_0
    sget-object v0, Lorg/webrtc/videoengine/ViERenderer;->g_localRenderer:Landroid/view/SurfaceHolder;

    if-nez v0, :cond_1

    .line 138
    sget-object v0, Lorg/webrtc/videoengine/ViERenderer;->g_localSurface:Landroid/view/View;

    instance-of v0, v0, Landroid/view/SurfaceView;

    if-eqz v0, :cond_1

    .line 139
    sget-object v0, Lorg/webrtc/videoengine/ViERenderer;->g_localSurface:Landroid/view/View;

    check-cast v0, Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-static {v0}, Lorg/webrtc/videoengine/SurfaceHolderWrapper;->getWrapper(Landroid/view/SurfaceHolder;)Lorg/webrtc/videoengine/SurfaceHolderWrapper;

    move-result-object v0

    sput-object v0, Lorg/webrtc/videoengine/ViERenderer;->g_localRenderer:Landroid/view/SurfaceHolder;

    .line 141
    :cond_1
    sget-object v0, Lorg/webrtc/videoengine/ViERenderer;->g_localSurface:Landroid/view/View;

    return-object v0
.end method

.method private static CreateLocalRenderer(Landroid/content/Context;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 96
    invoke-static {p0}, Lorg/webrtc/videoengine/ViERenderer;->CreateLocalRenderView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public static CreateRemoteRenderView()Landroid/view/View;
    .locals 1

    .prologue
    .line 104
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-static {v0}, Lorg/webrtc/videoengine/ViERenderer;->CreateRemoteRenderView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public static CreateRemoteRenderView(Landroid/content/Context;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 100
    invoke-static {p0}, Lorg/webrtc/videoengine/ViEAndroidGLES20;->IsSupported(Landroid/content/Context;)Z

    move-result v0

    invoke-static {p0, v0}, Lorg/webrtc/videoengine/ViERenderer;->CreateRemoteRenderView(Landroid/content/Context;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public static CreateRemoteRenderView(Landroid/content/Context;Z)Landroid/view/View;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 109
    sget-object v0, Lorg/webrtc/videoengine/ViERenderer;->g_remoteSurface:Landroid/view/SurfaceView;

    if-eqz v0, :cond_0

    sget-object v0, Lorg/webrtc/videoengine/ViERenderer;->g_remoteSurface:Landroid/view/SurfaceView;

    .line 130
    :goto_0
    return-object v0

    .line 110
    :cond_0
    new-instance v0, Landroid/view/SurfaceView;

    invoke-direct {v0, p0}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    sput-object v0, Lorg/webrtc/videoengine/ViERenderer;->g_remoteSurface:Landroid/view/SurfaceView;

    .line 112
    sget-object v0, Lorg/webrtc/videoengine/ViERenderer;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "adding callback to holder"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    sget-object v0, Lorg/webrtc/videoengine/ViERenderer;->g_remoteSurface:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    new-instance v1, Lorg/webrtc/videoengine/ViERenderer$2;

    invoke-direct {v1}, Lorg/webrtc/videoengine/ViERenderer$2;-><init>()V

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 130
    sget-object v0, Lorg/webrtc/videoengine/ViERenderer;->g_remoteSurface:Landroid/view/SurfaceView;

    goto :goto_0
.end method

.method private static CreateRenderer(Landroid/content/Context;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 92
    invoke-static {p0}, Lorg/webrtc/videoengine/ViERenderer;->CreateRemoteRenderView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public static GetLocalRenderer()Landroid/view/SurfaceHolder;
    .locals 1

    .prologue
    .line 145
    sget-object v0, Lorg/webrtc/videoengine/ViERenderer;->g_localRenderer:Landroid/view/SurfaceHolder;

    return-object v0
.end method

.method public static addRenderEventSubscriber(Lorg/webrtc/videoengine/ViERenderer$ViERendererCallback;)V
    .locals 2
    .parameter

    .prologue
    .line 46
    sget-object v1, Lorg/webrtc/videoengine/ViERenderer;->_subscribers:Ljava/util/Set;

    monitor-enter v1

    .line 47
    :try_start_0
    sget-object v0, Lorg/webrtc/videoengine/ViERenderer;->_subscribers:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 48
    monitor-exit v1

    .line 49
    return-void

    .line 48
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static adjustThreadPriority(II)V
    .locals 1
    .parameter
    .parameter
    .annotation build Lorg/webrtc/videoengine/ViEOMXHelper$Native;
    .end annotation

    .prologue
    .line 182
    const/16 v0, 0x78

    if-ne v0, p1, :cond_0

    .line 183
    if-nez p0, :cond_1

    .line 184
    const/4 v0, -0x8

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 189
    :cond_0
    :goto_0
    return-void

    .line 186
    :cond_1
    const/16 v0, -0xc

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    goto :goto_0
.end method

.method public static getLocalRenderView()Landroid/view/View;
    .locals 1

    .prologue
    .line 149
    sget-object v0, Lorg/webrtc/videoengine/ViERenderer;->g_localSurface:Landroid/view/View;

    return-object v0
.end method

.method protected static notifyLocalSurfaceChanged()V
    .locals 3

    .prologue
    .line 59
    sget-object v1, Lorg/webrtc/videoengine/ViERenderer;->_subscribers:Ljava/util/Set;

    monitor-enter v1

    .line 60
    :try_start_0
    new-instance v2, Ljava/util/HashSet;

    sget-object v0, Lorg/webrtc/videoengine/ViERenderer;->_subscribers:Ljava/util/Set;

    invoke-direct {v2, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 61
    sget-object v0, Lorg/webrtc/videoengine/ViERenderer;->g_localSurface:Landroid/view/View;

    instance-of v0, v0, Landroid/view/SurfaceView;

    if-eqz v0, :cond_0

    .line 62
    sget-object v0, Lorg/webrtc/videoengine/ViERenderer;->g_localSurface:Landroid/view/View;

    check-cast v0, Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-static {v0}, Lorg/webrtc/videoengine/SurfaceHolderWrapper;->getWrapper(Landroid/view/SurfaceHolder;)Lorg/webrtc/videoengine/SurfaceHolderWrapper;

    move-result-object v0

    sput-object v0, Lorg/webrtc/videoengine/ViERenderer;->g_localRenderer:Landroid/view/SurfaceHolder;

    .line 63
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    sget-object v0, Lcom/viber/voip/dk;->a:Lcom/viber/voip/dk;

    invoke-static {v0}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lorg/webrtc/videoengine/ViERenderer$1;

    invoke-direct {v1, v2}, Lorg/webrtc/videoengine/ViERenderer$1;-><init>(Ljava/util/Set;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 73
    return-void

    .line 63
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected static notifyRenderGone()V
    .locals 3

    .prologue
    .line 77
    sget-object v1, Lorg/webrtc/videoengine/ViERenderer;->_subscribers:Ljava/util/Set;

    monitor-enter v1

    .line 78
    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    sget-object v2, Lorg/webrtc/videoengine/ViERenderer;->_subscribers:Ljava/util/Set;

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 79
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/webrtc/videoengine/ViERenderer$ViERendererCallback;

    .line 85
    invoke-interface {v0}, Lorg/webrtc/videoengine/ViERenderer$ViERendererCallback;->onRenderGone()V

    goto :goto_0

    .line 79
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 89
    :cond_0
    return-void
.end method

.method public static notifyRenderPause()V
    .locals 0

    .prologue
    .line 177
    invoke-static {}, Lorg/webrtc/videoengine/ViERenderer;->notifyRenderGone()V

    .line 178
    return-void
.end method

.method public static native notifyRenderSurfaceAttached(Landroid/view/Surface;)V
.end method

.method public static native notifyRenderSurfaceDetached(Landroid/view/Surface;)V
.end method

.method public static removeRenderEventSubscriber(Lorg/webrtc/videoengine/ViERenderer$ViERendererCallback;)V
    .locals 2
    .parameter

    .prologue
    .line 52
    sget-object v1, Lorg/webrtc/videoengine/ViERenderer;->_subscribers:Ljava/util/Set;

    monitor-enter v1

    .line 53
    :try_start_0
    sget-object v0, Lorg/webrtc/videoengine/ViERenderer;->_subscribers:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 54
    monitor-exit v1

    .line 55
    return-void

    .line 54
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static native setRenderOrientation(IF)V
.end method

.method public static setRenderOrientation(Lorg/webrtc/videoengine/ViERenderer$kRenderOrientation;F)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 173
    invoke-virtual {p0}, Lorg/webrtc/videoengine/ViERenderer$kRenderOrientation;->ordinal()I

    move-result v0

    invoke-static {v0, p1}, Lorg/webrtc/videoengine/ViERenderer;->setRenderOrientation(IF)V

    .line 174
    return-void
.end method

.method private static final setRenderPriority(I)V
    .locals 3
    .parameter

    .prologue
    const/4 v0, -0x8

    .line 162
    if-ge v0, p0, :cond_0

    move p0, v0

    .line 164
    :cond_0
    sget-object v0, Lorg/webrtc/videoengine/ViERenderer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setRenderPriority: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    invoke-static {p0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 166
    return-void
.end method
