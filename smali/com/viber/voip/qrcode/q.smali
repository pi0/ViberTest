.class Lcom/viber/voip/qrcode/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/qrcode/ScannerActivity;


# direct methods
.method private constructor <init>(Lcom/viber/voip/qrcode/ScannerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 463
    iput-object p1, p0, Lcom/viber/voip/qrcode/q;->a:Lcom/viber/voip/qrcode/ScannerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/viber/voip/qrcode/ScannerActivity;Lcom/viber/voip/qrcode/m;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 463
    invoke-direct {p0, p1}, Lcom/viber/voip/qrcode/q;-><init>(Lcom/viber/voip/qrcode/ScannerActivity;)V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter

    .prologue
    .line 466
    iget-object v0, p0, Lcom/viber/voip/qrcode/q;->a:Lcom/viber/voip/qrcode/ScannerActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/viber/voip/qrcode/ScannerActivity;->a(Lcom/viber/voip/qrcode/ScannerActivity;Lcom/viber/voip/ui/a/a;)Lcom/viber/voip/ui/a/a;

    .line 467
    iget-object v0, p0, Lcom/viber/voip/qrcode/q;->a:Lcom/viber/voip/qrcode/ScannerActivity;

    invoke-virtual {v0}, Lcom/viber/voip/qrcode/ScannerActivity;->e()V

    .line 468
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 472
    iget-object v0, p0, Lcom/viber/voip/qrcode/q;->a:Lcom/viber/voip/qrcode/ScannerActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/viber/voip/qrcode/ScannerActivity;->a(Lcom/viber/voip/qrcode/ScannerActivity;Lcom/viber/voip/ui/a/a;)Lcom/viber/voip/ui/a/a;

    .line 473
    iget-object v0, p0, Lcom/viber/voip/qrcode/q;->a:Lcom/viber/voip/qrcode/ScannerActivity;

    invoke-virtual {v0}, Lcom/viber/voip/qrcode/ScannerActivity;->e()V

    .line 474
    return-void
.end method

.method public run()V
    .locals 2

    .prologue
    .line 478
    iget-object v0, p0, Lcom/viber/voip/qrcode/q;->a:Lcom/viber/voip/qrcode/ScannerActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/viber/voip/qrcode/ScannerActivity;->a(Lcom/viber/voip/qrcode/ScannerActivity;Lcom/viber/voip/ui/a/a;)Lcom/viber/voip/ui/a/a;

    .line 479
    iget-object v0, p0, Lcom/viber/voip/qrcode/q;->a:Lcom/viber/voip/qrcode/ScannerActivity;

    invoke-virtual {v0}, Lcom/viber/voip/qrcode/ScannerActivity;->e()V

    .line 480
    return-void
.end method
