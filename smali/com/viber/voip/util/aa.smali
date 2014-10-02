.class final Lcom/viber/voip/util/aa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/contacts/b/c;


# instance fields
.field final synthetic a:Lcom/viber/voip/util/ah;

.field final synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/viber/voip/util/ah;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 323
    iput-object p1, p0, Lcom/viber/voip/util/aa;->a:Lcom/viber/voip/util/ah;

    iput-object p2, p0, Lcom/viber/voip/util/aa;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Collection;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/viber/voip/contacts/b/f;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 326
    if-nez p1, :cond_1

    .line 363
    :cond_0
    :goto_0
    return-void

    .line 330
    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 333
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/contacts/b/f;

    .line 334
    invoke-interface {v0}, Lcom/viber/voip/contacts/b/f;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 335
    invoke-interface {v0}, Lcom/viber/voip/contacts/b/f;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 341
    :cond_3
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v0

    if-ne v0, v4, :cond_4

    .line 342
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/contacts/b/f;

    .line 343
    invoke-static {}, Lcom/viber/voip/viberout/e;->c()Lcom/viber/voip/viberout/e;

    move-result-object v1

    invoke-interface {v0}, Lcom/viber/voip/contacts/b/f;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/viber/voip/viberout/e;->b(Ljava/lang/String;)V

    .line 344
    iget-object v1, p0, Lcom/viber/voip/util/aa;->a:Lcom/viber/voip/util/ah;

    invoke-interface {v0}, Lcom/viber/voip/contacts/b/f;->b()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/viber/voip/util/ah;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 345
    :cond_4
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v0

    if-le v0, v4, :cond_0

    .line 346
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 347
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/contacts/b/f;

    .line 348
    new-instance v3, Lcom/viber/voip/contacts/b/b/a/e;

    invoke-interface {v0}, Lcom/viber/voip/contacts/b/f;->a()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0}, Lcom/viber/voip/contacts/b/f;->d()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v4, v0}, Lcom/viber/voip/contacts/b/b/a/e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 350
    :cond_5
    iget-object v0, p0, Lcom/viber/voip/util/aa;->b:Landroid/content/Context;

    const/4 v1, 0x0

    new-instance v3, Lcom/viber/voip/util/ab;

    invoke-direct {v3, p0}, Lcom/viber/voip/util/ab;-><init>(Lcom/viber/voip/util/aa;)V

    invoke-static {v0, v2, v1, v3}, Lcom/viber/voip/util/w;->a(Landroid/content/Context;Ljava/util/Collection;Ljava/util/Collection;Lcom/viber/voip/util/ai;)V

    goto/16 :goto_0
.end method
