.class Lcom/viber/voip/billing/by;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/billing/bj;


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Lcom/viber/voip/billing/bv;


# direct methods
.method constructor <init>(Lcom/viber/voip/billing/bv;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 101
    iput-object p1, p0, Lcom/viber/voip/billing/by;->b:Lcom/viber/voip/billing/bv;

    iput-object p2, p0, Lcom/viber/voip/billing/by;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/viber/voip/billing/bo;Lcom/viber/voip/billing/bm;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 104
    invoke-virtual {p1}, Lcom/viber/voip/billing/bo;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 105
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 106
    invoke-virtual {p2}, Lcom/viber/voip/billing/bm;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/billing/bn;

    .line 107
    invoke-virtual {p2, v0}, Lcom/viber/voip/billing/bm;->b(Lcom/viber/voip/billing/bn;)Lcom/viber/voip/billing/bu;

    move-result-object v0

    .line 108
    if-eqz v0, :cond_0

    .line 109
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 112
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 113
    const-string/jumbo v0, "Nothing to consume!"

    invoke-static {v0}, Lcom/viber/voip/billing/bv;->a(Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/viber/voip/billing/by;->a:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    .line 115
    iget-object v0, p0, Lcom/viber/voip/billing/by;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 132
    :cond_2
    :goto_1
    return-void

    .line 118
    :cond_3
    iget-object v0, p0, Lcom/viber/voip/billing/by;->b:Lcom/viber/voip/billing/bv;

    invoke-virtual {v0}, Lcom/viber/voip/billing/bv;->c()Lcom/viber/voip/billing/ap;

    move-result-object v0

    new-instance v2, Lcom/viber/voip/billing/bz;

    invoke-direct {v2, p0}, Lcom/viber/voip/billing/bz;-><init>(Lcom/viber/voip/billing/by;)V

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/billing/ap;->a(Ljava/util/List;Lcom/viber/voip/billing/bg;)V

    goto :goto_1
.end method
