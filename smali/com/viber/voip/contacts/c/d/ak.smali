.class Lcom/viber/voip/contacts/c/d/ak;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/messages/orm/manager/AsyncEntityManager$FillCursorCompleteCallback;


# instance fields
.field final synthetic a:Lcom/viber/voip/contacts/c/d/i;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/viber/voip/contacts/c/d/aa;


# direct methods
.method constructor <init>(Lcom/viber/voip/contacts/c/d/aa;Lcom/viber/voip/contacts/c/d/i;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 203
    iput-object p1, p0, Lcom/viber/voip/contacts/c/d/ak;->c:Lcom/viber/voip/contacts/c/d/aa;

    iput-object p2, p0, Lcom/viber/voip/contacts/c/d/ak;->a:Lcom/viber/voip/contacts/c/d/i;

    iput-object p3, p0, Lcom/viber/voip/contacts/c/d/ak;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataReady(Lcom/viber/voip/messages/orm/manager/EntityManager;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 207
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 208
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/manager/EntityManager;->getCount()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 209
    invoke-virtual {p1, v1}, Lcom/viber/voip/messages/orm/manager/EntityManager;->getEntity(I)Lcom/viber/voip/messages/orm/entity/Entity;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/contacts/b/b/e;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 208
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 211
    :cond_0
    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/manager/EntityManager;->closeCursor()Z

    .line 213
    iget-object v0, p0, Lcom/viber/voip/contacts/c/d/ak;->a:Lcom/viber/voip/contacts/c/d/i;

    if-eqz v0, :cond_1

    .line 214
    iget-object v0, p0, Lcom/viber/voip/contacts/c/d/ak;->a:Lcom/viber/voip/contacts/c/d/i;

    iget-object v1, p0, Lcom/viber/voip/contacts/c/d/ak;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/contacts/c/d/i;->a(Ljava/lang/String;Ljava/util/Set;)V

    .line 216
    :cond_1
    return-void
.end method
