.class Lcom/viber/voip/rakuten/i;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Lcom/viber/voip/rakuten/j;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/viber/voip/rakuten/RakutenAccountWebViewActivity;


# direct methods
.method constructor <init>(Lcom/viber/voip/rakuten/RakutenAccountWebViewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 347
    iput-object p1, p0, Lcom/viber/voip/rakuten/i;->b:Lcom/viber/voip/rakuten/RakutenAccountWebViewActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Lcom/viber/voip/rakuten/j;
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 350
    const/4 v0, 0x0

    aget-object v1, p1, v0

    .line 352
    :try_start_0
    invoke-static {v1}, Lcom/viber/voip/ViberEnv;->newHttpRequest(Ljava/lang/String;)Lcom/viber/voip/util/http/HttpRequest;

    move-result-object v0

    .line 353
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "RequestTask: Running request to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lcom/viber/voip/util/http/HttpRequest;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/viber/voip/rakuten/RakutenAccountWebViewActivity;->a(Ljava/lang/String;)V

    .line 354
    invoke-interface {v0}, Lcom/viber/voip/util/http/HttpRequest;->getResponseCode()I

    move-result v2

    .line 355
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "RequestTask: Response code: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/viber/voip/rakuten/RakutenAccountWebViewActivity;->a(Ljava/lang/String;)V

    .line 356
    const/16 v3, 0x193

    if-ne v2, v3, :cond_0

    .line 357
    new-instance v0, Lcom/viber/voip/rakuten/j;

    sget-object v2, Lcom/viber/voip/rakuten/k;->b:Lcom/viber/voip/rakuten/k;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/viber/voip/rakuten/j;-><init>(Ljava/lang/String;Lcom/viber/voip/rakuten/k;Ljava/lang/String;)V

    .line 363
    :goto_0
    return-object v0

    .line 359
    :cond_0
    invoke-interface {v0}, Lcom/viber/voip/util/http/HttpRequest;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/billing/a;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    .line 360
    new-instance v0, Lcom/viber/voip/rakuten/j;

    sget-object v3, Lcom/viber/voip/rakuten/k;->a:Lcom/viber/voip/rakuten/k;

    invoke-direct {v0, v1, v3, v2}, Lcom/viber/voip/rakuten/j;-><init>(Ljava/lang/String;Lcom/viber/voip/rakuten/k;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 361
    :catch_0
    move-exception v0

    .line 363
    new-instance v0, Lcom/viber/voip/rakuten/j;

    sget-object v2, Lcom/viber/voip/rakuten/k;->c:Lcom/viber/voip/rakuten/k;

    invoke-direct {v0, v1, v2, v5}, Lcom/viber/voip/rakuten/j;-><init>(Ljava/lang/String;Lcom/viber/voip/rakuten/k;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 347
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/viber/voip/rakuten/i;->a([Ljava/lang/String;)Lcom/viber/voip/rakuten/j;

    move-result-object v0

    return-object v0
.end method
