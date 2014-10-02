.class Lcom/viber/voip/billing/ar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/billing/aq;


# direct methods
.method constructor <init>(Lcom/viber/voip/billing/aq;)V
    .locals 0
    .parameter

    .prologue
    .line 248
    iput-object p1, p0, Lcom/viber/voip/billing/ar;->a:Lcom/viber/voip/billing/aq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 251
    iget-object v0, p0, Lcom/viber/voip/billing/ar;->a:Lcom/viber/voip/billing/aq;

    iget-object v0, v0, Lcom/viber/voip/billing/aq;->b:Lcom/viber/voip/billing/ap;

    const-string/jumbo v1, "serviceInitInterrupter.run"

    invoke-virtual {v0, v1}, Lcom/viber/voip/billing/ap;->a(Ljava/lang/String;)V

    .line 252
    iget-object v0, p0, Lcom/viber/voip/billing/ar;->a:Lcom/viber/voip/billing/aq;

    iget-object v0, v0, Lcom/viber/voip/billing/aq;->a:Lcom/viber/voip/billing/bi;

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/viber/voip/billing/ar;->a:Lcom/viber/voip/billing/aq;

    iget-object v0, v0, Lcom/viber/voip/billing/aq;->a:Lcom/viber/voip/billing/bi;

    new-instance v1, Lcom/viber/voip/billing/bo;

    const/16 v2, -0x3f0

    const-string/jumbo v3, "Timeout while querying iab service for v3 support"

    invoke-direct {v1, v2, v3}, Lcom/viber/voip/billing/bo;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/viber/voip/billing/bi;->a(Lcom/viber/voip/billing/bo;)V

    .line 256
    :cond_0
    return-void
.end method
