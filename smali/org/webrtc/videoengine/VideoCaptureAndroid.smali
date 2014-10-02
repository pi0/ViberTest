.class public Lorg/webrtc/videoengine/VideoCaptureAndroid;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/Camera$ErrorCallback;
.implements Landroid/hardware/Camera$PreviewCallback;
.implements Landroid/view/SurfaceHolder$Callback;
.implements Lorg/webrtc/videoengine/ViERenderer$ViERendererCallback;


# static fields
.field private static final FORCE_USE_LIVE_CAMERA_PREVIEW:Z = true

.field private static final PROBLEMATIC_CAMERA_NOTIFICATION_DELAY:J = 0x1388L

.field private static final TAG:Ljava/lang/String; = null

#the value of this static final field might be set in the static constructor
.field public static final USE_LIVE_CAMERA_PREVIEW:Z = false

.field private static final USE_OWN_CAPTURE_BUFFERS:Z = true


# instance fields
.field private PIXEL_FORMAT:I

.field volatile camera:Landroid/hardware/Camera;

.field private captureLock:Ljava/util/concurrent/locks/ReentrantLock;

.field context:J

.field private currentDevice:Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;

.field private deviceUniqueName:Ljava/lang/String;

.field private expectedFrameSize:I

.field private fakeDisplay:Landroid/view/SurfaceHolder;

.field private id:I

.field private isCaptureRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private volatile isCaptureStarted:Z

.field private volatile isSurfaceReady:Z

.field private localPreview:Landroid/view/SurfaceHolder;

.field private mCaptureFPS:I

.field private mCaptureHeight:I

.field private mCaptureWidth:I

.field private final numCaptureBuffers:I

.field private orientation:I

.field private ownsBuffers:Z

.field pixelFormat:Landroid/graphics/PixelFormat;

.field public previewBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private problematicCameraCallback:Ljava/lang/Runnable;

.field private subscribers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lorg/webrtc/videoengine/VideoCaptureAndroid$CaptureEventCallback;",
            ">;"
        }
    .end annotation
.end field

.field private surfaceHolder:Landroid/view/SurfaceHolder;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 46
    const-class v0, Lorg/webrtc/videoengine/VideoCaptureAndroid;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->TAG:Ljava/lang/String;

    .line 52
    const-string/jumbo v0, "grouper"

    sget-object v3, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "Nexus 7"

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    or-int/lit8 v0, v0, 0x1

    const-string/jumbo v3, "endeavoru"

    sget-object v4, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "HTC One X"

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_1
    or-int/2addr v0, v1

    sput-boolean v0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->USE_LIVE_CAMERA_PREVIEW:Z

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method protected constructor <init>(IJLandroid/hardware/Camera;Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;Ljava/lang/String;)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object v3, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->currentDevice:Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;

    .line 66
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->previewBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 68
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->captureLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 69
    const/16 v0, 0x11

    iput v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->PIXEL_FORMAT:I

    .line 70
    new-instance v0, Landroid/graphics/PixelFormat;

    invoke-direct {v0}, Landroid/graphics/PixelFormat;-><init>()V

    iput-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->pixelFormat:Landroid/graphics/PixelFormat;

    .line 72
    iput-boolean v2, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->isCaptureStarted:Z

    .line 73
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->isCaptureRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 74
    iput-boolean v2, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->isSurfaceReady:Z

    .line 75
    iput-object v3, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->surfaceHolder:Landroid/view/SurfaceHolder;

    .line 77
    const/4 v0, 0x3

    iput v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->numCaptureBuffers:I

    .line 78
    iput v2, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->expectedFrameSize:I

    .line 79
    iput v2, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->orientation:I

    .line 80
    iput v2, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->id:I

    .line 82
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->context:J

    .line 83
    iput-object v3, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->localPreview:Landroid/view/SurfaceHolder;

    .line 85
    iput-boolean v2, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->ownsBuffers:Z

    .line 87
    iput v4, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->mCaptureWidth:I

    .line 88
    iput v4, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->mCaptureHeight:I

    .line 89
    iput v4, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->mCaptureFPS:I

    .line 91
    iput-object v3, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->deviceUniqueName:Ljava/lang/String;

    .line 93
    new-instance v0, Lorg/webrtc/videoengine/VideoCaptureAndroid$1;

    invoke-direct {v0, p0}, Lorg/webrtc/videoengine/VideoCaptureAndroid$1;-><init>(Lorg/webrtc/videoengine/VideoCaptureAndroid;)V

    iput-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->fakeDisplay:Landroid/view/SurfaceHolder;

    .line 153
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->subscribers:Ljava/util/Set;

    .line 187
    new-instance v0, Lorg/webrtc/videoengine/VideoCaptureAndroid$2;

    invoke-direct {v0, p0}, Lorg/webrtc/videoengine/VideoCaptureAndroid$2;-><init>(Lorg/webrtc/videoengine/VideoCaptureAndroid;)V

    iput-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->problematicCameraCallback:Ljava/lang/Runnable;

    .line 213
    iput p1, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->id:I

    .line 214
    iput-wide p2, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->context:J

    .line 215
    iput-object p4, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    .line 216
    iput-object p5, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->currentDevice:Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;

    .line 217
    iput-object p6, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->deviceUniqueName:Ljava/lang/String;

    .line 219
    :try_start_0
    iget-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    :goto_0
    iget-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0, v3}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 224
    iget-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0, v3}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 225
    return-void

    .line 220
    :catch_0
    move-exception v0

    .line 221
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static DeleteVideoCaptureAndroid(Lorg/webrtc/videoengine/VideoCaptureAndroid;)V
    .locals 1
    .parameter

    .prologue
    .line 207
    const-string/jumbo v0, "DeleteVideoCaptureAndroid"

    invoke-static {v0}, Lorg/webrtc/videoengine/VideoCaptureAndroid;->log(Ljava/lang/String;)V

    .line 208
    invoke-static {p0}, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;->DeleteCamera(Lorg/webrtc/videoengine/VideoCaptureAndroid;)V

    .line 209
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 44
    invoke-static {p0}, Lorg/webrtc/videoengine/VideoCaptureAndroid;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lorg/webrtc/videoengine/VideoCaptureAndroid;)Landroid/view/SurfaceHolder;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->surfaceHolder:Landroid/view/SurfaceHolder;

    return-object v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 511
    return-void
.end method

.method private notifyStartEventCallback()V
    .locals 3

    .prologue
    .line 169
    iget-object v1, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->subscribers:Ljava/util/Set;

    monitor-enter v1

    .line 170
    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v2, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->subscribers:Ljava/util/Set;

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 171
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/webrtc/videoengine/VideoCaptureAndroid$CaptureEventCallback;

    .line 173
    invoke-interface {v0, p0}, Lorg/webrtc/videoengine/VideoCaptureAndroid$CaptureEventCallback;->onStartCapture(Lorg/webrtc/videoengine/VideoCaptureAndroid;)V

    goto :goto_0

    .line 171
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 175
    :cond_0
    return-void
.end method

.method private notifyStopEventCallback()V
    .locals 3

    .prologue
    .line 179
    iget-object v1, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->subscribers:Ljava/util/Set;

    monitor-enter v1

    .line 180
    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v2, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->subscribers:Ljava/util/Set;

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 181
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/webrtc/videoengine/VideoCaptureAndroid$CaptureEventCallback;

    .line 183
    invoke-interface {v0, p0}, Lorg/webrtc/videoengine/VideoCaptureAndroid$CaptureEventCallback;->onStopCapture(Lorg/webrtc/videoengine/VideoCaptureAndroid;)V

    goto :goto_0

    .line 181
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 185
    :cond_0
    return-void
.end method

.method private tryStartCapture(III)I
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 228
    iget-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Camera not initialized "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/webrtc/videoengine/VideoCaptureAndroid;->log(Ljava/lang/String;)V

    .line 230
    const/4 v0, -0x1

    .line 350
    :goto_0
    return v0

    .line 233
    :cond_0
    iget-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->isCaptureRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->isCaptureStarted:Z

    if-nez v0, :cond_2

    .line 234
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "tryStartCapture: double start guard, isCaptureRunning="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->isCaptureRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", isCaptureStarted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->isCaptureStarted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/webrtc/videoengine/VideoCaptureAndroid;->log(Ljava/lang/String;)V

    .line 244
    const/4 v0, 0x0

    goto :goto_0

    .line 247
    :cond_2
    iget-boolean v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->isSurfaceReady:Z

    if-nez v0, :cond_3

    .line 248
    const-string/jumbo v0, "tryStartCapture: waiting for surface..."

    invoke-static {v0}, Lorg/webrtc/videoengine/VideoCaptureAndroid;->log(Ljava/lang/String;)V

    .line 249
    const/4 v0, 0x0

    goto :goto_0

    .line 252
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "tryStartCapture "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " height "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " frame rate "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " isCaptureRunning="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->isCaptureRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " isSurfaceReady="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->isSurfaceReady:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " isCaptureStarted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->isCaptureStarted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/webrtc/videoengine/VideoCaptureAndroid;->log(Ljava/lang/String;)V

    .line 259
    :try_start_0
    new-instance v4, Lorg/webrtc/videoengine/CaptureCapabilityAndroid;

    invoke-direct {v4}, Lorg/webrtc/videoengine/CaptureCapabilityAndroid;-><init>()V

    .line 261
    iput p1, v4, Lorg/webrtc/videoengine/CaptureCapabilityAndroid;->width:I

    .line 262
    iput p2, v4, Lorg/webrtc/videoengine/CaptureCapabilityAndroid;->height:I

    .line 263
    iput p3, v4, Lorg/webrtc/videoengine/CaptureCapabilityAndroid;->maxFPS:I

    .line 264
    iget v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->PIXEL_FORMAT:I

    iget-object v1, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->pixelFormat:Landroid/graphics/PixelFormat;

    invoke-static {v0, v1}, Landroid/graphics/PixelFormat;->getPixelFormatInfo(ILandroid/graphics/PixelFormat;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move v2, p2

    move v3, p1

    .line 268
    :goto_1
    const/16 v0, 0x280

    if-ne v0, v3, :cond_4

    const/16 v0, 0x1e0

    if-eq v0, v2, :cond_9

    :cond_4
    const/4 v0, 0x1

    .line 270
    :goto_2
    :try_start_1
    iget-object v1, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 271
    iget v5, v4, Lorg/webrtc/videoengine/CaptureCapabilityAndroid;->width:I

    iget v6, v4, Lorg/webrtc/videoengine/CaptureCapabilityAndroid;->height:I

    invoke-virtual {v1, v5, v6}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 273
    iget v5, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->PIXEL_FORMAT:I

    invoke-virtual {v1, v5}, Landroid/hardware/Camera$Parameters;->setPreviewFormat(I)V

    .line 274
    iget v5, v4, Lorg/webrtc/videoengine/CaptureCapabilityAndroid;->maxFPS:I

    invoke-virtual {v1, v5}, Landroid/hardware/Camera$Parameters;->setPreviewFrameRate(I)V

    .line 275
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xe

    if-lt v5, v6, :cond_5

    .line 276
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Landroid/hardware/Camera$Parameters;->setRecordingHint(Z)V

    .line 278
    :cond_5
    invoke-virtual {v1, v3, v2}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 279
    const-string/jumbo v5, "video-size"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xf

    if-lt v5, v6, :cond_6

    .line 281
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->isVideoStabilizationSupported()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 282
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Landroid/hardware/Camera$Parameters;->setVideoStabilization(Z)V

    .line 288
    :cond_6
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v5

    .line 289
    if-eqz v5, :cond_7

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_7

    .line 290
    const-string/jumbo v6, "continuous-video"

    invoke-static {v5, v6}, Lcom/viber/voip/util/u;->a(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 291
    const-string/jumbo v5, "continuous-video"

    invoke-virtual {v1, v5}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 295
    :cond_7
    iget-object v5, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    invoke-virtual {v5, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move v1, v2

    move v2, v3

    .line 307
    :cond_8
    :try_start_2
    iget-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0, p0}, Landroid/hardware/Camera;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 309
    mul-int v0, v2, v1

    iget-object v3, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->pixelFormat:Landroid/graphics/PixelFormat;

    iget v3, v3, Landroid/graphics/PixelFormat;->bitsPerPixel:I

    mul-int/2addr v0, v3

    shr-int/lit8 v3, v0, 0x3

    .line 312
    const/4 v0, 0x0

    :goto_3
    const/4 v4, 0x3

    if-ge v0, v4, :cond_b

    .line 313
    new-array v4, v3, [B

    .line 314
    iget-object v5, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    invoke-virtual {v5, v4}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 312
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 268
    :cond_9
    const/4 v0, 0x0

    goto/16 :goto_2

    .line 297
    :catch_0
    move-exception v1

    .line 298
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 299
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "got exception while trying to launch camera on "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "x"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", trying VGA fallback"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/webrtc/videoengine/VideoCaptureAndroid;->log(Ljava/lang/String;)V

    .line 300
    if-eqz v0, :cond_a

    .line 301
    const/16 v2, 0x280

    const/16 v1, 0x1e0

    .line 306
    if-eqz v0, :cond_8

    move v3, v2

    move v2, v1

    goto/16 :goto_1

    .line 303
    :cond_a
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 344
    :catch_1
    move-exception v0

    .line 345
    const-string/jumbo v1, "Failed to start camera"

    invoke-static {v1}, Lorg/webrtc/videoengine/VideoCaptureAndroid;->log(Ljava/lang/String;)V

    .line 346
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 347
    const/4 v0, -0x1

    goto/16 :goto_0

    .line 316
    :cond_b
    :try_start_3
    iget-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0, p0}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 317
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->ownsBuffers:Z

    .line 322
    sget-boolean v0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->USE_LIVE_CAMERA_PREVIEW:Z

    if-eqz v0, :cond_c

    .line 323
    invoke-static {}, Lorg/webrtc/videoengine/ViERenderer;->getLocalRenderView()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lorg/webrtc/videoengine/ViEDirectInputSurface;

    if-eqz v0, :cond_d

    .line 324
    iget-object v4, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    invoke-static {}, Lorg/webrtc/videoengine/ViERenderer;->getLocalRenderView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/webrtc/videoengine/ViEDirectInputSurface;

    invoke-virtual {v0}, Lorg/webrtc/videoengine/ViEDirectInputSurface;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V

    .line 328
    :goto_4
    iget-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->currentDevice:Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;

    iget v0, v0, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->orientation:I

    invoke-virtual {p0, v0}, Lorg/webrtc/videoengine/VideoCaptureAndroid;->SetPreviewRotation(I)V

    .line 330
    :cond_c
    invoke-static {}, Lcom/viber/voip/phone/VideoCallActivity;->b()I

    move-result v0

    .line 331
    invoke-virtual {p0, v0}, Lorg/webrtc/videoengine/VideoCaptureAndroid;->getDeviceOrientationFromRotation(I)I

    move-result v0

    .line 332
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v4

    invoke-virtual {v4, v0, v2, v1}, Lcom/viber/jni/PhoneControllerWrapper;->setDeviceOrientation(III)I

    .line 333
    iget-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->currentDevice:Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;

    const-wide/high16 v4, 0x3ff0

    int-to-double v6, v2

    mul-double/2addr v4, v6

    int-to-double v1, v1

    div-double v1, v4, v1

    iput-wide v1, v0, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->device_aspect_ratio:D

    .line 334
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "overridding actual aspect ratio to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->currentDevice:Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;

    iget-wide v1, v1, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->device_aspect_ratio:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/webrtc/videoengine/VideoCaptureAndroid;->log(Ljava/lang/String;)V

    .line 335
    iget-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 337
    :try_start_4
    iget-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->previewBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 338
    iput v3, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->expectedFrameSize:I

    .line 339
    iget-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->isCaptureRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 341
    :try_start_5
    iget-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->previewBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 343
    invoke-direct {p0}, Lorg/webrtc/videoengine/VideoCaptureAndroid;->notifyStartEventCallback()V

    .line 350
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 326
    :cond_d
    iget-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    iget-object v4, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->surfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v0, v4}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    goto :goto_4

    .line 341
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->previewBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
.end method


# virtual methods
.method native ProvideCameraFrame([BIJ)V
.end method

.method public SetPreviewRotation(I)V
    .locals 3
    .parameter

    .prologue
    .line 453
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SetPreviewRotation:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "; camera type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->currentDevice:Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;

    iget-object v0, v0, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->frontCameraType:Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;

    sget-object v2, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;->Android23:Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;

    if-ne v0, v2, :cond_0

    const-string/jumbo v0, "FRONT"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/webrtc/videoengine/VideoCaptureAndroid;->log(Ljava/lang/String;)V

    .line 456
    iget-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    if-nez v0, :cond_1

    .line 481
    :goto_1
    return-void

    .line 453
    :cond_0
    const-string/jumbo v0, "BACK"

    goto :goto_0

    .line 461
    :cond_1
    :try_start_0
    iget-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->previewBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 464
    iget-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->currentDevice:Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;

    iget-object v0, v0, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->frontCameraType:Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;

    sget-object v1, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;->Android23:Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;

    if-ne v0, v1, :cond_2

    .line 469
    rsub-int v0, p1, 0x168

    rem-int/lit16 p1, v0, 0x168

    .line 476
    :cond_2
    iget-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setDisplayOrientation(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 479
    iget-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->previewBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->previewBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public StartCapture(III)I
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 354
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "StartCapture width "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " height "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " frame rate "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/webrtc/videoengine/VideoCaptureAndroid;->log(Ljava/lang/String;)V

    .line 357
    invoke-static {}, Lorg/webrtc/videoengine/ViERenderer;->GetLocalRenderer()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->localPreview:Landroid/view/SurfaceHolder;

    .line 358
    invoke-static {p0}, Lorg/webrtc/videoengine/ViERenderer;->addRenderEventSubscriber(Lorg/webrtc/videoengine/ViERenderer$ViERendererCallback;)V

    .line 361
    :try_start_0
    iget-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->captureLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 362
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->isCaptureStarted:Z

    .line 363
    iput p1, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->mCaptureWidth:I

    .line 364
    iput p2, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->mCaptureHeight:I

    .line 365
    iput p3, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->mCaptureFPS:I

    .line 366
    iget-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->localPreview:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_0

    .line 367
    iget-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->localPreview:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 370
    :cond_0
    iget v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->mCaptureWidth:I

    iget v1, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->mCaptureHeight:I

    iget v2, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->mCaptureFPS:I

    invoke-direct {p0, v0, v1, v2}, Lorg/webrtc/videoengine/VideoCaptureAndroid;->tryStartCapture(III)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 372
    iget-object v1, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->captureLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 374
    return v0

    .line 372
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->captureLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public StopCapture()I
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 378
    const-string/jumbo v1, "StopCapture"

    invoke-static {v1}, Lorg/webrtc/videoengine/VideoCaptureAndroid;->log(Ljava/lang/String;)V

    .line 380
    :try_start_0
    iget-object v1, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->previewBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 381
    iget-object v1, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->isCaptureRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_0

    .line 405
    iget-object v1, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->previewBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 406
    const-string/jumbo v1, "StopCapture finished"

    invoke-static {v1}, Lorg/webrtc/videoengine/VideoCaptureAndroid;->log(Ljava/lang/String;)V

    .line 410
    :goto_0
    return v0

    .line 383
    :cond_0
    :try_start_1
    const-string/jumbo v1, "stopping preview callback"

    invoke-static {v1}, Lorg/webrtc/videoengine/VideoCaptureAndroid;->log(Ljava/lang/String;)V

    .line 384
    iget-object v1, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 385
    iget-object v1, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 386
    invoke-static {p0}, Lorg/webrtc/videoengine/ViERenderer;->removeRenderEventSubscriber(Lorg/webrtc/videoengine/ViERenderer$ViERendererCallback;)V

    .line 387
    iget-object v1, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->localPreview:Landroid/view/SurfaceHolder;

    invoke-interface {v1, p0}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 388
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->localPreview:Landroid/view/SurfaceHolder;

    .line 389
    const-string/jumbo v1, "stopping camera"

    invoke-static {v1}, Lorg/webrtc/videoengine/VideoCaptureAndroid;->log(Ljava/lang/String;)V

    .line 392
    sget-object v1, Lcom/viber/voip/dk;->a:Lcom/viber/voip/dk;

    invoke-static {v1}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->problematicCameraCallback:Ljava/lang/Runnable;

    const-wide/16 v3, 0x1388

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 394
    const-string/jumbo v1, "problematic camera notification sent to ui thread"

    invoke-static {v1}, Lorg/webrtc/videoengine/VideoCaptureAndroid;->log(Ljava/lang/String;)V

    .line 395
    iget-object v1, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->stopPreview()V

    .line 396
    const-string/jumbo v1, "preview stopped"

    invoke-static {v1}, Lorg/webrtc/videoengine/VideoCaptureAndroid;->log(Ljava/lang/String;)V

    .line 397
    sget-object v1, Lcom/viber/voip/dk;->a:Lcom/viber/voip/dk;

    invoke-static {v1}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->problematicCameraCallback:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 398
    const-string/jumbo v1, "camera service released"

    invoke-static {v1}, Lorg/webrtc/videoengine/VideoCaptureAndroid;->log(Ljava/lang/String;)V

    .line 399
    iget-object v1, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->isCaptureRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 400
    invoke-direct {p0}, Lorg/webrtc/videoengine/VideoCaptureAndroid;->notifyStopEventCallback()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 405
    iget-object v1, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->previewBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 406
    const-string/jumbo v1, "StopCapture finished"

    invoke-static {v1}, Lorg/webrtc/videoengine/VideoCaptureAndroid;->log(Ljava/lang/String;)V

    .line 409
    iput-boolean v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->isCaptureStarted:Z

    goto :goto_0

    .line 401
    :catch_0
    move-exception v0

    .line 402
    :try_start_2
    const-string/jumbo v0, "Failed to stop camera"

    invoke-static {v0}, Lorg/webrtc/videoengine/VideoCaptureAndroid;->log(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 403
    const/4 v0, -0x1

    .line 405
    iget-object v1, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->previewBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 406
    const-string/jumbo v1, "StopCapture finished"

    invoke-static {v1}, Lorg/webrtc/videoengine/VideoCaptureAndroid;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 405
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->previewBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 406
    const-string/jumbo v1, "StopCapture finished"

    invoke-static {v1}, Lorg/webrtc/videoengine/VideoCaptureAndroid;->log(Ljava/lang/String;)V

    throw v0
.end method

.method public addEventCallback(Lorg/webrtc/videoengine/VideoCaptureAndroid$CaptureEventCallback;)V
    .locals 2
    .parameter

    .prologue
    .line 156
    iget-object v1, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->subscribers:Ljava/util/Set;

    monitor-enter v1

    .line 157
    :try_start_0
    iget-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->subscribers:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 158
    monitor-exit v1

    .line 159
    return-void

    .line 158
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getCaptureCameraFacing()Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;
    .locals 1

    .prologue
    .line 536
    iget-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->currentDevice:Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;

    iget-object v0, v0, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->frontCameraType:Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;

    return-object v0
.end method

.method public getDeviceAspectRatio()D
    .locals 2

    .prologue
    .line 548
    iget-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->currentDevice:Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;

    iget-wide v0, v0, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->device_aspect_ratio:D

    return-wide v0
.end method

.method public final getDeviceOrientationFromRotation(I)I
    .locals 2
    .parameter

    .prologue
    .line 196
    iget-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->currentDevice:Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;

    iget-object v0, v0, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->frontCameraType:Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;

    sget-object v1, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;->Android23:Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;

    if-eq v0, v1, :cond_1

    .line 198
    if-eqz p1, :cond_0

    const/16 v0, 0xb4

    if-ne p1, v0, :cond_1

    .line 199
    :cond_0
    add-int/lit16 v0, p1, 0xb4

    rem-int/lit16 p1, v0, 0x168

    .line 202
    :cond_1
    iget-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->currentDevice:Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;

    iget v0, v0, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->device_rotation_hint:I

    add-int/2addr v0, p1

    rem-int/lit16 v0, v0, 0x168

    return v0
.end method

.method public getDeviceRotationHint()I
    .locals 1

    .prologue
    .line 540
    iget-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->currentDevice:Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;

    iget v0, v0, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->device_rotation_hint:I

    return v0
.end method

.method public getDeviceUniqueName()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 544
    iget-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->deviceUniqueName:Ljava/lang/String;

    return-object v0
.end method

.method public onError(ILandroid/hardware/Camera;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 531
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "VideoCaptureAndroid: camera returned error code "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/webrtc/videoengine/VideoCaptureAndroid;->log(Ljava/lang/String;)V

    .line 533
    return-void
.end method

.method public onLocalSurfaceChanged()V
    .locals 3

    .prologue
    .line 515
    const-string/jumbo v0, "VideoCaptureAndroid::onLocalSurfaceChanged - restarting on new surface"

    invoke-static {v0}, Lorg/webrtc/videoengine/VideoCaptureAndroid;->log(Ljava/lang/String;)V

    .line 516
    iget v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->mCaptureWidth:I

    .line 517
    iget v1, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->mCaptureHeight:I

    .line 518
    iget v2, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->mCaptureFPS:I

    .line 519
    invoke-virtual {p0}, Lorg/webrtc/videoengine/VideoCaptureAndroid;->StopCapture()I

    .line 520
    invoke-virtual {p0, v0, v1, v2}, Lorg/webrtc/videoengine/VideoCaptureAndroid;->StartCapture(III)I

    .line 521
    return-void
.end method

.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 417
    if-nez p1, :cond_0

    .line 418
    const-string/jumbo v0, "got null data - stopping capture"

    invoke-static {v0}, Lorg/webrtc/videoengine/VideoCaptureAndroid;->log(Ljava/lang/String;)V

    .line 419
    invoke-virtual {p0}, Lorg/webrtc/videoengine/VideoCaptureAndroid;->StopCapture()I

    .line 448
    :goto_0
    return-void

    .line 424
    :cond_0
    :try_start_0
    iget-boolean v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->ownsBuffers:Z

    if-eqz v0, :cond_1

    .line 427
    invoke-virtual {p2, p1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 430
    :cond_1
    iget-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->previewBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 435
    iget-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->isCaptureRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 438
    array-length v0, p1

    iget v1, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->expectedFrameSize:I

    if-ne v0, v1, :cond_2

    .line 440
    iget v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->expectedFrameSize:I

    iget-wide v1, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->context:J

    invoke-virtual {p0, p1, v0, v1, v2}, Lorg/webrtc/videoengine/VideoCaptureAndroid;->ProvideCameraFrame([BIJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 446
    :cond_2
    iget-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->previewBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->previewBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public onRenderGone()V
    .locals 1

    .prologue
    .line 525
    const-string/jumbo v0, "VideoCaptureAndroid::onRenderGone - stopping capturer"

    invoke-static {v0}, Lorg/webrtc/videoengine/VideoCaptureAndroid;->log(Ljava/lang/String;)V

    .line 526
    invoke-virtual {p0}, Lorg/webrtc/videoengine/VideoCaptureAndroid;->StopCapture()I

    .line 527
    return-void
.end method

.method public removeEventCallback(Lorg/webrtc/videoengine/VideoCaptureAndroid$CaptureEventCallback;)V
    .locals 2
    .parameter

    .prologue
    .line 162
    iget-object v1, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->subscribers:Ljava/util/Set;

    monitor-enter v1

    .line 163
    :try_start_0
    iget-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->subscribers:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 164
    monitor-exit v1

    .line 165
    return-void

    .line 164
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 485
    const-string/jumbo v0, "VideoCaptureAndroid::surfaceChanged"

    invoke-static {v0}, Lorg/webrtc/videoengine/VideoCaptureAndroid;->log(Ljava/lang/String;)V

    .line 488
    :try_start_0
    iget-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->captureLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 489
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->isSurfaceReady:Z

    .line 490
    iput-object p1, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->surfaceHolder:Landroid/view/SurfaceHolder;

    .line 492
    iget v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->mCaptureWidth:I

    iget v1, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->mCaptureHeight:I

    iget v2, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->mCaptureFPS:I

    invoke-direct {p0, v0, v1, v2}, Lorg/webrtc/videoengine/VideoCaptureAndroid;->tryStartCapture(III)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 494
    iget-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->captureLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 496
    return-void

    .line 494
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->captureLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1
    .parameter

    .prologue
    .line 500
    const-string/jumbo v0, "VideoCaptureAndroid::surfaceCreated"

    invoke-static {v0}, Lorg/webrtc/videoengine/VideoCaptureAndroid;->log(Ljava/lang/String;)V

    .line 501
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1
    .parameter

    .prologue
    .line 504
    const-string/jumbo v0, "VideoCaptureAndroid::surfaceDestroyed"

    invoke-static {v0}, Lorg/webrtc/videoengine/VideoCaptureAndroid;->log(Ljava/lang/String;)V

    .line 505
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->isSurfaceReady:Z

    .line 506
    return-void
.end method
