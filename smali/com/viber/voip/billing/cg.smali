.class Lcom/viber/voip/billing/cg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/billing/cq;


# instance fields
.field final synthetic a:Lcom/viber/voip/billing/co;

.field final synthetic b:Lcom/viber/voip/billing/bu;

.field final synthetic c:Lcom/viber/voip/billing/cf;


# direct methods
.method constructor <init>(Lcom/viber/voip/billing/cf;Lcom/viber/voip/billing/co;Lcom/viber/voip/billing/bu;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 391
    iput-object p1, p0, Lcom/viber/voip/billing/cg;->c:Lcom/viber/voip/billing/cf;

    iput-object p2, p0, Lcom/viber/voip/billing/cg;->a:Lcom/viber/voip/billing/co;

    iput-object p3, p0, Lcom/viber/voip/billing/cg;->b:Lcom/viber/voip/billing/bu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/viber/voip/billing/ds;)V
    .locals 2
    .parameter

    .prologue
    .line 394
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "verifyPurchase: result: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/billing/bv;->a(Ljava/lang/String;)V

    .line 395
    iget-object v0, p0, Lcom/viber/voip/billing/cg;->a:Lcom/viber/voip/billing/co;

    iget-object v1, p0, Lcom/viber/voip/billing/cg;->b:Lcom/viber/voip/billing/bu;

    invoke-virtual {v0, v1, p1}, Lcom/viber/voip/billing/co;->a(Lcom/viber/voip/billing/bu;Lcom/viber/voip/billing/ds;)V

    .line 396
    return-void
.end method
