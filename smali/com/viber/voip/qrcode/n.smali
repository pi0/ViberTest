.class Lcom/viber/voip/qrcode/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/qrcode/ScannerActivity;


# direct methods
.method constructor <init>(Lcom/viber/voip/qrcode/ScannerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 322
    iput-object p1, p0, Lcom/viber/voip/qrcode/n;->a:Lcom/viber/voip/qrcode/ScannerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 325
    iget-object v0, p0, Lcom/viber/voip/qrcode/n;->a:Lcom/viber/voip/qrcode/ScannerActivity;

    invoke-virtual {v0}, Lcom/viber/voip/qrcode/ScannerActivity;->finish()V

    .line 326
    iget-object v0, p0, Lcom/viber/voip/qrcode/n;->a:Lcom/viber/voip/qrcode/ScannerActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/viber/voip/qrcode/ScannerActivity;->a(Lcom/viber/voip/qrcode/ScannerActivity;Landroid/net/Uri;)Landroid/net/Uri;

    .line 327
    return-void
.end method
