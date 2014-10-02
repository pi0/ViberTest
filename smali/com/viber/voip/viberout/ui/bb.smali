.class Lcom/viber/voip/viberout/ui/bb;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/viber/voip/viberout/ui/ViberOutWebViewActivity;


# direct methods
.method constructor <init>(Lcom/viber/voip/viberout/ui/ViberOutWebViewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 102
    iput-object p1, p0, Lcom/viber/voip/viberout/ui/bb;->a:Lcom/viber/voip/viberout/ui/ViberOutWebViewActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "WebViewClient.onReceiveError, code:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/viberout/ui/ViberOutWebViewActivity;->a(Ljava/lang/String;)V

    .line 125
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 105
    const-string/jumbo v0, "WebViewClient.shouldOverrideUrlLoading"

    invoke-static {v0}, Lcom/viber/voip/viberout/ui/ViberOutWebViewActivity;->a(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 109
    const/4 v0, 0x1

    return v0
.end method
