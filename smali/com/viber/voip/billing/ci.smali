.class Lcom/viber/voip/billing/ci;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/billing/bf;


# instance fields
.field final synthetic a:Lcom/viber/voip/billing/cf;


# direct methods
.method constructor <init>(Lcom/viber/voip/billing/cf;)V
    .locals 0
    .parameter

    .prologue
    .line 417
    iput-object p1, p0, Lcom/viber/voip/billing/ci;->a:Lcom/viber/voip/billing/cf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/viber/voip/billing/bu;Lcom/viber/voip/billing/bo;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 420
    invoke-virtual {p2}, Lcom/viber/voip/billing/bo;->c()Z

    move-result v0

    .line 421
    if-nez v0, :cond_0

    invoke-virtual {p2}, Lcom/viber/voip/billing/bo;->a()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    .line 422
    const-string/jumbo v0, "Consuming an item that is not owned. Treating as a successful consumation"

    invoke-static {v0}, Lcom/viber/voip/billing/bv;->a(Ljava/lang/String;)V

    .line 423
    const/4 v0, 0x1

    .line 426
    :cond_0
    if-eqz v0, :cond_2

    .line 427
    iget-object v0, p0, Lcom/viber/voip/billing/ci;->a:Lcom/viber/voip/billing/cf;

    iget-object v0, v0, Lcom/viber/voip/billing/cf;->a:Lcom/viber/voip/billing/bv;

    invoke-static {v0, p1}, Lcom/viber/voip/billing/bv;->a(Lcom/viber/voip/billing/bv;Lcom/viber/voip/billing/bu;)Lcom/viber/voip/billing/co;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/viber/voip/billing/co;->c(Lcom/viber/voip/billing/bu;)V

    .line 428
    invoke-virtual {p1}, Lcom/viber/voip/billing/bu;->o()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 429
    iget-object v0, p0, Lcom/viber/voip/billing/ci;->a:Lcom/viber/voip/billing/cf;

    iget-object v0, v0, Lcom/viber/voip/billing/cf;->a:Lcom/viber/voip/billing/bv;

    invoke-virtual {v0}, Lcom/viber/voip/billing/bv;->d()Lcom/viber/voip/billing/cs;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/viber/voip/billing/cs;->b(Lcom/viber/voip/billing/bu;)V

    .line 435
    :cond_1
    :goto_0
    return-void

    .line 432
    :cond_2
    const-string/jumbo v0, "consume failed"

    invoke-static {v0}, Lcom/viber/voip/billing/bv;->a(Ljava/lang/String;)V

    .line 433
    iget-object v0, p0, Lcom/viber/voip/billing/ci;->a:Lcom/viber/voip/billing/cf;

    iget-object v0, v0, Lcom/viber/voip/billing/cf;->a:Lcom/viber/voip/billing/bv;

    invoke-virtual {v0}, Lcom/viber/voip/billing/bv;->d()Lcom/viber/voip/billing/cs;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/viber/voip/billing/cs;->a(Lcom/viber/voip/billing/bu;)V

    goto :goto_0
.end method
