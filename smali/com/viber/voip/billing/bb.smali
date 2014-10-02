.class Lcom/viber/voip/billing/bb;
.super Lcom/viber/voip/billing/bl;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/viber/voip/billing/bf;

.field final synthetic c:Lcom/viber/voip/billing/bg;

.field final synthetic d:Lcom/viber/voip/billing/ap;


# direct methods
.method constructor <init>(Lcom/viber/voip/billing/ap;Ljava/lang/String;Ljava/util/List;Lcom/viber/voip/billing/bf;Lcom/viber/voip/billing/bg;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1136
    iput-object p1, p0, Lcom/viber/voip/billing/bb;->d:Lcom/viber/voip/billing/ap;

    iput-object p3, p0, Lcom/viber/voip/billing/bb;->a:Ljava/util/List;

    iput-object p4, p0, Lcom/viber/voip/billing/bb;->b:Lcom/viber/voip/billing/bf;

    iput-object p5, p0, Lcom/viber/voip/billing/bb;->c:Lcom/viber/voip/billing/bg;

    invoke-direct {p0, p1, p2}, Lcom/viber/voip/billing/bl;-><init>(Lcom/viber/voip/billing/ap;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 7

    .prologue
    .line 1139
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1140
    iget-object v0, p0, Lcom/viber/voip/billing/bb;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/billing/bu;

    .line 1142
    :try_start_0
    iget-object v3, p0, Lcom/viber/voip/billing/bb;->d:Lcom/viber/voip/billing/ap;

    invoke-static {v3, v0}, Lcom/viber/voip/billing/ap;->a(Lcom/viber/voip/billing/ap;Lcom/viber/voip/billing/bu;)V

    .line 1143
    new-instance v3, Lcom/viber/voip/billing/bo;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Successful consume of productId "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/viber/voip/billing/bu;->d()Lcom/viber/voip/billing/bn;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v4, v0}, Lcom/viber/voip/billing/bo;-><init>(ILjava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/viber/voip/billing/ao; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1145
    :catch_0
    move-exception v0

    .line 1146
    invoke-virtual {v0}, Lcom/viber/voip/billing/ao;->a()Lcom/viber/voip/billing/bo;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1150
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/billing/bb;->b:Lcom/viber/voip/billing/bf;

    if-eqz v0, :cond_1

    .line 1151
    iget-object v0, p0, Lcom/viber/voip/billing/bb;->d:Lcom/viber/voip/billing/ap;

    invoke-static {v0}, Lcom/viber/voip/billing/ap;->b(Lcom/viber/voip/billing/ap;)Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Lcom/viber/voip/billing/bc;

    invoke-direct {v2, p0, v1}, Lcom/viber/voip/billing/bc;-><init>(Lcom/viber/voip/billing/bb;Ljava/util/List;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1158
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/billing/bb;->c:Lcom/viber/voip/billing/bg;

    if-eqz v0, :cond_2

    .line 1159
    iget-object v0, p0, Lcom/viber/voip/billing/bb;->d:Lcom/viber/voip/billing/ap;

    invoke-static {v0}, Lcom/viber/voip/billing/ap;->b(Lcom/viber/voip/billing/ap;)Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Lcom/viber/voip/billing/bd;

    invoke-direct {v2, p0, v1}, Lcom/viber/voip/billing/bd;-><init>(Lcom/viber/voip/billing/bb;Ljava/util/List;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1166
    :cond_2
    return-void
.end method
