.class public final Lcom/viber/voip/qrcode/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/viber/voip/qrcode/a/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/qrcode/a/a;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method public static a()Landroid/hardware/Camera;
    .locals 1

    .prologue
    .line 78
    const/4 v0, -0x1

    invoke-static {v0}, Lcom/viber/voip/qrcode/a/a;->a(I)Landroid/hardware/Camera;

    move-result-object v0

    return-object v0
.end method

.method public static a(I)Landroid/hardware/Camera;
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 42
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v3

    .line 43
    if-nez v3, :cond_1

    .line 69
    :cond_0
    :goto_0
    return-object v0

    .line 48
    :cond_1
    if-ltz p0, :cond_3

    const/4 v1, 0x1

    .line 50
    :goto_1
    if-nez v1, :cond_2

    .line 52
    invoke-static {v3}, Lcom/viber/voip/qrcode/a/a;->b(I)I

    move-result p0

    .line 56
    :cond_2
    if-ge p0, v3, :cond_4

    .line 58
    invoke-static {p0}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v0

    goto :goto_0

    :cond_3
    move v1, v2

    .line 48
    goto :goto_1

    .line 60
    :cond_4
    if-nez v1, :cond_0

    .line 65
    invoke-static {v2}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v0

    goto :goto_0
.end method

.method public static b()I
    .locals 1

    .prologue
    .line 87
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v0

    invoke-static {v0}, Lcom/viber/voip/qrcode/a/a;->b(I)I

    move-result v0

    return v0
.end method

.method private static b(I)I
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 91
    move v0, v1

    .line 92
    :goto_0
    if-ge v0, p0, :cond_0

    .line 93
    new-instance v2, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v2}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 94
    invoke-static {v0, v2}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 95
    iget v2, v2, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v2, :cond_1

    .line 100
    :cond_0
    if-ge v0, p0, :cond_2

    .line 105
    :goto_1
    return v0

    .line 98
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 99
    goto :goto_0

    .line 102
    :cond_2
    if-lez p0, :cond_3

    move v0, v1

    .line 103
    goto :goto_1

    .line 105
    :cond_3
    const/4 v0, -0x1

    goto :goto_1
.end method
