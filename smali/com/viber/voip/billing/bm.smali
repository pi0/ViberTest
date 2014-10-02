.class public Lcom/viber/voip/billing/bm;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/viber/voip/billing/bn;",
            "Lcom/viber/voip/billing/bq;",
            ">;"
        }
    .end annotation
.end field

.field b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/viber/voip/billing/bn;",
            "Lcom/viber/voip/billing/bu;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/billing/bm;->a:Ljava/util/Map;

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/billing/bm;->b:Ljava/util/Map;

    .line 31
    return-void
.end method


# virtual methods
.method public a(Lcom/viber/voip/billing/bn;)Lcom/viber/voip/billing/bq;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/viber/voip/billing/bm;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/billing/bq;

    return-object v0
.end method

.method public a()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/viber/voip/billing/bn;",
            ">;"
        }
    .end annotation

    .prologue
    .line 67
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/viber/voip/billing/bm;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method a(Lcom/viber/voip/billing/bq;)V
    .locals 2
    .parameter

    .prologue
    .line 85
    iget-object v0, p0, Lcom/viber/voip/billing/bm;->a:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/viber/voip/billing/bq;->a()Lcom/viber/voip/billing/bn;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    return-void
.end method

.method a(Lcom/viber/voip/billing/bu;)V
    .locals 2
    .parameter

    .prologue
    .line 89
    iget-object v0, p0, Lcom/viber/voip/billing/bm;->b:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/viber/voip/billing/bu;->d()Lcom/viber/voip/billing/bn;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    return-void
.end method

.method public b(Lcom/viber/voip/billing/bn;)Lcom/viber/voip/billing/bu;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/viber/voip/billing/bm;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/billing/bu;

    return-object v0
.end method
