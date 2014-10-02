.class Lcom/viber/voip/market/n;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/viber/voip/market/MarketActivity;


# direct methods
.method private constructor <init>(Lcom/viber/voip/market/MarketActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 469
    iput-object p1, p0, Lcom/viber/voip/market/n;->a:Lcom/viber/voip/market/MarketActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/viber/voip/market/MarketActivity;Lcom/viber/voip/market/a;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 469
    invoke-direct {p0, p1}, Lcom/viber/voip/market/n;-><init>(Lcom/viber/voip/market/MarketActivity;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 493
    iget-object v0, p0, Lcom/viber/voip/market/n;->a:Lcom/viber/voip/market/MarketActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPageFinished() url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/market/MarketActivity;->a(Lcom/viber/voip/market/MarketActivity;Ljava/lang/String;)V

    .line 494
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 495
    iget-object v0, p0, Lcom/viber/voip/market/n;->a:Lcom/viber/voip/market/MarketActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/viber/voip/market/MarketActivity;->c(Lcom/viber/voip/market/MarketActivity;Z)V

    .line 496
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 486
    iget-object v0, p0, Lcom/viber/voip/market/n;->a:Lcom/viber/voip/market/MarketActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPageStarted() url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/market/MarketActivity;->a(Lcom/viber/voip/market/MarketActivity;Ljava/lang/String;)V

    .line 487
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 488
    iget-object v0, p0, Lcom/viber/voip/market/n;->a:Lcom/viber/voip/market/MarketActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/viber/voip/market/MarketActivity;->c(Lcom/viber/voip/market/MarketActivity;Z)V

    .line 489
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 480
    iget-object v0, p0, Lcom/viber/voip/market/n;->a:Lcom/viber/voip/market/MarketActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onReceivedError() description="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/market/MarketActivity;->a(Lcom/viber/voip/market/MarketActivity;Ljava/lang/String;)V

    .line 481
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 482
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 473
    iget-object v0, p0, Lcom/viber/voip/market/n;->a:Lcom/viber/voip/market/MarketActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "shouldOverrideUrlLoading() url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/market/MarketActivity;->a(Lcom/viber/voip/market/MarketActivity;Ljava/lang/String;)V

    .line 474
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 475
    const/4 v0, 0x0

    return v0
.end method
