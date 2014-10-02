.class final Lcom/viber/voip/qrcode/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Landroid/graphics/Point;

.field private c:Landroid/graphics/Point;

.field private d:Lcom/viber/dexshared/ZXing$CameraConfigurationUtils;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-static {}, Lcom/viber/voip/ViberEnv;->getZXingFactory()Lcom/viber/dexshared/ZXing$Factory;

    move-result-object v0

    invoke-interface {v0}, Lcom/viber/dexshared/ZXing$Factory;->getCameraConfigurationUtils()Lcom/viber/dexshared/ZXing$CameraConfigurationUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/qrcode/d;->d:Lcom/viber/dexshared/ZXing$CameraConfigurationUtils;

    .line 49
    iput-object p1, p0, Lcom/viber/voip/qrcode/d;->a:Landroid/content/Context;

    .line 50
    return-void
.end method


# virtual methods
.method a()Landroid/graphics/Point;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/viber/voip/qrcode/d;->c:Landroid/graphics/Point;

    return-object v0
.end method

.method a(ILandroid/hardware/Camera;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 53
    new-instance v2, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v2}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 54
    invoke-static {p1, v2}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 55
    iget-object v0, p0, Lcom/viber/voip/qrcode/d;->a:Landroid/content/Context;

    const-string/jumbo v3, "window"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 56
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 58
    packed-switch v0, :pswitch_data_0

    move v0, v1

    .line 66
    :goto_0
    iget v1, v2, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 67
    iget v1, v2, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr v0, v1

    rem-int/lit16 v0, v0, 0x168

    .line 68
    rsub-int v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168

    .line 73
    :goto_1
    invoke-virtual {p2, v0}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 74
    return-void

    :pswitch_0
    move v0, v1

    .line 59
    goto :goto_0

    .line 60
    :pswitch_1
    const/16 v0, 0x5a

    goto :goto_0

    .line 61
    :pswitch_2
    const/16 v0, 0xb4

    goto :goto_0

    .line 62
    :pswitch_3
    const/16 v0, 0x10e

    goto :goto_0

    .line 70
    :cond_0
    iget v1, v2, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int v0, v1, v0

    add-int/lit16 v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168

    goto :goto_1

    .line 58
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method a(Landroid/hardware/Camera;)V
    .locals 4
    .parameter
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 84
    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 85
    iget-object v0, p0, Lcom/viber/voip/qrcode/d;->a:Landroid/content/Context;

    const-string/jumbo v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 86
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 87
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 88
    invoke-static {}, Lcom/viber/voip/util/gl;->d()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 89
    invoke-virtual {v0, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 93
    :goto_0
    iput-object v2, p0, Lcom/viber/voip/qrcode/d;->b:Landroid/graphics/Point;

    .line 95
    iget-object v0, p0, Lcom/viber/voip/qrcode/d;->d:Lcom/viber/dexshared/ZXing$CameraConfigurationUtils;

    iget-object v2, p0, Lcom/viber/voip/qrcode/d;->b:Landroid/graphics/Point;

    invoke-interface {v0, v1, v2}, Lcom/viber/dexshared/ZXing$CameraConfigurationUtils;->findBestPreviewSizeValue(Landroid/hardware/Camera$Parameters;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/qrcode/d;->c:Landroid/graphics/Point;

    .line 97
    return-void

    .line 91
    :cond_0
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    invoke-virtual {v2, v3, v0}, Landroid/graphics/Point;->set(II)V

    goto :goto_0
.end method

.method a(Landroid/hardware/Camera;Z)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 100
    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 102
    if-nez v0, :cond_1

    .line 147
    :cond_0
    :goto_0
    return-void

    .line 109
    :cond_1
    if-eqz p2, :cond_2

    .line 117
    :cond_2
    iget-object v1, p0, Lcom/viber/voip/qrcode/d;->d:Lcom/viber/dexshared/ZXing$CameraConfigurationUtils;

    invoke-interface {v1, v0, v2, v2, p2}, Lcom/viber/dexshared/ZXing$CameraConfigurationUtils;->setFocus(Landroid/hardware/Camera$Parameters;ZZZ)V

    .line 122
    if-nez p2, :cond_4

    .line 123
    iget-object v1, p0, Lcom/viber/voip/qrcode/d;->d:Lcom/viber/dexshared/ZXing$CameraConfigurationUtils;

    invoke-interface {v1, v0}, Lcom/viber/dexshared/ZXing$CameraConfigurationUtils;->setBarcodeSceneMode(Landroid/hardware/Camera$Parameters;)V

    .line 125
    invoke-static {}, Lcom/viber/voip/util/gl;->f()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 126
    iget-object v1, p0, Lcom/viber/voip/qrcode/d;->d:Lcom/viber/dexshared/ZXing$CameraConfigurationUtils;

    invoke-interface {v1, v0}, Lcom/viber/dexshared/ZXing$CameraConfigurationUtils;->setVideoStabilization(Landroid/hardware/Camera$Parameters;)V

    .line 128
    :cond_3
    invoke-static {}, Lcom/viber/voip/util/gl;->e()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 129
    iget-object v1, p0, Lcom/viber/voip/qrcode/d;->d:Lcom/viber/dexshared/ZXing$CameraConfigurationUtils;

    invoke-interface {v1, v0}, Lcom/viber/dexshared/ZXing$CameraConfigurationUtils;->setFocusArea(Landroid/hardware/Camera$Parameters;)V

    .line 130
    iget-object v1, p0, Lcom/viber/voip/qrcode/d;->d:Lcom/viber/dexshared/ZXing$CameraConfigurationUtils;

    invoke-interface {v1, v0}, Lcom/viber/dexshared/ZXing$CameraConfigurationUtils;->setMetering(Landroid/hardware/Camera$Parameters;)V

    .line 134
    :cond_4
    iget-object v1, p0, Lcom/viber/voip/qrcode/d;->c:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/viber/voip/qrcode/d;->c:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 135
    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 137
    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 138
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 139
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/viber/voip/qrcode/d;->c:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lcom/viber/voip/qrcode/d;->c:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    iget v2, v0, Landroid/hardware/Camera$Size;->height:I

    if-eq v1, v2, :cond_0

    .line 144
    :cond_5
    iget-object v1, p0, Lcom/viber/voip/qrcode/d;->c:Landroid/graphics/Point;

    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    iput v2, v1, Landroid/graphics/Point;->x:I

    .line 145
    iget-object v1, p0, Lcom/viber/voip/qrcode/d;->c:Landroid/graphics/Point;

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    iput v0, v1, Landroid/graphics/Point;->y:I

    goto :goto_0
.end method

.method b()Landroid/graphics/Point;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/viber/voip/qrcode/d;->b:Landroid/graphics/Point;

    return-object v0
.end method
