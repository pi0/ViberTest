.class Lcom/viber/voip/qrcode/o;
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
    .line 483
    iput-object p1, p0, Lcom/viber/voip/qrcode/o;->a:Lcom/viber/voip/qrcode/ScannerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/viber/voip/qrcode/ScannerActivity;Lcom/viber/voip/qrcode/m;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 483
    invoke-direct {p0, p1}, Lcom/viber/voip/qrcode/o;-><init>(Lcom/viber/voip/qrcode/ScannerActivity;)V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter

    .prologue
    .line 486
    iget-object v0, p0, Lcom/viber/voip/qrcode/o;->a:Lcom/viber/voip/qrcode/ScannerActivity;

    invoke-virtual {v0}, Lcom/viber/voip/qrcode/ScannerActivity;->finish()V

    .line 487
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 491
    iget-object v0, p0, Lcom/viber/voip/qrcode/o;->a:Lcom/viber/voip/qrcode/ScannerActivity;

    invoke-virtual {v0}, Lcom/viber/voip/qrcode/ScannerActivity;->finish()V

    .line 492
    return-void
.end method

.method public run()V
    .locals 1

    .prologue
    .line 496
    iget-object v0, p0, Lcom/viber/voip/qrcode/o;->a:Lcom/viber/voip/qrcode/ScannerActivity;

    invoke-virtual {v0}, Lcom/viber/voip/qrcode/ScannerActivity;->finish()V

    .line 497
    return-void
.end method
