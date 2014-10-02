.class Lcom/viber/voip/rakuten/b;
.super Landroid/webkit/WebChromeClient;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/viber/voip/rakuten/RakutenAccountWebViewActivity;


# direct methods
.method constructor <init>(Lcom/viber/voip/rakuten/RakutenAccountWebViewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 148
    iput-object p1, p0, Lcom/viber/voip/rakuten/b;->a:Lcom/viber/voip/rakuten/RakutenAccountWebViewActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 152
    const/16 v0, 0x64

    if-ge p2, v0, :cond_0

    const/4 v0, 0x1

    .line 153
    :goto_0
    iget-object v1, p0, Lcom/viber/voip/rakuten/b;->a:Lcom/viber/voip/rakuten/RakutenAccountWebViewActivity;

    invoke-static {v1}, Lcom/viber/voip/rakuten/RakutenAccountWebViewActivity;->g(Lcom/viber/voip/rakuten/RakutenAccountWebViewActivity;)Lcom/actionbarsherlock/ActionBarSherlock;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/actionbarsherlock/ActionBarSherlock;->setProgressBarIndeterminateVisibility(Z)V

    .line 154
    return-void

    .line 152
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
