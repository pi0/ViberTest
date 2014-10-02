.class final Lcom/viber/voip/qrcode/f;
.super Landroid/os/Handler;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/viber/dexshared/ZXing$Factory;

.field private final c:Lcom/viber/voip/qrcode/ScannerActivity;

.field private final d:Lcom/viber/dexshared/ZXing$MultiFormatReader;

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/viber/voip/qrcode/f;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/qrcode/f;->a:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/viber/voip/qrcode/ScannerActivity;Ljava/util/Map;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/viber/voip/qrcode/ScannerActivity;",
            "Ljava/util/Map",
            "<",
            "Lcom/viber/dexshared/ZXing$DecodeHintType;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 37
    invoke-static {}, Lcom/viber/voip/ViberEnv;->getZXingFactory()Lcom/viber/dexshared/ZXing$Factory;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/qrcode/f;->b:Lcom/viber/dexshared/ZXing$Factory;

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/viber/voip/qrcode/f;->e:Z

    .line 43
    iget-object v0, p0, Lcom/viber/voip/qrcode/f;->b:Lcom/viber/dexshared/ZXing$Factory;

    invoke-interface {v0}, Lcom/viber/dexshared/ZXing$Factory;->newMultiFormatReader()Lcom/viber/dexshared/ZXing$MultiFormatReader;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/qrcode/f;->d:Lcom/viber/dexshared/ZXing$MultiFormatReader;

    .line 44
    iget-object v0, p0, Lcom/viber/voip/qrcode/f;->d:Lcom/viber/dexshared/ZXing$MultiFormatReader;

    invoke-interface {v0, p2}, Lcom/viber/dexshared/ZXing$MultiFormatReader;->setHints(Ljava/util/Map;)V

    .line 45
    iput-object p1, p0, Lcom/viber/voip/qrcode/f;->c:Lcom/viber/voip/qrcode/ScannerActivity;

    .line 46
    return-void
.end method

.method private static a(Lcom/viber/dexshared/ZXing$PlanarYUVLuminanceSource;Landroid/os/Bundle;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 111
    invoke-interface {p0}, Lcom/viber/dexshared/ZXing$PlanarYUVLuminanceSource;->renderThumbnail()[I

    move-result-object v0

    .line 112
    invoke-interface {p0}, Lcom/viber/dexshared/ZXing$PlanarYUVLuminanceSource;->getThumbnailWidth()I

    move-result v2

    .line 113
    invoke-interface {p0}, Lcom/viber/dexshared/ZXing$PlanarYUVLuminanceSource;->getThumbnailHeight()I

    move-result v4

    .line 114
    const/4 v1, 0x0

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move v3, v2

    invoke-static/range {v0 .. v5}, Landroid/graphics/Bitmap;->createBitmap([IIIIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 115
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 116
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x32

    invoke-virtual {v0, v3, v4, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 117
    const-string/jumbo v0, "barcode_bitmap"

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 118
    const-string/jumbo v0, "barcode_scaled_factor"

    int-to-float v1, v2

    invoke-interface {p0}, Lcom/viber/dexshared/ZXing$PlanarYUVLuminanceSource;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 119
    return-void
.end method

.method private a([BII)V
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    .line 76
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 77
    const/4 v0, 0x0

    .line 78
    iget-object v3, p0, Lcom/viber/voip/qrcode/f;->c:Lcom/viber/voip/qrcode/ScannerActivity;

    invoke-virtual {v3}, Lcom/viber/voip/qrcode/ScannerActivity;->c()Lcom/viber/voip/qrcode/e;

    move-result-object v3

    invoke-virtual {v3, p1, p2, p3}, Lcom/viber/voip/qrcode/e;->a([BII)Lcom/viber/dexshared/ZXing$PlanarYUVLuminanceSource;

    move-result-object v3

    .line 79
    if-eqz v3, :cond_0

    .line 80
    iget-object v4, p0, Lcom/viber/voip/qrcode/f;->b:Lcom/viber/dexshared/ZXing$Factory;

    iget-object v5, p0, Lcom/viber/voip/qrcode/f;->b:Lcom/viber/dexshared/ZXing$Factory;

    invoke-interface {v5, v3}, Lcom/viber/dexshared/ZXing$Factory;->newHybridBinarizer(Lcom/viber/dexshared/ZXing$PlanarYUVLuminanceSource;)Lcom/viber/dexshared/ZXing$HybridBinarizer;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/viber/dexshared/ZXing$Factory;->newBinaryBitmap(Lcom/viber/dexshared/ZXing$HybridBinarizer;)Lcom/viber/dexshared/ZXing$BinaryBitmap;

    move-result-object v4

    .line 82
    :try_start_0
    iget-object v5, p0, Lcom/viber/voip/qrcode/f;->d:Lcom/viber/dexshared/ZXing$MultiFormatReader;

    invoke-interface {v5, v4}, Lcom/viber/dexshared/ZXing$MultiFormatReader;->decodeWithState(Lcom/viber/dexshared/ZXing$BinaryBitmap;)Lcom/viber/dexshared/ZXing$Result;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/viber/dexshared/ZXing$ReaderException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 86
    iget-object v4, p0, Lcom/viber/voip/qrcode/f;->d:Lcom/viber/dexshared/ZXing$MultiFormatReader;

    invoke-interface {v4}, Lcom/viber/dexshared/ZXing$MultiFormatReader;->reset()V

    .line 90
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/viber/voip/qrcode/f;->c:Lcom/viber/voip/qrcode/ScannerActivity;

    invoke-virtual {v4}, Lcom/viber/voip/qrcode/ScannerActivity;->b()Landroid/os/Handler;

    move-result-object v4

    .line 91
    if-eqz v0, :cond_2

    .line 93
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 94
    sget-object v7, Lcom/viber/voip/qrcode/f;->a:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Found barcode in "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sub-long v1, v5, v1

    invoke-virtual {v8, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    if-eqz v4, :cond_1

    .line 96
    const v1, 0x7f07007c

    invoke-static {v4, v1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 97
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 98
    invoke-static {v3, v1}, Lcom/viber/voip/qrcode/f;->a(Lcom/viber/dexshared/ZXing$PlanarYUVLuminanceSource;Landroid/os/Bundle;)V

    .line 99
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 100
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 108
    :cond_1
    :goto_1
    return-void

    .line 83
    :catch_0
    move-exception v4

    .line 86
    iget-object v4, p0, Lcom/viber/voip/qrcode/f;->d:Lcom/viber/dexshared/ZXing$MultiFormatReader;

    invoke-interface {v4}, Lcom/viber/dexshared/ZXing$MultiFormatReader;->reset()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/viber/voip/qrcode/f;->d:Lcom/viber/dexshared/ZXing$MultiFormatReader;

    invoke-interface {v1}, Lcom/viber/dexshared/ZXing$MultiFormatReader;->reset()V

    throw v0

    .line 103
    :cond_2
    if-eqz v4, :cond_1

    .line 104
    const v0, 0x7f07007b

    invoke-static {v4, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 105
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/viber/voip/qrcode/f;->e:Z

    if-nez v0, :cond_0

    .line 62
    :goto_0
    return-void

    .line 53
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 55
    :sswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v0, v1, v2}, Lcom/viber/voip/qrcode/f;->a([BII)V

    goto :goto_0

    .line 58
    :sswitch_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/viber/voip/qrcode/f;->e:Z

    .line 59
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    goto :goto_0

    .line 53
    :sswitch_data_0
    .sparse-switch
        0x7f07007a -> :sswitch_0
        0x7f07007e -> :sswitch_1
    .end sparse-switch
.end method
