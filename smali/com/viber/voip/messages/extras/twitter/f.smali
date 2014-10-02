.class Lcom/viber/voip/messages/extras/twitter/f;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/extras/twitter/c;


# direct methods
.method private constructor <init>(Lcom/viber/voip/messages/extras/twitter/c;)V
    .locals 0
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Lcom/viber/voip/messages/extras/twitter/f;->a:Lcom/viber/voip/messages/extras/twitter/c;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/viber/voip/messages/extras/twitter/c;Lcom/viber/voip/messages/extras/twitter/d;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/extras/twitter/f;-><init>(Lcom/viber/voip/messages/extras/twitter/c;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 130
    iget-object v0, p0, Lcom/viber/voip/messages/extras/twitter/f;->a:Lcom/viber/voip/messages/extras/twitter/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPageFinished() url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/messages/extras/twitter/c;->a(Lcom/viber/voip/messages/extras/twitter/c;Ljava/lang/String;)V

    .line 131
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/viber/voip/messages/extras/twitter/f;->a:Lcom/viber/voip/messages/extras/twitter/c;

    invoke-static {v0}, Lcom/viber/voip/messages/extras/twitter/c;->c(Lcom/viber/voip/messages/extras/twitter/c;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 134
    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 135
    iget-object v1, p0, Lcom/viber/voip/messages/extras/twitter/f;->a:Lcom/viber/voip/messages/extras/twitter/c;

    invoke-static {v1}, Lcom/viber/voip/messages/extras/twitter/c;->d(Lcom/viber/voip/messages/extras/twitter/c;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/messages/extras/twitter/f;->a:Lcom/viber/voip/messages/extras/twitter/c;

    invoke-static {v0}, Lcom/viber/voip/messages/extras/twitter/c;->b(Lcom/viber/voip/messages/extras/twitter/c;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    :goto_0
    return-void

    .line 139
    :catch_0
    move-exception v0

    .line 140
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 118
    iget-object v0, p0, Lcom/viber/voip/messages/extras/twitter/f;->a:Lcom/viber/voip/messages/extras/twitter/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPageStarted() url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/messages/extras/twitter/c;->a(Lcom/viber/voip/messages/extras/twitter/c;Ljava/lang/String;)V

    .line 119
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 122
    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/messages/extras/twitter/f;->a:Lcom/viber/voip/messages/extras/twitter/c;

    invoke-static {v0}, Lcom/viber/voip/messages/extras/twitter/c;->b(Lcom/viber/voip/messages/extras/twitter/c;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    :goto_0
    return-void

    .line 123
    :catch_0
    move-exception v0

    .line 124
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 104
    iget-object v0, p0, Lcom/viber/voip/messages/extras/twitter/f;->a:Lcom/viber/voip/messages/extras/twitter/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onReceivedError() description="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/messages/extras/twitter/c;->a(Lcom/viber/voip/messages/extras/twitter/c;Ljava/lang/String;)V

    .line 105
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/viber/voip/messages/extras/twitter/f;->a:Lcom/viber/voip/messages/extras/twitter/c;

    invoke-static {v0}, Lcom/viber/voip/messages/extras/twitter/c;->a(Lcom/viber/voip/messages/extras/twitter/c;)Lcom/viber/voip/messages/extras/twitter/e;

    move-result-object v0

    invoke-interface {v0, p3}, Lcom/viber/voip/messages/extras/twitter/e;->b(Ljava/lang/String;)V

    .line 110
    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/messages/extras/twitter/f;->a:Lcom/viber/voip/messages/extras/twitter/c;

    invoke-virtual {v0}, Lcom/viber/voip/messages/extras/twitter/c;->cancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    :goto_0
    return-void

    .line 111
    :catch_0
    move-exception v0

    .line 112
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 83
    iget-object v0, p0, Lcom/viber/voip/messages/extras/twitter/f;->a:Lcom/viber/voip/messages/extras/twitter/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "shouldOverrideUrlLoading() url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/messages/extras/twitter/c;->a(Lcom/viber/voip/messages/extras/twitter/c;Ljava/lang/String;)V

    .line 85
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 86
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "viber-twitter"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 87
    const-string/jumbo v1, "oauth_verifier"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 89
    iget-object v1, p0, Lcom/viber/voip/messages/extras/twitter/f;->a:Lcom/viber/voip/messages/extras/twitter/c;

    invoke-static {v1}, Lcom/viber/voip/messages/extras/twitter/c;->a(Lcom/viber/voip/messages/extras/twitter/c;)Lcom/viber/voip/messages/extras/twitter/e;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/viber/voip/messages/extras/twitter/e;->a(Ljava/lang/String;)V

    .line 91
    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/messages/extras/twitter/f;->a:Lcom/viber/voip/messages/extras/twitter/c;

    invoke-virtual {v0}, Lcom/viber/voip/messages/extras/twitter/c;->cancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    :goto_0
    const/4 v0, 0x1

    .line 99
    :goto_1
    return v0

    .line 92
    :catch_0
    move-exception v0

    .line 93
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 99
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    goto :goto_1
.end method
