.class final Lorg/webrtc/videoengine/ViEOMXHelper$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/util/v;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/viber/voip/util/v",
        "<",
        "Lorg/webrtc/videoengine/ViEOMXHelper$OMXNode;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 548
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic transform(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 548
    check-cast p1, Lorg/webrtc/videoengine/ViEOMXHelper$OMXNode;

    invoke-virtual {p0, p1}, Lorg/webrtc/videoengine/ViEOMXHelper$2;->transform(Lorg/webrtc/videoengine/ViEOMXHelper$OMXNode;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public transform(Lorg/webrtc/videoengine/ViEOMXHelper$OMXNode;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 551
    iget-object v0, p1, Lorg/webrtc/videoengine/ViEOMXHelper$OMXNode;->name:Ljava/lang/String;

    return-object v0
.end method
