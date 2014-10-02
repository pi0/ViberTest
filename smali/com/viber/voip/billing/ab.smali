.class Lcom/viber/voip/billing/ab;
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
.field a:Lcom/viber/voip/billing/aa;


# direct methods
.method public constructor <init>(Lcom/viber/voip/billing/aa;)V
    .locals 0
    .parameter

    .prologue
    .line 814
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 815
    iput-object p1, p0, Lcom/viber/voip/billing/ab;->a:Lcom/viber/voip/billing/aa;

    .line 816
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Lcom/viber/voip/billing/m;
    .locals 4
    .parameter

    .prologue
    .line 821
    const/4 v0, 0x0

    :try_start_0
    aget-object v0, p1, v0

    .line 823
    const/4 v1, 0x1

    const/16 v2, 0x7530

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/viber/voip/billing/a;->a(Ljava/lang/String;ZIZ)Lcom/viber/voip/billing/m;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 827
    :goto_0
    return-object v0

    .line 825
    :catch_0
    move-exception v0

    .line 827
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Lcom/viber/voip/billing/m;)V
    .locals 1
    .parameter

    .prologue
    .line 833
    iget-object v0, p0, Lcom/viber/voip/billing/ab;->a:Lcom/viber/voip/billing/aa;

    invoke-interface {v0, p1}, Lcom/viber/voip/billing/aa;->a(Lcom/viber/voip/billing/m;)V

    .line 834
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 810
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/viber/voip/billing/ab;->a([Ljava/lang/String;)Lcom/viber/voip/billing/m;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 810
    check-cast p1, Lcom/viber/voip/billing/m;

    invoke-virtual {p0, p1}, Lcom/viber/voip/billing/ab;->a(Lcom/viber/voip/billing/m;)V

    return-void
.end method
