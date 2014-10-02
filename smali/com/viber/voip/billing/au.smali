.class Lcom/viber/voip/billing/au;
.super Lcom/viber/voip/billing/bl;
.source "SourceFile"


# instance fields
.field final synthetic a:Z

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lcom/viber/voip/billing/bj;

.field final synthetic d:Lcom/viber/voip/billing/ap;


# direct methods
.method constructor <init>(Lcom/viber/voip/billing/ap;Ljava/lang/String;ZLjava/util/List;Lcom/viber/voip/billing/bj;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 690
    iput-object p1, p0, Lcom/viber/voip/billing/au;->d:Lcom/viber/voip/billing/ap;

    iput-boolean p3, p0, Lcom/viber/voip/billing/au;->a:Z

    iput-object p4, p0, Lcom/viber/voip/billing/au;->b:Ljava/util/List;

    iput-object p5, p0, Lcom/viber/voip/billing/au;->c:Lcom/viber/voip/billing/bj;

    invoke-direct {p0, p1, p2}, Lcom/viber/voip/billing/bl;-><init>(Lcom/viber/voip/billing/ap;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .prologue
    .line 692
    new-instance v1, Lcom/viber/voip/billing/bo;

    const/4 v0, 0x0

    const-string/jumbo v2, "Inventory refresh successful."

    invoke-direct {v1, v0, v2}, Lcom/viber/voip/billing/bo;-><init>(ILjava/lang/String;)V

    .line 693
    const/4 v0, 0x0

    .line 695
    :try_start_0
    iget-object v2, p0, Lcom/viber/voip/billing/au;->d:Lcom/viber/voip/billing/ap;

    iget-boolean v3, p0, Lcom/viber/voip/billing/au;->a:Z

    iget-object v4, p0, Lcom/viber/voip/billing/au;->b:Ljava/util/List;

    invoke-static {v2, v3, v4}, Lcom/viber/voip/billing/ap;->a(Lcom/viber/voip/billing/ap;ZLjava/util/List;)Lcom/viber/voip/billing/bm;
    :try_end_0
    .catch Lcom/viber/voip/billing/ao; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 703
    :goto_0
    iget-object v2, p0, Lcom/viber/voip/billing/au;->d:Lcom/viber/voip/billing/ap;

    invoke-static {v2}, Lcom/viber/voip/billing/ap;->b(Lcom/viber/voip/billing/ap;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/viber/voip/billing/av;

    invoke-direct {v3, p0, v1, v0}, Lcom/viber/voip/billing/av;-><init>(Lcom/viber/voip/billing/au;Lcom/viber/voip/billing/bo;Lcom/viber/voip/billing/bm;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 709
    return-void

    .line 697
    :catch_0
    move-exception v1

    .line 698
    invoke-virtual {v1}, Lcom/viber/voip/billing/ao;->a()Lcom/viber/voip/billing/bo;

    move-result-object v1

    goto :goto_0
.end method

.method a(Lcom/viber/voip/billing/bo;)V
    .locals 3
    .parameter

    .prologue
    .line 713
    new-instance v0, Lcom/viber/voip/billing/bm;

    invoke-direct {v0}, Lcom/viber/voip/billing/bm;-><init>()V

    .line 714
    iget-object v1, p0, Lcom/viber/voip/billing/au;->d:Lcom/viber/voip/billing/ap;

    invoke-static {v1}, Lcom/viber/voip/billing/ap;->b(Lcom/viber/voip/billing/ap;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/viber/voip/billing/aw;

    invoke-direct {v2, p0, p1, v0}, Lcom/viber/voip/billing/aw;-><init>(Lcom/viber/voip/billing/au;Lcom/viber/voip/billing/bo;Lcom/viber/voip/billing/bm;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 720
    return-void
.end method
