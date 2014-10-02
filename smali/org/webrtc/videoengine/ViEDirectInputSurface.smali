.class public Lorg/webrtc/videoengine/ViEDirectInputSurface;
.super Landroid/view/SurfaceView;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mInputSurface:Lorg/webrtc/videoengine/ViEDirectInputSurface$CodecInputSurface;

.field private mStManager:Lorg/webrtc/videoengine/ViEDirectInputSurface$SurfaceTextureManager;

.field private mSurface:Landroid/view/Surface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lorg/webrtc/videoengine/ViEDirectInputSurface;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/webrtc/videoengine/ViEDirectInputSurface;->TAG:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 506
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/webrtc/videoengine/ViEDirectInputSurface;-><init>(Landroid/content/Context;)V

    .line 507
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 497
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 492
    iput-object v0, p0, Lorg/webrtc/videoengine/ViEDirectInputSurface;->mStManager:Lorg/webrtc/videoengine/ViEDirectInputSurface$SurfaceTextureManager;

    .line 493
    iput-object v0, p0, Lorg/webrtc/videoengine/ViEDirectInputSurface;->mInputSurface:Lorg/webrtc/videoengine/ViEDirectInputSurface$CodecInputSurface;

    .line 494
    iput-object v0, p0, Lorg/webrtc/videoengine/ViEDirectInputSurface;->mSurface:Landroid/view/Surface;

    .line 498
    return-void
.end method

.method protected constructor <init>(Landroid/view/Surface;)V
    .locals 1
    .parameter

    .prologue
    .line 501
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/webrtc/videoengine/ViEDirectInputSurface;-><init>(Landroid/content/Context;)V

    .line 502
    invoke-virtual {p0, p1}, Lorg/webrtc/videoengine/ViEDirectInputSurface;->reset(Landroid/view/Surface;)V

    .line 503
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 24
    invoke-static {p0}, Lorg/webrtc/videoengine/ViEDirectInputSurface;->log(Ljava/lang/String;)V

    return-void
.end method

.method private static final log(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 562
    const/4 v0, 0x3

    sget-object v1, Lorg/webrtc/videoengine/ViEDirectInputSurface;->TAG:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 563
    return-void
.end method


# virtual methods
.method public final getSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 1

    .prologue
    .line 517
    iget-object v0, p0, Lorg/webrtc/videoengine/ViEDirectInputSurface;->mStManager:Lorg/webrtc/videoengine/ViEDirectInputSurface$SurfaceTextureManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/webrtc/videoengine/ViEDirectInputSurface;->mStManager:Lorg/webrtc/videoengine/ViEDirectInputSurface$SurfaceTextureManager;

    invoke-virtual {v0}, Lorg/webrtc/videoengine/ViEDirectInputSurface$SurfaceTextureManager;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final refresh(J)V
    .locals 3
    .parameter

    .prologue
    .line 532
    :try_start_0
    iget-object v0, p0, Lorg/webrtc/videoengine/ViEDirectInputSurface;->mInputSurface:Lorg/webrtc/videoengine/ViEDirectInputSurface$CodecInputSurface;

    invoke-virtual {v0}, Lorg/webrtc/videoengine/ViEDirectInputSurface$CodecInputSurface;->makeCurrent()V

    .line 533
    iget-object v0, p0, Lorg/webrtc/videoengine/ViEDirectInputSurface;->mStManager:Lorg/webrtc/videoengine/ViEDirectInputSurface$SurfaceTextureManager;

    invoke-virtual {v0}, Lorg/webrtc/videoengine/ViEDirectInputSurface$SurfaceTextureManager;->awaitNewImage()V

    .line 534
    iget-object v0, p0, Lorg/webrtc/videoengine/ViEDirectInputSurface;->mStManager:Lorg/webrtc/videoengine/ViEDirectInputSurface$SurfaceTextureManager;

    invoke-virtual {v0}, Lorg/webrtc/videoengine/ViEDirectInputSurface$SurfaceTextureManager;->drawImage()V

    .line 535
    iget-object v0, p0, Lorg/webrtc/videoengine/ViEDirectInputSurface;->mInputSurface:Lorg/webrtc/videoengine/ViEDirectInputSurface$CodecInputSurface;

    iget-object v1, p0, Lorg/webrtc/videoengine/ViEDirectInputSurface;->mStManager:Lorg/webrtc/videoengine/ViEDirectInputSurface$SurfaceTextureManager;

    invoke-virtual {v1}, Lorg/webrtc/videoengine/ViEDirectInputSurface$SurfaceTextureManager;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/SurfaceTexture;->getTimestamp()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/webrtc/videoengine/ViEDirectInputSurface$CodecInputSurface;->setPresentationTime(J)V

    .line 536
    iget-object v0, p0, Lorg/webrtc/videoengine/ViEDirectInputSurface;->mInputSurface:Lorg/webrtc/videoengine/ViEDirectInputSurface$CodecInputSurface;

    invoke-virtual {v0}, Lorg/webrtc/videoengine/ViEDirectInputSurface$CodecInputSurface;->swapBuffers()Z

    .line 537
    iget-object v0, p0, Lorg/webrtc/videoengine/ViEDirectInputSurface;->mInputSurface:Lorg/webrtc/videoengine/ViEDirectInputSurface$CodecInputSurface;

    invoke-virtual {v0}, Lorg/webrtc/videoengine/ViEDirectInputSurface$CodecInputSurface;->freeCurrent()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 559
    :goto_0
    return-void

    .line 538
    :catch_0
    move-exception v0

    .line 539
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public final release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 521
    iget-object v0, p0, Lorg/webrtc/videoengine/ViEDirectInputSurface;->mStManager:Lorg/webrtc/videoengine/ViEDirectInputSurface$SurfaceTextureManager;

    if-eqz v0, :cond_0

    .line 522
    iget-object v0, p0, Lorg/webrtc/videoengine/ViEDirectInputSurface;->mStManager:Lorg/webrtc/videoengine/ViEDirectInputSurface$SurfaceTextureManager;

    invoke-virtual {v0}, Lorg/webrtc/videoengine/ViEDirectInputSurface$SurfaceTextureManager;->release()V

    .line 523
    :cond_0
    iget-object v0, p0, Lorg/webrtc/videoengine/ViEDirectInputSurface;->mInputSurface:Lorg/webrtc/videoengine/ViEDirectInputSurface$CodecInputSurface;

    if-eqz v0, :cond_1

    .line 524
    iget-object v0, p0, Lorg/webrtc/videoengine/ViEDirectInputSurface;->mInputSurface:Lorg/webrtc/videoengine/ViEDirectInputSurface$CodecInputSurface;

    invoke-virtual {v0}, Lorg/webrtc/videoengine/ViEDirectInputSurface$CodecInputSurface;->release()V

    .line 525
    :cond_1
    iput-object v1, p0, Lorg/webrtc/videoengine/ViEDirectInputSurface;->mStManager:Lorg/webrtc/videoengine/ViEDirectInputSurface$SurfaceTextureManager;

    .line 526
    iput-object v1, p0, Lorg/webrtc/videoengine/ViEDirectInputSurface;->mInputSurface:Lorg/webrtc/videoengine/ViEDirectInputSurface$CodecInputSurface;

    .line 527
    iput-object v1, p0, Lorg/webrtc/videoengine/ViEDirectInputSurface;->mSurface:Landroid/view/Surface;

    .line 528
    return-void
.end method

.method protected reset(Landroid/view/Surface;)V
    .locals 2
    .parameter

    .prologue
    .line 510
    iput-object p1, p0, Lorg/webrtc/videoengine/ViEDirectInputSurface;->mSurface:Landroid/view/Surface;

    .line 511
    new-instance v0, Lorg/webrtc/videoengine/ViEDirectInputSurface$CodecInputSurface;

    iget-object v1, p0, Lorg/webrtc/videoengine/ViEDirectInputSurface;->mSurface:Landroid/view/Surface;

    invoke-direct {v0, v1}, Lorg/webrtc/videoengine/ViEDirectInputSurface$CodecInputSurface;-><init>(Landroid/view/Surface;)V

    iput-object v0, p0, Lorg/webrtc/videoengine/ViEDirectInputSurface;->mInputSurface:Lorg/webrtc/videoengine/ViEDirectInputSurface$CodecInputSurface;

    .line 512
    iget-object v0, p0, Lorg/webrtc/videoengine/ViEDirectInputSurface;->mInputSurface:Lorg/webrtc/videoengine/ViEDirectInputSurface$CodecInputSurface;

    invoke-virtual {v0}, Lorg/webrtc/videoengine/ViEDirectInputSurface$CodecInputSurface;->makeCurrent()V

    .line 513
    new-instance v0, Lorg/webrtc/videoengine/ViEDirectInputSurface$SurfaceTextureManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/webrtc/videoengine/ViEDirectInputSurface$SurfaceTextureManager;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lorg/webrtc/videoengine/ViEDirectInputSurface;->mStManager:Lorg/webrtc/videoengine/ViEDirectInputSurface$SurfaceTextureManager;

    .line 514
    return-void
.end method
