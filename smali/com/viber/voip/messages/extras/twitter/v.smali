.class Lcom/viber/voip/messages/extras/twitter/v;
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

.field private c:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>(Lcom/viber/voip/messages/extras/twitter/l;Landroid/app/Activity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 321
    iput-object p1, p0, Lcom/viber/voip/messages/extras/twitter/v;->a:Lcom/viber/voip/messages/extras/twitter/l;

    .line 322
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 323
    iput-object p2, p0, Lcom/viber/voip/messages/extras/twitter/v;->b:Landroid/app/Activity;

    .line 324
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 336
    const/4 v0, 0x0

    .line 337
    iget-object v1, p0, Lcom/viber/voip/messages/extras/twitter/v;->a:Lcom/viber/voip/messages/extras/twitter/l;

    invoke-static {v1}, Lcom/viber/voip/messages/extras/twitter/l;->a(Lcom/viber/voip/messages/extras/twitter/l;)Lcom/viber/dexshared/TwitterHelper;

    move-result-object v1

    const-string/jumbo v2, "viber-twitter://callback"

    invoke-interface {v1, v2}, Lcom/viber/dexshared/TwitterHelper;->getTwitterAuthorizationURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 338
    const-string/jumbo v2, "error:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 339
    iget-object v0, p0, Lcom/viber/voip/messages/extras/twitter/v;->a:Lcom/viber/voip/messages/extras/twitter/l;

    invoke-static {v0, v1}, Lcom/viber/voip/messages/extras/twitter/l;->b(Lcom/viber/voip/messages/extras/twitter/l;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 343
    :goto_0
    return-object v0

    .line 341
    :cond_0
    iget-object v2, p0, Lcom/viber/voip/messages/extras/twitter/v;->a:Lcom/viber/voip/messages/extras/twitter/l;

    invoke-static {v2, v1}, Lcom/viber/voip/messages/extras/twitter/l;->c(Lcom/viber/voip/messages/extras/twitter/l;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected a(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 348
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 349
    iget-object v0, p0, Lcom/viber/voip/messages/extras/twitter/v;->c:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/viber/voip/messages/extras/twitter/v;->c:Landroid/app/ProgressDialog;

    invoke-static {v0}, Lcom/viber/voip/util/at;->a(Landroid/content/DialogInterface;)V

    .line 351
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/a/a;->i:Lcom/viber/voip/a/an;

    iget-object v1, v1, Lcom/viber/voip/a/an;->a:Lcom/viber/voip/a/ao;

    sget-object v2, Lcom/viber/voip/a/aq;->b:Lcom/viber/voip/a/aq;

    invoke-virtual {v1, v2}, Lcom/viber/voip/a/ao;->b(Lcom/viber/voip/a/aq;)Lcom/viber/voip/a/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 353
    :cond_0
    if-eqz p1, :cond_1

    .line 354
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/a/a;->i:Lcom/viber/voip/a/an;

    iget-object v1, v1, Lcom/viber/voip/a/an;->a:Lcom/viber/voip/a/ao;

    sget-object v2, Lcom/viber/voip/a/aq;->b:Lcom/viber/voip/a/aq;

    invoke-virtual {v1, v2, p1}, Lcom/viber/voip/a/ao;->b(Lcom/viber/voip/a/aq;Ljava/lang/String;)Lcom/viber/voip/a/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 355
    iget-object v0, p0, Lcom/viber/voip/messages/extras/twitter/v;->a:Lcom/viber/voip/messages/extras/twitter/l;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/viber/voip/messages/extras/twitter/l;->a(Lcom/viber/voip/messages/extras/twitter/l;Ljava/lang/String;Z)V

    .line 357
    :cond_1
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 317
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/viber/voip/messages/extras/twitter/v;->a([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 317
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/viber/voip/messages/extras/twitter/v;->a(Ljava/lang/String;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    .line 328
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/viber/voip/messages/extras/twitter/v;->b:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/viber/voip/messages/extras/twitter/v;->c:Landroid/app/ProgressDialog;

    .line 329
    iget-object v0, p0, Lcom/viber/voip/messages/extras/twitter/v;->c:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/viber/voip/messages/extras/twitter/v;->b:Landroid/app/Activity;

    const v2, 0x7f0c032c

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 330
    iget-object v0, p0, Lcom/viber/voip/messages/extras/twitter/v;->c:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 331
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 332
    return-void
.end method
