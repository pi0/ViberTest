.class Lcom/viber/voip/billing/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/billing/bk;


# instance fields
.field final synthetic a:Lcom/viber/voip/billing/r;

.field final synthetic b:Lcom/viber/voip/billing/v;

.field final synthetic c:Lcom/viber/voip/billing/a;


# direct methods
.method constructor <init>(Lcom/viber/voip/billing/a;Lcom/viber/voip/billing/r;Lcom/viber/voip/billing/v;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 727
    iput-object p1, p0, Lcom/viber/voip/billing/f;->c:Lcom/viber/voip/billing/a;

    iput-object p2, p0, Lcom/viber/voip/billing/f;->a:Lcom/viber/voip/billing/r;

    iput-object p3, p0, Lcom/viber/voip/billing/f;->b:Lcom/viber/voip/billing/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/viber/voip/billing/bo;Lcom/viber/voip/billing/bm;)V
    .locals 8
    .parameter
    .parameter

    .prologue
    .line 730
    invoke-virtual {p1}, Lcom/viber/voip/billing/bo;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 731
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 732
    iget-object v0, p0, Lcom/viber/voip/billing/f;->a:Lcom/viber/voip/billing/r;

    iget-object v2, v0, Lcom/viber/voip/billing/r;->a:[Lcom/viber/voip/billing/q;

    .line 733
    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    .line 734
    invoke-static {v4}, Lcom/viber/voip/billing/q;->a(Lcom/viber/voip/billing/q;)Lcom/viber/voip/billing/bn;

    move-result-object v5

    invoke-virtual {p2, v5}, Lcom/viber/voip/billing/bm;->a(Lcom/viber/voip/billing/bn;)Lcom/viber/voip/billing/bq;

    move-result-object v5

    .line 735
    if-eqz v5, :cond_0

    .line 736
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Product: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v4}, Lcom/viber/voip/billing/q;->a(Lcom/viber/voip/billing/q;)Lcom/viber/voip/billing/bn;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " price: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Lcom/viber/voip/billing/bq;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/viber/voip/billing/a;->b(Ljava/lang/String;)V

    .line 737
    invoke-virtual {v5}, Lcom/viber/voip/billing/bq;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/viber/voip/billing/q;->a(Ljava/lang/String;)V

    .line 738
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 733
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 740
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "ALERT! product details missing product: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v4}, Lcom/viber/voip/billing/q;->a(Lcom/viber/voip/billing/q;)Lcom/viber/voip/billing/bn;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/viber/voip/billing/a;->b(Ljava/lang/String;)V

    goto :goto_1

    .line 744
    :cond_1
    iget-object v2, p0, Lcom/viber/voip/billing/f;->a:Lcom/viber/voip/billing/r;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/viber/voip/billing/q;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/viber/voip/billing/q;

    iput-object v0, v2, Lcom/viber/voip/billing/r;->a:[Lcom/viber/voip/billing/q;

    .line 751
    :goto_2
    iget-object v0, p0, Lcom/viber/voip/billing/f;->b:Lcom/viber/voip/billing/v;

    iget-object v1, p0, Lcom/viber/voip/billing/f;->a:Lcom/viber/voip/billing/r;

    invoke-interface {v0, v1}, Lcom/viber/voip/billing/v;->a(Lcom/viber/voip/billing/r;)V

    .line 752
    return-void

    .line 746
    :cond_2
    const-string/jumbo v0, "queryProductDetailsAsync failed"

    invoke-static {v0}, Lcom/viber/voip/billing/a;->b(Ljava/lang/String;)V

    .line 749
    iget-object v0, p0, Lcom/viber/voip/billing/f;->a:Lcom/viber/voip/billing/r;

    invoke-static {v0, p1}, Lcom/viber/voip/billing/r;->a(Lcom/viber/voip/billing/r;Lcom/viber/voip/billing/bo;)Lcom/viber/voip/billing/bo;

    goto :goto_2
.end method
