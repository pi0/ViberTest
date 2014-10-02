.class Lorg/webrtc/videoengine/ViEAndroidGLES1x$GLRenderer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# instance fields
.field final synthetic this$0:Lorg/webrtc/videoengine/ViEAndroidGLES1x;


# direct methods
.method private constructor <init>(Lorg/webrtc/videoengine/ViEAndroidGLES1x;)V
    .locals 0
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Lorg/webrtc/videoengine/ViEAndroidGLES1x$GLRenderer;->this$0:Lorg/webrtc/videoengine/ViEAndroidGLES1x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/webrtc/videoengine/ViEAndroidGLES1x;Lorg/webrtc/videoengine/ViEAndroidGLES1x$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lorg/webrtc/videoengine/ViEAndroidGLES1x$GLRenderer;-><init>(Lorg/webrtc/videoengine/ViEAndroidGLES1x;)V

    return-void
.end method


# virtual methods
.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1
    .parameter

    .prologue
    .line 103
    iget-object v0, p0, Lorg/webrtc/videoengine/ViEAndroidGLES1x$GLRenderer;->this$0:Lorg/webrtc/videoengine/ViEAndroidGLES1x;

    #getter for: Lorg/webrtc/videoengine/ViEAndroidGLES1x;->ctl:Lorg/webrtc/videoengine/ViEAndroidGLES1x$Ctl;
    invoke-static {v0}, Lorg/webrtc/videoengine/ViEAndroidGLES1x;->access$900(Lorg/webrtc/videoengine/ViEAndroidGLES1x;)Lorg/webrtc/videoengine/ViEAndroidGLES1x$Ctl;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/webrtc/videoengine/ViEAndroidGLES1x$Ctl;->onRenderFrame(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 104
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 94
    iget-object v0, p0, Lorg/webrtc/videoengine/ViEAndroidGLES1x$GLRenderer;->this$0:Lorg/webrtc/videoengine/ViEAndroidGLES1x;

    iget-object v1, v0, Lorg/webrtc/videoengine/ViEAndroidGLES1x;->GL_CAPS_DISABLE:[I

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget v3, v1, v0

    .line 95
    invoke-interface {p1, v3}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 94
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 97
    :cond_0
    const/16 v0, 0x1d00

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glShadeModel(I)V

    .line 98
    iget-object v0, p0, Lorg/webrtc/videoengine/ViEAndroidGLES1x$GLRenderer;->this$0:Lorg/webrtc/videoengine/ViEAndroidGLES1x;

    #getter for: Lorg/webrtc/videoengine/ViEAndroidGLES1x;->ctl:Lorg/webrtc/videoengine/ViEAndroidGLES1x$Ctl;
    invoke-static {v0}, Lorg/webrtc/videoengine/ViEAndroidGLES1x;->access$900(Lorg/webrtc/videoengine/ViEAndroidGLES1x;)Lorg/webrtc/videoengine/ViEAndroidGLES1x$Ctl;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lorg/webrtc/videoengine/ViEAndroidGLES1x$Ctl;->onSurfaceSizeChange(Ljavax/microedition/khronos/opengles/GL10;II)V

    .line 99
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x1f03

    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 76
    const/16 v1, 0x1f02

    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object v1

    .line 77
    const/16 v2, 0x1f01

    invoke-interface {p1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object v2

    .line 79
    const-string/jumbo v3, "PixelFlinger"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    .line 81
    const-string/jumbo v2, " 1.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 82
    iget-object v2, p0, Lorg/webrtc/videoengine/ViEAndroidGLES1x$GLRenderer;->this$0:Lorg/webrtc/videoengine/ViEAndroidGLES1x;

    iget-object v2, v2, Lorg/webrtc/videoengine/ViEAndroidGLES1x;->supportsDrawTexture:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-string/jumbo v3, " GL_OES_draw_texture "

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 83
    iget-object v2, p0, Lorg/webrtc/videoengine/ViEAndroidGLES1x$GLRenderer;->this$0:Lorg/webrtc/videoengine/ViEAndroidGLES1x;

    iget-object v2, v2, Lorg/webrtc/videoengine/ViEAndroidGLES1x;->supportsETC1:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-string/jumbo v3, " GL_OES_compressed_ETC1_RGB8_texture "

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 88
    iget-object v2, p0, Lorg/webrtc/videoengine/ViEAndroidGLES1x$GLRenderer;->this$0:Lorg/webrtc/videoengine/ViEAndroidGLES1x;

    iget-object v2, v2, Lorg/webrtc/videoengine/ViEAndroidGLES1x;->supportsVBOs:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-nez v5, :cond_1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "vertex_buffer_object "

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 89
    iget-object v0, p0, Lorg/webrtc/videoengine/ViEAndroidGLES1x$GLRenderer;->this$0:Lorg/webrtc/videoengine/ViEAndroidGLES1x;

    #getter for: Lorg/webrtc/videoengine/ViEAndroidGLES1x;->ctl:Lorg/webrtc/videoengine/ViEAndroidGLES1x$Ctl;
    invoke-static {v0}, Lorg/webrtc/videoengine/ViEAndroidGLES1x;->access$900(Lorg/webrtc/videoengine/ViEAndroidGLES1x;)Lorg/webrtc/videoengine/ViEAndroidGLES1x$Ctl;

    move-result-object v0

    iget-object v1, p0, Lorg/webrtc/videoengine/ViEAndroidGLES1x$GLRenderer;->this$0:Lorg/webrtc/videoengine/ViEAndroidGLES1x;

    iget-object v1, v1, Lorg/webrtc/videoengine/ViEAndroidGLES1x;->supportsDrawTexture:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    iget-object v1, p0, Lorg/webrtc/videoengine/ViEAndroidGLES1x$GLRenderer;->this$0:Lorg/webrtc/videoengine/ViEAndroidGLES1x;

    iget-object v1, v1, Lorg/webrtc/videoengine/ViEAndroidGLES1x;->supportsETC1:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    iget-object v1, p0, Lorg/webrtc/videoengine/ViEAndroidGLES1x$GLRenderer;->this$0:Lorg/webrtc/videoengine/ViEAndroidGLES1x;

    iget-object v1, v1, Lorg/webrtc/videoengine/ViEAndroidGLES1x;->supportsVBOs:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Lorg/webrtc/videoengine/ViEAndroidGLES1x$Ctl;->onGotCaps(Ljavax/microedition/khronos/opengles/GL10;ZZZZ)V

    .line 90
    return-void

    .line 88
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
