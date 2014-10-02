.class public Lorg/webrtc/videoengine/SurfaceHolderWrapper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/SurfaceHolder;


# static fields
.field private static final SurfaceState_Changed:I = 0x2

.field private static final SurfaceState_Created:I = 0x1

.field private static final SurfaceState_Destroyed:I = 0x3

.field private static final SurfaceState_Unknown:I

.field private static final _wrapMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/view/SurfaceHolder;",
            "Lorg/webrtc/videoengine/SurfaceHolderWrapper;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final _callbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/view/SurfaceHolder$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private _currentState:Ljava/util/concurrent/atomic/AtomicInteger;

.field private _holderRef:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Landroid/view/SurfaceHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final _internal:Landroid/view/SurfaceHolder$Callback;

.field private final _wrap:Landroid/view/SurfaceHolder;

.field private format:I

.field private height:I

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/webrtc/videoengine/SurfaceHolderWrapper;->_wrapMap:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Landroid/view/SurfaceHolder;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, -0x1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/webrtc/videoengine/SurfaceHolderWrapper;->_callbacks:Ljava/util/Set;

    .line 25
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lorg/webrtc/videoengine/SurfaceHolderWrapper;->_currentState:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 26
    iput v2, p0, Lorg/webrtc/videoengine/SurfaceHolderWrapper;->format:I

    .line 27
    iput v2, p0, Lorg/webrtc/videoengine/SurfaceHolderWrapper;->width:I

    .line 28
    iput v2, p0, Lorg/webrtc/videoengine/SurfaceHolderWrapper;->height:I

    .line 29
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/webrtc/videoengine/SurfaceHolderWrapper;->_holderRef:Ljava/util/concurrent/atomic/AtomicReference;

    .line 30
    new-instance v0, Lorg/webrtc/videoengine/SurfaceHolderWrapper$1;

    invoke-direct {v0, p0}, Lorg/webrtc/videoengine/SurfaceHolderWrapper$1;-><init>(Lorg/webrtc/videoengine/SurfaceHolderWrapper;)V

    iput-object v0, p0, Lorg/webrtc/videoengine/SurfaceHolderWrapper;->_internal:Landroid/view/SurfaceHolder$Callback;

    .line 56
    iput-object p1, p0, Lorg/webrtc/videoengine/SurfaceHolderWrapper;->_wrap:Landroid/view/SurfaceHolder;

    iget-object v0, p0, Lorg/webrtc/videoengine/SurfaceHolderWrapper;->_internal:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {p1, v0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 57
    return-void
.end method

.method static synthetic access$002(Lorg/webrtc/videoengine/SurfaceHolderWrapper;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 15
    iput p1, p0, Lorg/webrtc/videoengine/SurfaceHolderWrapper;->format:I

    return p1
.end method

.method static synthetic access$102(Lorg/webrtc/videoengine/SurfaceHolderWrapper;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 15
    iput p1, p0, Lorg/webrtc/videoengine/SurfaceHolderWrapper;->width:I

    return p1
.end method

.method static synthetic access$202(Lorg/webrtc/videoengine/SurfaceHolderWrapper;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 15
    iput p1, p0, Lorg/webrtc/videoengine/SurfaceHolderWrapper;->height:I

    return p1
.end method

.method static synthetic access$300(Lorg/webrtc/videoengine/SurfaceHolderWrapper;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .parameter

    .prologue
    .line 15
    iget-object v0, p0, Lorg/webrtc/videoengine/SurfaceHolderWrapper;->_currentState:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$400(Lorg/webrtc/videoengine/SurfaceHolderWrapper;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1
    .parameter

    .prologue
    .line 15
    iget-object v0, p0, Lorg/webrtc/videoengine/SurfaceHolderWrapper;->_holderRef:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method private declared-synchronized broadcastStateForSingleCallback(Landroid/view/SurfaceHolder$Callback;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 97
    monitor-enter p0

    packed-switch p2, :pswitch_data_0

    .line 101
    :goto_0
    monitor-exit p0

    return-void

    .line 98
    :pswitch_0
    :try_start_0
    iget-object v0, p0, Lorg/webrtc/videoengine/SurfaceHolderWrapper;->_holderRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceHolder;

    invoke-interface {p1, v0}, Landroid/view/SurfaceHolder$Callback;->surfaceCreated(Landroid/view/SurfaceHolder;)V

    iget-object v0, p0, Lorg/webrtc/videoengine/SurfaceHolderWrapper;->_holderRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceHolder;

    iget v1, p0, Lorg/webrtc/videoengine/SurfaceHolderWrapper;->format:I

    iget v2, p0, Lorg/webrtc/videoengine/SurfaceHolderWrapper;->width:I

    iget v3, p0, Lorg/webrtc/videoengine/SurfaceHolderWrapper;->height:I

    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/SurfaceHolder$Callback;->surfaceChanged(Landroid/view/SurfaceHolder;III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 97
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 99
    :pswitch_1
    :try_start_1
    iget-object v0, p0, Lorg/webrtc/videoengine/SurfaceHolderWrapper;->_holderRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceHolder;

    invoke-interface {p1, v0}, Landroid/view/SurfaceHolder$Callback;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 97
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getWrapper(Landroid/view/SurfaceHolder;)Lorg/webrtc/videoengine/SurfaceHolderWrapper;
    .locals 3
    .parameter

    .prologue
    .line 61
    sget-object v1, Lorg/webrtc/videoengine/SurfaceHolderWrapper;->_wrapMap:Ljava/util/Map;

    monitor-enter v1

    .line 62
    :try_start_0
    sget-object v0, Lorg/webrtc/videoengine/SurfaceHolderWrapper;->_wrapMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/webrtc/videoengine/SurfaceHolderWrapper;

    if-nez v0, :cond_0

    .line 63
    sget-object v2, Lorg/webrtc/videoengine/SurfaceHolderWrapper;->_wrapMap:Ljava/util/Map;

    new-instance v0, Lorg/webrtc/videoengine/SurfaceHolderWrapper;

    invoke-direct {v0, p0}, Lorg/webrtc/videoengine/SurfaceHolderWrapper;-><init>(Landroid/view/SurfaceHolder;)V

    invoke-interface {v2, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    :cond_0
    monitor-exit v1

    .line 66
    return-object v0

    .line 65
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public addCallback(Landroid/view/SurfaceHolder$Callback;)V
    .locals 2
    .parameter

    .prologue
    .line 82
    iget-object v1, p0, Lorg/webrtc/videoengine/SurfaceHolderWrapper;->_currentState:Ljava/util/concurrent/atomic/AtomicInteger;

    monitor-enter v1

    .line 83
    :try_start_0
    iget-object v0, p0, Lorg/webrtc/videoengine/SurfaceHolderWrapper;->_callbacks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 84
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/webrtc/videoengine/SurfaceHolderWrapper;->_currentState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lorg/webrtc/videoengine/SurfaceHolderWrapper;->broadcastStateForSingleCallback(Landroid/view/SurfaceHolder$Callback;I)V

    .line 86
    :cond_0
    return-void

    .line 84
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected declared-synchronized broadcastStateChange(I)V
    .locals 3
    .parameter

    .prologue
    .line 71
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lorg/webrtc/videoengine/SurfaceHolderWrapper;->_currentState:Ljava/util/concurrent/atomic/AtomicInteger;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    :try_start_1
    new-instance v0, Ljava/util/HashSet;

    iget-object v2, p0, Lorg/webrtc/videoengine/SurfaceHolderWrapper;->_callbacks:Ljava/util/Set;

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 73
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 74
    :try_start_2
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceHolder$Callback;

    .line 75
    invoke-direct {p0, v0, p1}, Lorg/webrtc/videoengine/SurfaceHolderWrapper;->broadcastStateForSingleCallback(Landroid/view/SurfaceHolder$Callback;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 71
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 73
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 77
    :cond_0
    monitor-exit p0

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 165
    iget-object v0, p0, Lorg/webrtc/videoengine/SurfaceHolderWrapper;->_wrap:Landroid/view/SurfaceHolder;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getSurface()Landroid/view/Surface;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lorg/webrtc/videoengine/SurfaceHolderWrapper;->_wrap:Landroid/view/SurfaceHolder;

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    return-object v0
.end method

.method public getSurfaceFrame()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lorg/webrtc/videoengine/SurfaceHolderWrapper;->_wrap:Landroid/view/SurfaceHolder;

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 170
    invoke-virtual {p0}, Lorg/webrtc/videoengine/SurfaceHolderWrapper;->hashCode()I

    move-result v0

    return v0
.end method

.method public isCreating()Z
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lorg/webrtc/videoengine/SurfaceHolderWrapper;->_wrap:Landroid/view/SurfaceHolder;

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->isCreating()Z

    move-result v0

    return v0
.end method

.method public lockCanvas()Landroid/graphics/Canvas;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lorg/webrtc/videoengine/SurfaceHolderWrapper;->_wrap:Landroid/view/SurfaceHolder;

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    return-object v0
.end method

.method public lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;
    .locals 1
    .parameter

    .prologue
    .line 125
    iget-object v0, p0, Lorg/webrtc/videoengine/SurfaceHolderWrapper;->_wrap:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p1}, Landroid/view/SurfaceHolder;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v0

    return-object v0
.end method

.method public removeCallback(Landroid/view/SurfaceHolder$Callback;)V
    .locals 2
    .parameter

    .prologue
    .line 90
    iget-object v1, p0, Lorg/webrtc/videoengine/SurfaceHolderWrapper;->_currentState:Ljava/util/concurrent/atomic/AtomicInteger;

    monitor-enter v1

    .line 91
    :try_start_0
    iget-object v0, p0, Lorg/webrtc/videoengine/SurfaceHolderWrapper;->_callbacks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 92
    iget-object v0, p0, Lorg/webrtc/videoengine/SurfaceHolderWrapper;->_wrap:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p1}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 93
    :cond_0
    monitor-exit v1

    .line 94
    return-void

    .line 93
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setFixedSize(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 130
    iget-object v0, p0, Lorg/webrtc/videoengine/SurfaceHolderWrapper;->_wrap:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p1, p2}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 131
    return-void
.end method

.method public setFormat(I)V
    .locals 1
    .parameter

    .prologue
    .line 135
    iget-object v0, p0, Lorg/webrtc/videoengine/SurfaceHolderWrapper;->_wrap:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 136
    return-void
.end method

.method public setKeepScreenOn(Z)V
    .locals 1
    .parameter

    .prologue
    .line 140
    iget-object v0, p0, Lorg/webrtc/videoengine/SurfaceHolderWrapper;->_wrap:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p1}, Landroid/view/SurfaceHolder;->setKeepScreenOn(Z)V

    .line 141
    return-void
.end method

.method public setSizeFromLayout()V
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lorg/webrtc/videoengine/SurfaceHolderWrapper;->_wrap:Landroid/view/SurfaceHolder;

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->setSizeFromLayout()V

    .line 146
    return-void
.end method

.method public setType(I)V
    .locals 1
    .parameter

    .prologue
    .line 150
    iget-object v0, p0, Lorg/webrtc/videoengine/SurfaceHolderWrapper;->_wrap:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 151
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lorg/webrtc/videoengine/SurfaceHolderWrapper;->_wrap:Landroid/view/SurfaceHolder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter

    .prologue
    .line 155
    iget-object v0, p0, Lorg/webrtc/videoengine/SurfaceHolderWrapper;->_wrap:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p1}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 156
    return-void
.end method
