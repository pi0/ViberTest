.class public abstract Lcom/viber/voip/billing/k;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/viber/voip/billing/m;",
        ">;"
    }
.end annotation


# instance fields
.field protected e:Lcom/viber/voip/billing/s;

.field final synthetic f:Lcom/viber/voip/billing/a;


# direct methods
.method public constructor <init>(Lcom/viber/voip/billing/a;)V
    .locals 0
    .parameter

    .prologue
    .line 1018
    iput-object p1, p0, Lcom/viber/voip/billing/k;->f:Lcom/viber/voip/billing/a;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1019
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Lcom/viber/voip/billing/m;
    .locals 7
    .parameter

    .prologue
    .line 1035
    invoke-virtual {p0}, Lcom/viber/voip/billing/k;->a()Ljava/lang/String;

    move-result-object v2

    .line 1036
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "MarketBillingServerAction url: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/billing/a;->b(Ljava/lang/String;)V

    .line 1038
    :try_start_0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1040
    invoke-virtual {p0, v3}, Lcom/viber/voip/billing/k;->b(Ljava/util/Map;)V

    .line 1041
    invoke-virtual {p0, v3}, Lcom/viber/voip/billing/k;->a(Ljava/util/Map;)V

    .line 1044
    iget-object v0, p0, Lcom/viber/voip/billing/k;->e:Lcom/viber/voip/billing/s;

    if-nez v0, :cond_3

    .line 1046
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1047
    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1048
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 1049
    const/16 v1, 0x26

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1051
    :cond_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1052
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v6, 0x3d

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v6, "UTF-8"

    invoke-static {v0, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1064
    :catch_0
    move-exception v0

    .line 1065
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 1066
    const/4 v0, 0x0

    :goto_1
    return-object v0

    .line 1054
    :cond_1
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Error building request: null value for parameter: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/billing/a;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 1057
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "MarketBillingServerAction POST data: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/billing/a;->b(Ljava/lang/String;)V

    .line 1059
    const/4 v0, 0x0

    const/16 v1, 0x7530

    const/4 v4, 0x1

    invoke-static {v2, v3, v0, v1, v4}, Lcom/viber/voip/billing/a;->a(Ljava/lang/String;Ljava/util/Map;ZIZ)Lcom/viber/voip/billing/m;

    move-result-object v0

    goto :goto_1

    .line 1061
    :cond_3
    new-instance v0, Lcom/viber/voip/billing/m;

    iget-object v1, p0, Lcom/viber/voip/billing/k;->e:Lcom/viber/voip/billing/s;

    invoke-direct {v0, v1}, Lcom/viber/voip/billing/m;-><init>(Lcom/viber/voip/billing/s;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public abstract a()Ljava/lang/String;
.end method

.method public abstract a(Lcom/viber/voip/billing/m;)V
.end method

.method protected a(Lcom/viber/voip/billing/s;)V
    .locals 0
    .parameter

    .prologue
    .line 1026
    iput-object p1, p0, Lcom/viber/voip/billing/k;->e:Lcom/viber/voip/billing/s;

    .line 1027
    return-void
.end method

.method public abstract a(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public b()V
    .locals 1

    .prologue
    .line 1030
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-super {p0, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1031
    return-void
.end method

.method protected b(Lcom/viber/voip/billing/m;)V
    .locals 0
    .parameter

    .prologue
    .line 1072
    invoke-virtual {p0, p1}, Lcom/viber/voip/billing/k;->a(Lcom/viber/voip/billing/m;)V

    .line 1073
    return-void
.end method

.method protected b(Ljava/util/Map;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1022
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1011
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/viber/voip/billing/k;->a([Ljava/lang/Void;)Lcom/viber/voip/billing/m;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1011
    check-cast p1, Lcom/viber/voip/billing/m;

    invoke-virtual {p0, p1}, Lcom/viber/voip/billing/k;->b(Lcom/viber/voip/billing/m;)V

    return-void
.end method
