.class Lcom/viber/voip/registration/z;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Lcom/viber/voip/registration/df;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/viber/voip/registration/t;

.field private b:Lcom/viber/voip/util/t;


# direct methods
.method private constructor <init>(Lcom/viber/voip/registration/t;)V
    .locals 1
    .parameter

    .prologue
    .line 325
    iput-object p1, p0, Lcom/viber/voip/registration/z;->a:Lcom/viber/voip/registration/t;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 326
    new-instance v0, Lcom/viber/voip/util/t;

    invoke-direct {v0}, Lcom/viber/voip/util/t;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/registration/z;->b:Lcom/viber/voip/util/t;

    return-void
.end method

.method synthetic constructor <init>(Lcom/viber/voip/registration/t;Lcom/viber/voip/registration/u;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 325
    invoke-direct {p0, p1}, Lcom/viber/voip/registration/z;-><init>(Lcom/viber/voip/registration/t;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Lcom/viber/voip/registration/df;
    .locals 7
    .parameter

    .prologue
    .line 330
    const/4 v1, 0x0

    .line 332
    const/4 v0, 0x0

    aget-object v0, p1, v0

    .line 335
    :try_start_0
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v2

    .line 336
    invoke-virtual {v2}, Lcom/viber/voip/ViberApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v3, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 337
    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    .line 339
    invoke-virtual {v2}, Lcom/viber/voip/ViberApplication;->getActivationController()Lcom/viber/voip/registration/ActivationController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/viber/voip/registration/ActivationController;->checkNetworkConnection()V

    .line 340
    invoke-virtual {v2}, Lcom/viber/voip/ViberApplication;->getActivationController()Lcom/viber/voip/registration/ActivationController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/viber/voip/registration/ActivationController;->getActivationManager()Lcom/viber/voip/registration/ab;

    move-result-object v4

    .line 342
    invoke-virtual {v2}, Lcom/viber/voip/ViberApplication;->getHardwareParameters()Lcom/viber/voip/registration/HardwareParameters;

    move-result-object v2

    invoke-interface {v2}, Lcom/viber/voip/registration/HardwareParameters;->getUdid()Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lcom/viber/voip/registration/z;->b:Lcom/viber/voip/util/t;

    invoke-virtual {v4, v2, v0, v3, v5}, Lcom/viber/voip/registration/ab;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Lcom/viber/voip/util/t;)Lcom/viber/voip/registration/df;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 346
    :try_start_1
    invoke-static {}, Lcom/viber/voip/rakuten/l;->a()Lcom/viber/voip/rakuten/l;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/viber/voip/rakuten/l;->a(Lcom/viber/voip/registration/df;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 351
    :goto_0
    return-object v0

    .line 348
    :catch_0
    move-exception v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    .line 349
    :goto_1
    const/4 v2, 0x6

    const-string/jumbo v3, "ActivationFragment"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4, v1}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 348
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method protected a(Lcom/viber/voip/registration/df;)V
    .locals 2
    .parameter

    .prologue
    .line 357
    iget-object v0, p0, Lcom/viber/voip/registration/z;->a:Lcom/viber/voip/registration/t;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/viber/voip/registration/t;->a(Lcom/viber/voip/registration/t;Lcom/viber/voip/registration/z;)Lcom/viber/voip/registration/z;

    .line 358
    iget-object v0, p0, Lcom/viber/voip/registration/z;->a:Lcom/viber/voip/registration/t;

    invoke-virtual {v0}, Lcom/viber/voip/registration/t;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/registration/z;->a:Lcom/viber/voip/registration/t;

    invoke-virtual {v0}, Lcom/viber/voip/registration/t;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 370
    :cond_0
    :goto_0
    return-void

    .line 360
    :cond_1
    if-nez p1, :cond_2

    .line 361
    iget-object v0, p0, Lcom/viber/voip/registration/z;->a:Lcom/viber/voip/registration/t;

    invoke-static {v0}, Lcom/viber/voip/registration/t;->f(Lcom/viber/voip/registration/t;)V

    goto :goto_0

    .line 363
    :cond_2
    iget-boolean v0, p1, Lcom/viber/voip/registration/df;->a:Z

    if-eqz v0, :cond_3

    .line 365
    iget-object v0, p0, Lcom/viber/voip/registration/z;->a:Lcom/viber/voip/registration/t;

    invoke-static {v0, p1}, Lcom/viber/voip/registration/t;->a(Lcom/viber/voip/registration/t;Lcom/viber/voip/registration/df;)V

    goto :goto_0

    .line 367
    :cond_3
    iget-object v0, p0, Lcom/viber/voip/registration/z;->a:Lcom/viber/voip/registration/t;

    const-string/jumbo v1, "activation_waiting_dialog"

    invoke-virtual {v0, v1}, Lcom/viber/voip/registration/t;->g(Ljava/lang/String;)V

    .line 368
    iget-object v0, p0, Lcom/viber/voip/registration/z;->a:Lcom/viber/voip/registration/t;

    iget-object v1, p1, Lcom/viber/voip/registration/df;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/viber/voip/registration/t;->a(Lcom/viber/voip/registration/t;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 325
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/viber/voip/registration/z;->a([Ljava/lang/String;)Lcom/viber/voip/registration/df;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 1

    .prologue
    .line 374
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 375
    iget-object v0, p0, Lcom/viber/voip/registration/z;->b:Lcom/viber/voip/util/t;

    invoke-virtual {v0}, Lcom/viber/voip/util/t;->b()V

    .line 376
    return-void
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 325
    check-cast p1, Lcom/viber/voip/registration/df;

    invoke-virtual {p0, p1}, Lcom/viber/voip/registration/z;->a(Lcom/viber/voip/registration/df;)V

    return-void
.end method
