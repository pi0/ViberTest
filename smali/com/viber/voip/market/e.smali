.class Lcom/viber/voip/market/e;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/viber/voip/market/MarketActivity;


# direct methods
.method constructor <init>(Lcom/viber/voip/market/MarketActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 311
    iput-object p1, p0, Lcom/viber/voip/market/e;->b:Lcom/viber/voip/market/MarketActivity;

    iput-object p2, p0, Lcom/viber/voip/market/e;->a:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 1
    .parameter

    .prologue
    .line 315
    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/market/e;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/viber/voip/ViberEnv;->newHttpRequest(Ljava/lang/String;)Lcom/viber/voip/util/http/HttpRequest;

    move-result-object v0

    .line 316
    invoke-interface {v0}, Lcom/viber/voip/util/http/HttpRequest;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 317
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    .line 318
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 320
    :goto_0
    return-object v0

    .line 319
    :catch_0
    move-exception v0

    .line 320
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method protected a(Ljava/lang/Boolean;)V
    .locals 2
    .parameter

    .prologue
    .line 326
    iget-object v0, p0, Lcom/viber/voip/market/e;->b:Lcom/viber/voip/market/MarketActivity;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/viber/voip/market/MarketActivity;->b(Lcom/viber/voip/market/MarketActivity;Z)V

    .line 329
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/market/e;->b:Lcom/viber/voip/market/MarketActivity;

    invoke-static {v0}, Lcom/viber/voip/market/MarketActivity;->b(Lcom/viber/voip/market/MarketActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/viber/voip/market/e;->b:Lcom/viber/voip/market/MarketActivity;

    invoke-static {v0}, Lcom/viber/voip/market/MarketActivity;->c(Lcom/viber/voip/market/MarketActivity;)Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/market/e;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 335
    :cond_0
    :goto_0
    return-void

    .line 332
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 311
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/viber/voip/market/e;->a([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 311
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/viber/voip/market/e;->a(Ljava/lang/Boolean;)V

    return-void
.end method
