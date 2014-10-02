.class Lcom/viber/voip/billing/cf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/billing/cr;


# instance fields
.field final synthetic a:Lcom/viber/voip/billing/bv;


# direct methods
.method constructor <init>(Lcom/viber/voip/billing/bv;)V
    .locals 0
    .parameter

    .prologue
    .line 354
    iput-object p1, p0, Lcom/viber/voip/billing/cf;->a:Lcom/viber/voip/billing/bv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 357
    invoke-static {}, Lcom/viber/voip/billing/PurchaseSupportActivity;->b()V

    .line 358
    return-void
.end method

.method public a(IILjava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 372
    iget-object v0, p0, Lcom/viber/voip/billing/cf;->a:Lcom/viber/voip/billing/bv;

    invoke-static {v0, p1, p2, p3}, Lcom/viber/voip/billing/bv;->a(Lcom/viber/voip/billing/bv;IILjava/lang/String;)V

    .line 373
    return-void
.end method

.method public a(Lcom/viber/voip/billing/bu;)V
    .locals 2
    .parameter

    .prologue
    .line 417
    iget-object v0, p0, Lcom/viber/voip/billing/cf;->a:Lcom/viber/voip/billing/bv;

    invoke-virtual {v0}, Lcom/viber/voip/billing/bv;->c()Lcom/viber/voip/billing/ap;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/billing/ci;

    invoke-direct {v1, p0}, Lcom/viber/voip/billing/ci;-><init>(Lcom/viber/voip/billing/cf;)V

    invoke-virtual {v0, p1, v1}, Lcom/viber/voip/billing/ap;->a(Lcom/viber/voip/billing/bu;Lcom/viber/voip/billing/bf;)V

    .line 437
    return-void
.end method

.method public a(Lcom/viber/voip/billing/bu;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 388
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "verifyPurchase: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", async: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/billing/bv;->a(Ljava/lang/String;)V

    .line 389
    iget-object v0, p0, Lcom/viber/voip/billing/cf;->a:Lcom/viber/voip/billing/bv;

    invoke-static {v0, p1}, Lcom/viber/voip/billing/bv;->a(Lcom/viber/voip/billing/bv;Lcom/viber/voip/billing/bu;)Lcom/viber/voip/billing/co;

    move-result-object v0

    .line 390
    if-eqz p2, :cond_0

    .line 391
    new-instance v1, Lcom/viber/voip/billing/cg;

    invoke-direct {v1, p0, v0, p1}, Lcom/viber/voip/billing/cg;-><init>(Lcom/viber/voip/billing/cf;Lcom/viber/voip/billing/co;Lcom/viber/voip/billing/bu;)V

    invoke-virtual {v0, p1, v1}, Lcom/viber/voip/billing/co;->a(Lcom/viber/voip/billing/bu;Lcom/viber/voip/billing/cq;)V

    .line 413
    :goto_0
    return-void

    .line 399
    :cond_0
    new-instance v1, Lcom/viber/voip/billing/ch;

    invoke-direct {v1, p0, v0, p1}, Lcom/viber/voip/billing/ch;-><init>(Lcom/viber/voip/billing/cf;Lcom/viber/voip/billing/co;Lcom/viber/voip/billing/bu;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Lcom/viber/voip/billing/ch;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 362
    invoke-static {p1}, Lcom/viber/voip/billing/PurchaseSupportActivity;->a(Ljava/lang/String;)V

    .line 363
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Lcom/viber/voip/billing/cf;->a:Lcom/viber/voip/billing/bv;

    invoke-virtual {v0}, Lcom/viber/voip/billing/bv;->f()V

    .line 368
    return-void
.end method

.method public b(Lcom/viber/voip/billing/bu;)V
    .locals 1
    .parameter

    .prologue
    .line 441
    iget-object v0, p0, Lcom/viber/voip/billing/cf;->a:Lcom/viber/voip/billing/bv;

    invoke-static {v0}, Lcom/viber/voip/billing/bv;->d(Lcom/viber/voip/billing/bv;)Lcom/viber/voip/billing/cm;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/viber/voip/billing/cm;->a(Lcom/viber/voip/billing/bu;)V

    .line 442
    return-void
.end method

.method public c()V
    .locals 0

    .prologue
    .line 377
    invoke-static {}, Lcom/viber/voip/billing/PurchaseSupportActivity;->c()V

    .line 378
    return-void
.end method

.method public c(Lcom/viber/voip/billing/bu;)V
    .locals 1
    .parameter

    .prologue
    .line 451
    iget-object v0, p0, Lcom/viber/voip/billing/cf;->a:Lcom/viber/voip/billing/bv;

    invoke-virtual {v0}, Lcom/viber/voip/billing/bv;->d()Lcom/viber/voip/billing/cs;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/viber/voip/billing/cs;->a(Lcom/viber/voip/billing/bu;)V

    .line 452
    return-void
.end method

.method public d()Landroid/content/Context;
    .locals 1

    .prologue
    .line 456
    iget-object v0, p0, Lcom/viber/voip/billing/cf;->a:Lcom/viber/voip/billing/bv;

    invoke-static {v0}, Lcom/viber/voip/billing/bv;->e(Lcom/viber/voip/billing/bv;)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method
