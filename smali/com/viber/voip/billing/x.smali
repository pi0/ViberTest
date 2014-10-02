.class public Lcom/viber/voip/billing/x;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/viber/voip/billing/ae;",
        "Ljava/lang/Void;",
        "Lcom/viber/voip/billing/ah;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/viber/voip/billing/a;

.field private b:Lcom/viber/voip/billing/ae;


# direct methods
.method public constructor <init>(Lcom/viber/voip/billing/a;)V
    .locals 0
    .parameter

    .prologue
    .line 883
    iput-object p1, p0, Lcom/viber/voip/billing/x;->a:Lcom/viber/voip/billing/a;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Lcom/viber/voip/billing/ae;)Lcom/viber/voip/billing/ah;
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 888
    aget-object v2, p1, v1

    iput-object v2, p0, Lcom/viber/voip/billing/x;->b:Lcom/viber/voip/billing/ae;

    .line 890
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/viber/voip/bc;->b()Lcom/viber/voip/bd;

    move-result-object v3

    iget-object v3, v3, Lcom/viber/voip/bd;->J:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 892
    invoke-static {}, Lcom/viber/voip/billing/a;->c()Ljava/lang/String;

    move-result-object v3

    .line 893
    const-string/jumbo v4, "format=json&src="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "&target="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/viber/voip/billing/x;->b:Lcom/viber/voip/billing/ae;

    invoke-virtual {v4}, Lcom/viber/voip/billing/ae;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 894
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 896
    const/16 v3, 0x7530

    invoke-static {v2, v3}, Lcom/viber/voip/billing/a;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 899
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 900
    const-string/jumbo v2, "success"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 901
    const-string/jumbo v2, "src_region"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 903
    const-string/jumbo v4, "EU"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v1, v0

    .line 906
    :cond_0
    if-eqz v1, :cond_1

    const-string/jumbo v0, "usd"

    :goto_0
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 931
    invoke-static {v1}, Lcom/viber/voip/billing/a;->a(Z)Ljava/lang/String;

    move-result-object v0

    .line 933
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "%.3f"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v4, v5

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 935
    const-string/jumbo v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 937
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 940
    :goto_1
    new-instance v0, Lcom/viber/voip/billing/ah;

    invoke-direct {v0, v1}, Lcom/viber/voip/billing/ah;-><init>(Ljava/lang/String;)V

    .line 945
    :goto_2
    return-object v0

    .line 906
    :cond_1
    const-string/jumbo v0, "eur"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 942
    :catch_0
    move-exception v0

    .line 943
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 945
    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    :cond_3
    move-object v1, v0

    goto :goto_1
.end method

.method protected a(Lcom/viber/voip/billing/ah;)V
    .locals 3
    .parameter

    .prologue
    .line 950
    if-eqz p1, :cond_0

    .line 951
    iget-object v0, p0, Lcom/viber/voip/billing/x;->a:Lcom/viber/voip/billing/a;

    invoke-static {v0}, Lcom/viber/voip/billing/a;->b(Lcom/viber/voip/billing/a;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/billing/x;->b:Lcom/viber/voip/billing/ae;

    invoke-virtual {v1}, Lcom/viber/voip/billing/ae;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 953
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/billing/x;->a:Lcom/viber/voip/billing/a;

    invoke-static {v0}, Lcom/viber/voip/billing/a;->c(Lcom/viber/voip/billing/a;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/billing/x;->b:Lcom/viber/voip/billing/ae;

    invoke-virtual {v1}, Lcom/viber/voip/billing/ae;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 954
    if-eqz v0, :cond_1

    .line 955
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 956
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/billing/ai;

    .line 957
    iget-object v2, p0, Lcom/viber/voip/billing/x;->b:Lcom/viber/voip/billing/ae;

    invoke-interface {v0, v2, p1}, Lcom/viber/voip/billing/ai;->a(Lcom/viber/voip/billing/ae;Lcom/viber/voip/billing/ah;)V

    goto :goto_0

    .line 960
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/billing/x;->a:Lcom/viber/voip/billing/a;

    invoke-static {v0}, Lcom/viber/voip/billing/a;->c(Lcom/viber/voip/billing/a;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/billing/x;->b:Lcom/viber/voip/billing/ae;

    invoke-virtual {v1}, Lcom/viber/voip/billing/ae;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 961
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 883
    check-cast p1, [Lcom/viber/voip/billing/ae;

    invoke-virtual {p0, p1}, Lcom/viber/voip/billing/x;->a([Lcom/viber/voip/billing/ae;)Lcom/viber/voip/billing/ah;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 883
    check-cast p1, Lcom/viber/voip/billing/ah;

    invoke-virtual {p0, p1}, Lcom/viber/voip/billing/x;->a(Lcom/viber/voip/billing/ah;)V

    return-void
.end method
