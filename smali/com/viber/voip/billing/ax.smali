.class Lcom/viber/voip/billing/ax;
.super Lcom/viber/voip/billing/bl;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/viber/voip/billing/bk;

.field final synthetic c:Lcom/viber/voip/billing/ap;


# direct methods
.method constructor <init>(Lcom/viber/voip/billing/ap;Ljava/lang/String;Ljava/util/List;Lcom/viber/voip/billing/bk;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 725
    iput-object p1, p0, Lcom/viber/voip/billing/ax;->c:Lcom/viber/voip/billing/ap;

    iput-object p3, p0, Lcom/viber/voip/billing/ax;->a:Ljava/util/List;

    iput-object p4, p0, Lcom/viber/voip/billing/ax;->b:Lcom/viber/voip/billing/bk;

    invoke-direct {p0, p1, p2}, Lcom/viber/voip/billing/bl;-><init>(Lcom/viber/voip/billing/ap;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .prologue
    .line 727
    new-instance v1, Lcom/viber/voip/billing/bm;

    invoke-direct {v1}, Lcom/viber/voip/billing/bm;-><init>()V

    .line 728
    new-instance v0, Lcom/viber/voip/billing/bo;

    const/4 v2, 0x0

    const-string/jumbo v3, "Query product details successful."

    invoke-direct {v0, v2, v3}, Lcom/viber/voip/billing/bo;-><init>(ILjava/lang/String;)V

    .line 731
    :try_start_0
    iget-object v2, p0, Lcom/viber/voip/billing/ax;->c:Lcom/viber/voip/billing/ap;

    const-string/jumbo v3, "inapp"

    iget-object v4, p0, Lcom/viber/voip/billing/ax;->a:Ljava/util/List;

    invoke-static {v2, v3, v1, v4}, Lcom/viber/voip/billing/ap;->a(Lcom/viber/voip/billing/ap;Ljava/lang/String;Lcom/viber/voip/billing/bm;Ljava/util/List;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/viber/voip/billing/ao; {:try_start_0 .. :try_end_0} :catch_1

    .line 749
    :goto_0
    iget-object v2, p0, Lcom/viber/voip/billing/ax;->c:Lcom/viber/voip/billing/ap;

    invoke-static {v2}, Lcom/viber/voip/billing/ap;->b(Lcom/viber/voip/billing/ap;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/viber/voip/billing/ay;

    invoke-direct {v3, p0, v0, v1}, Lcom/viber/voip/billing/ay;-><init>(Lcom/viber/voip/billing/ax;Lcom/viber/voip/billing/bo;Lcom/viber/voip/billing/bm;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 755
    return-void

    .line 733
    :catch_0
    move-exception v0

    .line 734
    :try_start_1
    new-instance v2, Lcom/viber/voip/billing/ao;

    const/16 v3, -0x3e9

    const-string/jumbo v4, "Remote exception while refreshing inventory."

    invoke-direct {v2, v3, v4, v0}, Lcom/viber/voip/billing/ao;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    throw v2
    :try_end_1
    .catch Lcom/viber/voip/billing/ao; {:try_start_1 .. :try_end_1} :catch_1

    .line 743
    :catch_1
    move-exception v0

    .line 744
    invoke-virtual {v0}, Lcom/viber/voip/billing/ao;->a()Lcom/viber/voip/billing/bo;

    move-result-object v0

    goto :goto_0

    .line 736
    :catch_2
    move-exception v0

    .line 737
    :try_start_2
    new-instance v2, Lcom/viber/voip/billing/ao;

    const/16 v3, -0x3ea

    const-string/jumbo v4, "Error parsing JSON response while refreshing inventory."

    invoke-direct {v2, v3, v4, v0}, Lcom/viber/voip/billing/ao;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    throw v2

    .line 739
    :catch_3
    move-exception v0

    .line 740
    new-instance v2, Lcom/viber/voip/billing/ao;

    const/16 v3, -0x3f0

    const-string/jumbo v4, "Exception while refreshing inventory."

    invoke-direct {v2, v3, v4, v0}, Lcom/viber/voip/billing/ao;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    throw v2
    :try_end_2
    .catch Lcom/viber/voip/billing/ao; {:try_start_2 .. :try_end_2} :catch_1
.end method

.method a(Lcom/viber/voip/billing/bo;)V
    .locals 3
    .parameter

    .prologue
    .line 759
    new-instance v0, Lcom/viber/voip/billing/bm;

    invoke-direct {v0}, Lcom/viber/voip/billing/bm;-><init>()V

    .line 760
    iget-object v1, p0, Lcom/viber/voip/billing/ax;->c:Lcom/viber/voip/billing/ap;

    invoke-static {v1}, Lcom/viber/voip/billing/ap;->b(Lcom/viber/voip/billing/ap;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/viber/voip/billing/az;

    invoke-direct {v2, p0, p1, v0}, Lcom/viber/voip/billing/az;-><init>(Lcom/viber/voip/billing/ax;Lcom/viber/voip/billing/bo;Lcom/viber/voip/billing/bm;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 766
    return-void
.end method
