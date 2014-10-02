.class final Lorg/webrtc/videoengine/ViERenderer$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$cowSetRef:Ljava/util/Set;


# direct methods
.method constructor <init>(Ljava/util/Set;)V
    .locals 0
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lorg/webrtc/videoengine/ViERenderer$1;->val$cowSetRef:Ljava/util/Set;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lorg/webrtc/videoengine/ViERenderer$1;->val$cowSetRef:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/webrtc/videoengine/ViERenderer$ViERendererCallback;

    .line 69
    invoke-interface {v0}, Lorg/webrtc/videoengine/ViERenderer$ViERendererCallback;->onLocalSurfaceChanged()V

    goto :goto_0

    .line 71
    :cond_0
    return-void
.end method
