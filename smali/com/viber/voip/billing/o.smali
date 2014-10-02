.class public Lcom/viber/voip/billing/o;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/viber/voip/billing/a;

.field private b:Lcom/viber/voip/billing/n;


# direct methods
.method public constructor <init>(Lcom/viber/voip/billing/a;Lcom/viber/voip/billing/n;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 975
    iput-object p1, p0, Lcom/viber/voip/billing/o;->a:Lcom/viber/voip/billing/a;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 976
    iput-object p2, p0, Lcom/viber/voip/billing/o;->b:Lcom/viber/voip/billing/n;

    .line 977
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 2
    .parameter

    .prologue
    .line 982
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/viber/voip/bc;->b()Lcom/viber/voip/bd;

    move-result-object v1

    iget-object v1, v1, Lcom/viber/voip/bd;->M:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/viber/voip/billing/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 984
    const/16 v1, 0x7530

    invoke-static {v0, v1}, Lcom/viber/voip/billing/a;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 987
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 988
    const-string/jumbo v0, "success"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 989
    const/4 v0, 0x0

    .line 998
    :goto_0
    return-object v0

    .line 991
    :cond_0
    const-string/jumbo v0, "error_code"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 992
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 994
    :catch_0
    move-exception v0

    .line 996
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 998
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method protected a(Ljava/lang/Integer;)V
    .locals 2
    .parameter

    .prologue
    .line 1003
    if-nez p1, :cond_0

    .line 1004
    iget-object v0, p0, Lcom/viber/voip/billing/o;->b:Lcom/viber/voip/billing/n;

    invoke-interface {v0}, Lcom/viber/voip/billing/n;->a()V

    .line 1008
    :goto_0
    return-void

    .line 1006
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/billing/o;->b:Lcom/viber/voip/billing/n;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/viber/voip/billing/n;->a(I)V

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 972
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/viber/voip/billing/o;->a([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 972
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/viber/voip/billing/o;->a(Ljava/lang/Integer;)V

    return-void
.end method
