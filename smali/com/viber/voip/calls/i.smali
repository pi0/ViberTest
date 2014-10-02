.class Lcom/viber/voip/calls/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/messages/orm/manager/AsyncEntityManager$FillCursorCompleteCallback;


# instance fields
.field final synthetic a:Ljava/util/Set;

.field final synthetic b:Lcom/viber/voip/calls/o;

.field final synthetic c:Lcom/viber/voip/calls/a;


# direct methods
.method constructor <init>(Lcom/viber/voip/calls/a;Ljava/util/Set;Lcom/viber/voip/calls/o;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 226
    iput-object p1, p0, Lcom/viber/voip/calls/i;->c:Lcom/viber/voip/calls/a;

    iput-object p2, p0, Lcom/viber/voip/calls/i;->a:Ljava/util/Set;

    iput-object p3, p0, Lcom/viber/voip/calls/i;->b:Lcom/viber/voip/calls/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataReady(Lcom/viber/voip/messages/orm/manager/EntityManager;I)V
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 230
    new-instance v7, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/manager/EntityManager;->getCount()I

    move-result v0

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(I)V

    move v6, v2

    .line 232
    :goto_0
    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/manager/EntityManager;->getCount()I

    move-result v0

    if-ge v6, v0, :cond_1

    .line 234
    invoke-virtual {p1, v6}, Lcom/viber/voip/messages/orm/manager/EntityManager;->getEntity(I)Lcom/viber/voip/messages/orm/entity/Entity;

    move-result-object v5

    check-cast v5, Lcom/viber/voip/calls/entities/impl/g;

    .line 235
    new-instance v0, Lcom/viber/voip/calls/entities/impl/CallEntityImpl;

    iget-object v1, p0, Lcom/viber/voip/calls/i;->c:Lcom/viber/voip/calls/a;

    invoke-static {v1}, Lcom/viber/voip/calls/a;->b(Lcom/viber/voip/calls/a;)Lcom/viber/voip/ViberApplication;

    move-result-object v1

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/calls/entities/impl/CallEntityImpl;-><init>(Lcom/viber/voip/ViberApplication;ZIZLcom/viber/voip/calls/entities/impl/g;)V

    .line 236
    iget-object v1, p0, Lcom/viber/voip/calls/i;->a:Ljava/util/Set;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/viber/voip/calls/i;->a:Ljava/util/Set;

    invoke-virtual {v0}, Lcom/viber/voip/calls/entities/impl/CallEntityImpl;->e()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 237
    invoke-virtual {v0, v4}, Lcom/viber/voip/calls/entities/impl/CallEntityImpl;->b(Z)V

    .line 238
    iget-object v1, p0, Lcom/viber/voip/calls/i;->a:Ljava/util/Set;

    invoke-virtual {v0}, Lcom/viber/voip/calls/entities/impl/CallEntityImpl;->e()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 241
    :cond_0
    invoke-virtual {v0}, Lcom/viber/voip/calls/entities/impl/CallEntityImpl;->getCreator()Lcom/viber/voip/messages/orm/creator/Creator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/messages/orm/creator/Creator;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/viber/voip/calls/entities/impl/CallEntityImpl;->getContentValues()Landroid/content/ContentValues;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 232
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    .line 244
    :cond_1
    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/manager/EntityManager;->closeCursor()Z

    .line 246
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 248
    iget-object v0, p0, Lcom/viber/voip/calls/i;->c:Lcom/viber/voip/calls/a;

    invoke-static {v0}, Lcom/viber/voip/calls/a;->a(Lcom/viber/voip/calls/a;)Lcom/viber/voip/contacts/c/e/b;

    move-result-object v1

    const-string/jumbo v3, "com.viber.provider.vibercontacts"

    const/4 v4, 0x0

    new-instance v6, Lcom/viber/voip/calls/j;

    invoke-direct {v6, p0}, Lcom/viber/voip/calls/j;-><init>(Lcom/viber/voip/calls/i;)V

    move-object v5, v7

    invoke-virtual/range {v1 .. v6}, Lcom/viber/voip/contacts/c/e/b;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/util/List;Lcom/viber/voip/util/ff;)V

    .line 259
    :cond_2
    :goto_1
    return-void

    .line 256
    :cond_3
    iget-object v0, p0, Lcom/viber/voip/calls/i;->b:Lcom/viber/voip/calls/o;

    if-eqz v0, :cond_2

    .line 257
    iget-object v0, p0, Lcom/viber/voip/calls/i;->b:Lcom/viber/voip/calls/o;

    invoke-interface {v0, v2}, Lcom/viber/voip/calls/o;->a(Z)V

    goto :goto_1
.end method
