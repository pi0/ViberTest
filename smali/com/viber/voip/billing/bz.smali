.class Lcom/viber/voip/billing/bz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/billing/bg;


# instance fields
.field final synthetic a:Lcom/viber/voip/billing/by;


# direct methods
.method constructor <init>(Lcom/viber/voip/billing/by;)V
    .locals 0
    .parameter

    .prologue
    .line 118
    iput-object p1, p0, Lcom/viber/voip/billing/bz;->a:Lcom/viber/voip/billing/by;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;Ljava/util/List;)V
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/viber/voip/billing/bu;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/viber/voip/billing/bo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 121
    const-string/jumbo v0, "onConsumeMultiFinished ======"

    invoke-static {v0}, Lcom/viber/voip/billing/bv;->a(Ljava/lang/String;)V

    .line 122
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/billing/bo;

    .line 123
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "IabResult, success: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/viber/voip/billing/bo;->c()Z

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/billing/bv;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/billing/bz;->a:Lcom/viber/voip/billing/by;

    iget-object v0, v0, Lcom/viber/voip/billing/by;->a:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 126
    iget-object v0, p0, Lcom/viber/voip/billing/bz;->a:Lcom/viber/voip/billing/by;

    iget-object v0, v0, Lcom/viber/voip/billing/by;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 128
    :cond_1
    return-void
.end method
