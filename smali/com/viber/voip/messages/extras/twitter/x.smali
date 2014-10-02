.class Lcom/viber/voip/messages/extras/twitter/x;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/extras/twitter/l;

.field private b:Landroid/app/Activity;

.field private c:Ljava/lang/String;

.field private d:Landroid/app/Dialog;


# direct methods
.method public constructor <init>(Lcom/viber/voip/messages/extras/twitter/l;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 398
    iput-object p1, p0, Lcom/viber/voip/messages/extras/twitter/x;->a:Lcom/viber/voip/messages/extras/twitter/l;

    .line 399
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 400
    iput-object p2, p0, Lcom/viber/voip/messages/extras/twitter/x;->b:Landroid/app/Activity;

    .line 401
    iput-object p3, p0, Lcom/viber/voip/messages/extras/twitter/x;->c:Ljava/lang/String;

    .line 402
    return-void
.end method

.method private a(II)Landroid/app/Dialog;
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 472
    new-instance v2, Landroid/app/Dialog;

    iget-object v0, p0, Lcom/viber/voip/messages/extras/twitter/x;->b:Landroid/app/Activity;

    const v1, 0x7f0d00ee

    invoke-direct {v2, v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 473
    invoke-virtual {v2, v4}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 474
    const v0, 0x7f030099

    invoke-virtual {v2, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 475
    const v0, 0x7f070259

    invoke-virtual {v2, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 477
    const v1, 0x7f07025b

    invoke-virtual {v2, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/viber/voip/messages/extras/twitter/x;->a:Lcom/viber/voip/messages/extras/twitter/l;

    invoke-static {v3}, Lcom/viber/voip/messages/extras/twitter/l;->g(Lcom/viber/voip/messages/extras/twitter/l;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 479
    const v1, 0x7f0202b5

    if-ne p1, v1, :cond_0

    .line 480
    invoke-virtual {v2, v4}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 481
    const v1, 0x7f07025a

    invoke-virtual {v2, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 483
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 487
    :goto_0
    return-object v2

    .line 485
    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/viber/voip/messages/extras/twitter/x;)Landroid/app/Dialog;
    .locals 1
    .parameter

    .prologue
    .line 392
    iget-object v0, p0, Lcom/viber/voip/messages/extras/twitter/x;->d:Landroid/app/Dialog;

    return-object v0
.end method

.method private a()V
    .locals 4

    .prologue
    .line 461
    sget-object v0, Lcom/viber/voip/dk;->a:Lcom/viber/voip/dk;

    invoke-static {v0}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/messages/extras/twitter/y;

    invoke-direct {v1, p0}, Lcom/viber/voip/messages/extras/twitter/y;-><init>(Lcom/viber/voip/messages/extras/twitter/x;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 469
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 418
    const/4 v1, 0x0

    .line 419
    iget-object v0, p0, Lcom/viber/voip/messages/extras/twitter/x;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/viber/voip/messages/extras/twitter/x;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 420
    iget-object v0, p0, Lcom/viber/voip/messages/extras/twitter/x;->a:Lcom/viber/voip/messages/extras/twitter/l;

    invoke-static {v0}, Lcom/viber/voip/messages/extras/twitter/l;->a(Lcom/viber/voip/messages/extras/twitter/l;)Lcom/viber/dexshared/TwitterHelper;

    move-result-object v0

    iget-object v2, p0, Lcom/viber/voip/messages/extras/twitter/x;->c:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/viber/dexshared/TwitterHelper;->updateTwitterStatus(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 421
    if-nez v0, :cond_1

    .line 422
    const-string/jumbo v0, "error"

    .line 429
    :cond_0
    :goto_0
    return-object v0

    .line 423
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_0

    move-object v0, v1

    goto :goto_0

    .line 427
    :cond_2
    iget-object v0, p0, Lcom/viber/voip/messages/extras/twitter/x;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0441

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected a(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 434
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 435
    iget-object v0, p0, Lcom/viber/voip/messages/extras/twitter/x;->d:Landroid/app/Dialog;

    invoke-static {v0}, Lcom/viber/voip/util/at;->a(Landroid/content/DialogInterface;)V

    .line 436
    if-eqz p1, :cond_1

    .line 438
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/extras/twitter/x;->a:Lcom/viber/voip/messages/extras/twitter/l;

    invoke-static {v1}, Lcom/viber/voip/messages/extras/twitter/l;->e(Lcom/viber/voip/messages/extras/twitter/l;)Lcom/viber/voip/a/aw;

    move-result-object v1

    iget-object v1, v1, Lcom/viber/voip/a/aw;->a:Lcom/viber/voip/a/ao;

    sget-object v2, Lcom/viber/voip/a/aq;->b:Lcom/viber/voip/a/aq;

    invoke-virtual {v1, v2, p1}, Lcom/viber/voip/a/ao;->a(Lcom/viber/voip/a/aq;Ljava/lang/String;)Lcom/viber/voip/a/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 440
    const-string/jumbo v0, "error"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 441
    const v0, 0x7f0202b7

    const v1, 0x7f0c044a

    invoke-direct {p0, v0, v1}, Lcom/viber/voip/messages/extras/twitter/x;->a(II)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/extras/twitter/x;->d:Landroid/app/Dialog;

    .line 444
    iget-object v0, p0, Lcom/viber/voip/messages/extras/twitter/x;->d:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 445
    invoke-direct {p0}, Lcom/viber/voip/messages/extras/twitter/x;->a()V

    .line 449
    :goto_0
    iget-object v0, p0, Lcom/viber/voip/messages/extras/twitter/x;->a:Lcom/viber/voip/messages/extras/twitter/l;

    invoke-static {v0, p1}, Lcom/viber/voip/messages/extras/twitter/l;->d(Lcom/viber/voip/messages/extras/twitter/l;Ljava/lang/String;)V

    .line 458
    :goto_1
    return-void

    .line 447
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/extras/twitter/x;->a:Lcom/viber/voip/messages/extras/twitter/l;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/viber/voip/messages/extras/twitter/l;->a(Lcom/viber/voip/messages/extras/twitter/l;Ljava/lang/String;Z)V

    goto :goto_0

    .line 451
    :cond_1
    const v0, 0x7f0202b6

    const v1, 0x7f0c0447

    invoke-direct {p0, v0, v1}, Lcom/viber/voip/messages/extras/twitter/x;->a(II)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/extras/twitter/x;->d:Landroid/app/Dialog;

    .line 454
    iget-object v0, p0, Lcom/viber/voip/messages/extras/twitter/x;->d:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 455
    invoke-direct {p0}, Lcom/viber/voip/messages/extras/twitter/x;->a()V

    .line 456
    iget-object v0, p0, Lcom/viber/voip/messages/extras/twitter/x;->a:Lcom/viber/voip/messages/extras/twitter/l;

    invoke-static {v0}, Lcom/viber/voip/messages/extras/twitter/l;->f(Lcom/viber/voip/messages/extras/twitter/l;)V

    goto :goto_1
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 392
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/viber/voip/messages/extras/twitter/x;->a([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 392
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/viber/voip/messages/extras/twitter/x;->a(Ljava/lang/String;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 406
    const v0, 0x7f0202b5

    const v1, 0x7f0c04e1

    invoke-direct {p0, v0, v1}, Lcom/viber/voip/messages/extras/twitter/x;->a(II)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/extras/twitter/x;->d:Landroid/app/Dialog;

    .line 409
    iget-object v0, p0, Lcom/viber/voip/messages/extras/twitter/x;->d:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 411
    iget-object v0, p0, Lcom/viber/voip/messages/extras/twitter/x;->a:Lcom/viber/voip/messages/extras/twitter/l;

    invoke-static {v0}, Lcom/viber/voip/messages/extras/twitter/l;->d(Lcom/viber/voip/messages/extras/twitter/l;)V

    .line 413
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 414
    return-void
.end method
