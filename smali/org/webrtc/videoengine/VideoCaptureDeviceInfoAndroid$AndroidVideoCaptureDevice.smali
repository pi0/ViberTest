.class public Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public captureCapabilies:[Lorg/webrtc/videoengine/CaptureCapabilityAndroid;

.field public deviceUniqueName:Ljava/lang/String;

.field public device_aspect_ratio:D

.field public device_rotation_hint:I

.field public frontCameraType:Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;

.field public index:I

.field public orientation:I

.field final synthetic this$0:Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;


# direct methods
.method constructor <init>(Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 59
    iput-object p1, p0, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->this$0:Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput v2, p0, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->device_rotation_hint:I

    .line 83
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->device_aspect_ratio:D

    .line 60
    sget-object v0, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;->None:Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;

    iput-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->frontCameraType:Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;

    .line 61
    iput v2, p0, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->index:I

    .line 62
    const-string/jumbo v0, "LT18i"

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    const/16 v0, 0xb4

    iput v0, p0, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->device_rotation_hint:I

    .line 65
    :cond_0
    const-string/jumbo v0, "jflte"

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 66
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 67
    const-wide v0, 0x3ff999999999999aL

    iput-wide v0, p0, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->device_aspect_ratio:D

    .line 69
    :cond_1
    return-void
.end method
