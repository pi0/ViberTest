.class public final enum Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;

.field public static final enum Android23:Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;

.field public static final enum GalaxyS:Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;

.field public static final enum HTCEvo:Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;

.field public static final enum None:Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 87
    new-instance v0, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;

    const-string/jumbo v1, "None"

    invoke-direct {v0, v1, v2}, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;->None:Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;

    .line 88
    new-instance v0, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;

    const-string/jumbo v1, "GalaxyS"

    invoke-direct {v0, v1, v3}, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;->GalaxyS:Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;

    .line 89
    new-instance v0, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;

    const-string/jumbo v1, "HTCEvo"

    invoke-direct {v0, v1, v4}, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;->HTCEvo:Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;

    .line 90
    new-instance v0, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;

    const-string/jumbo v1, "Android23"

    invoke-direct {v0, v1, v5}, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;->Android23:Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;

    .line 86
    const/4 v0, 0x4

    new-array v0, v0, [Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;

    sget-object v1, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;->None:Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;

    aput-object v1, v0, v2

    sget-object v1, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;->GalaxyS:Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;

    aput-object v1, v0, v3

    sget-object v1, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;->HTCEvo:Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;

    aput-object v1, v0, v4

    sget-object v1, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;->Android23:Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;

    aput-object v1, v0, v5

    sput-object v0, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;->$VALUES:[Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 86
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;
    .locals 1
    .parameter

    .prologue
    .line 86
    const-class v0, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;

    return-object v0
.end method

.method public static values()[Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;
    .locals 1

    .prologue
    .line 86
    sget-object v0, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;->$VALUES:[Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;

    invoke-virtual {v0}, [Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;

    return-object v0
.end method
