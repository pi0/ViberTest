.class Lorg/webrtc/videoengine/VideoCaptureAndroid$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/SurfaceHolder;


# instance fields
.field final synthetic this$0:Lorg/webrtc/videoengine/VideoCaptureAndroid;


# direct methods
.method constructor <init>(Lorg/webrtc/videoengine/VideoCaptureAndroid;)V
    .locals 0
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid$1;->this$0:Lorg/webrtc/videoengine/VideoCaptureAndroid;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addCallback(Landroid/view/SurfaceHolder$Callback;)V
    .locals 1
    .parameter

    .prologue
    .line 149
    const-string/jumbo v0, "fakeDisplay::addCallback"

    #calls: Lorg/webrtc/videoengine/VideoCaptureAndroid;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lorg/webrtc/videoengine/VideoCaptureAndroid;->access$000(Ljava/lang/String;)V

    .line 150
    return-void
.end method

.method public getSurface()Landroid/view/Surface;
    .locals 1

    .prologue
    .line 144
    const-string/jumbo v0, "fakeDisplay::getSurface"

    #calls: Lorg/webrtc/videoengine/VideoCaptureAndroid;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lorg/webrtc/videoengine/VideoCaptureAndroid;->access$000(Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid$1;->this$0:Lorg/webrtc/videoengine/VideoCaptureAndroid;

    #getter for: Lorg/webrtc/videoengine/VideoCaptureAndroid;->surfaceHolder:Landroid/view/SurfaceHolder;
    invoke-static {v0}, Lorg/webrtc/videoengine/VideoCaptureAndroid;->access$100(Lorg/webrtc/videoengine/VideoCaptureAndroid;)Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    return-object v0
.end method

.method public getSurfaceFrame()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 139
    const-string/jumbo v0, "fakeDisplay::getSurfaceFrame"

    #calls: Lorg/webrtc/videoengine/VideoCaptureAndroid;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lorg/webrtc/videoengine/VideoCaptureAndroid;->access$000(Ljava/lang/String;)V

    .line 140
    const/4 v0, 0x0

    return-object v0
.end method

.method public isCreating()Z
    .locals 1

    .prologue
    .line 134
    const-string/jumbo v0, "fakeDisplay::isCreating"

    #calls: Lorg/webrtc/videoengine/VideoCaptureAndroid;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lorg/webrtc/videoengine/VideoCaptureAndroid;->access$000(Ljava/lang/String;)V

    .line 135
    const/4 v0, 0x0

    return v0
.end method

.method public lockCanvas()Landroid/graphics/Canvas;
    .locals 1

    .prologue
    .line 129
    const-string/jumbo v0, "fakeDisplay::lockCanvas"

    #calls: Lorg/webrtc/videoengine/VideoCaptureAndroid;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lorg/webrtc/videoengine/VideoCaptureAndroid;->access$000(Ljava/lang/String;)V

    .line 130
    const/4 v0, 0x0

    return-object v0
.end method

.method public lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;
    .locals 1
    .parameter

    .prologue
    .line 124
    const-string/jumbo v0, "fakeDisplay::lockCanvas"

    #calls: Lorg/webrtc/videoengine/VideoCaptureAndroid;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lorg/webrtc/videoengine/VideoCaptureAndroid;->access$000(Ljava/lang/String;)V

    .line 125
    const/4 v0, 0x0

    return-object v0
.end method

.method public removeCallback(Landroid/view/SurfaceHolder$Callback;)V
    .locals 1
    .parameter

    .prologue
    .line 120
    const-string/jumbo v0, "fakeDisplay::removeCallback"

    #calls: Lorg/webrtc/videoengine/VideoCaptureAndroid;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lorg/webrtc/videoengine/VideoCaptureAndroid;->access$000(Ljava/lang/String;)V

    .line 121
    return-void
.end method

.method public setFixedSize(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 116
    const-string/jumbo v0, "fakeDisplay::setFixedSize"

    #calls: Lorg/webrtc/videoengine/VideoCaptureAndroid;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lorg/webrtc/videoengine/VideoCaptureAndroid;->access$000(Ljava/lang/String;)V

    .line 117
    return-void
.end method

.method public setFormat(I)V
    .locals 1
    .parameter

    .prologue
    .line 112
    const-string/jumbo v0, "fakeDisplay::setFormat"

    #calls: Lorg/webrtc/videoengine/VideoCaptureAndroid;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lorg/webrtc/videoengine/VideoCaptureAndroid;->access$000(Ljava/lang/String;)V

    .line 113
    return-void
.end method

.method public setKeepScreenOn(Z)V
    .locals 1
    .parameter

    .prologue
    .line 108
    const-string/jumbo v0, "fakeDisplay::setKeepScreenOn"

    #calls: Lorg/webrtc/videoengine/VideoCaptureAndroid;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lorg/webrtc/videoengine/VideoCaptureAndroid;->access$000(Ljava/lang/String;)V

    .line 109
    return-void
.end method

.method public setSizeFromLayout()V
    .locals 1

    .prologue
    .line 104
    const-string/jumbo v0, "fakeDisplay::setSizeFromLayout"

    #calls: Lorg/webrtc/videoengine/VideoCaptureAndroid;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lorg/webrtc/videoengine/VideoCaptureAndroid;->access$000(Ljava/lang/String;)V

    .line 105
    return-void
.end method

.method public setType(I)V
    .locals 1
    .parameter

    .prologue
    .line 100
    const-string/jumbo v0, "fakeDisplay::setType"

    #calls: Lorg/webrtc/videoengine/VideoCaptureAndroid;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lorg/webrtc/videoengine/VideoCaptureAndroid;->access$000(Ljava/lang/String;)V

    .line 101
    return-void
.end method

.method public unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter

    .prologue
    .line 96
    const-string/jumbo v0, "fakeDisplay::unlockCanvasAndPost"

    #calls: Lorg/webrtc/videoengine/VideoCaptureAndroid;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lorg/webrtc/videoengine/VideoCaptureAndroid;->access$000(Ljava/lang/String;)V

    .line 97
    return-void
.end method
