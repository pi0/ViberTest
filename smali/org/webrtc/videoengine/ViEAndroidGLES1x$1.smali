.class Lorg/webrtc/videoengine/ViEAndroidGLES1x$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/webrtc/videoengine/ViEAndroidGLES1x$Ctl;


# instance fields
.field final synthetic this$0:Lorg/webrtc/videoengine/ViEAndroidGLES1x;


# direct methods
.method constructor <init>(Lorg/webrtc/videoengine/ViEAndroidGLES1x;)V
    .locals 0
    .parameter

    .prologue
    .line 31
    iput-object p1, p0, Lorg/webrtc/videoengine/ViEAndroidGLES1x$1;->this$0:Lorg/webrtc/videoengine/ViEAndroidGLES1x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGotCaps(Ljavax/microedition/khronos/opengles/GL10;ZZZZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 61
    return-void
.end method

.method public onPrepare()V
    .locals 0

    .prologue
    .line 55
    return-void
.end method

.method public onRenderFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lorg/webrtc/videoengine/ViEAndroidGLES1x$1;->this$0:Lorg/webrtc/videoengine/ViEAndroidGLES1x;

    invoke-virtual {v0, p1}, Lorg/webrtc/videoengine/ViEAndroidGLES1x;->onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 50
    return-void
.end method

.method public onSurfaceSizeChange(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 35
    iget-object v0, p0, Lorg/webrtc/videoengine/ViEAndroidGLES1x$1;->this$0:Lorg/webrtc/videoengine/ViEAndroidGLES1x;

    #setter for: Lorg/webrtc/videoengine/ViEAndroidGLES1x;->surfaceCreated:Z
    invoke-static {v0, v3}, Lorg/webrtc/videoengine/ViEAndroidGLES1x;->access$102(Lorg/webrtc/videoengine/ViEAndroidGLES1x;Z)Z

    .line 36
    iget-object v0, p0, Lorg/webrtc/videoengine/ViEAndroidGLES1x$1;->this$0:Lorg/webrtc/videoengine/ViEAndroidGLES1x;

    #setter for: Lorg/webrtc/videoengine/ViEAndroidGLES1x;->viewWidth:I
    invoke-static {v0, p2}, Lorg/webrtc/videoengine/ViEAndroidGLES1x;->access$202(Lorg/webrtc/videoengine/ViEAndroidGLES1x;I)I

    .line 37
    iget-object v0, p0, Lorg/webrtc/videoengine/ViEAndroidGLES1x$1;->this$0:Lorg/webrtc/videoengine/ViEAndroidGLES1x;

    #setter for: Lorg/webrtc/videoengine/ViEAndroidGLES1x;->viewHeight:I
    invoke-static {v0, p3}, Lorg/webrtc/videoengine/ViEAndroidGLES1x;->access$302(Lorg/webrtc/videoengine/ViEAndroidGLES1x;I)I

    .line 39
    iget-object v0, p0, Lorg/webrtc/videoengine/ViEAndroidGLES1x$1;->this$0:Lorg/webrtc/videoengine/ViEAndroidGLES1x;

    #getter for: Lorg/webrtc/videoengine/ViEAndroidGLES1x;->nativeFunctionLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v0}, Lorg/webrtc/videoengine/ViEAndroidGLES1x;->access$400(Lorg/webrtc/videoengine/ViEAndroidGLES1x;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 40
    iget-object v0, p0, Lorg/webrtc/videoengine/ViEAndroidGLES1x$1;->this$0:Lorg/webrtc/videoengine/ViEAndroidGLES1x;

    #getter for: Lorg/webrtc/videoengine/ViEAndroidGLES1x;->nativeFunctionsRegisted:Z
    invoke-static {v0}, Lorg/webrtc/videoengine/ViEAndroidGLES1x;->access$500(Lorg/webrtc/videoengine/ViEAndroidGLES1x;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lorg/webrtc/videoengine/ViEAndroidGLES1x$1;->this$0:Lorg/webrtc/videoengine/ViEAndroidGLES1x;

    iget-object v1, p0, Lorg/webrtc/videoengine/ViEAndroidGLES1x$1;->this$0:Lorg/webrtc/videoengine/ViEAndroidGLES1x;

    #getter for: Lorg/webrtc/videoengine/ViEAndroidGLES1x;->nativeObject:J
    invoke-static {v1}, Lorg/webrtc/videoengine/ViEAndroidGLES1x;->access$600(Lorg/webrtc/videoengine/ViEAndroidGLES1x;)J

    move-result-wide v1

    #calls: Lorg/webrtc/videoengine/ViEAndroidGLES1x;->CreateOpenGLNative(JII)I
    invoke-static {v0, v1, v2, p2, p3}, Lorg/webrtc/videoengine/ViEAndroidGLES1x;->access$700(Lorg/webrtc/videoengine/ViEAndroidGLES1x;JII)I

    move-result v0

    if-nez v0, :cond_0

    .line 42
    iget-object v0, p0, Lorg/webrtc/videoengine/ViEAndroidGLES1x$1;->this$0:Lorg/webrtc/videoengine/ViEAndroidGLES1x;

    #setter for: Lorg/webrtc/videoengine/ViEAndroidGLES1x;->openGLCreated:Z
    invoke-static {v0, v3}, Lorg/webrtc/videoengine/ViEAndroidGLES1x;->access$802(Lorg/webrtc/videoengine/ViEAndroidGLES1x;Z)Z

    .line 44
    :cond_0
    iget-object v0, p0, Lorg/webrtc/videoengine/ViEAndroidGLES1x$1;->this$0:Lorg/webrtc/videoengine/ViEAndroidGLES1x;

    #getter for: Lorg/webrtc/videoengine/ViEAndroidGLES1x;->nativeFunctionLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v0}, Lorg/webrtc/videoengine/ViEAndroidGLES1x;->access$400(Lorg/webrtc/videoengine/ViEAndroidGLES1x;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 45
    return-void
.end method
