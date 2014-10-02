.class final Lcom/viber/voip/qrcode/g;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field private final a:Lcom/viber/voip/qrcode/ScannerActivity;

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/viber/dexshared/ZXing$DecodeHintType;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/os/Handler;

.field private final d:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Lcom/viber/voip/qrcode/ScannerActivity;Lcom/viber/dexshared/ZXing$ResultPointCallback;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/viber/voip/qrcode/g;->a:Lcom/viber/voip/qrcode/ScannerActivity;

    .line 53
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/viber/voip/qrcode/g;->d:Ljava/util/concurrent/CountDownLatch;

    .line 55
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/viber/dexshared/ZXing$DecodeHintType;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/viber/voip/qrcode/g;->b:Ljava/util/Map;

    .line 57
    iget-object v0, p0, Lcom/viber/voip/qrcode/g;->b:Ljava/util/Map;

    sget-object v1, Lcom/viber/dexshared/ZXing$DecodeHintType;->POSSIBLE_FORMATS:Lcom/viber/dexshared/ZXing$DecodeHintType;

    sget-object v2, Lcom/viber/dexshared/ZXing$BarcodeFormat;->QR_CODE:Lcom/viber/dexshared/ZXing$BarcodeFormat;

    invoke-static {v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    iget-object v0, p0, Lcom/viber/voip/qrcode/g;->b:Ljava/util/Map;

    sget-object v1, Lcom/viber/dexshared/ZXing$DecodeHintType;->NEED_RESULT_POINT_CALLBACK:Lcom/viber/dexshared/ZXing$DecodeHintType;

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    return-void
.end method


# virtual methods
.method a()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 65
    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/qrcode/g;->d:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :goto_0
    iget-object v0, p0, Lcom/viber/voip/qrcode/g;->c:Landroid/os/Handler;

    return-object v0

    .line 66
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public run()V
    .locals 3

    .prologue
    .line 74
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 75
    new-instance v0, Lcom/viber/voip/qrcode/f;

    iget-object v1, p0, Lcom/viber/voip/qrcode/g;->a:Lcom/viber/voip/qrcode/ScannerActivity;

    iget-object v2, p0, Lcom/viber/voip/qrcode/g;->b:Ljava/util/Map;

    invoke-direct {v0, v1, v2}, Lcom/viber/voip/qrcode/f;-><init>(Lcom/viber/voip/qrcode/ScannerActivity;Ljava/util/Map;)V

    iput-object v0, p0, Lcom/viber/voip/qrcode/g;->c:Landroid/os/Handler;

    .line 76
    iget-object v0, p0, Lcom/viber/voip/qrcode/g;->d:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 77
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 78
    return-void
.end method
