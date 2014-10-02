.class Lcom/viber/voip/messages/extras/twitter/w;
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

.field private c:J

.field private d:Landroid/net/Uri;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/viber/voip/messages/extras/twitter/l;Landroid/app/Activity;JLandroid/net/Uri;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 500
    iput-object p1, p0, Lcom/viber/voip/messages/extras/twitter/w;->a:Lcom/viber/voip/messages/extras/twitter/l;

    .line 501
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 502
    iput-object p2, p0, Lcom/viber/voip/messages/extras/twitter/w;->b:Landroid/app/Activity;

    .line 503
    iput-wide p3, p0, Lcom/viber/voip/messages/extras/twitter/w;->c:J

    .line 504
    iput-object p5, p0, Lcom/viber/voip/messages/extras/twitter/w;->d:Landroid/net/Uri;

    .line 505
    iput-object p6, p0, Lcom/viber/voip/messages/extras/twitter/w;->e:Ljava/lang/String;

    .line 506
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    .line 519
    const/4 v1, 0x0

    .line 520
    iget-object v0, p0, Lcom/viber/voip/messages/extras/twitter/w;->b:Landroid/app/Activity;

    iget-object v2, p0, Lcom/viber/voip/messages/extras/twitter/w;->d:Landroid/net/Uri;

    invoke-static {v0, v2}, Lcom/viber/voip/messages/extras/image/h;->a(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 521
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 522
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 523
    iget-object v0, p0, Lcom/viber/voip/messages/extras/twitter/w;->a:Lcom/viber/voip/messages/extras/twitter/l;

    invoke-static {v0}, Lcom/viber/voip/messages/extras/twitter/l;->a(Lcom/viber/voip/messages/extras/twitter/l;)Lcom/viber/dexshared/TwitterHelper;

    move-result-object v0

    iget-object v3, p0, Lcom/viber/voip/messages/extras/twitter/w;->e:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Lcom/viber/dexshared/TwitterHelper;->uploadImage(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 524
    if-nez v0, :cond_1

    .line 525
    const-string/jumbo v0, "error"

    .line 532
    :cond_0
    :goto_0
    return-object v0

    .line 526
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_0

    move-object v0, v1

    goto :goto_0

    .line 530
    :cond_2
    iget-object v0, p0, Lcom/viber/voip/messages/extras/twitter/w;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0441

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected a(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 537
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 538
    iget-object v0, p0, Lcom/viber/voip/messages/extras/twitter/w;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 539
    if-eqz p1, :cond_0

    .line 541
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/extras/twitter/w;->a:Lcom/viber/voip/messages/extras/twitter/l;

    invoke-static {v1}, Lcom/viber/voip/messages/extras/twitter/l;->e(Lcom/viber/voip/messages/extras/twitter/l;)Lcom/viber/voip/a/aw;

    move-result-object v1

    iget-object v1, v1, Lcom/viber/voip/a/aw;->a:Lcom/viber/voip/a/ao;

    sget-object v2, Lcom/viber/voip/a/aq;->b:Lcom/viber/voip/a/aq;

    invoke-virtual {v1, v2, p1}, Lcom/viber/voip/a/ao;->a(Lcom/viber/voip/a/aq;Ljava/lang/String;)Lcom/viber/voip/a/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 543
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getMessagesManager()Lcom/viber/voip/messages/i;

    move-result-object v0

    invoke-interface {v0}, Lcom/viber/voip/messages/i;->c()Lcom/viber/voip/messages/controller/x;

    move-result-object v0

    iget-wide v1, p0, Lcom/viber/voip/messages/extras/twitter/w;->c:J

    const/4 v3, 0x3

    invoke-interface {v0, v1, v2, v3}, Lcom/viber/voip/messages/controller/x;->b(JI)V

    .line 546
    iget-object v0, p0, Lcom/viber/voip/messages/extras/twitter/w;->a:Lcom/viber/voip/messages/extras/twitter/l;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/viber/voip/messages/extras/twitter/l;->a(Lcom/viber/voip/messages/extras/twitter/l;Ljava/lang/String;Z)V

    .line 547
    iget-object v0, p0, Lcom/viber/voip/messages/extras/twitter/w;->a:Lcom/viber/voip/messages/extras/twitter/l;

    invoke-static {v0, p1}, Lcom/viber/voip/messages/extras/twitter/l;->d(Lcom/viber/voip/messages/extras/twitter/l;Ljava/lang/String;)V

    .line 554
    :goto_0
    return-void

    .line 549
    :cond_0
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getMessagesManager()Lcom/viber/voip/messages/i;

    move-result-object v0

    invoke-interface {v0}, Lcom/viber/voip/messages/i;->c()Lcom/viber/voip/messages/controller/x;

    move-result-object v0

    iget-wide v1, p0, Lcom/viber/voip/messages/extras/twitter/w;->c:J

    const/4 v3, 0x2

    invoke-interface {v0, v1, v2, v3}, Lcom/viber/voip/messages/controller/x;->b(JI)V

    .line 552
    iget-object v0, p0, Lcom/viber/voip/messages/extras/twitter/w;->a:Lcom/viber/voip/messages/extras/twitter/l;

    invoke-static {v0}, Lcom/viber/voip/messages/extras/twitter/l;->f(Lcom/viber/voip/messages/extras/twitter/l;)V

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 491
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/viber/voip/messages/extras/twitter/w;->a([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 491
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/viber/voip/messages/extras/twitter/w;->a(Ljava/lang/String;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 4

    .prologue
    .line 510
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getMessagesManager()Lcom/viber/voip/messages/i;

    move-result-object v0

    invoke-interface {v0}, Lcom/viber/voip/messages/i;->c()Lcom/viber/voip/messages/controller/x;

    move-result-object v0

    iget-wide v1, p0, Lcom/viber/voip/messages/extras/twitter/w;->c:J

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/viber/voip/messages/controller/x;->b(JI)V

    .line 513
    iget-object v0, p0, Lcom/viber/voip/messages/extras/twitter/w;->a:Lcom/viber/voip/messages/extras/twitter/l;

    invoke-static {v0}, Lcom/viber/voip/messages/extras/twitter/l;->d(Lcom/viber/voip/messages/extras/twitter/l;)V

    .line 514
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 515
    return-void
.end method
