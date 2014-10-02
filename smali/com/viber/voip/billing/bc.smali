.class Lcom/viber/voip/billing/bc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/viber/voip/billing/bb;


# direct methods
.method constructor <init>(Lcom/viber/voip/billing/bb;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1151
    iput-object p1, p0, Lcom/viber/voip/billing/bc;->b:Lcom/viber/voip/billing/bb;

    iput-object p2, p0, Lcom/viber/voip/billing/bc;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1153
    iget-object v0, p0, Lcom/viber/voip/billing/bc;->b:Lcom/viber/voip/billing/bb;

    iget-object v2, v0, Lcom/viber/voip/billing/bb;->b:Lcom/viber/voip/billing/bf;

    iget-object v0, p0, Lcom/viber/voip/billing/bc;->b:Lcom/viber/voip/billing/bb;

    iget-object v0, v0, Lcom/viber/voip/billing/bb;->a:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/billing/bu;

    iget-object v1, p0, Lcom/viber/voip/billing/bc;->a:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/viber/voip/billing/bo;

    invoke-interface {v2, v0, v1}, Lcom/viber/voip/billing/bf;->a(Lcom/viber/voip/billing/bu;Lcom/viber/voip/billing/bo;)V

    .line 1154
    iget-object v0, p0, Lcom/viber/voip/billing/bc;->b:Lcom/viber/voip/billing/bb;

    iget-object v0, v0, Lcom/viber/voip/billing/bb;->d:Lcom/viber/voip/billing/ap;

    invoke-static {v0}, Lcom/viber/voip/billing/ap;->d(Lcom/viber/voip/billing/ap;)V

    .line 1155
    return-void
.end method
