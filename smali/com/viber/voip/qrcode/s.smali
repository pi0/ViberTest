.class public final Lcom/viber/voip/qrcode/s;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field private final a:Lcom/viber/voip/qrcode/ScannerActivity;

.field private final b:Lcom/viber/voip/qrcode/g;

.field private c:Lcom/viber/voip/qrcode/t;

.field private final d:Lcom/viber/voip/qrcode/e;


# direct methods
.method constructor <init>(Lcom/viber/voip/qrcode/ScannerActivity;Lcom/viber/voip/qrcode/e;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/viber/voip/qrcode/s;->a:Lcom/viber/voip/qrcode/ScannerActivity;

    .line 50
    new-instance v0, Lcom/viber/voip/qrcode/g;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/viber/voip/qrcode/g;-><init>(Lcom/viber/voip/qrcode/ScannerActivity;Lcom/viber/dexshared/ZXing$ResultPointCallback;)V

    iput-object v0, p0, Lcom/viber/voip/qrcode/s;->b:Lcom/viber/voip/qrcode/g;

    .line 51
    iget-object v0, p0, Lcom/viber/voip/qrcode/s;->b:Lcom/viber/voip/qrcode/g;

    invoke-virtual {v0}, Lcom/viber/voip/qrcode/g;->start()V

    .line 52
    sget-object v0, Lcom/viber/voip/qrcode/t;->b:Lcom/viber/voip/qrcode/t;

    iput-object v0, p0, Lcom/viber/voip/qrcode/s;->c:Lcom/viber/voip/qrcode/t;

    .line 55
    iput-object p2, p0, Lcom/viber/voip/qrcode/s;->d:Lcom/viber/voip/qrcode/e;

    .line 56
    invoke-virtual {p2}, Lcom/viber/voip/qrcode/e;->c()V

    .line 57
    return-void
.end method

.method private b()V
    .locals 3

    .prologue
    .line 119
    iget-object v0, p0, Lcom/viber/voip/qrcode/s;->c:Lcom/viber/voip/qrcode/t;

    sget-object v1, Lcom/viber/voip/qrcode/t;->b:Lcom/viber/voip/qrcode/t;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/viber/voip/qrcode/s;->c:Lcom/viber/voip/qrcode/t;

    sget-object v1, Lcom/viber/voip/qrcode/t;->c:Lcom/viber/voip/qrcode/t;

    if-ne v0, v1, :cond_1

    .line 120
    :cond_0
    sget-object v0, Lcom/viber/voip/qrcode/t;->a:Lcom/viber/voip/qrcode/t;

    iput-object v0, p0, Lcom/viber/voip/qrcode/s;->c:Lcom/viber/voip/qrcode/t;

    .line 121
    iget-object v0, p0, Lcom/viber/voip/qrcode/s;->d:Lcom/viber/voip/qrcode/e;

    iget-object v1, p0, Lcom/viber/voip/qrcode/s;->b:Lcom/viber/voip/qrcode/g;

    invoke-virtual {v1}, Lcom/viber/voip/qrcode/g;->a()Landroid/os/Handler;

    move-result-object v1

    const v2, 0x7f07007a

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/qrcode/e;->a(Landroid/os/Handler;I)V

    .line 122
    iget-object v0, p0, Lcom/viber/voip/qrcode/s;->a:Lcom/viber/voip/qrcode/ScannerActivity;

    invoke-virtual {v0}, Lcom/viber/voip/qrcode/ScannerActivity;->d()V

    .line 124
    :cond_1
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 101
    sget-object v0, Lcom/viber/voip/qrcode/t;->d:Lcom/viber/voip/qrcode/t;

    iput-object v0, p0, Lcom/viber/voip/qrcode/s;->c:Lcom/viber/voip/qrcode/t;

    .line 102
    iget-object v0, p0, Lcom/viber/voip/qrcode/s;->d:Lcom/viber/voip/qrcode/e;

    invoke-virtual {v0}, Lcom/viber/voip/qrcode/e;->d()V

    .line 103
    iget-object v0, p0, Lcom/viber/voip/qrcode/s;->b:Lcom/viber/voip/qrcode/g;

    invoke-virtual {v0}, Lcom/viber/voip/qrcode/g;->a()Landroid/os/Handler;

    move-result-object v0

    const v1, 0x7f07007e

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 104
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 107
    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/qrcode/s;->b:Lcom/viber/voip/qrcode/g;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/qrcode/g;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    :goto_0
    const v0, 0x7f07007c

    invoke-virtual {p0, v0}, Lcom/viber/voip/qrcode/s;->removeMessages(I)V

    .line 114
    const v0, 0x7f07007b

    invoke-virtual {p0, v0}, Lcom/viber/voip/qrcode/s;->removeMessages(I)V

    .line 115
    const v0, 0x7f07007d

    invoke-virtual {p0, v0}, Lcom/viber/voip/qrcode/s;->removeMessages(I)V

    .line 116
    return-void

    .line 108
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 61
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 98
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 63
    :pswitch_1
    invoke-direct {p0}, Lcom/viber/voip/qrcode/s;->b()V

    goto :goto_0

    .line 66
    :pswitch_2
    sget-object v1, Lcom/viber/voip/qrcode/t;->b:Lcom/viber/voip/qrcode/t;

    iput-object v1, p0, Lcom/viber/voip/qrcode/s;->c:Lcom/viber/voip/qrcode/t;

    .line 67
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    .line 69
    const/high16 v1, 0x3f80

    .line 70
    if-eqz v2, :cond_2

    .line 71
    const-string/jumbo v1, "barcode_bitmap"

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    .line 72
    if-eqz v1, :cond_1

    .line 73
    const/4 v3, 0x0

    array-length v4, v1

    invoke-static {v1, v3, v4, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 75
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 77
    :cond_1
    const-string/jumbo v1, "barcode_scaled_factor"

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    move-object v2, v0

    .line 79
    :goto_1
    iget-object v3, p0, Lcom/viber/voip/qrcode/s;->a:Lcom/viber/voip/qrcode/ScannerActivity;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/viber/dexshared/ZXing$Result;

    invoke-virtual {v3, v0, v2, v1}, Lcom/viber/voip/qrcode/ScannerActivity;->a(Lcom/viber/dexshared/ZXing$Result;Landroid/graphics/Bitmap;F)V

    goto :goto_0

    .line 83
    :pswitch_3
    iget-object v0, p0, Lcom/viber/voip/qrcode/s;->c:Lcom/viber/voip/qrcode/t;

    sget-object v1, Lcom/viber/voip/qrcode/t;->c:Lcom/viber/voip/qrcode/t;

    if-eq v0, v1, :cond_0

    .line 85
    sget-object v0, Lcom/viber/voip/qrcode/t;->a:Lcom/viber/voip/qrcode/t;

    iput-object v0, p0, Lcom/viber/voip/qrcode/s;->c:Lcom/viber/voip/qrcode/t;

    .line 86
    iget-object v0, p0, Lcom/viber/voip/qrcode/s;->d:Lcom/viber/voip/qrcode/e;

    iget-object v1, p0, Lcom/viber/voip/qrcode/s;->b:Lcom/viber/voip/qrcode/g;

    invoke-virtual {v1}, Lcom/viber/voip/qrcode/g;->a()Landroid/os/Handler;

    move-result-object v1

    const v2, 0x7f07007a

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/qrcode/e;->a(Landroid/os/Handler;I)V

    goto :goto_0

    .line 90
    :pswitch_4
    iget-object v1, p0, Lcom/viber/voip/qrcode/s;->a:Lcom/viber/voip/qrcode/ScannerActivity;

    const/4 v2, -0x1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {v1, v2, v0}, Lcom/viber/voip/qrcode/ScannerActivity;->setResult(ILandroid/content/Intent;)V

    .line 91
    iget-object v0, p0, Lcom/viber/voip/qrcode/s;->a:Lcom/viber/voip/qrcode/ScannerActivity;

    invoke-virtual {v0}, Lcom/viber/voip/qrcode/ScannerActivity;->finish()V

    goto :goto_0

    .line 95
    :pswitch_5
    sget-object v0, Lcom/viber/voip/qrcode/t;->c:Lcom/viber/voip/qrcode/t;

    iput-object v0, p0, Lcom/viber/voip/qrcode/s;->c:Lcom/viber/voip/qrcode/t;

    goto :goto_0

    :cond_2
    move-object v2, v0

    goto :goto_1

    .line 61
    nop

    :pswitch_data_0
    .packed-switch 0x7f07007b
        :pswitch_3
        :pswitch_2
        :pswitch_5
        :pswitch_0
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method
