.class Lcom/viber/voip/billing/du;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/billing/bk;


# instance fields
.field final synthetic a:Lcom/viber/voip/billing/bu;

.field final synthetic b:Lcom/viber/voip/billing/dt;


# direct methods
.method constructor <init>(Lcom/viber/voip/billing/dt;Lcom/viber/voip/billing/bu;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lcom/viber/voip/billing/du;->b:Lcom/viber/voip/billing/dt;

    iput-object p2, p0, Lcom/viber/voip/billing/du;->a:Lcom/viber/voip/billing/bu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/viber/voip/billing/bo;Lcom/viber/voip/billing/bm;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 46
    const/4 v0, 0x0

    .line 47
    invoke-virtual {p1}, Lcom/viber/voip/billing/bo;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 48
    iget-object v1, p0, Lcom/viber/voip/billing/du;->a:Lcom/viber/voip/billing/bu;

    invoke-virtual {v1}, Lcom/viber/voip/billing/bu;->d()Lcom/viber/voip/billing/bn;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/viber/voip/billing/bm;->a(Lcom/viber/voip/billing/bn;)Lcom/viber/voip/billing/bq;

    move-result-object v1

    .line 49
    if-eqz v1, :cond_1

    .line 50
    invoke-virtual {v1}, Lcom/viber/voip/billing/bq;->b()Ljava/lang/String;

    move-result-object v0

    .line 51
    invoke-static {}, Lcom/viber/voip/billing/dt;->d()Lcom/viber/voip/billing/ae;

    move-result-object v1

    .line 52
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/viber/voip/billing/dt;->b(Lcom/viber/voip/billing/ae;)Lcom/viber/voip/billing/ae;

    .line 53
    invoke-static {v0, v1}, Lcom/viber/voip/billing/PurchaseSupportActivity;->a(Ljava/lang/String;Lcom/viber/voip/billing/ae;)V

    .line 54
    const/4 v0, 0x1

    .line 61
    :goto_0
    if-nez v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/viber/voip/billing/du;->b:Lcom/viber/voip/billing/dt;

    invoke-virtual {v0}, Lcom/viber/voip/billing/dt;->c()Lcom/viber/voip/billing/cr;

    move-result-object v0

    invoke-interface {v0}, Lcom/viber/voip/billing/cr;->c()V

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/billing/du;->b:Lcom/viber/voip/billing/dt;

    invoke-virtual {v0}, Lcom/viber/voip/billing/dt;->c()Lcom/viber/voip/billing/cr;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/billing/du;->a:Lcom/viber/voip/billing/bu;

    invoke-interface {v0, v1}, Lcom/viber/voip/billing/cr;->a(Lcom/viber/voip/billing/bu;)V

    .line 65
    return-void

    .line 56
    :cond_1
    iget-object v1, p0, Lcom/viber/voip/billing/du;->b:Lcom/viber/voip/billing/dt;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ALERT!!! productDetails is null for product "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/viber/voip/billing/du;->a:Lcom/viber/voip/billing/bu;

    invoke-virtual {v3}, Lcom/viber/voip/billing/bu;->d()Lcom/viber/voip/billing/bn;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/viber/voip/billing/dt;->a(Lcom/viber/voip/billing/dt;Ljava/lang/String;)V

    goto :goto_0

    .line 59
    :cond_2
    iget-object v1, p0, Lcom/viber/voip/billing/du;->b:Lcom/viber/voip/billing/dt;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ALERT!!! failed to query product details for product "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/viber/voip/billing/du;->a:Lcom/viber/voip/billing/bu;

    invoke-virtual {v3}, Lcom/viber/voip/billing/bu;->d()Lcom/viber/voip/billing/bn;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/viber/voip/billing/dt;->a(Lcom/viber/voip/billing/dt;Ljava/lang/String;)V

    goto :goto_0
.end method
