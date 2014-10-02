.class Lcom/viber/voip/billing/dr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/billing/al;


# instance fields
.field final synthetic a:Lcom/viber/voip/billing/dq;


# direct methods
.method constructor <init>(Lcom/viber/voip/billing/dq;)V
    .locals 0
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Lcom/viber/voip/billing/dr;->a:Lcom/viber/voip/billing/dq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/viber/voip/billing/m;)V
    .locals 4
    .parameter

    .prologue
    .line 78
    .line 79
    invoke-virtual {p1}, Lcom/viber/voip/billing/m;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    sget-object v0, Lcom/viber/voip/billing/ds;->a:Lcom/viber/voip/billing/ds;

    .line 88
    :goto_0
    iget-object v1, p0, Lcom/viber/voip/billing/dr;->a:Lcom/viber/voip/billing/dq;

    iget-object v1, v1, Lcom/viber/voip/billing/dq;->c:Lcom/viber/voip/billing/dp;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "performPurchaseVerificationAsync finished. Success: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/viber/voip/billing/m;->a()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", status:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/viber/voip/billing/m;->c()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", result:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/viber/voip/billing/dp;->a(Lcom/viber/voip/billing/dp;Ljava/lang/String;)V

    .line 89
    iget-object v1, p0, Lcom/viber/voip/billing/dr;->a:Lcom/viber/voip/billing/dq;

    iget-object v1, v1, Lcom/viber/voip/billing/dq;->b:Lcom/viber/voip/billing/cq;

    invoke-interface {v1, v0}, Lcom/viber/voip/billing/cq;->a(Lcom/viber/voip/billing/ds;)V

    .line 90
    return-void

    .line 82
    :cond_0
    invoke-virtual {p1}, Lcom/viber/voip/billing/m;->c()I

    move-result v0

    const/16 v1, 0x68

    if-ne v0, v1, :cond_1

    .line 83
    sget-object v0, Lcom/viber/voip/billing/ds;->b:Lcom/viber/voip/billing/ds;

    goto :goto_0

    .line 85
    :cond_1
    sget-object v0, Lcom/viber/voip/billing/ds;->c:Lcom/viber/voip/billing/ds;

    goto :goto_0
.end method
