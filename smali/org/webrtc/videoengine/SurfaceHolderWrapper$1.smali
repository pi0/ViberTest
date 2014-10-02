.class Lorg/webrtc/videoengine/SurfaceHolderWrapper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# instance fields
.field final synthetic this$0:Lorg/webrtc/videoengine/SurfaceHolderWrapper;


# direct methods
.method constructor <init>(Lorg/webrtc/videoengine/SurfaceHolderWrapper;)V
    .locals 0
    .parameter

    .prologue
    .line 30
    iput-object p1, p0, Lorg/webrtc/videoengine/SurfaceHolderWrapper$1;->this$0:Lorg/webrtc/videoengine/SurfaceHolderWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lorg/webrtc/videoengine/SurfaceHolderWrapper$1;->this$0:Lorg/webrtc/videoengine/SurfaceHolderWrapper;

    #setter for: Lorg/webrtc/videoengine/SurfaceHolderWrapper;->format:I
    invoke-static {v0, p2}, Lorg/webrtc/videoengine/SurfaceHolderWrapper;->access$002(Lorg/webrtc/videoengine/SurfaceHolderWrapper;I)I

    .line 35
    iget-object v0, p0, Lorg/webrtc/videoengine/SurfaceHolderWrapper$1;->this$0:Lorg/webrtc/videoengine/SurfaceHolderWrapper;

    #setter for: Lorg/webrtc/videoengine/SurfaceHolderWrapper;->width:I
    invoke-static {v0, p3}, Lorg/webrtc/videoengine/SurfaceHolderWrapper;->access$102(Lorg/webrtc/videoengine/SurfaceHolderWrapper;I)I

    .line 36
    iget-object v0, p0, Lorg/webrtc/videoengine/SurfaceHolderWrapper$1;->this$0:Lorg/webrtc/videoengine/SurfaceHolderWrapper;

    #setter for: Lorg/webrtc/videoengine/SurfaceHolderWrapper;->height:I
    invoke-static {v0, p4}, Lorg/webrtc/videoengine/SurfaceHolderWrapper;->access$202(Lorg/webrtc/videoengine/SurfaceHolderWrapper;I)I

    .line 37
    iget-object v0, p0, Lorg/webrtc/videoengine/SurfaceHolderWrapper$1;->this$0:Lorg/webrtc/videoengine/SurfaceHolderWrapper;

    #getter for: Lorg/webrtc/videoengine/SurfaceHolderWrapper;->_currentState:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v0}, Lorg/webrtc/videoengine/SurfaceHolderWrapper;->access$300(Lorg/webrtc/videoengine/SurfaceHolderWrapper;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 38
    iget-object v0, p0, Lorg/webrtc/videoengine/SurfaceHolderWrapper$1;->this$0:Lorg/webrtc/videoengine/SurfaceHolderWrapper;

    #getter for: Lorg/webrtc/videoengine/SurfaceHolderWrapper;->_holderRef:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {v0}, Lorg/webrtc/videoengine/SurfaceHolderWrapper;->access$400(Lorg/webrtc/videoengine/SurfaceHolderWrapper;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 39
    iget-object v0, p0, Lorg/webrtc/videoengine/SurfaceHolderWrapper$1;->this$0:Lorg/webrtc/videoengine/SurfaceHolderWrapper;

    iget-object v1, p0, Lorg/webrtc/videoengine/SurfaceHolderWrapper$1;->this$0:Lorg/webrtc/videoengine/SurfaceHolderWrapper;

    #getter for: Lorg/webrtc/videoengine/SurfaceHolderWrapper;->_currentState:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v1}, Lorg/webrtc/videoengine/SurfaceHolderWrapper;->access$300(Lorg/webrtc/videoengine/SurfaceHolderWrapper;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/webrtc/videoengine/SurfaceHolderWrapper;->broadcastStateChange(I)V

    .line 40
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lorg/webrtc/videoengine/SurfaceHolderWrapper$1;->this$0:Lorg/webrtc/videoengine/SurfaceHolderWrapper;

    #getter for: Lorg/webrtc/videoengine/SurfaceHolderWrapper;->_currentState:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v0}, Lorg/webrtc/videoengine/SurfaceHolderWrapper;->access$300(Lorg/webrtc/videoengine/SurfaceHolderWrapper;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 44
    iget-object v0, p0, Lorg/webrtc/videoengine/SurfaceHolderWrapper$1;->this$0:Lorg/webrtc/videoengine/SurfaceHolderWrapper;

    #getter for: Lorg/webrtc/videoengine/SurfaceHolderWrapper;->_holderRef:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {v0}, Lorg/webrtc/videoengine/SurfaceHolderWrapper;->access$400(Lorg/webrtc/videoengine/SurfaceHolderWrapper;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 45
    iget-object v0, p0, Lorg/webrtc/videoengine/SurfaceHolderWrapper$1;->this$0:Lorg/webrtc/videoengine/SurfaceHolderWrapper;

    iget-object v1, p0, Lorg/webrtc/videoengine/SurfaceHolderWrapper$1;->this$0:Lorg/webrtc/videoengine/SurfaceHolderWrapper;

    #getter for: Lorg/webrtc/videoengine/SurfaceHolderWrapper;->_currentState:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v1}, Lorg/webrtc/videoengine/SurfaceHolderWrapper;->access$300(Lorg/webrtc/videoengine/SurfaceHolderWrapper;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/webrtc/videoengine/SurfaceHolderWrapper;->broadcastStateChange(I)V

    .line 46
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lorg/webrtc/videoengine/SurfaceHolderWrapper$1;->this$0:Lorg/webrtc/videoengine/SurfaceHolderWrapper;

    #getter for: Lorg/webrtc/videoengine/SurfaceHolderWrapper;->_currentState:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v0}, Lorg/webrtc/videoengine/SurfaceHolderWrapper;->access$300(Lorg/webrtc/videoengine/SurfaceHolderWrapper;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 50
    iget-object v0, p0, Lorg/webrtc/videoengine/SurfaceHolderWrapper$1;->this$0:Lorg/webrtc/videoengine/SurfaceHolderWrapper;

    #getter for: Lorg/webrtc/videoengine/SurfaceHolderWrapper;->_holderRef:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {v0}, Lorg/webrtc/videoengine/SurfaceHolderWrapper;->access$400(Lorg/webrtc/videoengine/SurfaceHolderWrapper;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 51
    iget-object v0, p0, Lorg/webrtc/videoengine/SurfaceHolderWrapper$1;->this$0:Lorg/webrtc/videoengine/SurfaceHolderWrapper;

    iget-object v1, p0, Lorg/webrtc/videoengine/SurfaceHolderWrapper$1;->this$0:Lorg/webrtc/videoengine/SurfaceHolderWrapper;

    #getter for: Lorg/webrtc/videoengine/SurfaceHolderWrapper;->_currentState:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v1}, Lorg/webrtc/videoengine/SurfaceHolderWrapper;->access$300(Lorg/webrtc/videoengine/SurfaceHolderWrapper;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/webrtc/videoengine/SurfaceHolderWrapper;->broadcastStateChange(I)V

    .line 52
    return-void
.end method
