.class Lorg/webrtc/videoengine/ViEDirectInputSurface$CodecInputSurface;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final EGL_RECORDABLE_ANDROID:I = 0x3142


# instance fields
.field private mEGLContext:Landroid/opengl/EGLContext;

.field private mEGLDisplay:Landroid/opengl/EGLDisplay;

.field private mEGLSurface:Landroid/opengl/EGLSurface;

.field private mSurface:Landroid/view/Surface;


# direct methods
.method public constructor <init>(Landroid/view/Surface;)V
    .locals 1
    .parameter

    .prologue
    .line 364
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 355
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    iput-object v0, p0, Lorg/webrtc/videoengine/ViEDirectInputSurface$CodecInputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 356
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object v0, p0, Lorg/webrtc/videoengine/ViEDirectInputSurface$CodecInputSurface;->mEGLContext:Landroid/opengl/EGLContext;

    .line 357
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v0, p0, Lorg/webrtc/videoengine/ViEDirectInputSurface$CodecInputSurface;->mEGLSurface:Landroid/opengl/EGLSurface;

    .line 365
    if-nez p1, :cond_0

    .line 366
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 368
    :cond_0
    iput-object p1, p0, Lorg/webrtc/videoengine/ViEDirectInputSurface$CodecInputSurface;->mSurface:Landroid/view/Surface;

    .line 370
    invoke-direct {p0}, Lorg/webrtc/videoengine/ViEDirectInputSurface$CodecInputSurface;->eglSetup()V

    .line 371
    return-void
.end method

.method private checkEglError(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 484
    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v0

    const/16 v1, 0x3000

    if-eq v0, v1, :cond_0

    .line 485
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": EGL error: 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 487
    :cond_0
    return-void
.end method

.method private eglSetup()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 382
    invoke-static {v2}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v0

    iput-object v0, p0, Lorg/webrtc/videoengine/ViEDirectInputSurface$CodecInputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 383
    iget-object v0, p0, Lorg/webrtc/videoengine/ViEDirectInputSurface$CodecInputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-ne v0, v1, :cond_0

    .line 384
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "unable to get EGL14 display"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 386
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 387
    iget-object v1, p0, Lorg/webrtc/videoengine/ViEDirectInputSurface$CodecInputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {v1, v0, v2, v0, v8}, Landroid/opengl/EGL14;->eglInitialize(Landroid/opengl/EGLDisplay;[II[II)Z

    move-result v0

    if-nez v0, :cond_1

    .line 388
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "unable to initialize EGL14"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 392
    :cond_1
    const/16 v0, 0xd

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    .line 401
    new-array v3, v8, [Landroid/opengl/EGLConfig;

    .line 402
    new-array v6, v8, [I

    .line 403
    iget-object v0, p0, Lorg/webrtc/videoengine/ViEDirectInputSurface$CodecInputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    array-length v5, v3

    move v4, v2

    move v7, v2

    invoke-static/range {v0 .. v7}, Landroid/opengl/EGL14;->eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z

    .line 405
    const-string/jumbo v0, "eglCreateContext RGB888+recordable ES2"

    invoke-direct {p0, v0}, Lorg/webrtc/videoengine/ViEDirectInputSurface$CodecInputSurface;->checkEglError(Ljava/lang/String;)V

    .line 408
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    .line 412
    iget-object v1, p0, Lorg/webrtc/videoengine/ViEDirectInputSurface$CodecInputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    aget-object v4, v3, v2

    sget-object v5, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v1, v4, v5, v0, v2}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object v0

    iput-object v0, p0, Lorg/webrtc/videoengine/ViEDirectInputSurface$CodecInputSurface;->mEGLContext:Landroid/opengl/EGLContext;

    .line 414
    const-string/jumbo v0, "eglCreateContext"

    invoke-direct {p0, v0}, Lorg/webrtc/videoengine/ViEDirectInputSurface$CodecInputSurface;->checkEglError(Ljava/lang/String;)V

    .line 417
    new-array v0, v8, [I

    const/16 v1, 0x3038

    aput v1, v0, v2

    .line 420
    iget-object v1, p0, Lorg/webrtc/videoengine/ViEDirectInputSurface$CodecInputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    aget-object v3, v3, v2

    iget-object v4, p0, Lorg/webrtc/videoengine/ViEDirectInputSurface$CodecInputSurface;->mSurface:Landroid/view/Surface;

    invoke-static {v1, v3, v4, v0, v2}, Landroid/opengl/EGL14;->eglCreateWindowSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Ljava/lang/Object;[II)Landroid/opengl/EGLSurface;

    move-result-object v0

    iput-object v0, p0, Lorg/webrtc/videoengine/ViEDirectInputSurface$CodecInputSurface;->mEGLSurface:Landroid/opengl/EGLSurface;

    .line 422
    const-string/jumbo v0, "eglCreateWindowSurface"

    invoke-direct {p0, v0}, Lorg/webrtc/videoengine/ViEDirectInputSurface$CodecInputSurface;->checkEglError(Ljava/lang/String;)V

    .line 423
    return-void

    .line 392
    nop

    :array_0
    .array-data 0x4
        0x24t 0x30t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x23t 0x30t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x22t 0x30t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x21t 0x30t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x40t 0x30t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x42t 0x31t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x38t 0x30t 0x0t 0x0t
    .end array-data

    .line 408
    :array_1
    .array-data 0x4
        0x98t 0x30t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x38t 0x30t 0x0t 0x0t
    .end array-data
.end method


# virtual methods
.method public freeCurrent()V
    .locals 4

    .prologue
    .line 466
    iget-object v0, p0, Lorg/webrtc/videoengine/ViEDirectInputSurface$CodecInputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 468
    const-string/jumbo v0, "eglMakeCurrent"

    invoke-direct {p0, v0}, Lorg/webrtc/videoengine/ViEDirectInputSurface$CodecInputSurface;->checkEglError(Ljava/lang/String;)V

    .line 469
    return-void
.end method

.method public final getSurface()Landroid/view/Surface;
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lorg/webrtc/videoengine/ViEDirectInputSurface$CodecInputSurface;->mSurface:Landroid/view/Surface;

    return-object v0
.end method

.method public makeCurrent()V
    .locals 4

    .prologue
    .line 452
    iget-object v0, p0, Lorg/webrtc/videoengine/ViEDirectInputSurface$CodecInputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lorg/webrtc/videoengine/ViEDirectInputSurface$CodecInputSurface;->mEGLSurface:Landroid/opengl/EGLSurface;

    iget-object v2, p0, Lorg/webrtc/videoengine/ViEDirectInputSurface$CodecInputSurface;->mEGLSurface:Landroid/opengl/EGLSurface;

    iget-object v3, p0, Lorg/webrtc/videoengine/ViEDirectInputSurface$CodecInputSurface;->mEGLContext:Landroid/opengl/EGLContext;

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 453
    const-string/jumbo v0, "eglMakeCurrent"

    invoke-direct {p0, v0}, Lorg/webrtc/videoengine/ViEDirectInputSurface$CodecInputSurface;->checkEglError(Ljava/lang/String;)V

    .line 454
    return-void
.end method

.method public release()V
    .locals 4

    .prologue
    .line 430
    iget-object v0, p0, Lorg/webrtc/videoengine/ViEDirectInputSurface$CodecInputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-eq v0, v1, :cond_0

    .line 431
    iget-object v0, p0, Lorg/webrtc/videoengine/ViEDirectInputSurface$CodecInputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 433
    iget-object v0, p0, Lorg/webrtc/videoengine/ViEDirectInputSurface$CodecInputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lorg/webrtc/videoengine/ViEDirectInputSurface$CodecInputSurface;->mEGLSurface:Landroid/opengl/EGLSurface;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 434
    iget-object v0, p0, Lorg/webrtc/videoengine/ViEDirectInputSurface$CodecInputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lorg/webrtc/videoengine/ViEDirectInputSurface$CodecInputSurface;->mEGLContext:Landroid/opengl/EGLContext;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    .line 435
    invoke-static {}, Landroid/opengl/EGL14;->eglReleaseThread()Z

    .line 436
    iget-object v0, p0, Lorg/webrtc/videoengine/ViEDirectInputSurface$CodecInputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {v0}, Landroid/opengl/EGL14;->eglTerminate(Landroid/opengl/EGLDisplay;)Z

    .line 438
    :cond_0
    iget-object v0, p0, Lorg/webrtc/videoengine/ViEDirectInputSurface$CodecInputSurface;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_1

    .line 439
    iget-object v0, p0, Lorg/webrtc/videoengine/ViEDirectInputSurface$CodecInputSurface;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 441
    :cond_1
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    iput-object v0, p0, Lorg/webrtc/videoengine/ViEDirectInputSurface$CodecInputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    .line 442
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object v0, p0, Lorg/webrtc/videoengine/ViEDirectInputSurface$CodecInputSurface;->mEGLContext:Landroid/opengl/EGLContext;

    .line 443
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v0, p0, Lorg/webrtc/videoengine/ViEDirectInputSurface$CodecInputSurface;->mEGLSurface:Landroid/opengl/EGLSurface;

    .line 445
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/webrtc/videoengine/ViEDirectInputSurface$CodecInputSurface;->mSurface:Landroid/view/Surface;

    .line 446
    return-void
.end method

.method public setPresentationTime(J)V
    .locals 2
    .parameter

    .prologue
    .line 475
    iget-object v0, p0, Lorg/webrtc/videoengine/ViEDirectInputSurface$CodecInputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lorg/webrtc/videoengine/ViEDirectInputSurface$CodecInputSurface;->mEGLSurface:Landroid/opengl/EGLSurface;

    invoke-static {v0, v1, p1, p2}, Landroid/opengl/EGLExt;->eglPresentationTimeANDROID(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;J)Z

    .line 476
    const-string/jumbo v0, "eglPresentationTimeANDROID"

    invoke-direct {p0, v0}, Lorg/webrtc/videoengine/ViEDirectInputSurface$CodecInputSurface;->checkEglError(Ljava/lang/String;)V

    .line 477
    return-void
.end method

.method public swapBuffers()Z
    .locals 2

    .prologue
    .line 460
    iget-object v0, p0, Lorg/webrtc/videoengine/ViEDirectInputSurface$CodecInputSurface;->mEGLDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lorg/webrtc/videoengine/ViEDirectInputSurface$CodecInputSurface;->mEGLSurface:Landroid/opengl/EGLSurface;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglSwapBuffers(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    move-result v0

    .line 461
    const-string/jumbo v1, "eglSwapBuffers"

    invoke-direct {p0, v1}, Lorg/webrtc/videoengine/ViEDirectInputSurface$CodecInputSurface;->checkEglError(Ljava/lang/String;)V

    .line 462
    return v0
.end method
