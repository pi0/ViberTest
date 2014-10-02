.class Lcom/viber/voip/rakuten/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/viber/voip/rakuten/c;


# direct methods
.method constructor <init>(Lcom/viber/voip/rakuten/c;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 212
    iput-object p1, p0, Lcom/viber/voip/rakuten/d;->b:Lcom/viber/voip/rakuten/c;

    iput-object p2, p0, Lcom/viber/voip/rakuten/d;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 214
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lcom/viber/voip/rakuten/d;->a:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 215
    iget-object v1, p0, Lcom/viber/voip/rakuten/d;->b:Lcom/viber/voip/rakuten/c;

    iget-object v1, v1, Lcom/viber/voip/rakuten/c;->a:Lcom/viber/voip/rakuten/RakutenAccountWebViewActivity;

    invoke-virtual {v1, v0}, Lcom/viber/voip/rakuten/RakutenAccountWebViewActivity;->startActivity(Landroid/content/Intent;)V

    .line 216
    iget-object v0, p0, Lcom/viber/voip/rakuten/d;->b:Lcom/viber/voip/rakuten/c;

    iget-object v0, v0, Lcom/viber/voip/rakuten/c;->a:Lcom/viber/voip/rakuten/RakutenAccountWebViewActivity;

    invoke-virtual {v0}, Lcom/viber/voip/rakuten/RakutenAccountWebViewActivity;->finish()V

    .line 217
    return-void
.end method
