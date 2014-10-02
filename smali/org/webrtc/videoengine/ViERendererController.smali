.class public Lorg/webrtc/videoengine/ViERendererController;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static g_localRenderer:Landroid/view/SurfaceHolder;

.field private static g_localSurface:Landroid/view/SurfaceView;

.field private static g_nativeObject:J

.field private static g_remoteSurface:Landroid/view/SurfaceView;

.field private static g_remoteWindow:Landroid/view/Surface;

.field private static remoteSurfaceCallback:Landroid/view/SurfaceHolder$Callback;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 22
    sput-object v0, Lorg/webrtc/videoengine/ViERendererController;->g_localRenderer:Landroid/view/SurfaceHolder;

    .line 23
    sput-object v0, Lorg/webrtc/videoengine/ViERendererController;->g_localSurface:Landroid/view/SurfaceView;

    .line 24
    sput-object v0, Lorg/webrtc/videoengine/ViERendererController;->g_remoteSurface:Landroid/view/SurfaceView;

    .line 25
    sput-object v0, Lorg/webrtc/videoengine/ViERendererController;->g_remoteWindow:Landroid/view/Surface;

    .line 27
    sput-object v0, Lorg/webrtc/videoengine/ViERendererController;->remoteSurfaceCallback:Landroid/view/SurfaceHolder$Callback;

    .line 30
    const-wide/16 v0, 0x0

    sput-wide v0, Lorg/webrtc/videoengine/ViERendererController;->g_nativeObject:J

    .line 33
    new-instance v0, Lorg/webrtc/videoengine/ViERendererController$1;

    invoke-direct {v0}, Lorg/webrtc/videoengine/ViERendererController$1;-><init>()V

    sput-object v0, Lorg/webrtc/videoengine/ViERendererController;->remoteSurfaceCallback:Landroid/view/SurfaceHolder$Callback;

    .line 61
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static CreateLocalRenderView(Landroid/content/Context;)Landroid/view/SurfaceView;
    .locals 1
    .parameter

    .prologue
    .line 76
    sget-object v0, Lorg/webrtc/videoengine/ViERendererController;->g_localSurface:Landroid/view/SurfaceView;

    if-nez v0, :cond_0

    .line 77
    new-instance v0, Landroid/view/SurfaceView;

    invoke-direct {v0, p0}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    sput-object v0, Lorg/webrtc/videoengine/ViERendererController;->g_localSurface:Landroid/view/SurfaceView;

    .line 79
    :cond_0
    sget-object v0, Lorg/webrtc/videoengine/ViERendererController;->g_localRenderer:Landroid/view/SurfaceHolder;

    if-nez v0, :cond_1

    .line 80
    sget-object v0, Lorg/webrtc/videoengine/ViERendererController;->g_localSurface:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-static {v0}, Lorg/webrtc/videoengine/SurfaceHolderWrapper;->getWrapper(Landroid/view/SurfaceHolder;)Lorg/webrtc/videoengine/SurfaceHolderWrapper;

    move-result-object v0

    sput-object v0, Lorg/webrtc/videoengine/ViERendererController;->g_localRenderer:Landroid/view/SurfaceHolder;

    .line 82
    :cond_1
    sget-object v0, Lorg/webrtc/videoengine/ViERendererController;->g_localSurface:Landroid/view/SurfaceView;

    return-object v0
.end method

.method public static CreateRemoteRenderView(Landroid/content/Context;)Landroid/view/SurfaceView;
    .locals 2
    .parameter

    .prologue
    .line 67
    sget-object v0, Lorg/webrtc/videoengine/ViERendererController;->g_remoteSurface:Landroid/view/SurfaceView;

    if-eqz v0, :cond_0

    .line 68
    sget-object v0, Lorg/webrtc/videoengine/ViERendererController;->g_remoteSurface:Landroid/view/SurfaceView;

    .line 72
    :goto_0
    return-object v0

    .line 70
    :cond_0
    new-instance v0, Landroid/view/SurfaceView;

    invoke-direct {v0, p0}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    sput-object v0, Lorg/webrtc/videoengine/ViERendererController;->g_remoteSurface:Landroid/view/SurfaceView;

    .line 71
    sget-object v0, Lorg/webrtc/videoengine/ViERendererController;->g_remoteSurface:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    sget-object v1, Lorg/webrtc/videoengine/ViERendererController;->remoteSurfaceCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 72
    sget-object v0, Lorg/webrtc/videoengine/ViERendererController;->g_remoteSurface:Landroid/view/SurfaceView;

    goto :goto_0
.end method

.method public static GetLocalRenderer()Landroid/view/SurfaceHolder;
    .locals 1

    .prologue
    .line 86
    sget-object v0, Lorg/webrtc/videoengine/ViERendererController;->g_localRenderer:Landroid/view/SurfaceHolder;

    return-object v0
.end method

.method public static GetSurface()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 100
    sget-object v0, Lorg/webrtc/videoengine/ViERendererController;->g_remoteWindow:Landroid/view/Surface;

    return-object v0
.end method

.method public static RegisterNativeRenderer(J)V
    .locals 3
    .parameter

    .prologue
    .line 90
    const-string/jumbo v0, "WBRTCGLN_Java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "got native object "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    sput-wide p0, Lorg/webrtc/videoengine/ViERendererController;->g_nativeObject:J

    .line 92
    return-void
.end method

.method public static UnregisterNativeRenderer()V
    .locals 2

    .prologue
    .line 95
    const-string/jumbo v0, "WBRTCGLN_Java"

    const-string/jumbo v1, "native object unregistered"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    const-wide/16 v0, 0x0

    sput-wide v0, Lorg/webrtc/videoengine/ViERendererController;->g_nativeObject:J

    .line 97
    return-void
.end method

.method static synthetic access$000()Landroid/view/Surface;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lorg/webrtc/videoengine/ViERendererController;->g_remoteWindow:Landroid/view/Surface;

    return-object v0
.end method

.method static synthetic access$002(Landroid/view/Surface;)Landroid/view/Surface;
    .locals 0
    .parameter

    .prologue
    .line 19
    sput-object p0, Lorg/webrtc/videoengine/ViERendererController;->g_remoteWindow:Landroid/view/Surface;

    return-object p0
.end method

.method static synthetic access$100()J
    .locals 2

    .prologue
    .line 19
    sget-wide v0, Lorg/webrtc/videoengine/ViERendererController;->g_nativeObject:J

    return-wide v0
.end method

.method public static native setSurface(Landroid/view/Surface;J)V
.end method
