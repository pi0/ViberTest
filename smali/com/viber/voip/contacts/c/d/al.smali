.class Lcom/viber/voip/contacts/c/d/al;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/messages/orm/manager/AsyncEntityManager$FillCursorCompleteCallback;


# instance fields
.field final synthetic a:Lcom/viber/voip/contacts/c/d/k;

.field final synthetic b:Lcom/viber/voip/contacts/c/d/aa;


# direct methods
.method constructor <init>(Lcom/viber/voip/contacts/c/d/aa;Lcom/viber/voip/contacts/c/d/k;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 244
    iput-object p1, p0, Lcom/viber/voip/contacts/c/d/al;->b:Lcom/viber/voip/contacts/c/d/aa;

    iput-object p2, p0, Lcom/viber/voip/contacts/c/d/al;->a:Lcom/viber/voip/contacts/c/d/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataReady(Lcom/viber/voip/messages/orm/manager/EntityManager;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 248
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 249
    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/manager/EntityManager;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/orm/entity/Entity;

    .line 250
    check-cast v0, Lcom/viber/voip/contacts/b/i;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 252
    :cond_0
    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/manager/EntityManager;->closeCursor()Z

    .line 254
    iget-object v0, p0, Lcom/viber/voip/contacts/c/d/al;->a:Lcom/viber/voip/contacts/c/d/k;

    if-eqz v0, :cond_1

    .line 255
    iget-object v0, p0, Lcom/viber/voip/contacts/c/d/al;->a:Lcom/viber/voip/contacts/c/d/k;

    invoke-interface {v0, v1}, Lcom/viber/voip/contacts/c/d/k;->a(Ljava/util/Set;)V

    .line 257
    :cond_1
    return-void
.end method
