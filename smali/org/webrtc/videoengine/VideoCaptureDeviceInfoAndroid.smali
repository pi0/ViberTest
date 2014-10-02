.class public Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static captureObj:Lorg/webrtc/videoengine/VideoCaptureAndroid;

.field static deviceList:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/util/List",
            "<",
            "Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;",
            ">;>;"
        }
    .end annotation
.end field

.field private static subscribers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$VideoCaptureEventListener;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field context:Landroid/content/Context;

.field currentDeviceUniqueId:Ljava/lang/String;

.field id:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const-class v0, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;->TAG:Ljava/lang/String;

    .line 95
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;->deviceList:Ljava/util/concurrent/atomic/AtomicReference;

    .line 365
    const/4 v0, 0x0

    sput-object v0, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;->captureObj:Lorg/webrtc/videoengine/VideoCaptureAndroid;

    .line 366
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;->subscribers:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>(ILandroid/content/Context;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    iput p1, p0, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;->id:I

    .line 126
    iput-object p2, p0, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;->context:Landroid/content/Context;

    .line 127
    sget-object v0, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;->deviceList:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 128
    return-void
.end method

.method private AddDeviceInfo(Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;Landroid/hardware/Camera$Parameters;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 207
    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v3

    .line 208
    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFpsRange()Ljava/util/List;

    move-result-object v0

    .line 211
    if-eqz v0, :cond_2

    .line 212
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v0, v1

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 213
    const/16 v4, 0x1e

    aget v5, v0, v1

    const/4 v6, 0x1

    aget v0, v0, v6

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    :cond_0
    move v2, v0

    .line 221
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lorg/webrtc/videoengine/CaptureCapabilityAndroid;

    iput-object v0, p1, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->captureCapabilies:[Lorg/webrtc/videoengine/CaptureCapabilityAndroid;

    .line 222
    :goto_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 223
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    .line 224
    iget-object v4, p1, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->captureCapabilies:[Lorg/webrtc/videoengine/CaptureCapabilityAndroid;

    new-instance v5, Lorg/webrtc/videoengine/CaptureCapabilityAndroid;

    invoke-direct {v5}, Lorg/webrtc/videoengine/CaptureCapabilityAndroid;-><init>()V

    aput-object v5, v4, v1

    .line 225
    iget-object v4, p1, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->captureCapabilies:[Lorg/webrtc/videoengine/CaptureCapabilityAndroid;

    aget-object v4, v4, v1

    iget v5, v0, Landroid/hardware/Camera$Size;->height:I

    iput v5, v4, Lorg/webrtc/videoengine/CaptureCapabilityAndroid;->height:I

    .line 226
    iget-object v4, p1, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->captureCapabilies:[Lorg/webrtc/videoengine/CaptureCapabilityAndroid;

    aget-object v4, v4, v1

    iget v5, v0, Landroid/hardware/Camera$Size;->width:I

    iput v5, v4, Lorg/webrtc/videoengine/CaptureCapabilityAndroid;->width:I

    .line 227
    iget-object v4, p1, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->captureCapabilies:[Lorg/webrtc/videoengine/CaptureCapabilityAndroid;

    aget-object v4, v4, v1

    iput v2, v4, Lorg/webrtc/videoengine/CaptureCapabilityAndroid;->maxFPS:I

    .line 228
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "VideoCaptureDeviceInfo maxFPS:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " width:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " height:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;->log(Ljava/lang/String;)V

    .line 222
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 232
    :cond_1
    return-void

    :cond_2
    move v2, v1

    goto :goto_1
.end method

.method private AddDeviceSpecificCapability(Lorg/webrtc/videoengine/CaptureCapabilityAndroid;)V
    .locals 9
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 296
    sget-object v1, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;->deviceList:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v1

    .line 297
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    sget-object v0, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;->deviceList:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 298
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 299
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;

    .line 301
    iget-object v4, v0, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->captureCapabilies:[Lorg/webrtc/videoengine/CaptureCapabilityAndroid;

    array-length v5, v4

    move v1, v2

    :goto_1
    if-ge v1, v5, :cond_4

    aget-object v6, v4, v1

    .line 302
    iget v7, v6, Lorg/webrtc/videoengine/CaptureCapabilityAndroid;->width:I

    iget v8, p1, Lorg/webrtc/videoengine/CaptureCapabilityAndroid;->width:I

    if-ne v7, v8, :cond_1

    iget v6, v6, Lorg/webrtc/videoengine/CaptureCapabilityAndroid;->height:I

    iget v7, p1, Lorg/webrtc/videoengine/CaptureCapabilityAndroid;->height:I

    if-ne v6, v7, :cond_1

    .line 304
    const/4 v1, 0x1

    .line 308
    :goto_2
    if-nez v1, :cond_0

    .line 309
    iget-object v1, v0, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->captureCapabilies:[Lorg/webrtc/videoengine/CaptureCapabilityAndroid;

    array-length v1, v1

    add-int/lit8 v1, v1, 0x1

    new-array v4, v1, [Lorg/webrtc/videoengine/CaptureCapabilityAndroid;

    move v1, v2

    .line 311
    :goto_3
    iget-object v5, v0, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->captureCapabilies:[Lorg/webrtc/videoengine/CaptureCapabilityAndroid;

    array-length v5, v5

    if-ge v1, v5, :cond_2

    .line 312
    add-int/lit8 v5, v1, 0x1

    iget-object v6, v0, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->captureCapabilies:[Lorg/webrtc/videoengine/CaptureCapabilityAndroid;

    aget-object v6, v6, v1

    aput-object v6, v4, v5

    .line 311
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 298
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 301
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 314
    :cond_2
    aput-object p1, v4, v2

    .line 315
    iput-object v4, v0, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->captureCapabilies:[Lorg/webrtc/videoengine/CaptureCapabilityAndroid;

    goto :goto_0

    .line 318
    :cond_3
    return-void

    :cond_4
    move v1, v2

    goto :goto_2
.end method

.method private AllocateCamera(IJLjava/lang/String;)Lorg/webrtc/videoengine/VideoCaptureAndroid;
    .locals 8
    .parameter
    .parameter
    .parameter
    .annotation build Lorg/webrtc/videoengine/ViEOMXHelper$Native;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 421
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "AllocateCamera "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;->log(Ljava/lang/String;)V

    .line 426
    sget-object v2, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;->deviceList:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 427
    :try_start_1
    new-instance v3, Ljava/util/ArrayList;

    sget-object v0, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;->deviceList:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 428
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 429
    :try_start_2
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v5, v1

    move-object v4, v1

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;

    .line 430
    iget-object v3, v0, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->deviceUniqueName:Ljava/lang/String;

    invoke-virtual {v3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 433
    sget-object v3, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$1;->$SwitchMap$org$webrtc$videoengine$VideoCaptureDeviceInfoAndroid$FrontFacingCameraType:[I

    iget-object v4, v0, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->frontCameraType:Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;

    invoke-virtual {v4}, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 442
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x8

    if-le v3, v4, :cond_1

    .line 443
    iget v3, v0, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->index:I

    invoke-static {v3}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v4

    :goto_1
    move-object v5, v0

    .line 445
    goto :goto_0

    .line 428
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 457
    :catch_0
    move-exception v0

    .line 458
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "AllocateCamera Failed to open camera- ex "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;->log(Ljava/lang/String;)V

    .line 460
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 462
    :goto_2
    sget-object v0, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;->captureObj:Lorg/webrtc/videoengine/VideoCaptureAndroid;

    if-eqz v0, :cond_0

    .line 463
    sget-object v0, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;->captureObj:Lorg/webrtc/videoengine/VideoCaptureAndroid;

    invoke-static {v0}, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;->notifyCaptureAllocated(Lorg/webrtc/videoengine/VideoCaptureAndroid;)V

    .line 465
    :cond_0
    sget-object v0, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;->captureObj:Lorg/webrtc/videoengine/VideoCaptureAndroid;

    :goto_3
    return-object v0

    .line 435
    :pswitch_0
    :try_start_5
    invoke-direct {p0}, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;->AllocateGalaxySFrontCamera()Landroid/hardware/Camera;

    move-result-object v4

    goto :goto_1

    .line 438
    :pswitch_1
    invoke-direct {p0}, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;->AllocateEVOFrontFacingCamera()Landroid/hardware/Camera;

    move-result-object v4

    goto :goto_1

    .line 445
    :cond_1
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v4

    goto :goto_1

    .line 450
    :cond_2
    if-nez v4, :cond_3

    move-object v0, v1

    .line 451
    goto :goto_3

    .line 453
    :cond_3
    const-string/jumbo v0, "AllocateCamera - creating VideoCaptureAndroid"

    invoke-static {v0}, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;->log(Ljava/lang/String;)V

    .line 454
    const-class v7, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;

    monitor-enter v7
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 455
    :try_start_6
    new-instance v0, Lorg/webrtc/videoengine/VideoCaptureAndroid;

    move v1, p1

    move-wide v2, p2

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lorg/webrtc/videoengine/VideoCaptureAndroid;-><init>(IJLandroid/hardware/Camera;Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;Ljava/lang/String;)V

    sput-object v0, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;->captureObj:Lorg/webrtc/videoengine/VideoCaptureAndroid;

    .line 456
    monitor-exit v7

    goto :goto_2

    :catchall_1
    move-exception v0

    monitor-exit v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    :cond_4
    move-object v0, v5

    goto :goto_1

    .line 433
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private AllocateEVOFrontFacingCamera()Landroid/hardware/Camera;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 526
    .line 527
    new-instance v2, Ljava/io/File;

    const-string/jumbo v0, "/system/framework/com.htc.hardware.twinCamDevice.jar"

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 529
    const-string/jumbo v3, "com.htc.hardware.twinCamDevice.FrontFacingCamera"

    .line 530
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    .line 531
    if-nez v0, :cond_0

    .line 532
    new-instance v2, Ljava/io/File;

    const-string/jumbo v0, "/system/framework/com.sprint.hardware.twinCamDevice.jar"

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 534
    const-string/jumbo v3, "com.sprint.hardware.twinCamDevice.FrontFacingCamera"

    .line 535
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    .line 537
    :cond_0
    if-nez v0, :cond_1

    .line 562
    :goto_0
    return-object v1

    .line 541
    :cond_1
    const-string/jumbo v0, ""

    .line 542
    iget-object v4, p0, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;->context:Landroid/content/Context;

    if-eqz v4, :cond_2

    .line 543
    iget-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 544
    new-instance v4, Ljava/io/File;

    const-string/jumbo v5, "dexfiles"

    invoke-direct {v4, v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_2

    .line 547
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    move-result v4

    if-nez v4, :cond_2

    .line 553
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "/dexfiles"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 555
    new-instance v4, Ldalvik/system/DexClassLoader;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-direct {v4, v2, v0, v1, v5}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 559
    invoke-virtual {v4, v3}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string/jumbo v3, "getFrontFacingCamera"

    move-object v0, v1

    check-cast v0, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    move-object v0, v1

    .line 561
    check-cast v0, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera;

    move-object v1, v0

    .line 562
    goto :goto_0
.end method

.method private AllocateGalaxySFrontCamera()Landroid/hardware/Camera;
    .locals 4

    .prologue
    .line 568
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v0

    .line 569
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 570
    const-string/jumbo v2, "camera-id"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 571
    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 572
    return-object v0
.end method

.method public static CreateVideoCaptureDeviceInfoAndroid(ILandroid/content/Context;)Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 109
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v1, "VideoCaptureDeviceInfoAndroid"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;->log(Ljava/lang/String;)V

    .line 112
    new-instance v0, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;

    invoke-direct {v0, p0, p1}, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;-><init>(ILandroid/content/Context;)V

    .line 114
    if-eqz v0, :cond_0

    invoke-direct {v0}, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;->Init()I

    move-result v1

    if-nez v1, :cond_0

    .line 120
    :goto_0
    return-object v0

    .line 118
    :cond_0
    const-string/jumbo v0, "Failed to create VideoCaptureDeviceInfoAndroid."

    invoke-static {v0}, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;->log(Ljava/lang/String;)V

    .line 120
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static DeleteCamera(Lorg/webrtc/videoengine/VideoCaptureAndroid;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 403
    if-eqz p0, :cond_0

    .line 404
    invoke-static {p0}, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;->notifyCaptureDeleted(Lorg/webrtc/videoengine/VideoCaptureAndroid;)V

    .line 406
    :cond_0
    sget-object v0, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;->captureObj:Lorg/webrtc/videoengine/VideoCaptureAndroid;

    if-ne v0, p0, :cond_1

    .line 407
    const-class v1, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;

    monitor-enter v1

    .line 408
    const/4 v0, 0x0

    :try_start_0
    sput-object v0, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;->captureObj:Lorg/webrtc/videoengine/VideoCaptureAndroid;

    .line 409
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 411
    :cond_1
    invoke-virtual {p0}, Lorg/webrtc/videoengine/VideoCaptureAndroid;->StopCapture()I

    .line 412
    iget-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 413
    iput-object v2, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->camera:Landroid/hardware/Camera;

    .line 414
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->context:J

    .line 415
    return-void

    .line 409
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private Init()I
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 132
    sget-object v0, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;->deviceList:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;->deviceList:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    move v0, v1

    .line 200
    :goto_0
    return v0

    .line 138
    :cond_0
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x8

    if-le v0, v2, :cond_2

    move v2, v1

    .line 140
    :goto_1
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v0

    if-ge v2, v0, :cond_3

    .line 141
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 142
    invoke-static {v2, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 143
    new-instance v3, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;

    iget v4, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    invoke-direct {v3, p0, v4}, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;-><init>(Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;I)V

    .line 144
    iput v2, v3, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->index:I

    .line 145
    iget v4, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    iput v4, v3, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->orientation:I

    .line 146
    iget v4, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v4, :cond_1

    .line 147
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Camera "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", Facing back, Orientation "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->deviceUniqueName:Ljava/lang/String;

    .line 149
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Camera "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", Facing back, Orientation "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;->log(Ljava/lang/String;)V

    .line 159
    :goto_2
    invoke-static {v2}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v0

    .line 160
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v4

    .line 161
    const-wide/high16 v5, 0x3ff0

    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v7

    iget v7, v7, Landroid/hardware/Camera$Size;->width:I

    int-to-double v7, v7

    mul-double/2addr v5, v7

    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v7

    iget v7, v7, Landroid/hardware/Camera$Size;->height:I

    int-to-double v7, v7

    div-double/2addr v5, v7

    iput-wide v5, v3, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->device_aspect_ratio:D

    .line 162
    invoke-direct {p0, v3, v4}, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;->AddDeviceInfo(Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;Landroid/hardware/Camera$Parameters;)V

    .line 164
    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 166
    sget-object v4, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;->deviceList:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    :try_start_1
    sget-object v0, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;->deviceList:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 140
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_1

    .line 153
    :cond_1
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Camera "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", Facing front, Orientation "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->deviceUniqueName:Ljava/lang/String;

    .line 155
    sget-object v4, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;->Android23:Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;

    iput-object v4, v3, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->frontCameraType:Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;

    .line 156
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Camera "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", Facing front, Orientation "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;->log(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_2

    .line 192
    :catch_0
    move-exception v0

    .line 193
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Failed to init VideoCaptureDeviceInfo ex"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;->log(Ljava/lang/String;)V

    .line 195
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 196
    iget-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;->context:Landroid/content/Context;

    const-string/jumbo v1, "Failed to initialize camera"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 197
    const/4 v0, -0x1

    goto/16 :goto_0

    .line 168
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    .line 171
    :cond_2
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    move-result-object v2

    .line 172
    if-eqz v2, :cond_3

    .line 174
    :try_start_5
    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 175
    new-instance v3, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;-><init>(Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;I)V

    .line 176
    const/4 v4, 0x0

    iput v4, v3, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->index:I

    .line 177
    const/4 v4, 0x0

    iput v4, v3, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->orientation:I

    .line 178
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Camera "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v3, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->index:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", Facing back, Orientation "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v3, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->orientation:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->deviceUniqueName:Ljava/lang/String;

    .line 180
    invoke-direct {p0, v3, v0}, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;->AddDeviceInfo(Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;Landroid/hardware/Camera$Parameters;)V

    .line 181
    sget-object v4, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;->deviceList:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 182
    :try_start_6
    sget-object v0, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;->deviceList:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 186
    :try_start_7
    invoke-virtual {v2}, Landroid/hardware/Camera;->release()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 199
    :cond_3
    invoke-direct {p0}, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;->VerifyCapabilities()V

    move v0, v1

    .line 200
    goto/16 :goto_0

    .line 183
    :catchall_1
    move-exception v0

    :try_start_8
    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 186
    :catchall_2
    move-exception v0

    :try_start_a
    invoke-virtual {v2}, Landroid/hardware/Camera;->release()V

    .line 187
    throw v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
.end method

.method private SearchOldFrontFacingCameras(Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;)Landroid/hardware/Camera$Parameters;
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 477
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v1

    .line 478
    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 479
    const-string/jumbo v2, "camera-id"

    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 480
    if-eqz v2, :cond_0

    const-string/jumbo v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 483
    :try_start_0
    const-string/jumbo v2, "camera-id"

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 484
    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 485
    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 486
    sget-object v2, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;->GalaxyS:Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;

    iput-object v2, p1, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->frontCameraType:Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;

    .line 487
    const/4 v2, 0x0

    iput v2, p1, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->orientation:I

    .line 488
    invoke-virtual {v1}, Landroid/hardware/Camera;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 517
    :goto_0
    return-object v0

    .line 491
    :catch_0
    move-exception v0

    .line 493
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Init Failed to open front camera camera - ex "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;->log(Ljava/lang/String;)V

    .line 495
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 498
    :cond_0
    invoke-virtual {v1}, Landroid/hardware/Camera;->release()V

    .line 501
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/system/framework/com.htc.hardware.twinCamDevice.jar"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 503
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    .line 504
    if-nez v0, :cond_1

    .line 505
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/system/framework/com.sprint.hardware.twinCamDevice.jar"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 507
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    .line 509
    :cond_1
    if-eqz v0, :cond_2

    .line 510
    sget-object v0, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;->HTCEvo:Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;

    iput-object v0, p1, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->frontCameraType:Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;

    .line 511
    iput v4, p1, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->orientation:I

    .line 512
    invoke-direct {p0}, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;->AllocateEVOFrontFacingCamera()Landroid/hardware/Camera;

    move-result-object v1

    .line 513
    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 514
    invoke-virtual {v1}, Landroid/hardware/Camera;->release()V

    goto :goto_0

    .line 517
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private VerifyCapabilities()V
    .locals 11

    .prologue
    const/16 v10, 0x140

    const/16 v9, 0xf0

    const/4 v2, 0x0

    const/16 v6, 0xf

    .line 241
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string/jumbo v1, "GT-I9000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string/jumbo v1, "crespo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 243
    :cond_0
    new-instance v0, Lorg/webrtc/videoengine/CaptureCapabilityAndroid;

    invoke-direct {v0}, Lorg/webrtc/videoengine/CaptureCapabilityAndroid;-><init>()V

    .line 245
    const/16 v1, 0x160

    iput v1, v0, Lorg/webrtc/videoengine/CaptureCapabilityAndroid;->width:I

    .line 246
    const/16 v1, 0x120

    iput v1, v0, Lorg/webrtc/videoengine/CaptureCapabilityAndroid;->height:I

    .line 247
    iput v6, v0, Lorg/webrtc/videoengine/CaptureCapabilityAndroid;->maxFPS:I

    .line 248
    invoke-direct {p0, v0}, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;->AddDeviceSpecificCapability(Lorg/webrtc/videoengine/CaptureCapabilityAndroid;)V

    .line 250
    new-instance v0, Lorg/webrtc/videoengine/CaptureCapabilityAndroid;

    invoke-direct {v0}, Lorg/webrtc/videoengine/CaptureCapabilityAndroid;-><init>()V

    .line 251
    const/16 v1, 0xb0

    iput v1, v0, Lorg/webrtc/videoengine/CaptureCapabilityAndroid;->width:I

    .line 252
    const/16 v1, 0x90

    iput v1, v0, Lorg/webrtc/videoengine/CaptureCapabilityAndroid;->height:I

    .line 253
    iput v6, v0, Lorg/webrtc/videoengine/CaptureCapabilityAndroid;->maxFPS:I

    .line 254
    invoke-direct {p0, v0}, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;->AddDeviceSpecificCapability(Lorg/webrtc/videoengine/CaptureCapabilityAndroid;)V

    .line 256
    new-instance v0, Lorg/webrtc/videoengine/CaptureCapabilityAndroid;

    invoke-direct {v0}, Lorg/webrtc/videoengine/CaptureCapabilityAndroid;-><init>()V

    .line 257
    iput v10, v0, Lorg/webrtc/videoengine/CaptureCapabilityAndroid;->width:I

    .line 258
    iput v9, v0, Lorg/webrtc/videoengine/CaptureCapabilityAndroid;->height:I

    .line 259
    iput v6, v0, Lorg/webrtc/videoengine/CaptureCapabilityAndroid;->maxFPS:I

    .line 260
    invoke-direct {p0, v0}, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;->AddDeviceSpecificCapability(Lorg/webrtc/videoengine/CaptureCapabilityAndroid;)V

    .line 264
    :cond_1
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string/jumbo v1, "motorola"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string/jumbo v1, "umts_sholes"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 267
    sget-object v1, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;->deviceList:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v1

    .line 268
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    sget-object v0, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;->deviceList:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 269
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 270
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;

    .line 271
    iget-object v3, v0, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->captureCapabilies:[Lorg/webrtc/videoengine/CaptureCapabilityAndroid;

    array-length v4, v3

    move v0, v2

    :goto_0
    if-ge v0, v4, :cond_2

    aget-object v5, v3, v0

    .line 272
    iput v6, v5, Lorg/webrtc/videoengine/CaptureCapabilityAndroid;->maxFPS:I

    .line 271
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 269
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 277
    :cond_3
    const-string/jumbo v0, "intel"

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 278
    const-string/jumbo v0, "noonhill"

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 281
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 282
    sget-object v0, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;->deviceList:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;

    .line 283
    iget-object v5, v0, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->captureCapabilies:[Lorg/webrtc/videoengine/CaptureCapabilityAndroid;

    array-length v6, v5

    move v1, v2

    :goto_2
    if-ge v1, v6, :cond_6

    aget-object v7, v5, v1

    .line 284
    iget v8, v7, Lorg/webrtc/videoengine/CaptureCapabilityAndroid;->width:I

    if-ge v10, v8, :cond_4

    iget v8, v7, Lorg/webrtc/videoengine/CaptureCapabilityAndroid;->height:I

    if-lt v9, v8, :cond_5

    .line 285
    :cond_4
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 283
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 287
    :cond_6
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lorg/webrtc/videoengine/CaptureCapabilityAndroid;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/webrtc/videoengine/CaptureCapabilityAndroid;

    iput-object v1, v0, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->captureCapabilies:[Lorg/webrtc/videoengine/CaptureCapabilityAndroid;

    goto :goto_1

    .line 291
    :cond_7
    return-void
.end method

.method public static addEventListener(Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$VideoCaptureEventListener;)V
    .locals 2
    .parameter

    .prologue
    .line 375
    sget-object v1, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;->subscribers:Ljava/util/Set;

    monitor-enter v1

    .line 376
    :try_start_0
    sget-object v0, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;->subscribers:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 377
    monitor-exit v1

    .line 378
    return-void

    .line 377
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getCaptureDeviceIndex(Lorg/webrtc/videoengine/VideoCaptureAndroid;Ljava/util/List;)I
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/webrtc/videoengine/VideoCaptureAndroid;",
            "Ljava/util/List",
            "<",
            "Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 581
    const/4 v0, 0x0

    .line 582
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;

    .line 583
    add-int/lit8 v1, v1, 0x1

    .line 584
    iget-object v3, v0, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->deviceUniqueName:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 585
    iget-object v0, v0, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->deviceUniqueName:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/webrtc/videoengine/VideoCaptureAndroid;->getDeviceUniqueName()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 586
    add-int/lit8 v0, v1, -0x1

    .line 589
    :goto_0
    return v0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static getCurrentCaptureObject()Lorg/webrtc/videoengine/VideoCaptureAndroid;
    .locals 2

    .prologue
    .line 369
    const-class v1, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;

    monitor-enter v1

    .line 370
    :try_start_0
    sget-object v0, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;->captureObj:Lorg/webrtc/videoengine/VideoCaptureAndroid;

    monitor-exit v1

    return-object v0

    .line 371
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static final getDevicesList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 98
    sget-object v0, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;->deviceList:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 99
    const/4 v0, 0x0

    .line 104
    :goto_0
    return-object v0

    .line 101
    :cond_0
    sget-object v1, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;->deviceList:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v1

    .line 102
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    sget-object v0, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;->deviceList:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 103
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 576
    sget-object v0, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    return-void
.end method

.method private static notifyCaptureAllocated(Lorg/webrtc/videoengine/VideoCaptureAndroid;)V
    .locals 3
    .parameter

    .prologue
    .line 387
    sget-object v1, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;->subscribers:Ljava/util/Set;

    monitor-enter v1

    .line 388
    :try_start_0
    sget-object v0, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;->subscribers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$VideoCaptureEventListener;

    .line 389
    invoke-interface {v0, p0}, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$VideoCaptureEventListener;->onCaptureAllocated(Lorg/webrtc/videoengine/VideoCaptureAndroid;)V

    goto :goto_0

    .line 391
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

    .line 392
    return-void
.end method

.method private static notifyCaptureDeleted(Lorg/webrtc/videoengine/VideoCaptureAndroid;)V
    .locals 3
    .parameter

    .prologue
    .line 395
    sget-object v1, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;->subscribers:Ljava/util/Set;

    monitor-enter v1

    .line 396
    :try_start_0
    sget-object v0, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;->subscribers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$VideoCaptureEventListener;

    .line 397
    invoke-interface {v0, p0}, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$VideoCaptureEventListener;->onCaptureDeleted(Lorg/webrtc/videoengine/VideoCaptureAndroid;)V

    goto :goto_0

    .line 399
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

    .line 400
    return-void
.end method

.method public static removeEventListener(Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$VideoCaptureEventListener;)V
    .locals 2
    .parameter

    .prologue
    .line 381
    sget-object v1, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;->subscribers:Ljava/util/Set;

    monitor-enter v1

    .line 382
    :try_start_0
    sget-object v0, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;->subscribers:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 383
    monitor-exit v1

    .line 384
    return-void

    .line 383
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public GetCapabilityArray(Ljava/lang/String;)[Lorg/webrtc/videoengine/CaptureCapabilityAndroid;
    .locals 3
    .parameter

    .prologue
    .line 339
    sget-object v1, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;->deviceList:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v1

    .line 340
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    sget-object v0, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;->deviceList:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 341
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 342
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;

    .line 343
    iget-object v2, v0, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->deviceUniqueName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 344
    iget-object v0, v0, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->captureCapabilies:[Lorg/webrtc/videoengine/CaptureCapabilityAndroid;

    check-cast v0, [Lorg/webrtc/videoengine/CaptureCapabilityAndroid;

    .line 347
    :goto_0
    return-object v0

    .line 341
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 347
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public GetDeviceUniqueName(I)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 328
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;->NumberOfDevices()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 329
    :cond_0
    const/4 v0, 0x0

    .line 332
    :goto_0
    return-object v0

    .line 331
    :cond_1
    sget-object v1, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;->deviceList:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v1

    .line 332
    :try_start_0
    sget-object v0, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;->deviceList:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;

    iget-object v0, v0, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->deviceUniqueName:Ljava/lang/String;

    monitor-exit v1

    goto :goto_0

    .line 333
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public GetOrientation(Ljava/lang/String;)I
    .locals 3
    .parameter

    .prologue
    .line 354
    sget-object v1, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;->deviceList:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v1

    .line 355
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    sget-object v0, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;->deviceList:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 356
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 357
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;

    .line 358
    iget-object v2, v0, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->deviceUniqueName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 359
    iget v0, v0, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->orientation:I

    .line 362
    :goto_0
    return v0

    .line 356
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 362
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public NumberOfDevices()I
    .locals 2

    .prologue
    .line 322
    sget-object v1, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;->deviceList:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v1

    .line 323
    :try_start_0
    sget-object v0, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;->deviceList:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    monitor-exit v1

    return v0

    .line 324
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
