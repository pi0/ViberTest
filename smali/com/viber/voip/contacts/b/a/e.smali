.class public Lcom/viber/voip/contacts/b/a/e;
.super Lcom/viber/voip/messages/orm/creator/JoinCreator;
.source "SourceFile"


# static fields
.field private static final a:Lcom/viber/voip/contacts/b/a/d;


# instance fields
.field private b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    new-instance v0, Lcom/viber/voip/contacts/b/a/f;

    invoke-direct {v0}, Lcom/viber/voip/contacts/b/a/f;-><init>()V

    sput-object v0, Lcom/viber/voip/contacts/b/a/e;->a:Lcom/viber/voip/contacts/b/a/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 30
    sget-object v0, Lcom/viber/provider/contacts/d;->b:Landroid/net/Uri;

    const-class v1, Lcom/viber/voip/contacts/b/b/a/a;

    const/4 v2, 0x3

    new-array v2, v2, [Lcom/viber/voip/messages/orm/creator/Creator;

    sget-object v3, Lcom/viber/voip/contacts/b/a/e;->a:Lcom/viber/voip/contacts/b/a/d;

    aput-object v3, v2, v5

    const/4 v3, 0x1

    sget-object v4, Lcom/viber/voip/contacts/b/b/a/i;->a:Lcom/viber/voip/messages/orm/creator/CreatorHelper;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    sget-object v4, Lcom/viber/voip/contacts/b/b/a/l;->k:Lcom/viber/voip/messages/orm/creator/CreatorHelper;

    aput-object v4, v2, v3

    invoke-direct {p0, v0, v1, v2}, Lcom/viber/voip/messages/orm/creator/JoinCreator;-><init>(Landroid/net/Uri;Ljava/lang/Class;[Lcom/viber/voip/messages/orm/creator/Creator;)V

    .line 31
    iput v5, p0, Lcom/viber/voip/contacts/b/a/e;->b:I

    .line 32
    return-void
.end method


# virtual methods
.method public declared-synchronized createInstance(Landroid/database/Cursor;)Lcom/viber/voip/messages/orm/entity/Entity;
    .locals 11
    .parameter

    .prologue
    .line 36
    monitor-enter p0

    :try_start_0
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 37
    iget v1, p0, Lcom/viber/voip/contacts/b/a/e;->b:I

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 38
    const/4 v1, 0x0

    move-object v3, v1

    .line 40
    :cond_0
    sget-object v1, Lcom/viber/voip/contacts/b/b/a/i;->a:Lcom/viber/voip/messages/orm/creator/CreatorHelper;

    invoke-virtual {p0, p1, v1}, Lcom/viber/voip/contacts/b/a/e;->createInstancesInternal(Landroid/database/Cursor;Lcom/viber/voip/messages/orm/creator/Creator;)Lcom/viber/voip/messages/orm/entity/Entity;

    move-result-object v1

    check-cast v1, Lcom/viber/voip/contacts/b/b/a/i;

    .line 41
    sget-object v2, Lcom/viber/voip/contacts/b/b/a/l;->k:Lcom/viber/voip/messages/orm/creator/CreatorHelper;

    invoke-virtual {p0, p1, v2}, Lcom/viber/voip/contacts/b/a/e;->createInstancesInternal(Landroid/database/Cursor;Lcom/viber/voip/messages/orm/creator/Creator;)Lcom/viber/voip/messages/orm/entity/Entity;

    move-result-object v2

    check-cast v2, Lcom/viber/voip/contacts/b/b/a/l;

    .line 43
    if-nez v3, :cond_1

    .line 44
    sget-object v3, Lcom/viber/voip/contacts/b/a/e;->a:Lcom/viber/voip/contacts/b/a/d;

    invoke-virtual {p0, p1, v3}, Lcom/viber/voip/contacts/b/a/e;->createInstancesInternal(Landroid/database/Cursor;Lcom/viber/voip/messages/orm/creator/Creator;)Lcom/viber/voip/messages/orm/entity/Entity;

    move-result-object v3

    check-cast v3, Lcom/viber/voip/contacts/b/b/d;

    .line 46
    :cond_1
    invoke-interface {v4, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 47
    invoke-virtual {v1, v3}, Lcom/viber/voip/contacts/b/b/a/i;->a(Lcom/viber/voip/contacts/b/b/a/a;)V

    .line 48
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v4, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    :cond_2
    invoke-virtual {v2}, Lcom/viber/voip/contacts/b/b/a/l;->getId()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-eqz v7, :cond_3

    .line 51
    invoke-virtual {v2, v1}, Lcom/viber/voip/contacts/b/b/a/l;->a(Lcom/viber/voip/contacts/b/b/a/i;)V

    .line 52
    invoke-virtual {v2, v3}, Lcom/viber/voip/contacts/b/b/a/l;->a(Lcom/viber/voip/contacts/b/b/a/a;)V

    .line 53
    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 55
    :cond_3
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/viber/voip/contacts/b/a/e;->b:I

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    cmp-long v1, v5, v1

    if-eqz v1, :cond_0

    .line 57
    :cond_4
    new-instance v1, Ljava/util/HashSet;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v3, v1}, Lcom/viber/voip/contacts/b/b/d;->a(Ljava/util/HashSet;)V

    .line 58
    invoke-virtual {v3}, Lcom/viber/voip/contacts/b/b/d;->b()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/viber/voip/contacts/b/b/a/i;

    move-object v2, v0

    .line 59
    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-virtual {v2, v1}, Lcom/viber/voip/contacts/b/b/a/i;->a(Ljava/util/Set;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 36
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 61
    :cond_5
    monitor-exit p0

    return-object v3
.end method

.method public getAggregateField()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/viber/voip/contacts/b/a/e;->b:I

    return v0
.end method
