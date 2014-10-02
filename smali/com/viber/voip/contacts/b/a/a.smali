.class public Lcom/viber/voip/contacts/b/a/a;
.super Lcom/viber/voip/messages/orm/creator/JoinCreator;
.source "SourceFile"


# static fields
.field public static final a:Lcom/viber/voip/calls/entities/impl/b;

.field private static final b:Lcom/viber/voip/contacts/b/a/d;


# instance fields
.field private c:I

.field private d:I

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Lcom/viber/voip/contacts/b/a/b;

    invoke-direct {v0}, Lcom/viber/voip/contacts/b/a/b;-><init>()V

    sput-object v0, Lcom/viber/voip/contacts/b/a/a;->b:Lcom/viber/voip/contacts/b/a/d;

    .line 33
    new-instance v0, Lcom/viber/voip/contacts/b/a/c;

    invoke-direct {v0}, Lcom/viber/voip/contacts/b/a/c;-><init>()V

    sput-object v0, Lcom/viber/voip/contacts/b/a/a;->a:Lcom/viber/voip/calls/entities/impl/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    .line 51
    sget-object v0, Lcom/viber/provider/contacts/c;->b:Landroid/net/Uri;

    const-class v1, Lcom/viber/provider/contacts/c;

    const/4 v2, 0x4

    new-array v2, v2, [Lcom/viber/voip/messages/orm/creator/Creator;

    const/4 v3, 0x0

    sget-object v4, Lcom/viber/voip/contacts/b/a/a;->a:Lcom/viber/voip/calls/entities/impl/b;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Lcom/viber/voip/contacts/b/b/a/l;->k:Lcom/viber/voip/messages/orm/creator/CreatorHelper;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    sget-object v4, Lcom/viber/voip/contacts/b/a/a;->b:Lcom/viber/voip/contacts/b/a/d;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    sget-object v4, Lcom/viber/voip/contacts/b/b/a/o;->a:Lcom/viber/voip/messages/orm/creator/CreatorHelper;

    aput-object v4, v2, v3

    invoke-direct {p0, v0, v1, v2}, Lcom/viber/voip/messages/orm/creator/JoinCreator;-><init>(Landroid/net/Uri;Ljava/lang/Class;[Lcom/viber/voip/messages/orm/creator/Creator;)V

    .line 55
    sget-object v0, Lcom/viber/voip/calls/entities/impl/CallEntityImpl;->b:Lcom/viber/voip/calls/entities/impl/b;

    const-string/jumbo v1, "_id"

    invoke-virtual {p0, v0, v1}, Lcom/viber/voip/contacts/b/a/a;->getProjectionColumn(Lcom/viber/voip/messages/orm/creator/Creator;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/contacts/b/a/a;->c:I

    .line 56
    sget-object v0, Lcom/viber/voip/calls/entities/impl/CallEntityImpl;->b:Lcom/viber/voip/calls/entities/impl/b;

    const-string/jumbo v1, "aggregate_hash"

    invoke-virtual {p0, v0, v1}, Lcom/viber/voip/contacts/b/a/a;->getProjectionColumn(Lcom/viber/voip/messages/orm/creator/Creator;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/contacts/b/a/a;->d:I

    .line 57
    sget-object v0, Lcom/viber/voip/contacts/b/a/a;->b:Lcom/viber/voip/contacts/b/a/d;

    const-string/jumbo v1, "phonebookcontact._id"

    invoke-virtual {p0, v0, v1}, Lcom/viber/voip/contacts/b/a/a;->getProjectionColumn(Lcom/viber/voip/messages/orm/creator/Creator;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/contacts/b/a/a;->e:I

    .line 53
    return-void
.end method


# virtual methods
.method public declared-synchronized createInstance(Landroid/database/Cursor;)Lcom/viber/voip/messages/orm/entity/Entity;
    .locals 13
    .parameter

    .prologue
    .line 61
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/viber/voip/contacts/b/a/a;->d:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 62
    const-wide/16 v4, -0x1

    .line 64
    new-instance v8, Ljava/util/TreeSet;

    sget-object v0, Lcom/viber/voip/contacts/b/b/e;->j:Ljava/util/Comparator;

    invoke-direct {v8, v0}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 65
    sget-object v0, Lcom/viber/voip/contacts/b/a/a;->a:Lcom/viber/voip/calls/entities/impl/b;

    invoke-virtual {p0, p1, v0}, Lcom/viber/voip/contacts/b/a/a;->createInstancesInternal(Landroid/database/Cursor;Lcom/viber/voip/messages/orm/creator/Creator;)Lcom/viber/voip/messages/orm/entity/Entity;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/calls/entities/impl/AggregatedCallEntityImpl;

    .line 66
    sget-object v1, Lcom/viber/voip/contacts/b/b/a/l;->k:Lcom/viber/voip/messages/orm/creator/CreatorHelper;

    invoke-virtual {p0, p1, v1}, Lcom/viber/voip/contacts/b/a/a;->createInstancesInternal(Landroid/database/Cursor;Lcom/viber/voip/messages/orm/creator/Creator;)Lcom/viber/voip/messages/orm/entity/Entity;

    move-result-object v1

    check-cast v1, Lcom/viber/voip/contacts/b/b/k;

    .line 67
    sget-object v2, Lcom/viber/voip/contacts/b/a/a;->b:Lcom/viber/voip/contacts/b/a/d;

    invoke-virtual {p0, p1, v2}, Lcom/viber/voip/contacts/b/a/a;->createInstancesInternal(Landroid/database/Cursor;Lcom/viber/voip/messages/orm/creator/Creator;)Lcom/viber/voip/messages/orm/entity/Entity;

    move-result-object v2

    check-cast v2, Lcom/viber/voip/contacts/b/b/e;

    .line 69
    invoke-virtual {v1}, Lcom/viber/voip/contacts/b/b/k;->getId()J

    move-result-wide v9

    const-wide/16 v11, 0x0

    cmp-long v3, v9, v11

    if-eqz v3, :cond_0

    .line 70
    invoke-virtual {v0, v1}, Lcom/viber/voip/calls/entities/impl/AggregatedCallEntityImpl;->a(Lcom/viber/voip/contacts/b/b/k;)V

    .line 72
    :cond_0
    invoke-virtual {v2}, Lcom/viber/voip/contacts/b/b/e;->getId()J

    move-result-wide v9

    const-wide/16 v11, 0x0

    cmp-long v1, v9, v11

    if-eqz v1, :cond_1

    .line 73
    invoke-virtual {v2, v8}, Lcom/viber/voip/contacts/b/b/e;->a(Ljava/util/TreeSet;)V

    .line 74
    invoke-virtual {v0, v2}, Lcom/viber/voip/calls/entities/impl/AggregatedCallEntityImpl;->a(Lcom/viber/voip/contacts/b/b/e;)V

    .line 78
    :cond_1
    :goto_0
    iget v1, p0, Lcom/viber/voip/contacts/b/a/a;->c:I

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 79
    iget v1, p0, Lcom/viber/voip/contacts/b/a/a;->e:I

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 81
    invoke-virtual {v0}, Lcom/viber/voip/calls/entities/impl/AggregatedCallEntityImpl;->c()Lcom/viber/voip/contacts/b/b;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/viber/voip/calls/entities/impl/AggregatedCallEntityImpl;->c()Lcom/viber/voip/contacts/b/b;

    move-result-object v1

    invoke-interface {v1}, Lcom/viber/voip/contacts/b/b;->getId()J

    move-result-wide v11

    cmp-long v1, v11, v9

    if-nez v1, :cond_2

    .line 82
    sget-object v1, Lcom/viber/voip/contacts/b/b/a/o;->a:Lcom/viber/voip/messages/orm/creator/CreatorHelper;

    invoke-virtual {p0, p1, v1}, Lcom/viber/voip/contacts/b/a/a;->createInstancesInternal(Landroid/database/Cursor;Lcom/viber/voip/messages/orm/creator/Creator;)Lcom/viber/voip/messages/orm/entity/Entity;

    move-result-object v1

    check-cast v1, Lcom/viber/voip/contacts/b/b/a/o;

    .line 83
    invoke-virtual {v1}, Lcom/viber/voip/contacts/b/b/a/o;->getId()J

    move-result-wide v9

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_2

    .line 84
    invoke-virtual {v8, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 85
    invoke-virtual {v0}, Lcom/viber/voip/calls/entities/impl/AggregatedCallEntityImpl;->b()Lcom/viber/voip/contacts/b/f;

    move-result-object v9

    if-eqz v9, :cond_2

    invoke-virtual {v1}, Lcom/viber/voip/contacts/b/b/a/o;->a()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0}, Lcom/viber/voip/calls/entities/impl/AggregatedCallEntityImpl;->b()Lcom/viber/voip/contacts/b/f;

    move-result-object v10

    invoke-interface {v10}, Lcom/viber/voip/contacts/b/f;->b()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 87
    invoke-virtual {v0, v1}, Lcom/viber/voip/calls/entities/impl/AggregatedCallEntityImpl;->a(Lcom/viber/voip/contacts/b/b/a/o;)V

    .line 91
    :cond_2
    cmp-long v1, v2, v4

    if-eqz v1, :cond_5

    .line 93
    sget-object v1, Lcom/viber/voip/contacts/b/a/a;->a:Lcom/viber/voip/calls/entities/impl/b;

    invoke-virtual {p0, p1, v1}, Lcom/viber/voip/contacts/b/a/a;->createInstancesInternal(Landroid/database/Cursor;Lcom/viber/voip/messages/orm/creator/Creator;)Lcom/viber/voip/messages/orm/entity/Entity;

    move-result-object v1

    check-cast v1, Lcom/viber/voip/calls/entities/CallEntity;

    invoke-virtual {v0, v1}, Lcom/viber/voip/calls/entities/impl/AggregatedCallEntityImpl;->a(Lcom/viber/voip/calls/entities/CallEntity;)V

    move-wide v1, v2

    .line 95
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/viber/voip/contacts/b/a/a;->d:I

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v3

    cmp-long v3, v6, v3

    if-eqz v3, :cond_4

    .line 96
    :cond_3
    monitor-exit p0

    return-object v0

    .line 61
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_4
    move-wide v4, v1

    goto :goto_0

    :cond_5
    move-wide v1, v4

    goto :goto_1
.end method

.method public getAggregateField()I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lcom/viber/voip/contacts/b/a/a;->d:I

    return v0
.end method
