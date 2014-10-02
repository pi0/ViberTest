.class Lcom/viber/voip/rakuten/o;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/viber/voip/registration/br;",
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
    .line 330
    iput-object p1, p0, Lcom/viber/voip/rakuten/o;->a:Lcom/viber/voip/rakuten/l;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/viber/voip/rakuten/l;Lcom/viber/voip/rakuten/m;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 330
    invoke-direct {p0, p1}, Lcom/viber/voip/rakuten/o;-><init>(Lcom/viber/voip/rakuten/l;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Lcom/viber/voip/registration/br;
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 333
    const-string/jumbo v0, "RegistrationPart1Task.doInBackground start"

    invoke-static {v0}, Lcom/viber/voip/rakuten/l;->b(Ljava/lang/String;)V

    .line 336
    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/rakuten/o;->a:Lcom/viber/voip/rakuten/l;

    invoke-static {v0}, Lcom/viber/voip/rakuten/l;->a(Lcom/viber/voip/rakuten/l;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 337
    const-string/jumbo v0, "RegistrationPart1Task.doInBackground: sending referral"

    invoke-static {v0}, Lcom/viber/voip/rakuten/l;->b(Ljava/lang/String;)V

    .line 338
    new-instance v0, Lcom/viber/voip/registration/bu;

    iget-object v2, p0, Lcom/viber/voip/rakuten/o;->a:Lcom/viber/voip/rakuten/l;

    invoke-static {v2}, Lcom/viber/voip/rakuten/l;->b(Lcom/viber/voip/rakuten/l;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/viber/voip/rakuten/o;->a:Lcom/viber/voip/rakuten/l;

    invoke-static {v3}, Lcom/viber/voip/rakuten/l;->a(Lcom/viber/voip/rakuten/l;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/viber/voip/registration/bu;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/viber/voip/registration/bu;->c()Ljava/lang/Object;

    .line 340
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/rakuten/o;->a:Lcom/viber/voip/rakuten/l;

    invoke-static {v0}, Lcom/viber/voip/rakuten/l;->c(Lcom/viber/voip/rakuten/l;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 341
    const-string/jumbo v0, "RegistrationPart1Task.doInBackground: obtaining RID"

    invoke-static {v0}, Lcom/viber/voip/rakuten/l;->b(Ljava/lang/String;)V

    .line 342
    new-instance v0, Lcom/viber/voip/registration/bq;

    iget-object v2, p0, Lcom/viber/voip/rakuten/o;->a:Lcom/viber/voip/rakuten/l;

    invoke-static {v2}, Lcom/viber/voip/rakuten/l;->b(Lcom/viber/voip/rakuten/l;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/viber/voip/rakuten/o;->a:Lcom/viber/voip/rakuten/l;

    invoke-static {v3}, Lcom/viber/voip/rakuten/l;->c(Lcom/viber/voip/rakuten/l;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/viber/voip/registration/bq;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/viber/voip/registration/bq;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/registration/br;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 350
    const-string/jumbo v1, "RegistrationPart1Task.doInBackground end"

    invoke-static {v1}, Lcom/viber/voip/rakuten/l;->b(Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_1
    const-string/jumbo v0, "RegistrationPart1Task.doInBackground end"

    invoke-static {v0}, Lcom/viber/voip/rakuten/l;->b(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    .line 346
    :catch_0
    move-exception v0

    .line 347
    :try_start_1
    const-string/jumbo v2, "RegistrationPart1Task failed"

    invoke-static {v2, v0}, Lcom/viber/voip/rakuten/l;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 350
    const-string/jumbo v0, "RegistrationPart1Task.doInBackground end"

    invoke-static {v0}, Lcom/viber/voip/rakuten/l;->b(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string/jumbo v1, "RegistrationPart1Task.doInBackground end"

    invoke-static {v1}, Lcom/viber/voip/rakuten/l;->b(Ljava/lang/String;)V

    throw v0
.end method

.method protected a(Lcom/viber/voip/registration/br;)V
    .locals 2
    .parameter

    .prologue
    .line 356
    const-string/jumbo v0, "RegistrationPart1Task.onPostExecute"

    invoke-static {v0}, Lcom/viber/voip/rakuten/l;->b(Ljava/lang/String;)V

    .line 358
    iget-object v0, p0, Lcom/viber/voip/rakuten/o;->a:Lcom/viber/voip/rakuten/l;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/viber/voip/rakuten/l;->a(Lcom/viber/voip/rakuten/l;Lcom/viber/voip/rakuten/o;)Lcom/viber/voip/rakuten/o;

    .line 359
    if-nez p1, :cond_0

    .line 360
    const-string/jumbo v0, "RegistrationPart1Task.onPostExecute empty response (IOException or no RakutenGetRIDRequest executed)"

    invoke-static {v0}, Lcom/viber/voip/rakuten/l;->b(Ljava/lang/String;)V

    .line 361
    iget-object v0, p0, Lcom/viber/voip/rakuten/o;->a:Lcom/viber/voip/rakuten/l;

    invoke-static {v0}, Lcom/viber/voip/rakuten/l;->d(Lcom/viber/voip/rakuten/l;)V

    .line 362
    iget-object v0, p0, Lcom/viber/voip/rakuten/o;->a:Lcom/viber/voip/rakuten/l;

    sget-object v1, Lcom/viber/voip/rakuten/r;->a:Lcom/viber/voip/rakuten/r;

    invoke-static {v0, v1}, Lcom/viber/voip/rakuten/l;->a(Lcom/viber/voip/rakuten/l;Lcom/viber/voip/rakuten/r;)V

    .line 372
    :goto_0
    return-void

    .line 363
    :cond_0
    invoke-virtual {p1}, Lcom/viber/voip/registration/br;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 364
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "RegistrationPart1Task.onPostExecute response OK, rakutenAccountId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/viber/voip/registration/br;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/rakuten/l;->b(Ljava/lang/String;)V

    .line 365
    iget-object v0, p0, Lcom/viber/voip/rakuten/o;->a:Lcom/viber/voip/rakuten/l;

    iget-object v1, p1, Lcom/viber/voip/registration/br;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/viber/voip/rakuten/l;->a(Lcom/viber/voip/rakuten/l;Ljava/lang/String;)Ljava/lang/String;

    .line 366
    iget-object v0, p0, Lcom/viber/voip/rakuten/o;->a:Lcom/viber/voip/rakuten/l;

    sget-object v1, Lcom/viber/voip/rakuten/r;->c:Lcom/viber/voip/rakuten/r;

    invoke-static {v0, v1}, Lcom/viber/voip/rakuten/l;->a(Lcom/viber/voip/rakuten/l;Lcom/viber/voip/rakuten/r;)V

    goto :goto_0

    .line 368
    :cond_1
    const-string/jumbo v0, "RegistrationPart1Task.onPostExecute invalid response"

    invoke-static {v0}, Lcom/viber/voip/rakuten/l;->b(Ljava/lang/String;)V

    .line 369
    iget-object v0, p0, Lcom/viber/voip/rakuten/o;->a:Lcom/viber/voip/rakuten/l;

    invoke-static {v0}, Lcom/viber/voip/rakuten/l;->d(Lcom/viber/voip/rakuten/l;)V

    .line 370
    iget-object v0, p0, Lcom/viber/voip/rakuten/o;->a:Lcom/viber/voip/rakuten/l;

    sget-object v1, Lcom/viber/voip/rakuten/r;->f:Lcom/viber/voip/rakuten/r;

    invoke-static {v0, v1}, Lcom/viber/voip/rakuten/l;->a(Lcom/viber/voip/rakuten/l;Lcom/viber/voip/rakuten/r;)V

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 330
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/viber/voip/rakuten/o;->a([Ljava/lang/Void;)Lcom/viber/voip/registration/br;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 330
    check-cast p1, Lcom/viber/voip/registration/br;

    invoke-virtual {p0, p1}, Lcom/viber/voip/rakuten/o;->a(Lcom/viber/voip/registration/br;)V

    return-void
.end method
