.class Lcom/viber/voip/contacts/c/f/a/a/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/messages/orm/manager/AsyncEntityManager$FillCursorCompleteCallback;


# instance fields
.field final synthetic a:Ljava/util/Set;

.field final synthetic b:Z

.field final synthetic c:Lcom/viber/voip/contacts/c/f/a/a/h;

.field final synthetic d:Lcom/viber/voip/contacts/c/f/a/a/a;


# direct methods
.method constructor <init>(Lcom/viber/voip/contacts/c/f/a/a/a;Ljava/util/Set;ZLcom/viber/voip/contacts/c/f/a/a/h;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 173
    iput-object p1, p0, Lcom/viber/voip/contacts/c/f/a/a/d;->d:Lcom/viber/voip/contacts/c/f/a/a/a;

    iput-object p2, p0, Lcom/viber/voip/contacts/c/f/a/a/d;->a:Ljava/util/Set;

    iput-boolean p3, p0, Lcom/viber/voip/contacts/c/f/a/a/d;->b:Z

    iput-object p4, p0, Lcom/viber/voip/contacts/c/f/a/a/d;->c:Lcom/viber/voip/contacts/c/f/a/a/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataReady(Lcom/viber/voip/messages/orm/manager/EntityManager;I)V
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 178
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 179
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 180
    const/4 v0, 0x0

    move v3, v0

    :goto_0
    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/manager/EntityManager;->getCount()I

    move-result v0

    if-ge v3, v0, :cond_1

    .line 181
    invoke-virtual {p1, v3}, Lcom/viber/voip/messages/orm/manager/EntityManager;->getEntity(I)Lcom/viber/voip/messages/orm/entity/Entity;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/contacts/b/b/d;

    .line 182
    invoke-virtual {v0}, Lcom/viber/voip/contacts/b/b/d;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    invoke-virtual {v0}, Lcom/viber/voip/contacts/b/b/d;->b()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/contacts/b/b/a/i;

    .line 184
    invoke-virtual {v0}, Lcom/viber/voip/contacts/b/b/a/i;->getId()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v2, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 180
    :cond_0
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 187
    :cond_1
    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/manager/EntityManager;->closeCursor()Z

    .line 188
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/a/a/d;->d:Lcom/viber/voip/contacts/c/f/a/a/a;

    iget-object v3, p0, Lcom/viber/voip/contacts/c/f/a/a/d;->a:Ljava/util/Set;

    iget-boolean v4, p0, Lcom/viber/voip/contacts/c/f/a/a/d;->b:Z

    iget-object v5, p0, Lcom/viber/voip/contacts/c/f/a/a/d;->c:Lcom/viber/voip/contacts/c/f/a/a/h;

    invoke-static/range {v0 .. v5}, Lcom/viber/voip/contacts/c/f/a/a/a;->a(Lcom/viber/voip/contacts/c/f/a/a/a;Ljava/util/Map;Ljava/util/Map;Ljava/util/Set;ZLcom/viber/voip/contacts/c/f/a/a/h;)V

    .line 189
    return-void
.end method
