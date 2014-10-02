.class public Lorg/webrtc/videoengine/ViESurfaceRenderer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# static fields
.field public static TAG:Ljava/lang/String;

.field static _renderers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/view/SurfaceView;",
            "Lorg/webrtc/videoengine/ViESurfaceRenderer$ViESurfaceRendererInternal;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private wrappedRenderer:Lorg/webrtc/videoengine/ViESurfaceRenderer$ViESurfaceRendererInternal;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lorg/webrtc/videoengine/ViESurfaceRenderer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/webrtc/videoengine/ViESurfaceRenderer;->TAG:Ljava/lang/String;

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lorg/webrtc/videoengine/ViESurfaceRenderer;->_renderers:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/view/SurfaceView;)V
    .locals 1
    .parameter

    .prologue
    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/webrtc/videoengine/ViESurfaceRenderer;->wrappedRenderer:Lorg/webrtc/videoengine/ViESurfaceRenderer$ViESurfaceRendererInternal;

    .line 250
    invoke-static {p1}, Lorg/webrtc/videoengine/ViESurfaceRenderer;->getCallback(Landroid/view/SurfaceView;)Lorg/webrtc/videoengine/ViESurfaceRenderer$ViESurfaceRendererInternal;

    move-result-object v0

    iput-object v0, p0, Lorg/webrtc/videoengine/ViESurfaceRenderer;->wrappedRenderer:Lorg/webrtc/videoengine/ViESurfaceRenderer$ViESurfaceRendererInternal;

    .line 251
    return-void
.end method

.method private static getCallback(Landroid/view/SurfaceView;)Lorg/webrtc/videoengine/ViESurfaceRenderer$ViESurfaceRendererInternal;
    .locals 3
    .parameter

    .prologue
    .line 49
    sget-object v1, Lorg/webrtc/videoengine/ViESurfaceRenderer;->_renderers:Ljava/util/Map;

    monitor-enter v1

    .line 50
    :try_start_0
    sget-object v0, Lorg/webrtc/videoengine/ViESurfaceRenderer;->_renderers:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/webrtc/videoengine/ViESurfaceRenderer$ViESurfaceRendererInternal;

    if-nez v0, :cond_0

    .line 51
    sget-object v2, Lorg/webrtc/videoengine/ViESurfaceRenderer;->_renderers:Ljava/util/Map;

    new-instance v0, Lorg/webrtc/videoengine/ViESurfaceRenderer$ViESurfaceRendererInternal;

    invoke-direct {v0, p0}, Lorg/webrtc/videoengine/ViESurfaceRenderer$ViESurfaceRendererInternal;-><init>(Landroid/view/SurfaceView;)V

    invoke-interface {v2, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    :cond_0
    monitor-exit v1

    .line 54
    return-object v0

    .line 53
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getCommonSurfaceRenderer(Landroid/view/SurfaceView;)Landroid/view/SurfaceHolder$Callback;
    .locals 1
    .parameter

    .prologue
    .line 40
    invoke-static {p0}, Lorg/webrtc/videoengine/ViESurfaceRenderer;->getCallback(Landroid/view/SurfaceView;)Lorg/webrtc/videoengine/ViESurfaceRenderer$ViESurfaceRendererInternal;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public CreateBitmap(II)Landroid/graphics/Bitmap;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 267
    iget-object v0, p0, Lorg/webrtc/videoengine/ViESurfaceRenderer;->wrappedRenderer:Lorg/webrtc/videoengine/ViESurfaceRenderer$ViESurfaceRendererInternal;

    invoke-virtual {v0, p1, p2}, Lorg/webrtc/videoengine/ViESurfaceRenderer$ViESurfaceRendererInternal;->CreateBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public CreateByteBuffer(II)Ljava/nio/ByteBuffer;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 271
    iget-object v0, p0, Lorg/webrtc/videoengine/ViESurfaceRenderer;->wrappedRenderer:Lorg/webrtc/videoengine/ViESurfaceRenderer$ViESurfaceRendererInternal;

    invoke-virtual {v0, p1, p2}, Lorg/webrtc/videoengine/ViESurfaceRenderer$ViESurfaceRendererInternal;->CreateByteBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public DrawBitmap()V
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lorg/webrtc/videoengine/ViESurfaceRenderer;->wrappedRenderer:Lorg/webrtc/videoengine/ViESurfaceRenderer$ViESurfaceRendererInternal;

    invoke-virtual {v0}, Lorg/webrtc/videoengine/ViESurfaceRenderer$ViESurfaceRendererInternal;->DrawBitmap()V

    .line 285
    return-void
.end method

.method public DrawByteBuffer()V
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lorg/webrtc/videoengine/ViESurfaceRenderer;->wrappedRenderer:Lorg/webrtc/videoengine/ViESurfaceRenderer$ViESurfaceRendererInternal;

    invoke-virtual {v0}, Lorg/webrtc/videoengine/ViESurfaceRenderer$ViESurfaceRendererInternal;->DrawByteBuffer()V

    .line 281
    return-void
.end method

.method public SetCoordinates(FFFF)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 276
    iget-object v0, p0, Lorg/webrtc/videoengine/ViESurfaceRenderer;->wrappedRenderer:Lorg/webrtc/videoengine/ViESurfaceRenderer$ViESurfaceRendererInternal;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/webrtc/videoengine/ViESurfaceRenderer$ViESurfaceRendererInternal;->SetCoordinates(FFFF)V

    .line 277
    return-void
.end method

.method public saveBitmapToJPEG(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 288
    iget-object v0, p0, Lorg/webrtc/videoengine/ViESurfaceRenderer;->wrappedRenderer:Lorg/webrtc/videoengine/ViESurfaceRenderer$ViESurfaceRendererInternal;

    #calls: Lorg/webrtc/videoengine/ViESurfaceRenderer$ViESurfaceRendererInternal;->saveBitmapToJPEG(II)V
    invoke-static {v0, p1, p2}, Lorg/webrtc/videoengine/ViESurfaceRenderer$ViESurfaceRendererInternal;->access$000(Lorg/webrtc/videoengine/ViESurfaceRenderer$ViESurfaceRendererInternal;II)V

    .line 289
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 255
    iget-object v0, p0, Lorg/webrtc/videoengine/ViESurfaceRenderer;->wrappedRenderer:Lorg/webrtc/videoengine/ViESurfaceRenderer$ViESurfaceRendererInternal;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/webrtc/videoengine/ViESurfaceRenderer$ViESurfaceRendererInternal;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    .line 256
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1
    .parameter

    .prologue
    .line 259
    iget-object v0, p0, Lorg/webrtc/videoengine/ViESurfaceRenderer;->wrappedRenderer:Lorg/webrtc/videoengine/ViESurfaceRenderer$ViESurfaceRendererInternal;

    invoke-virtual {v0, p1}, Lorg/webrtc/videoengine/ViESurfaceRenderer$ViESurfaceRendererInternal;->surfaceCreated(Landroid/view/SurfaceHolder;)V

    .line 260
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1
    .parameter

    .prologue
    .line 263
    iget-object v0, p0, Lorg/webrtc/videoengine/ViESurfaceRenderer;->wrappedRenderer:Lorg/webrtc/videoengine/ViESurfaceRenderer$ViESurfaceRendererInternal;

    invoke-virtual {v0, p1}, Lorg/webrtc/videoengine/ViESurfaceRenderer$ViESurfaceRendererInternal;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 264
    return-void
.end method
