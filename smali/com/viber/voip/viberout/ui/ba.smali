.class Lcom/viber/voip/viberout/ui/ba;
.super Landroid/webkit/WebChromeClient;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/viber/voip/viberout/ui/ViberOutWebViewActivity;


# direct methods
.method constructor <init>(Lcom/viber/voip/viberout/ui/ViberOutWebViewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lcom/viber/voip/viberout/ui/ba;->a:Lcom/viber/voip/viberout/ui/ViberOutWebViewActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 97
    const/16 v0, 0x64

    if-ge p2, v0, :cond_0

    const/4 v0, 0x1

    .line 98
    :goto_0
    iget-object v1, p0, Lcom/viber/voip/viberout/ui/ba;->a:Lcom/viber/voip/viberout/ui/ViberOutWebViewActivity;

    invoke-static {v1}, Lcom/viber/voip/viberout/ui/ViberOutWebViewActivity;->a(Lcom/viber/voip/viberout/ui/ViberOutWebViewActivity;)Lcom/actionbarsherlock/ActionBarSherlock;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/actionbarsherlock/ActionBarSherlock;->setProgressBarIndeterminateVisibility(Z)V

    .line 99
    return-void

    .line 97
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
