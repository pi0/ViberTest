.class final Lcom/viber/voip/qrcode/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Lcom/viber/voip/qrcode/d;

.field private c:Landroid/os/Handler;

.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/viber/voip/qrcode/l;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/qrcode/l;->a:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/viber/voip/qrcode/d;)V
    .locals 0
    .parameter

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/viber/voip/qrcode/l;->b:Lcom/viber/voip/qrcode/d;

    .line 39
    return-void
.end method


# virtual methods
.method a(Landroid/os/Handler;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Lcom/viber/voip/qrcode/l;->c:Landroid/os/Handler;

    .line 43
    iput p2, p0, Lcom/viber/voip/qrcode/l;->d:I

    .line 44
    return-void
.end method

.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/viber/voip/qrcode/l;->b:Lcom/viber/voip/qrcode/d;

    invoke-virtual {v0}, Lcom/viber/voip/qrcode/d;->a()Landroid/graphics/Point;

    move-result-object v0

    .line 49
    iget-object v1, p0, Lcom/viber/voip/qrcode/l;->c:Landroid/os/Handler;

    .line 50
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 51
    iget v2, p0, Lcom/viber/voip/qrcode/l;->d:I

    iget v3, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v2, v3, v0, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 52
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/viber/voip/qrcode/l;->c:Landroid/os/Handler;

    .line 57
    :cond_0
    return-void
.end method
