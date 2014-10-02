.class Lcom/viber/voip/market/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/billing/cj;


# instance fields
.field final synthetic a:Lcom/viber/voip/market/MarketActivity;


# direct methods
.method constructor <init>(Lcom/viber/voip/market/MarketActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 205
    iput-object p1, p0, Lcom/viber/voip/market/d;->a:Lcom/viber/voip/market/MarketActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 2
    .parameter

    .prologue
    .line 208
    iget-object v0, p0, Lcom/viber/voip/market/d;->a:Lcom/viber/voip/market/MarketActivity;

    const-string/jumbo v1, "onSynchronizePurchasedProductsDone"

    invoke-static {v0, v1}, Lcom/viber/voip/market/MarketActivity;->a(Lcom/viber/voip/market/MarketActivity;Ljava/lang/String;)V

    .line 209
    iget-object v0, p0, Lcom/viber/voip/market/d;->a:Lcom/viber/voip/market/MarketActivity;

    invoke-static {v0}, Lcom/viber/voip/market/MarketActivity;->b(Lcom/viber/voip/market/MarketActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/viber/voip/market/d;->a:Lcom/viber/voip/market/MarketActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/viber/voip/market/MarketActivity;->a(Lcom/viber/voip/market/MarketActivity;Z)Z

    .line 211
    iget-object v0, p0, Lcom/viber/voip/market/d;->a:Lcom/viber/voip/market/MarketActivity;

    invoke-static {v0}, Lcom/viber/voip/market/MarketActivity;->a(Lcom/viber/voip/market/MarketActivity;)V

    .line 213
    :cond_0
    return-void
.end method
