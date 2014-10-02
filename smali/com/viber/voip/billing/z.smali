.class Lcom/viber/voip/billing/z;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Lcom/viber/voip/billing/m;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/viber/voip/billing/y;


# direct methods
.method public constructor <init>(Lcom/viber/voip/billing/y;)V
    .locals 0
    .parameter

    .prologue
    .line 313
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 314
    iput-object p1, p0, Lcom/viber/voip/billing/z;->a:Lcom/viber/voip/billing/y;

    .line 315
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Lcom/viber/voip/billing/m;
    .locals 3
    .parameter

    .prologue
    .line 318
    const/4 v0, 0x0

    aget-object v0, p1, v0

    .line 319
    const/4 v1, 0x1

    const/16 v2, 0x7530

    invoke-static {v1, v2, v0}, Lcom/viber/voip/billing/a;->a(ZILjava/lang/String;)Lcom/viber/voip/billing/m;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/viber/voip/billing/m;)V
    .locals 3
    .parameter

    .prologue
    .line 324
    invoke-virtual {p1}, Lcom/viber/voip/billing/m;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/viber/voip/billing/z;->a:Lcom/viber/voip/billing/y;

    invoke-virtual {p1}, Lcom/viber/voip/billing/m;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/viber/voip/billing/m;->e()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/billing/y;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    :goto_0
    return-void

    .line 327
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/billing/z;->a:Lcom/viber/voip/billing/y;

    invoke-virtual {p1}, Lcom/viber/voip/billing/m;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/viber/voip/billing/m;->b()Lcom/viber/voip/billing/s;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/billing/y;->a(Ljava/lang/String;Lcom/viber/voip/billing/s;)V

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 311
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/viber/voip/billing/z;->a([Ljava/lang/String;)Lcom/viber/voip/billing/m;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 311
    check-cast p1, Lcom/viber/voip/billing/m;

    invoke-virtual {p0, p1}, Lcom/viber/voip/billing/z;->a(Lcom/viber/voip/billing/m;)V

    return-void
.end method
