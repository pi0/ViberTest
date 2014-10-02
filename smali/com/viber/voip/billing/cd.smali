.class Lcom/viber/voip/billing/cd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/billing/bj;


# instance fields
.field final synthetic a:Lcom/viber/voip/billing/cj;

.field final synthetic b:Lcom/viber/voip/billing/bv;


# direct methods
.method constructor <init>(Lcom/viber/voip/billing/bv;Lcom/viber/voip/billing/cj;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 221
    iput-object p1, p0, Lcom/viber/voip/billing/cd;->b:Lcom/viber/voip/billing/bv;

    iput-object p2, p0, Lcom/viber/voip/billing/cd;->a:Lcom/viber/voip/billing/cj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/viber/voip/billing/bo;Lcom/viber/voip/billing/bm;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 224
    invoke-virtual {p1}, Lcom/viber/voip/billing/bo;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 225
    invoke-virtual {p2}, Lcom/viber/voip/billing/bm;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/billing/bn;

    .line 226
    iget-object v2, p0, Lcom/viber/voip/billing/cd;->b:Lcom/viber/voip/billing/bv;

    invoke-static {v2, v0}, Lcom/viber/voip/billing/bv;->a(Lcom/viber/voip/billing/bv;Lcom/viber/voip/billing/bn;)Lcom/viber/voip/billing/co;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/viber/voip/billing/co;->c(Lcom/viber/voip/billing/bn;)V

    goto :goto_0

    .line 228
    :cond_0
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    const-string/jumbo v1, "PREF_MARKET_PRODUCTS_SYNCED"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;Z)Lcom/viber/voip/settings/l;

    .line 232
    :goto_1
    iget-object v0, p0, Lcom/viber/voip/billing/cd;->a:Lcom/viber/voip/billing/cj;

    if-eqz v0, :cond_1

    .line 233
    iget-object v0, p0, Lcom/viber/voip/billing/cd;->a:Lcom/viber/voip/billing/cj;

    invoke-virtual {p1}, Lcom/viber/voip/billing/bo;->c()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/viber/voip/billing/cj;->a(Z)V

    .line 235
    :cond_1
    return-void

    .line 230
    :cond_2
    const-string/jumbo v0, "query inventory failed"

    invoke-static {v0}, Lcom/viber/voip/billing/bv;->a(Ljava/lang/String;)V

    goto :goto_1
.end method
