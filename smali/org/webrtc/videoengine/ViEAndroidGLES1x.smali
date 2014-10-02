.class public Lorg/webrtc/videoengine/ViEAndroidGLES1x;
.super Landroid/opengl/GLSurfaceView;
.source "SourceFile"


# instance fields
.field GL_CAPS_DISABLE:[I

.field private ctl:Lorg/webrtc/videoengine/ViEAndroidGLES1x$Ctl;

.field private nativeFunctionLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private nativeFunctionsRegisted:Z

.field private nativeObject:J

.field private openGLCreated:Z

.field private renderer:Lorg/webrtc/videoengine/ViEAndroidGLES1x$GLRenderer;

.field private selfCtl:Lorg/webrtc/videoengine/ViEAndroidGLES1x$Ctl;

.field public supportsDrawTexture:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public supportsETC1:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public supportsVBOs:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private surfaceCreated:Z

.field private viewHeight:I

.field private viewWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 156
    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    .line 13
    new-instance v0, Lorg/webrtc/videoengine/ViEAndroidGLES1x$GLRenderer;

    invoke-direct {v0, p0, v1}, Lorg/webrtc/videoengine/ViEAndroidGLES1x$GLRenderer;-><init>(Lorg/webrtc/videoengine/ViEAndroidGLES1x;Lorg/webrtc/videoengine/ViEAndroidGLES1x$1;)V

    iput-object v0, p0, Lorg/webrtc/videoengine/ViEAndroidGLES1x;->renderer:Lorg/webrtc/videoengine/ViEAndroidGLES1x$GLRenderer;

    .line 14
    iput-object v1, p0, Lorg/webrtc/videoengine/ViEAndroidGLES1x;->ctl:Lorg/webrtc/videoengine/ViEAndroidGLES1x$Ctl;

    .line 16
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lorg/webrtc/videoengine/ViEAndroidGLES1x;->GL_CAPS_DISABLE:[I

    .line 28
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/webrtc/videoengine/ViEAndroidGLES1x;->supportsDrawTexture:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 29
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/webrtc/videoengine/ViEAndroidGLES1x;->supportsETC1:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 30
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/webrtc/videoengine/ViEAndroidGLES1x;->supportsVBOs:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 31
    new-instance v0, Lorg/webrtc/videoengine/ViEAndroidGLES1x$1;

    invoke-direct {v0, p0}, Lorg/webrtc/videoengine/ViEAndroidGLES1x$1;-><init>(Lorg/webrtc/videoengine/ViEAndroidGLES1x;)V

    iput-object v0, p0, Lorg/webrtc/videoengine/ViEAndroidGLES1x;->selfCtl:Lorg/webrtc/videoengine/ViEAndroidGLES1x$Ctl;

    .line 108
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lorg/webrtc/videoengine/ViEAndroidGLES1x;->nativeFunctionLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 109
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/webrtc/videoengine/ViEAndroidGLES1x;->nativeObject:J

    .line 110
    iput v2, p0, Lorg/webrtc/videoengine/ViEAndroidGLES1x;->viewWidth:I

    .line 111
    iput v2, p0, Lorg/webrtc/videoengine/ViEAndroidGLES1x;->viewHeight:I

    .line 112
    iput-boolean v2, p0, Lorg/webrtc/videoengine/ViEAndroidGLES1x;->surfaceCreated:Z

    .line 113
    iput-boolean v2, p0, Lorg/webrtc/videoengine/ViEAndroidGLES1x;->openGLCreated:Z

    .line 114
    iput-boolean v2, p0, Lorg/webrtc/videoengine/ViEAndroidGLES1x;->nativeFunctionsRegisted:Z

    .line 157
    iget-object v0, p0, Lorg/webrtc/videoengine/ViEAndroidGLES1x;->selfCtl:Lorg/webrtc/videoengine/ViEAndroidGLES1x$Ctl;

    iput-object v0, p0, Lorg/webrtc/videoengine/ViEAndroidGLES1x;->ctl:Lorg/webrtc/videoengine/ViEAndroidGLES1x$Ctl;

    .line 158
    iget-object v0, p0, Lorg/webrtc/videoengine/ViEAndroidGLES1x;->ctl:Lorg/webrtc/videoengine/ViEAndroidGLES1x$Ctl;

    invoke-interface {v0}, Lorg/webrtc/videoengine/ViEAndroidGLES1x$Ctl;->onPrepare()V

    .line 159
    iget-object v0, p0, Lorg/webrtc/videoengine/ViEAndroidGLES1x;->renderer:Lorg/webrtc/videoengine/ViEAndroidGLES1x$GLRenderer;

    invoke-virtual {p0, v0}, Lorg/webrtc/videoengine/ViEAndroidGLES1x;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 160
    invoke-virtual {p0}, Lorg/webrtc/videoengine/ViEAndroidGLES1x;->requestFocus()Z

    .line 161
    invoke-virtual {p0, v2}, Lorg/webrtc/videoengine/ViEAndroidGLES1x;->setDrawingCacheEnabled(Z)V

    .line 162
    invoke-virtual {p0, v3}, Lorg/webrtc/videoengine/ViEAndroidGLES1x;->setWillNotCacheDrawing(Z)V

    .line 163
    invoke-virtual {p0, v3}, Lorg/webrtc/videoengine/ViEAndroidGLES1x;->setFocusableInTouchMode(Z)V

    .line 164
    invoke-virtual {p0, v2}, Lorg/webrtc/videoengine/ViEAndroidGLES1x;->setRenderMode(I)V

    .line 165
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/webrtc/videoengine/ViEAndroidGLES1x;->setDebugFlags(I)V

    .line 166
    return-void

    .line 16
    nop

    :array_0
    .array-data 0x4
        0x60t 0xbt 0x0t 0x0t
        0x50t 0xbt 0x0t 0x0t
        0x44t 0xbt 0x0t 0x0t
        0xc0t 0xbt 0x0t 0x0t
        0xe2t 0xbt 0x0t 0x0t
        0xf2t 0xbt 0x0t 0x0t
        0xd0t 0xbt 0x0t 0x0t
        0x90t 0xbt 0x0t 0x0t
        0x71t 0xbt 0x0t 0x0t
        0x57t 0xbt 0x0t 0x0t
    .end array-data
.end method

.method private native CreateOpenGLNative(JII)I
.end method

.method private native DrawNative(J)V
.end method

.method public static UseOpenGL2(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 169
    const-class v0, Lorg/webrtc/videoengine/ViEAndroidGLES1x;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$102(Lorg/webrtc/videoengine/ViEAndroidGLES1x;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 12
    iput-boolean p1, p0, Lorg/webrtc/videoengine/ViEAndroidGLES1x;->surfaceCreated:Z

    return p1
.end method

.method static synthetic access$202(Lorg/webrtc/videoengine/ViEAndroidGLES1x;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 12
    iput p1, p0, Lorg/webrtc/videoengine/ViEAndroidGLES1x;->viewWidth:I

    return p1
.end method

.method static synthetic access$302(Lorg/webrtc/videoengine/ViEAndroidGLES1x;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 12
    iput p1, p0, Lorg/webrtc/videoengine/ViEAndroidGLES1x;->viewHeight:I

    return p1
.end method

.method static synthetic access$400(Lorg/webrtc/videoengine/ViEAndroidGLES1x;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 1
    .parameter

    .prologue
    .line 12
    iget-object v0, p0, Lorg/webrtc/videoengine/ViEAndroidGLES1x;->nativeFunctionLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method static synthetic access$500(Lorg/webrtc/videoengine/ViEAndroidGLES1x;)Z
    .locals 1
    .parameter

    .prologue
    .line 12
    iget-boolean v0, p0, Lorg/webrtc/videoengine/ViEAndroidGLES1x;->nativeFunctionsRegisted:Z

    return v0
.end method

.method static synthetic access$600(Lorg/webrtc/videoengine/ViEAndroidGLES1x;)J
    .locals 2
    .parameter

    .prologue
    .line 12
    iget-wide v0, p0, Lorg/webrtc/videoengine/ViEAndroidGLES1x;->nativeObject:J

    return-wide v0
.end method

.method static synthetic access$700(Lorg/webrtc/videoengine/ViEAndroidGLES1x;JII)I
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 12
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/webrtc/videoengine/ViEAndroidGLES1x;->CreateOpenGLNative(JII)I

    move-result v0

    return v0
.end method

.method static synthetic access$802(Lorg/webrtc/videoengine/ViEAndroidGLES1x;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 12
    iput-boolean p1, p0, Lorg/webrtc/videoengine/ViEAndroidGLES1x;->openGLCreated:Z

    return p1
.end method

.method static synthetic access$900(Lorg/webrtc/videoengine/ViEAndroidGLES1x;)Lorg/webrtc/videoengine/ViEAndroidGLES1x$Ctl;
    .locals 1
    .parameter

    .prologue
    .line 12
    iget-object v0, p0, Lorg/webrtc/videoengine/ViEAndroidGLES1x;->ctl:Lorg/webrtc/videoengine/ViEAndroidGLES1x$Ctl;

    return-object v0
.end method


# virtual methods
.method public DeRegisterNativeObject()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 124
    iget-object v0, p0, Lorg/webrtc/videoengine/ViEAndroidGLES1x;->nativeFunctionLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 125
    iput-boolean v1, p0, Lorg/webrtc/videoengine/ViEAndroidGLES1x;->nativeFunctionsRegisted:Z

    .line 126
    iput-boolean v1, p0, Lorg/webrtc/videoengine/ViEAndroidGLES1x;->openGLCreated:Z

    .line 127
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/webrtc/videoengine/ViEAndroidGLES1x;->nativeObject:J

    .line 128
    iget-object v0, p0, Lorg/webrtc/videoengine/ViEAndroidGLES1x;->nativeFunctionLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 129
    return-void
.end method

.method public ReDraw()V
    .locals 1

    .prologue
    .line 132
    iget-boolean v0, p0, Lorg/webrtc/videoengine/ViEAndroidGLES1x;->surfaceCreated:Z

    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {p0}, Lorg/webrtc/videoengine/ViEAndroidGLES1x;->requestRender()V

    .line 136
    :cond_0
    return-void
.end method

.method public RegisterNativeObject(J)V
    .locals 1
    .parameter

    .prologue
    .line 117
    iget-object v0, p0, Lorg/webrtc/videoengine/ViEAndroidGLES1x;->nativeFunctionLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 118
    iput-wide p1, p0, Lorg/webrtc/videoengine/ViEAndroidGLES1x;->nativeObject:J

    .line 119
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/webrtc/videoengine/ViEAndroidGLES1x;->nativeFunctionsRegisted:Z

    .line 120
    iget-object v0, p0, Lorg/webrtc/videoengine/ViEAndroidGLES1x;->nativeFunctionLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 121
    return-void
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 4
    .parameter

    .prologue
    .line 139
    iget-object v0, p0, Lorg/webrtc/videoengine/ViEAndroidGLES1x;->nativeFunctionLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 140
    iget-boolean v0, p0, Lorg/webrtc/videoengine/ViEAndroidGLES1x;->nativeFunctionsRegisted:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/webrtc/videoengine/ViEAndroidGLES1x;->surfaceCreated:Z

    if-nez v0, :cond_2

    .line 141
    :cond_0
    iget-object v0, p0, Lorg/webrtc/videoengine/ViEAndroidGLES1x;->nativeFunctionLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 153
    :cond_1
    :goto_0
    return-void

    .line 145
    :cond_2
    iget-boolean v0, p0, Lorg/webrtc/videoengine/ViEAndroidGLES1x;->openGLCreated:Z

    if-nez v0, :cond_3

    .line 146
    iget-wide v0, p0, Lorg/webrtc/videoengine/ViEAndroidGLES1x;->nativeObject:J

    iget v2, p0, Lorg/webrtc/videoengine/ViEAndroidGLES1x;->viewWidth:I

    iget v3, p0, Lorg/webrtc/videoengine/ViEAndroidGLES1x;->viewHeight:I

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/webrtc/videoengine/ViEAndroidGLES1x;->CreateOpenGLNative(JII)I

    move-result v0

    if-nez v0, :cond_1

    .line 149
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/webrtc/videoengine/ViEAndroidGLES1x;->openGLCreated:Z

    .line 151
    :cond_3
    iget-wide v0, p0, Lorg/webrtc/videoengine/ViEAndroidGLES1x;->nativeObject:J

    invoke-direct {p0, v0, v1}, Lorg/webrtc/videoengine/ViEAndroidGLES1x;->DrawNative(J)V

    .line 152
    iget-object v0, p0, Lorg/webrtc/videoengine/ViEAndroidGLES1x;->nativeFunctionLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0
.end method
