.class Lcom/viber/voip/messages/extras/twitter/u;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/extras/twitter/l;


# direct methods
.method private constructor <init>(Lcom/viber/voip/messages/extras/twitter/l;)V
    .locals 0
    .parameter

    .prologue
    .line 360
    iput-object p1, p0, Lcom/viber/voip/messages/extras/twitter/u;->a:Lcom/viber/voip/messages/extras/twitter/l;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/viber/voip/messages/extras/twitter/l;Lcom/viber/voip/messages/extras/twitter/m;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 360
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/extras/twitter/u;-><init>(Lcom/viber/voip/messages/extras/twitter/l;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 364
    const/4 v0, 0x0

    .line 365
    aget-object v1, p1, v5

    .line 366
    iget-object v2, p0, Lcom/viber/voip/messages/extras/twitter/u;->a:Lcom/viber/voip/messages/extras/twitter/l;

    invoke-static {v2}, Lcom/viber/voip/messages/extras/twitter/l;->a(Lcom/viber/voip/messages/extras/twitter/l;)Lcom/viber/dexshared/TwitterHelper;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/viber/dexshared/TwitterHelper;->getOAuthAccessTokenTask(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 367
    array-length v2, v1

    if-ne v2, v6, :cond_1

    .line 368
    aget-object v0, v1, v5

    .line 380
    :cond_0
    :goto_0
    return-object v0

    .line 370
    :cond_1
    iget-object v2, p0, Lcom/viber/voip/messages/extras/twitter/u;->a:Lcom/viber/voip/messages/extras/twitter/l;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "OAuthAccessTokenTask name="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v1, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v1, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", tokenSecret="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v1, v7

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/viber/voip/messages/extras/twitter/l;->a(Lcom/viber/voip/messages/extras/twitter/l;Ljava/lang/String;)V

    .line 374
    iget-object v2, p0, Lcom/viber/voip/messages/extras/twitter/u;->a:Lcom/viber/voip/messages/extras/twitter/l;

    invoke-static {v2}, Lcom/viber/voip/messages/extras/twitter/l;->b(Lcom/viber/voip/messages/extras/twitter/l;)Lcom/viber/voip/messages/extras/twitter/aa;

    move-result-object v2

    aget-object v3, v1, v6

    aget-object v4, v1, v7

    aget-object v1, v1, v5

    invoke-virtual {v2, v3, v4, v1}, Lcom/viber/voip/messages/extras/twitter/aa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    iget-object v1, p0, Lcom/viber/voip/messages/extras/twitter/u;->a:Lcom/viber/voip/messages/extras/twitter/l;

    invoke-static {v1}, Lcom/viber/voip/messages/extras/twitter/l;->c(Lcom/viber/voip/messages/extras/twitter/l;)Lcom/viber/voip/messages/extras/twitter/t;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 377
    iget-object v1, p0, Lcom/viber/voip/messages/extras/twitter/u;->a:Lcom/viber/voip/messages/extras/twitter/l;

    invoke-static {v1}, Lcom/viber/voip/messages/extras/twitter/l;->c(Lcom/viber/voip/messages/extras/twitter/l;)Lcom/viber/voip/messages/extras/twitter/t;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/messages/extras/twitter/t;->onAuthComplete()V

    goto :goto_0
.end method

.method protected a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 385
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 386
    if-eqz p1, :cond_0

    .line 387
    iget-object v0, p0, Lcom/viber/voip/messages/extras/twitter/u;->a:Lcom/viber/voip/messages/extras/twitter/l;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/viber/voip/messages/extras/twitter/l;->a(Lcom/viber/voip/messages/extras/twitter/l;Ljava/lang/String;Z)V

    .line 389
    :cond_0
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 360
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/viber/voip/messages/extras/twitter/u;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 360
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/viber/voip/messages/extras/twitter/u;->a(Ljava/lang/String;)V

    return-void
.end method
