.class Lcom/viber/voip/billing/ce;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/billing/bh;


# instance fields
.field final synthetic a:Lcom/viber/voip/billing/co;

.field final synthetic b:Lcom/viber/voip/billing/bn;

.field final synthetic c:Lcom/viber/voip/billing/bv;


# direct methods
.method constructor <init>(Lcom/viber/voip/billing/bv;Lcom/viber/voip/billing/co;Lcom/viber/voip/billing/bn;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 274
    iput-object p1, p0, Lcom/viber/voip/billing/ce;->c:Lcom/viber/voip/billing/bv;

    iput-object p2, p0, Lcom/viber/voip/billing/ce;->a:Lcom/viber/voip/billing/co;

    iput-object p3, p0, Lcom/viber/voip/billing/ce;->b:Lcom/viber/voip/billing/bn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/viber/voip/billing/bo;Lcom/viber/voip/billing/bu;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 277
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onIabPurchaseFinished, response code:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/viber/voip/billing/bo;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/billing/bv;->a(Ljava/lang/String;)V

    .line 278
    iget-object v0, p0, Lcom/viber/voip/billing/ce;->c:Lcom/viber/voip/billing/bv;

    invoke-static {v0}, Lcom/viber/voip/billing/bv;->c(Lcom/viber/voip/billing/bv;)V

    .line 280
    invoke-virtual {p1}, Lcom/viber/voip/billing/bo;->a()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 290
    if-eqz p2, :cond_0

    .line 291
    iget-object v0, p0, Lcom/viber/voip/billing/ce;->a:Lcom/viber/voip/billing/co;

    invoke-virtual {v0, p1, p2}, Lcom/viber/voip/billing/co;->a(Lcom/viber/voip/billing/bo;Lcom/viber/voip/billing/bu;)V

    .line 297
    :goto_0
    return-void

    .line 282
    :pswitch_0
    iget-object v0, p0, Lcom/viber/voip/billing/ce;->a:Lcom/viber/voip/billing/co;

    invoke-virtual {v0, p2}, Lcom/viber/voip/billing/co;->a(Lcom/viber/voip/billing/bu;)V

    goto :goto_0

    .line 286
    :pswitch_1
    iget-object v0, p0, Lcom/viber/voip/billing/ce;->a:Lcom/viber/voip/billing/co;

    iget-object v1, p0, Lcom/viber/voip/billing/ce;->b:Lcom/viber/voip/billing/bn;

    invoke-virtual {v0, v1}, Lcom/viber/voip/billing/co;->b(Lcom/viber/voip/billing/bn;)V

    goto :goto_0

    .line 293
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/billing/ce;->a:Lcom/viber/voip/billing/co;

    iget-object v1, p0, Lcom/viber/voip/billing/ce;->b:Lcom/viber/voip/billing/bn;

    invoke-virtual {v0, p1, v1}, Lcom/viber/voip/billing/co;->a(Lcom/viber/voip/billing/bo;Lcom/viber/voip/billing/bn;)V

    goto :goto_0

    .line 280
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
