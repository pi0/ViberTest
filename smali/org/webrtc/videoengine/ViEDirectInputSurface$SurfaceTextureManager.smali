.class Lorg/webrtc/videoengine/ViEDirectInputSurface$SurfaceTextureManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# instance fields
.field private mFrameAvailable:Z

.field private mFrameSyncObject:Ljava/lang/Object;

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mTextureRender:Lorg/webrtc/videoengine/ViEDirectInputSurface$STextureRender;


# direct methods
.method public constructor <init>(Landroid/graphics/SurfaceTexture;)V
    .locals 2
    .parameter

    .prologue
    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 245
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/webrtc/videoengine/ViEDirectInputSurface$SurfaceTextureManager;->mFrameSyncObject:Ljava/lang/Object;

    .line 252
    new-instance v0, Lorg/webrtc/videoengine/ViEDirectInputSurface$STextureRender;

    invoke-direct {v0}, Lorg/webrtc/videoengine/ViEDirectInputSurface$STextureRender;-><init>()V

    iput-object v0, p0, Lorg/webrtc/videoengine/ViEDirectInputSurface$SurfaceTextureManager;->mTextureRender:Lorg/webrtc/videoengine/ViEDirectInputSurface$STextureRender;

    .line 253
    iget-object v0, p0, Lorg/webrtc/videoengine/ViEDirectInputSurface$SurfaceTextureManager;->mTextureRender:Lorg/webrtc/videoengine/ViEDirectInputSurface$STextureRender;

    invoke-virtual {v0}, Lorg/webrtc/videoengine/ViEDirectInputSurface$STextureRender;->surfaceCreated()V

    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "textureID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/webrtc/videoengine/ViEDirectInputSurface$SurfaceTextureManager;->mTextureRender:Lorg/webrtc/videoengine/ViEDirectInputSurface$STextureRender;

    invoke-virtual {v1}, Lorg/webrtc/videoengine/ViEDirectInputSurface$STextureRender;->getTextureId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    #calls: Lorg/webrtc/videoengine/ViEDirectInputSurface;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lorg/webrtc/videoengine/ViEDirectInputSurface;->access$000(Ljava/lang/String;)V

    .line 256
    if-nez p1, :cond_0

    .line 257
    new-instance v0, Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lorg/webrtc/videoengine/ViEDirectInputSurface$SurfaceTextureManager;->mTextureRender:Lorg/webrtc/videoengine/ViEDirectInputSurface$STextureRender;

    invoke-virtual {v1}, Lorg/webrtc/videoengine/ViEDirectInputSurface$STextureRender;->getTextureId()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lorg/webrtc/videoengine/ViEDirectInputSurface$SurfaceTextureManager;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 273
    :goto_0
    iget-object v0, p0, Lorg/webrtc/videoengine/ViEDirectInputSurface$SurfaceTextureManager;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, p0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 274
    return-void

    .line 259
    :cond_0
    iput-object p1, p0, Lorg/webrtc/videoengine/ViEDirectInputSurface$SurfaceTextureManager;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    goto :goto_0
.end method


# virtual methods
.method public awaitNewImage()V
    .locals 4

    .prologue
    .line 305
    .line 307
    iget-object v1, p0, Lorg/webrtc/videoengine/ViEDirectInputSurface$SurfaceTextureManager;->mFrameSyncObject:Ljava/lang/Object;

    monitor-enter v1

    .line 308
    :cond_0
    :try_start_0
    iget-boolean v0, p0, Lorg/webrtc/videoengine/ViEDirectInputSurface$SurfaceTextureManager;->mFrameAvailable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 312
    :try_start_1
    iget-object v0, p0, Lorg/webrtc/videoengine/ViEDirectInputSurface$SurfaceTextureManager;->mFrameSyncObject:Ljava/lang/Object;

    const-wide/16 v2, 0x9c4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 313
    iget-boolean v0, p0, Lorg/webrtc/videoengine/ViEDirectInputSurface$SurfaceTextureManager;->mFrameAvailable:Z

    if-nez v0, :cond_0

    .line 315
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Camera frame wait timed out"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 317
    :catch_0
    move-exception v0

    .line 319
    :try_start_2
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 323
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 322
    :cond_1
    const/4 v0, 0x0

    :try_start_3
    iput-boolean v0, p0, Lorg/webrtc/videoengine/ViEDirectInputSurface$SurfaceTextureManager;->mFrameAvailable:Z

    .line 323
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 326
    iget-object v0, p0, Lorg/webrtc/videoengine/ViEDirectInputSurface$SurfaceTextureManager;->mTextureRender:Lorg/webrtc/videoengine/ViEDirectInputSurface$STextureRender;

    const-string/jumbo v1, "before updateTexImage"

    invoke-virtual {v0, v1}, Lorg/webrtc/videoengine/ViEDirectInputSurface$STextureRender;->checkGlError(Ljava/lang/String;)V

    .line 327
    iget-object v0, p0, Lorg/webrtc/videoengine/ViEDirectInputSurface$SurfaceTextureManager;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 328
    return-void
.end method

.method public changeFragmentShader(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 297
    iget-object v0, p0, Lorg/webrtc/videoengine/ViEDirectInputSurface$SurfaceTextureManager;->mTextureRender:Lorg/webrtc/videoengine/ViEDirectInputSurface$STextureRender;

    invoke-virtual {v0, p1}, Lorg/webrtc/videoengine/ViEDirectInputSurface$STextureRender;->changeFragmentShader(Ljava/lang/String;)V

    .line 298
    return-void
.end method

.method public drawImage()V
    .locals 2

    .prologue
    .line 334
    iget-object v0, p0, Lorg/webrtc/videoengine/ViEDirectInputSurface$SurfaceTextureManager;->mTextureRender:Lorg/webrtc/videoengine/ViEDirectInputSurface$STextureRender;

    iget-object v1, p0, Lorg/webrtc/videoengine/ViEDirectInputSurface$SurfaceTextureManager;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1}, Lorg/webrtc/videoengine/ViEDirectInputSurface$STextureRender;->drawFrame(Landroid/graphics/SurfaceTexture;)V

    .line 335
    return-void
.end method

.method public getSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lorg/webrtc/videoengine/ViEDirectInputSurface$SurfaceTextureManager;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 3
    .parameter

    .prologue
    .line 339
    const-string/jumbo v0, "new frame available"

    #calls: Lorg/webrtc/videoengine/ViEDirectInputSurface;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lorg/webrtc/videoengine/ViEDirectInputSurface;->access$000(Ljava/lang/String;)V

    .line 340
    iget-object v1, p0, Lorg/webrtc/videoengine/ViEDirectInputSurface$SurfaceTextureManager;->mFrameSyncObject:Ljava/lang/Object;

    monitor-enter v1

    .line 341
    :try_start_0
    iget-boolean v0, p0, Lorg/webrtc/videoengine/ViEDirectInputSurface$SurfaceTextureManager;->mFrameAvailable:Z

    if-eqz v0, :cond_0

    .line 342
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "mFrameAvailable already set, frame could be dropped"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 346
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 344
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lorg/webrtc/videoengine/ViEDirectInputSurface$SurfaceTextureManager;->mFrameAvailable:Z

    .line 345
    iget-object v0, p0, Lorg/webrtc/videoengine/ViEDirectInputSurface$SurfaceTextureManager;->mFrameSyncObject:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 346
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 347
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 281
    iput-object v0, p0, Lorg/webrtc/videoengine/ViEDirectInputSurface$SurfaceTextureManager;->mTextureRender:Lorg/webrtc/videoengine/ViEDirectInputSurface$STextureRender;

    .line 282
    iput-object v0, p0, Lorg/webrtc/videoengine/ViEDirectInputSurface$SurfaceTextureManager;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 283
    return-void
.end method
