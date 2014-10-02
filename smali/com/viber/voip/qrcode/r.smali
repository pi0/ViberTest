.class Lcom/viber/voip/qrcode/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/viber/voip/qrcode/ScannerActivity;

.field private final b:Landroid/content/Intent;

.field private final c:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/viber/voip/qrcode/ScannerActivity;Landroid/content/Intent;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 442
    iput-object p1, p0, Lcom/viber/voip/qrcode/r;->a:Lcom/viber/voip/qrcode/ScannerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 443
    iput-object p2, p0, Lcom/viber/voip/qrcode/r;->b:Landroid/content/Intent;

    .line 444
    iput-object p3, p0, Lcom/viber/voip/qrcode/r;->c:Ljava/lang/Runnable;

    .line 445
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 449
    iget-object v0, p0, Lcom/viber/voip/qrcode/r;->a:Lcom/viber/voip/qrcode/ScannerActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/viber/voip/qrcode/ScannerActivity;->a(Lcom/viber/voip/qrcode/ScannerActivity;Lcom/viber/voip/ui/a/a;)Lcom/viber/voip/ui/a/a;

    .line 450
    iget-object v0, p0, Lcom/viber/voip/qrcode/r;->a:Lcom/viber/voip/qrcode/ScannerActivity;

    iget-object v1, p0, Lcom/viber/voip/qrcode/r;->b:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/viber/voip/qrcode/ScannerActivity;->startActivity(Landroid/content/Intent;)V

    .line 451
    iget-object v0, p0, Lcom/viber/voip/qrcode/r;->c:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/qrcode/r;->c:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 452
    :cond_0
    return-void
.end method
