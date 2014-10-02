.class Lcom/viber/voip/widget/aj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/market/a/b;


# instance fields
.field final synthetic a:Lcom/viber/voip/widget/ViberWebViewActivity;


# direct methods
.method constructor <init>(Lcom/viber/voip/widget/ViberWebViewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Lcom/viber/voip/widget/aj;->a:Lcom/viber/voip/widget/ViberWebViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 4
    .parameter

    .prologue
    .line 45
    if-nez p1, :cond_1

    .line 46
    iget-object v0, p0, Lcom/viber/voip/widget/aj;->a:Lcom/viber/voip/widget/ViberWebViewActivity;

    invoke-static {v0}, Lcom/viber/voip/widget/ViberWebViewActivity;->a(Lcom/viber/voip/widget/ViberWebViewActivity;)V

    .line 60
    :cond_0
    :goto_0
    return-void

    .line 48
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/widget/aj;->a:Lcom/viber/voip/widget/ViberWebViewActivity;

    invoke-virtual {v0}, Lcom/viber/voip/widget/ViberWebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 49
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/viber/voip/widget/aj;->a:Lcom/viber/voip/widget/ViberWebViewActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "http://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/viber/voip/widget/ViberWebViewActivity;->a(Lcom/viber/voip/widget/ViberWebViewActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 50
    :cond_2
    iget-object v0, p0, Lcom/viber/voip/widget/aj;->a:Lcom/viber/voip/widget/ViberWebViewActivity;

    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/viber/voip/widget/aj;->a:Lcom/viber/voip/widget/ViberWebViewActivity;

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/viber/voip/widget/ViberWebViewActivity;->a(Lcom/viber/voip/widget/ViberWebViewActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 51
    iget-object v0, p0, Lcom/viber/voip/widget/aj;->a:Lcom/viber/voip/widget/ViberWebViewActivity;

    invoke-static {v0}, Lcom/viber/voip/widget/ViberWebViewActivity;->b(Lcom/viber/voip/widget/ViberWebViewActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->requestWindowFeature(I)Z

    .line 52
    iget-object v0, p0, Lcom/viber/voip/widget/aj;->a:Lcom/viber/voip/widget/ViberWebViewActivity;

    invoke-static {v0}, Lcom/viber/voip/widget/ViberWebViewActivity;->b(Lcom/viber/voip/widget/ViberWebViewActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/widget/aj;->a:Lcom/viber/voip/widget/ViberWebViewActivity;

    const v2, 0x7f0c032c

    invoke-virtual {v1, v2}, Lcom/viber/voip/widget/ViberWebViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 53
    iget-object v0, p0, Lcom/viber/voip/widget/aj;->a:Lcom/viber/voip/widget/ViberWebViewActivity;

    invoke-static {v0}, Lcom/viber/voip/widget/ViberWebViewActivity;->c(Lcom/viber/voip/widget/ViberWebViewActivity;)V

    .line 55
    iget-object v0, p0, Lcom/viber/voip/widget/aj;->a:Lcom/viber/voip/widget/ViberWebViewActivity;

    invoke-static {v0}, Lcom/viber/voip/widget/ViberWebViewActivity;->d(Lcom/viber/voip/widget/ViberWebViewActivity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/viber/voip/widget/aj;->a:Lcom/viber/voip/widget/ViberWebViewActivity;

    invoke-static {v0}, Lcom/viber/voip/widget/ViberWebViewActivity;->e(Lcom/viber/voip/widget/ViberWebViewActivity;)Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/widget/aj;->a:Lcom/viber/voip/widget/ViberWebViewActivity;

    invoke-static {v1}, Lcom/viber/voip/widget/ViberWebViewActivity;->d(Lcom/viber/voip/widget/ViberWebViewActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onCreate() url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/widget/aj;->a:Lcom/viber/voip/widget/ViberWebViewActivity;

    invoke-static {v1}, Lcom/viber/voip/widget/ViberWebViewActivity;->d(Lcom/viber/voip/widget/ViberWebViewActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/widget/ViberWebViewActivity;->a(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
