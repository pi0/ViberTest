.class Lcom/viber/voip/billing/w;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/viber/voip/billing/r;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lcom/viber/voip/billing/v;


# direct methods
.method public constructor <init>(Lcom/viber/voip/billing/v;)V
    .locals 0
    .parameter

    .prologue
    .line 760
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 761
    iput-object p1, p0, Lcom/viber/voip/billing/w;->a:Lcom/viber/voip/billing/v;

    .line 762
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Lcom/viber/voip/billing/r;
    .locals 5
    .parameter

    .prologue
    .line 767
    :try_start_0
    invoke-static {}, Lcom/viber/voip/bc;->b()Lcom/viber/voip/bd;

    move-result-object v0

    iget-object v0, v0, Lcom/viber/voip/bd;->I:Ljava/lang/String;

    .line 768
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/viber/voip/billing/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/products/android/list"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 769
    invoke-static {v0}, Lcom/viber/voip/billing/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 773
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x0

    const/16 v3, 0x7530

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/viber/voip/billing/a;->a(Ljava/lang/String;Ljava/util/Map;ZIZ)Lcom/viber/voip/billing/m;

    move-result-object v1

    .line 774
    new-instance v0, Lcom/viber/voip/billing/r;

    invoke-direct {v0, v1}, Lcom/viber/voip/billing/r;-><init>(Lcom/viber/voip/billing/m;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 778
    :goto_0
    return-object v0

    .line 776
    :catch_0
    move-exception v0

    .line 778
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Lcom/viber/voip/billing/r;)V
    .locals 1
    .parameter

    .prologue
    .line 784
    iget-object v0, p0, Lcom/viber/voip/billing/w;->a:Lcom/viber/voip/billing/v;

    invoke-interface {v0, p1}, Lcom/viber/voip/billing/v;->a(Lcom/viber/voip/billing/r;)V

    .line 785
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 756
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/viber/voip/billing/w;->a([Ljava/lang/Void;)Lcom/viber/voip/billing/r;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 756
    check-cast p1, Lcom/viber/voip/billing/r;

    invoke-virtual {p0, p1}, Lcom/viber/voip/billing/w;->a(Lcom/viber/voip/billing/r;)V

    return-void
.end method
