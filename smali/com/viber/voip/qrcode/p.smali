.class Lcom/viber/voip/qrcode/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/viber/voip/qrcode/ScannerActivity;


# direct methods
.method private constructor <init>(Lcom/viber/voip/qrcode/ScannerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 455
    iput-object p1, p0, Lcom/viber/voip/qrcode/p;->a:Lcom/viber/voip/qrcode/ScannerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/viber/voip/qrcode/ScannerActivity;Lcom/viber/voip/qrcode/m;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 455
    invoke-direct {p0, p1}, Lcom/viber/voip/qrcode/p;-><init>(Lcom/viber/voip/qrcode/ScannerActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 458
    iget-object v0, p0, Lcom/viber/voip/qrcode/p;->a:Lcom/viber/voip/qrcode/ScannerActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/viber/voip/qrcode/ScannerActivity;->a(Lcom/viber/voip/qrcode/ScannerActivity;Lcom/viber/voip/ui/a/a;)Lcom/viber/voip/ui/a/a;

    .line 459
    iget-object v0, p0, Lcom/viber/voip/qrcode/p;->a:Lcom/viber/voip/qrcode/ScannerActivity;

    invoke-static {v0}, Lcom/viber/voip/util/hc;->e(Landroid/content/Context;)V

    .line 460
    return-void
.end method
