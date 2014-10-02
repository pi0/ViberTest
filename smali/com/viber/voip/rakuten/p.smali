.class Lcom/viber/voip/rakuten/p;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/viber/voip/registration/bx;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/viber/voip/rakuten/l;


# direct methods
.method private constructor <init>(Lcom/viber/voip/rakuten/l;)V
    .locals 0
    .parameter

    .prologue
    .line 381
    iput-object p1, p0, Lcom/viber/voip/rakuten/p;->a:Lcom/viber/voip/rakuten/l;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/viber/voip/rakuten/l;Lcom/viber/voip/rakuten/m;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 381
    invoke-direct {p0, p1}, Lcom/viber/voip/rakuten/p;-><init>(Lcom/viber/voip/rakuten/l;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Lcom/viber/voip/registration/bx;
    .locals 3
    .parameter

    .prologue
    .line 384
    const-string/jumbo v0, "RegistrationPart2Task start"

    invoke-static {v0}, Lcom/viber/voip/rakuten/l;->b(Ljava/lang/String;)V

    .line 387
    :try_start_0
    new-instance v0, Lcom/viber/voip/registration/bw;

    iget-object v1, p0, Lcom/viber/voip/rakuten/p;->a:Lcom/viber/voip/rakuten/l;

    invoke-static {v1}, Lcom/viber/voip/rakuten/l;->b(Lcom/viber/voip/rakuten/l;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/rakuten/p;->a:Lcom/viber/voip/rakuten/l;

    invoke-static {v2}, Lcom/viber/voip/rakuten/l;->c(Lcom/viber/voip/rakuten/l;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/viber/voip/registration/bw;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/viber/voip/registration/bw;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/registration/bx;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 392
    const-string/jumbo v1, "RegistrationPart2Task end"

    invoke-static {v1}, Lcom/viber/voip/rakuten/l;->b(Ljava/lang/String;)V

    :goto_0
    return-object v0

    .line 388
    :catch_0
    move-exception v0

    .line 389
    :try_start_1
    const-string/jumbo v1, "RegistrationPart2Task failed"

    invoke-static {v1, v0}, Lcom/viber/voip/rakuten/l;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 390
    const/4 v0, 0x0

    .line 392
    const-string/jumbo v1, "RegistrationPart2Task end"

    invoke-static {v1}, Lcom/viber/voip/rakuten/l;->b(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string/jumbo v1, "RegistrationPart2Task end"

    invoke-static {v1}, Lcom/viber/voip/rakuten/l;->b(Ljava/lang/String;)V

    throw v0
.end method

.method protected a(Lcom/viber/voip/registration/bx;)V
    .locals 2
    .parameter

    .prologue
    .line 399
    iget-object v0, p0, Lcom/viber/voip/rakuten/p;->a:Lcom/viber/voip/rakuten/l;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/viber/voip/rakuten/l;->a(Lcom/viber/voip/rakuten/l;Lcom/viber/voip/rakuten/p;)Lcom/viber/voip/rakuten/p;

    .line 400
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/viber/voip/registration/bx;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 401
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "RegistrationPart2Task saving rToken "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/rakuten/p;->a:Lcom/viber/voip/rakuten/l;

    invoke-static {v1}, Lcom/viber/voip/rakuten/l;->c(Lcom/viber/voip/rakuten/l;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/rakuten/l;->b(Ljava/lang/String;)V

    .line 402
    iget-object v0, p0, Lcom/viber/voip/rakuten/p;->a:Lcom/viber/voip/rakuten/l;

    iget-object v1, p0, Lcom/viber/voip/rakuten/p;->a:Lcom/viber/voip/rakuten/l;

    invoke-static {v1}, Lcom/viber/voip/rakuten/l;->c(Lcom/viber/voip/rakuten/l;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/rakuten/l;->a(Ljava/lang/String;)V

    .line 403
    iget-object v0, p0, Lcom/viber/voip/rakuten/p;->a:Lcom/viber/voip/rakuten/l;

    invoke-static {v0}, Lcom/viber/voip/rakuten/l;->d(Lcom/viber/voip/rakuten/l;)V

    .line 404
    iget-object v0, p0, Lcom/viber/voip/rakuten/p;->a:Lcom/viber/voip/rakuten/l;

    sget-object v1, Lcom/viber/voip/rakuten/r;->e:Lcom/viber/voip/rakuten/r;

    invoke-static {v0, v1}, Lcom/viber/voip/rakuten/l;->a(Lcom/viber/voip/rakuten/l;Lcom/viber/voip/rakuten/r;)V

    .line 410
    :goto_0
    return-void

    .line 406
    :cond_0
    const-string/jumbo v0, "RegistrationPart2Task invalid response"

    invoke-static {v0}, Lcom/viber/voip/rakuten/l;->b(Ljava/lang/String;)V

    .line 407
    iget-object v0, p0, Lcom/viber/voip/rakuten/p;->a:Lcom/viber/voip/rakuten/l;

    invoke-static {v0}, Lcom/viber/voip/rakuten/l;->d(Lcom/viber/voip/rakuten/l;)V

    .line 408
    iget-object v0, p0, Lcom/viber/voip/rakuten/p;->a:Lcom/viber/voip/rakuten/l;

    sget-object v1, Lcom/viber/voip/rakuten/r;->f:Lcom/viber/voip/rakuten/r;

    invoke-static {v0, v1}, Lcom/viber/voip/rakuten/l;->a(Lcom/viber/voip/rakuten/l;Lcom/viber/voip/rakuten/r;)V

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 381
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/viber/voip/rakuten/p;->a([Ljava/lang/Void;)Lcom/viber/voip/registration/bx;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 381
    check-cast p1, Lcom/viber/voip/registration/bx;

    invoke-virtual {p0, p1}, Lcom/viber/voip/rakuten/p;->a(Lcom/viber/voip/registration/bx;)V

    return-void
.end method
