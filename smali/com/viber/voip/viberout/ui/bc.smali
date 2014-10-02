.class Lcom/viber/voip/viberout/ui/bc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/billing/y;


# instance fields
.field final synthetic a:Lcom/viber/voip/viberout/ui/ViberOutWebViewActivity;


# direct methods
.method constructor <init>(Lcom/viber/voip/viberout/ui/ViberOutWebViewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 135
    iput-object p1, p0, Lcom/viber/voip/viberout/ui/bc;->a:Lcom/viber/voip/viberout/ui/ViberOutWebViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/viber/voip/billing/s;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "page load error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/viberout/ui/ViberOutWebViewActivity;->a(Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lcom/viber/voip/viberout/ui/bc;->a:Lcom/viber/voip/viberout/ui/ViberOutWebViewActivity;

    invoke-static {v0, p2}, Lcom/viber/voip/viberout/ui/ViberOutWebViewActivity;->a(Lcom/viber/voip/viberout/ui/ViberOutWebViewActivity;Lcom/viber/voip/billing/s;)V

    .line 151
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "page ready: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", loading data into view"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/viberout/ui/ViberOutWebViewActivity;->a(Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/viber/voip/viberout/ui/bc;->a:Lcom/viber/voip/viberout/ui/ViberOutWebViewActivity;

    invoke-static {v0}, Lcom/viber/voip/viberout/ui/ViberOutWebViewActivity;->b(Lcom/viber/voip/viberout/ui/ViberOutWebViewActivity;)Lcom/actionbarsherlock/ActionBarSherlock;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/ActionBarSherlock;->setProgressBarIndeterminateVisibility(Z)V

    .line 140
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 142
    iget-object v0, p0, Lcom/viber/voip/viberout/ui/bc;->a:Lcom/viber/voip/viberout/ui/ViberOutWebViewActivity;

    invoke-static {v0}, Lcom/viber/voip/viberout/ui/ViberOutWebViewActivity;->c(Lcom/viber/voip/viberout/ui/ViberOutWebViewActivity;)Landroid/webkit/WebView;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    :cond_0
    return-void
.end method
