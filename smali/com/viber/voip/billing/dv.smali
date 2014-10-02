.class Lcom/viber/voip/billing/dv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/billing/bk;


# instance fields
.field final synthetic a:Lcom/viber/voip/billing/bu;

.field final synthetic b:Lcom/viber/voip/billing/cq;

.field final synthetic c:Lcom/viber/voip/billing/dt;


# direct methods
.method constructor <init>(Lcom/viber/voip/billing/dt;Lcom/viber/voip/billing/bu;Lcom/viber/voip/billing/cq;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 89
    iput-object p1, p0, Lcom/viber/voip/billing/dv;->c:Lcom/viber/voip/billing/dt;

    iput-object p2, p0, Lcom/viber/voip/billing/dv;->a:Lcom/viber/voip/billing/bu;

    iput-object p3, p0, Lcom/viber/voip/billing/dv;->b:Lcom/viber/voip/billing/cq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/viber/voip/billing/bo;Lcom/viber/voip/billing/bm;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 92
    invoke-virtual {p1}, Lcom/viber/voip/billing/bo;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 93
    iget-object v0, p0, Lcom/viber/voip/billing/dv;->a:Lcom/viber/voip/billing/bu;

    invoke-virtual {v0}, Lcom/viber/voip/billing/bu;->d()Lcom/viber/voip/billing/bn;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/viber/voip/billing/bm;->a(Lcom/viber/voip/billing/bn;)Lcom/viber/voip/billing/bq;

    move-result-object v0

    .line 94
    if-eqz v0, :cond_0

    .line 96
    invoke-static {}, Lcom/viber/voip/billing/a;->a()Lcom/viber/voip/billing/a;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/billing/dv;->a:Lcom/viber/voip/billing/bu;

    new-instance v3, Lcom/viber/voip/billing/dw;

    invoke-direct {v3, p0}, Lcom/viber/voip/billing/dw;-><init>(Lcom/viber/voip/billing/dv;)V

    invoke-virtual {v1, v2, v0, v3}, Lcom/viber/voip/billing/a;->a(Lcom/viber/voip/billing/bu;Lcom/viber/voip/billing/bq;Lcom/viber/voip/billing/am;)V

    .line 121
    :goto_0
    return-void

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/billing/dv;->c:Lcom/viber/voip/billing/dt;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ALERT!!! productDetails is null for product "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/billing/dv;->a:Lcom/viber/voip/billing/bu;

    invoke-virtual {v2}, Lcom/viber/voip/billing/bu;->d()Lcom/viber/voip/billing/bn;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/billing/dt;->a(Lcom/viber/voip/billing/dt;Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/viber/voip/billing/dv;->b:Lcom/viber/voip/billing/cq;

    sget-object v1, Lcom/viber/voip/billing/ds;->c:Lcom/viber/voip/billing/ds;

    invoke-interface {v0, v1}, Lcom/viber/voip/billing/cq;->a(Lcom/viber/voip/billing/ds;)V

    goto :goto_0

    .line 118
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/billing/dv;->c:Lcom/viber/voip/billing/dt;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "query product details failed for product "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/billing/dv;->a:Lcom/viber/voip/billing/bu;

    invoke-virtual {v2}, Lcom/viber/voip/billing/bu;->d()Lcom/viber/voip/billing/bn;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/billing/dt;->a(Lcom/viber/voip/billing/dt;Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/viber/voip/billing/dv;->b:Lcom/viber/voip/billing/cq;

    sget-object v1, Lcom/viber/voip/billing/ds;->c:Lcom/viber/voip/billing/ds;

    invoke-interface {v0, v1}, Lcom/viber/voip/billing/cq;->a(Lcom/viber/voip/billing/ds;)V

    goto :goto_0
.end method
