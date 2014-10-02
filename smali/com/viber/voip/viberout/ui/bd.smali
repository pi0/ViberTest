.class Lcom/viber/voip/viberout/ui/bd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/billing/aa;


# instance fields
.field final synthetic a:Lcom/viber/voip/viberout/ui/ViberOutWebViewActivity;


# direct methods
.method constructor <init>(Lcom/viber/voip/viberout/ui/ViberOutWebViewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 158
    iput-object p1, p0, Lcom/viber/voip/viberout/ui/bd;->a:Lcom/viber/voip/viberout/ui/ViberOutWebViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/viber/voip/billing/m;)V
    .locals 6
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 161
    invoke-virtual {p1}, Lcom/viber/voip/billing/m;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Url loaded successfully:  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/viber/voip/billing/m;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/viberout/ui/ViberOutWebViewActivity;->a(Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Lcom/viber/voip/viberout/ui/bd;->a:Lcom/viber/voip/viberout/ui/ViberOutWebViewActivity;

    invoke-static {v0}, Lcom/viber/voip/viberout/ui/ViberOutWebViewActivity;->c(Lcom/viber/voip/viberout/ui/ViberOutWebViewActivity;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {p1}, Lcom/viber/voip/billing/m;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/viber/voip/billing/m;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/viber/voip/billing/m;->d()Ljava/lang/String;

    move-result-object v5

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    :goto_0
    return-void

    .line 165
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Url loading failed:  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/viber/voip/billing/m;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/viberout/ui/ViberOutWebViewActivity;->a(Ljava/lang/String;)V

    .line 166
    iget-object v0, p0, Lcom/viber/voip/viberout/ui/bd;->a:Lcom/viber/voip/viberout/ui/ViberOutWebViewActivity;

    invoke-virtual {p1}, Lcom/viber/voip/billing/m;->b()Lcom/viber/voip/billing/s;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/viberout/ui/ViberOutWebViewActivity;->a(Lcom/viber/voip/viberout/ui/ViberOutWebViewActivity;Lcom/viber/voip/billing/s;)V

    goto :goto_0
.end method
