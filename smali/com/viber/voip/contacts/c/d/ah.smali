.class Lcom/viber/voip/contacts/c/d/ah;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/messages/orm/manager/AsyncEntityManager$FillCursorCompleteCallback;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/viber/voip/contacts/c/d/as;

.field final synthetic c:Lcom/viber/voip/contacts/c/d/aa;


# direct methods
.method constructor <init>(Lcom/viber/voip/contacts/c/d/aa;Ljava/lang/String;Lcom/viber/voip/contacts/c/d/as;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 518
    iput-object p1, p0, Lcom/viber/voip/contacts/c/d/ah;->c:Lcom/viber/voip/contacts/c/d/aa;

    iput-object p2, p0, Lcom/viber/voip/contacts/c/d/ah;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/viber/voip/contacts/c/d/ah;->b:Lcom/viber/voip/contacts/c/d/as;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataReady(Lcom/viber/voip/messages/orm/manager/EntityManager;I)V
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 522
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 524
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/manager/EntityManager;->getCount()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 525
    invoke-virtual {p1, v1}, Lcom/viber/voip/messages/orm/manager/EntityManager;->getEntity(I)Lcom/viber/voip/messages/orm/entity/Entity;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/contacts/b/b/d;

    .line 526
    invoke-virtual {v0}, Lcom/viber/voip/contacts/b/b/d;->b()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/contacts/b/b/a/i;

    .line 527
    invoke-virtual {v0}, Lcom/viber/voip/contacts/b/b/a/i;->b()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/contacts/b/b/a/l;

    .line 528
    instance-of v5, v0, Lcom/viber/voip/contacts/b/b/k;

    if-eqz v5, :cond_1

    .line 529
    check-cast v0, Lcom/viber/voip/contacts/b/b/k;

    .line 530
    invoke-virtual {v0}, Lcom/viber/voip/contacts/b/b/k;->b()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/viber/voip/contacts/c/d/ah;->a:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 531
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 524
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 537
    :cond_3
    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/manager/EntityManager;->closeCursor()Z

    .line 539
    iget-object v0, p0, Lcom/viber/voip/contacts/c/d/ah;->b:Lcom/viber/voip/contacts/c/d/as;

    if-eqz v0, :cond_4

    .line 540
    iget-object v0, p0, Lcom/viber/voip/contacts/c/d/ah;->b:Lcom/viber/voip/contacts/c/d/as;

    invoke-interface {v0, v2}, Lcom/viber/voip/contacts/c/d/as;->a(Ljava/util/Collection;)V

    .line 542
    :cond_4
    return-void
.end method
