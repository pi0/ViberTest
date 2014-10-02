.class Lcom/viber/voip/rakuten/f;
.super Lcom/viber/voip/rakuten/i;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/viber/voip/rakuten/RakutenAccountWebViewActivity;


# direct methods
.method constructor <init>(Lcom/viber/voip/rakuten/RakutenAccountWebViewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 316
    iput-object p1, p0, Lcom/viber/voip/rakuten/f;->a:Lcom/viber/voip/rakuten/RakutenAccountWebViewActivity;

    invoke-direct {p0, p1}, Lcom/viber/voip/rakuten/i;-><init>(Lcom/viber/voip/rakuten/RakutenAccountWebViewActivity;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/viber/voip/rakuten/j;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 319
    iget-object v0, p0, Lcom/viber/voip/rakuten/f;->a:Lcom/viber/voip/rakuten/RakutenAccountWebViewActivity;

    invoke-static {v0}, Lcom/viber/voip/rakuten/RakutenAccountWebViewActivity;->i(Lcom/viber/voip/rakuten/RakutenAccountWebViewActivity;)Lcom/actionbarsherlock/ActionBarSherlock;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/ActionBarSherlock;->setProgressBarIndeterminateVisibility(Z)V

    .line 320
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "goBackChecked, response status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/viber/voip/rakuten/j;->b:Lcom/viber/voip/rakuten/k;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/rakuten/RakutenAccountWebViewActivity;->a(Ljava/lang/String;)V

    .line 321
    iget-object v0, p0, Lcom/viber/voip/rakuten/f;->a:Lcom/viber/voip/rakuten/RakutenAccountWebViewActivity;

    invoke-static {v0}, Lcom/viber/voip/rakuten/RakutenAccountWebViewActivity;->a(Lcom/viber/voip/rakuten/RakutenAccountWebViewActivity;)Lcom/viber/voip/rakuten/i;

    move-result-object v0

    if-ne p0, v0, :cond_0

    .line 322
    iget-object v0, p0, Lcom/viber/voip/rakuten/f;->a:Lcom/viber/voip/rakuten/RakutenAccountWebViewActivity;

    invoke-static {v0, v2}, Lcom/viber/voip/rakuten/RakutenAccountWebViewActivity;->a(Lcom/viber/voip/rakuten/RakutenAccountWebViewActivity;Lcom/viber/voip/rakuten/i;)Lcom/viber/voip/rakuten/i;

    .line 324
    sget-object v0, Lcom/viber/voip/rakuten/g;->a:[I

    iget-object v1, p1, Lcom/viber/voip/rakuten/j;->b:Lcom/viber/voip/rakuten/k;

    invoke-virtual {v1}, Lcom/viber/voip/rakuten/k;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 339
    :cond_0
    :goto_0
    return-void

    .line 326
    :pswitch_0
    iget-object v0, p0, Lcom/viber/voip/rakuten/f;->a:Lcom/viber/voip/rakuten/RakutenAccountWebViewActivity;

    invoke-static {v0}, Lcom/viber/voip/rakuten/RakutenAccountWebViewActivity;->e(Lcom/viber/voip/rakuten/RakutenAccountWebViewActivity;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    goto :goto_0

    .line 329
    :pswitch_1
    iget-object v0, p0, Lcom/viber/voip/rakuten/f;->a:Lcom/viber/voip/rakuten/RakutenAccountWebViewActivity;

    invoke-virtual {v0}, Lcom/viber/voip/rakuten/RakutenAccountWebViewActivity;->finish()V

    .line 330
    new-instance v0, Lcom/viber/voip/rakuten/h;

    invoke-direct {v0, v2}, Lcom/viber/voip/rakuten/h;-><init>(Lcom/viber/voip/rakuten/a;)V

    invoke-virtual {v0}, Lcom/viber/voip/rakuten/h;->a()V

    goto :goto_0

    .line 333
    :pswitch_2
    iget-object v0, p0, Lcom/viber/voip/rakuten/f;->a:Lcom/viber/voip/rakuten/RakutenAccountWebViewActivity;

    invoke-static {v0}, Lcom/viber/voip/rakuten/RakutenAccountWebViewActivity;->e(Lcom/viber/voip/rakuten/RakutenAccountWebViewActivity;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 335
    iget-object v0, p0, Lcom/viber/voip/rakuten/f;->a:Lcom/viber/voip/rakuten/RakutenAccountWebViewActivity;

    invoke-static {v0}, Lcom/viber/voip/rakuten/RakutenAccountWebViewActivity;->f(Lcom/viber/voip/rakuten/RakutenAccountWebViewActivity;)V

    goto :goto_0

    .line 324
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 316
    check-cast p1, Lcom/viber/voip/rakuten/j;

    invoke-virtual {p0, p1}, Lcom/viber/voip/rakuten/f;->a(Lcom/viber/voip/rakuten/j;)V

    return-void
.end method
