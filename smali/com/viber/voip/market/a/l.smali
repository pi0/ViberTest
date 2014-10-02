.class public Lcom/viber/voip/market/a/l;
.super Lcom/viber/voip/process/c;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/viber/voip/process/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/viber/voip/billing/bn;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 19
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 20
    const-string/jumbo v1, "product_id"

    invoke-virtual {p1}, Lcom/viber/voip/billing/bn;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    const-string/jumbo v1, "json"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v1

    const-class v2, Lcom/viber/voip/market/a/l;

    invoke-virtual {p0, v1, v2, v0}, Lcom/viber/voip/market/a/l;->execute(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 23
    return-void
.end method

.method public doInTargetProcess(Landroid/os/Bundle;Lcom/viber/voip/process/b;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 27
    const-string/jumbo v0, "product_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/billing/bn;->a(Ljava/lang/String;)Lcom/viber/voip/billing/bn;

    move-result-object v0

    .line 28
    const-string/jumbo v1, "json"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 29
    invoke-static {}, Lcom/viber/voip/market/MarketApi;->a()Lcom/viber/voip/market/MarketApi;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/viber/voip/market/MarketApi;->a(Lcom/viber/voip/billing/bn;Ljava/lang/String;)V

    .line 30
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Lcom/viber/voip/process/b;->a(Landroid/os/Bundle;)V

    .line 31
    return-void
.end method

.method public processResult(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 34
    return-void
.end method
