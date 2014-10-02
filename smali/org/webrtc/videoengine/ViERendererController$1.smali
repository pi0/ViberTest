.class final Lorg/webrtc/videoengine/ViERendererController$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 52
    const-string/jumbo v0, "WBRTCGLN_Java"

    const-string/jumbo v1, "surfaceChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-static {v0}, Lorg/webrtc/videoengine/ViERendererController;->access$002(Landroid/view/Surface;)Landroid/view/Surface;

    .line 54
    invoke-static {}, Lorg/webrtc/videoengine/ViERendererController;->access$100()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 55
    invoke-static {}, Lorg/webrtc/videoengine/ViERendererController;->access$000()Landroid/view/Surface;

    move-result-object v0

    invoke-static {}, Lorg/webrtc/videoengine/ViERendererController;->access$100()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lorg/webrtc/videoengine/ViERendererController;->setSurface(Landroid/view/Surface;J)V

    .line 56
    const-string/jumbo v0, "WBRTCGLN_Java"

    const-string/jumbo v1, "native notified (window set)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    :cond_0
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0
    .parameter

    .prologue
    .line 47
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 37
    const-string/jumbo v0, "WBRTCGLN_Java"

    const-string/jumbo v1, "surface destroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    invoke-static {v4}, Lorg/webrtc/videoengine/ViERendererController;->access$002(Landroid/view/Surface;)Landroid/view/Surface;

    .line 39
    invoke-static {}, Lorg/webrtc/videoengine/ViERendererController;->access$100()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 40
    invoke-static {}, Lorg/webrtc/videoengine/ViERendererController;->access$100()J

    move-result-wide v0

    invoke-static {v4, v0, v1}, Lorg/webrtc/videoengine/ViERendererController;->setSurface(Landroid/view/Surface;J)V

    .line 41
    const-string/jumbo v0, "WBRTCGLN_Java"

    const-string/jumbo v1, "native notified (surface destroyed)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    :cond_0
    return-void
.end method
