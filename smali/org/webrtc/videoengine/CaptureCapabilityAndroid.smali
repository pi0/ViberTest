.class public Lorg/webrtc/videoengine/CaptureCapabilityAndroid;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public height:I

.field public maxFPS:I

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput v0, p0, Lorg/webrtc/videoengine/CaptureCapabilityAndroid;->width:I

    .line 15
    iput v0, p0, Lorg/webrtc/videoengine/CaptureCapabilityAndroid;->height:I

    .line 16
    iput v0, p0, Lorg/webrtc/videoengine/CaptureCapabilityAndroid;->maxFPS:I

    return-void
.end method
