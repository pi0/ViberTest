.class Lcom/viber/voip/contacts/b/b/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/messages/orm/manager/AsyncEntityManager$FillCursorCompleteCallback;


# instance fields
.field final synthetic a:Lcom/viber/voip/contacts/b/c;

.field final synthetic b:Lcom/viber/voip/contacts/b/b/e;


# direct methods
.method constructor <init>(Lcom/viber/voip/contacts/b/b/e;Lcom/viber/voip/contacts/b/c;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 257
    iput-object p1, p0, Lcom/viber/voip/contacts/b/b/f;->b:Lcom/viber/voip/contacts/b/b/e;

    iput-object p2, p0, Lcom/viber/voip/contacts/b/b/f;->a:Lcom/viber/voip/contacts/b/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataReady(Lcom/viber/voip/messages/orm/manager/EntityManager;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 261
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 262
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/manager/EntityManager;->getCount()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 263
    invoke-virtual {p1, v1}, Lcom/viber/voip/messages/orm/manager/EntityManager;->getEntity(I)Lcom/viber/voip/messages/orm/entity/Entity;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/contacts/b/f;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 262
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 265
    :cond_0
    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/manager/EntityManager;->closeCursor()Z

    .line 266
    iget-object v0, p0, Lcom/viber/voip/contacts/b/b/f;->a:Lcom/viber/voip/contacts/b/c;

    invoke-interface {v0, v2}, Lcom/viber/voip/contacts/b/c;->a(Ljava/util/Collection;)V

    .line 267
    return-void
.end method
