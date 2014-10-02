.class public Lcom/viber/voip/messages/orm/manager/EntityManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Lcom/viber/voip/messages/orm/entity/Entity;",
        ">;"
    }
.end annotation


# static fields
.field public static final PROJECTIONS_COUNT:[Ljava/lang/String;


# instance fields
.field private foundPositions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/viber/voip/messages/orm/manager/EntityManager$ValueFinder;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field protected mContext:Landroid/content/Context;

.field protected mCountRequest:Z

.field protected mCreator:Lcom/viber/voip/messages/orm/creator/Creator;

.field private mDataCursor:Landroid/database/Cursor;

.field protected mPositions:[I

.field private position:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 34
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "COUNT(*)"

    aput-object v2, v0, v1

    sput-object v0, Lcom/viber/voip/messages/orm/manager/EntityManager;->PROJECTIONS_COUNT:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/viber/voip/messages/orm/creator/Creator;)V
    .locals 1
    .parameter

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/messages/orm/manager/EntityManager;->foundPositions:Ljava/util/Map;

    .line 61
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/orm/manager/EntityManager;->mContext:Landroid/content/Context;

    .line 62
    iput-object p1, p0, Lcom/viber/voip/messages/orm/manager/EntityManager;->mCreator:Lcom/viber/voip/messages/orm/creator/Creator;

    .line 63
    return-void
.end method

.method public constructor <init>(Lcom/viber/voip/messages/orm/creator/Creator;Landroid/database/Cursor;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/messages/orm/manager/EntityManager;->foundPositions:Ljava/util/Map;

    .line 51
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/orm/manager/EntityManager;->mContext:Landroid/content/Context;

    .line 52
    iput-object p1, p0, Lcom/viber/voip/messages/orm/manager/EntityManager;->mCreator:Lcom/viber/voip/messages/orm/creator/Creator;

    .line 53
    invoke-virtual {p0, p2}, Lcom/viber/voip/messages/orm/manager/EntityManager;->setDataCursor(Landroid/database/Cursor;)V

    .line 54
    return-void
.end method

.method static synthetic access$100(Lcom/viber/voip/messages/orm/manager/EntityManager;)Landroid/database/Cursor;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/viber/voip/messages/orm/manager/EntityManager;->mDataCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method private declared-synchronized checkPositions(Landroid/database/Cursor;)V
    .locals 10
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 116
    monitor-enter p0

    const-wide/16 v1, -0x1

    .line 117
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    new-array v6, v3, [I

    .line 119
    iget-object v3, p0, Lcom/viber/voip/messages/orm/manager/EntityManager;->mCreator:Lcom/viber/voip/messages/orm/creator/Creator;

    invoke-virtual {v3}, Lcom/viber/voip/messages/orm/creator/Creator;->getAggregateField()I

    move-result v7

    .line 120
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    move-wide v8, v1

    move-wide v2, v8

    move v1, v0

    .line 122
    :goto_0
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 123
    cmp-long v0, v4, v2

    if-eqz v0, :cond_2

    .line 124
    add-int/lit8 v0, v1, 0x1

    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v2

    aput v2, v6, v1

    .line 127
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 130
    :cond_0
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/viber/voip/messages/orm/manager/EntityManager;->mPositions:[I

    .line 131
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/viber/voip/messages/orm/manager/EntityManager;->mPositions:[I

    const/4 v3, 0x0

    invoke-static {v6, v1, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    monitor-exit p0

    return-void

    .line 116
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    move v1, v0

    move-wide v2, v4

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public static varargs delete(Lcom/viber/voip/messages/orm/creator/Creator;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 236
    invoke-static {}, Lcom/viber/voip/messages/orm/manager/EntityManager;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0}, Lcom/viber/voip/messages/orm/creator/Creator;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static delete(Lcom/viber/voip/messages/orm/entity/Entity;Lcom/viber/voip/messages/orm/creator/Creator;)I
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 223
    invoke-interface {p0}, Lcom/viber/voip/messages/orm/entity/Entity;->getId()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 224
    invoke-interface {p0}, Lcom/viber/voip/messages/orm/entity/Entity;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 225
    invoke-static {}, Lcom/viber/voip/messages/orm/manager/EntityManager;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/creator/Creator;->getContentUri()Landroid/net/Uri;

    move-result-object v3

    const-string/jumbo v4, "_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    aput-object v1, v5, v0

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 228
    :cond_0
    return v0
.end method

.method private static getContentResolver()Landroid/content/ContentResolver;
    .locals 1

    .prologue
    .line 302
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method protected static log(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 162
    return-void
.end method

.method public static save(Lcom/viber/voip/messages/orm/entity/Entity;Lcom/viber/voip/messages/orm/creator/Creator;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 182
    invoke-static {}, Lcom/viber/voip/messages/orm/manager/EntityManager;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/creator/Creator;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, p0}, Lcom/viber/voip/messages/orm/creator/Creator;->getContentValues(Lcom/viber/voip/messages/orm/entity/Entity;)Landroid/content/ContentValues;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 186
    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 187
    :goto_0
    if-eqz v0, :cond_0

    .line 188
    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 189
    invoke-interface {p0, v1, v2}, Lcom/viber/voip/messages/orm/entity/Entity;->setId(J)Lcom/viber/voip/messages/orm/entity/Entity;

    .line 191
    :cond_0
    return v0

    .line 186
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static update(Lcom/viber/voip/messages/orm/entity/Entity;Lcom/viber/voip/messages/orm/creator/Creator;)I
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 199
    invoke-interface {p0}, Lcom/viber/voip/messages/orm/entity/Entity;->getId()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 200
    invoke-interface {p0}, Lcom/viber/voip/messages/orm/entity/Entity;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 201
    invoke-virtual {p1, p0}, Lcom/viber/voip/messages/orm/creator/Creator;->getContentValues(Lcom/viber/voip/messages/orm/entity/Entity;)Landroid/content/ContentValues;

    move-result-object v2

    .line 202
    invoke-static {}, Lcom/viber/voip/messages/orm/manager/EntityManager;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/creator/Creator;->getContentUri()Landroid/net/Uri;

    move-result-object v4

    const-string/jumbo v5, "_id=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    aput-object v1, v6, v0

    invoke-virtual {v3, v4, v2, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 205
    :cond_0
    return v0
.end method

.method public static varargs update(Lcom/viber/voip/messages/orm/entity/Entity;Lcom/viber/voip/messages/orm/creator/Creator;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 213
    invoke-virtual {p1, p0}, Lcom/viber/voip/messages/orm/creator/Creator;->getContentValues(Lcom/viber/voip/messages/orm/entity/Entity;)Landroid/content/ContentValues;

    move-result-object v0

    .line 214
    invoke-static {}, Lcom/viber/voip/messages/orm/manager/EntityManager;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/creator/Creator;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, p2, p3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public addFinder(Lcom/viber/voip/messages/orm/manager/EntityManager$ValueFinder;)V
    .locals 2
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/viber/voip/messages/orm/manager/EntityManager;->foundPositions:Ljava/util/Map;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    return-void
.end method

.method public checkFinder(Landroid/database/Cursor;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 135
    iget-object v0, p0, Lcom/viber/voip/messages/orm/manager/EntityManager;->foundPositions:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 136
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/viber/voip/messages/orm/manager/EntityManager$ValueFinder;

    invoke-interface {v1, p1}, Lcom/viber/voip/messages/orm/manager/EntityManager$ValueFinder;->compare(Landroid/database/Cursor;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 137
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 140
    :cond_1
    return-void
.end method

.method public declared-synchronized closeCursor()Z
    .locals 1

    .prologue
    .line 286
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/viber/voip/messages/orm/manager/EntityManager;->isCursorOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/viber/voip/messages/orm/manager/EntityManager;->mDataCursor:Landroid/database/Cursor;

    invoke-static {v0}, Lcom/viber/voip/util/al;->a(Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 288
    const/4 v0, 0x1

    .line 290
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 286
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public delete(Lcom/viber/voip/messages/orm/entity/Entity;)I
    .locals 1
    .parameter

    .prologue
    .line 219
    iget-object v0, p0, Lcom/viber/voip/messages/orm/manager/EntityManager;->mCreator:Lcom/viber/voip/messages/orm/creator/Creator;

    invoke-static {p1, v0}, Lcom/viber/voip/messages/orm/manager/EntityManager;->delete(Lcom/viber/voip/messages/orm/entity/Entity;Lcom/viber/voip/messages/orm/creator/Creator;)I

    move-result v0

    return v0
.end method

.method public varargs delete(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 232
    iget-object v0, p0, Lcom/viber/voip/messages/orm/manager/EntityManager;->mCreator:Lcom/viber/voip/messages/orm/creator/Creator;

    invoke-static {v0, p1, p2}, Lcom/viber/voip/messages/orm/manager/EntityManager;->delete(Lcom/viber/voip/messages/orm/creator/Creator;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public varargs fillCursor(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lcom/viber/voip/messages/orm/manager/EntityManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/orm/manager/EntityManager;->mCreator:Lcom/viber/voip/messages/orm/creator/Creator;

    invoke-virtual {v1}, Lcom/viber/voip/messages/orm/creator/Creator;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/messages/orm/manager/EntityManager;->mCreator:Lcom/viber/voip/messages/orm/creator/Creator;

    invoke-virtual {v2}, Lcom/viber/voip/messages/orm/creator/Creator;->getProjections()[Ljava/lang/String;

    move-result-object v2

    move-object v3, p2

    move-object v4, p4

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 76
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 78
    :cond_0
    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/orm/manager/EntityManager;->processMessagesReplyInternal(Landroid/database/Cursor;)V

    .line 79
    return-void
.end method

.method public varargs fillCursor(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/viber/voip/messages/orm/manager/EntityManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/orm/manager/EntityManager;->mCreator:Lcom/viber/voip/messages/orm/creator/Creator;

    invoke-virtual {v1}, Lcom/viber/voip/messages/orm/creator/Creator;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/messages/orm/manager/EntityManager;->mCreator:Lcom/viber/voip/messages/orm/creator/Creator;

    invoke-virtual {v2}, Lcom/viber/voip/messages/orm/creator/Creator;->getProjections()[Ljava/lang/String;

    move-result-object v2

    move-object v3, p2

    move-object v4, p3

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 68
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 70
    :cond_0
    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/orm/manager/EntityManager;->processMessagesReplyInternal(Landroid/database/Cursor;)V

    .line 71
    return-void
.end method

.method public varargs fullUpdate(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 306
    iget-object v0, p0, Lcom/viber/voip/messages/orm/manager/EntityManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/orm/manager/EntityManager;->mCreator:Lcom/viber/voip/messages/orm/creator/Creator;

    invoke-virtual {v1}, Lcom/viber/voip/messages/orm/creator/Creator;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2, p3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lcom/viber/voip/messages/orm/manager/EntityManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public declared-synchronized getCount()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 165
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/viber/voip/messages/orm/manager/EntityManager;->isCursorOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/viber/voip/messages/orm/manager/EntityManager;->mDataCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 166
    iget-boolean v0, p0, Lcom/viber/voip/messages/orm/manager/EntityManager;->mCountRequest:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/viber/voip/messages/orm/manager/EntityManager;->mDataCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 167
    iget-object v0, p0, Lcom/viber/voip/messages/orm/manager/EntityManager;->mDataCursor:Landroid/database/Cursor;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 174
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 168
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/viber/voip/messages/orm/manager/EntityManager;->mPositions:[I

    if-eqz v0, :cond_2

    .line 169
    iget-object v0, p0, Lcom/viber/voip/messages/orm/manager/EntityManager;->mPositions:[I

    array-length v0, v0

    goto :goto_0

    .line 171
    :cond_2
    iget-object v0, p0, Lcom/viber/voip/messages/orm/manager/EntityManager;->mDataCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 165
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDataCursor()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 82
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/messages/orm/manager/EntityManager;->mDataCursor:Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getEntity(I)Lcom/viber/voip/messages/orm/entity/Entity;
    .locals 1
    .parameter

    .prologue
    .line 143
    iget-object v0, p0, Lcom/viber/voip/messages/orm/manager/EntityManager;->mCreator:Lcom/viber/voip/messages/orm/creator/Creator;

    invoke-virtual {p0, p1, v0}, Lcom/viber/voip/messages/orm/manager/EntityManager;->getEntity(ILcom/viber/voip/messages/orm/creator/Creator;)Lcom/viber/voip/messages/orm/entity/Entity;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getEntity(ILcom/viber/voip/messages/orm/creator/Creator;)Lcom/viber/voip/messages/orm/entity/Entity;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 147
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/viber/voip/messages/orm/manager/EntityManager;->isPositionAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 148
    iget-object v0, p0, Lcom/viber/voip/messages/orm/manager/EntityManager;->mPositions:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/orm/manager/EntityManager;->mPositions:[I

    aget p1, v0, p1

    :cond_0
    iput p1, p0, Lcom/viber/voip/messages/orm/manager/EntityManager;->position:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    :try_start_1
    iget-object v0, p0, Lcom/viber/voip/messages/orm/manager/EntityManager;->mDataCursor:Landroid/database/Cursor;

    iget v1, p0, Lcom/viber/voip/messages/orm/manager/EntityManager;->position:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 151
    iget-object v0, p0, Lcom/viber/voip/messages/orm/manager/EntityManager;->mDataCursor:Landroid/database/Cursor;

    invoke-virtual {p2, v0}, Lcom/viber/voip/messages/orm/creator/Creator;->createInstance(Landroid/database/Cursor;)Lcom/viber/voip/messages/orm/entity/Entity;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .line 156
    :goto_0
    monitor-exit p0

    return-object v0

    .line 152
    :catch_0
    move-exception v0

    .line 156
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 147
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getInt(II)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 241
    iget-object v0, p0, Lcom/viber/voip/messages/orm/manager/EntityManager;->mPositions:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/orm/manager/EntityManager;->mPositions:[I

    aget p1, v0, p1

    .line 242
    :cond_0
    invoke-virtual {p0, p1}, Lcom/viber/voip/messages/orm/manager/EntityManager;->isPositionAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 243
    iget-object v0, p0, Lcom/viber/voip/messages/orm/manager/EntityManager;->mDataCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 244
    iget-object v0, p0, Lcom/viber/voip/messages/orm/manager/EntityManager;->mDataCursor:Landroid/database/Cursor;

    invoke-interface {v0, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 246
    :goto_0
    return v0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public declared-synchronized getLong(I)J
    .locals 2
    .parameter

    .prologue
    .line 279
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/viber/voip/messages/orm/manager/EntityManager;->isCursorOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/viber/voip/messages/orm/manager/EntityManager;->mDataCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 282
    :goto_0
    monitor-exit p0

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0

    .line 279
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getLong(II)J
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 259
    iget-object v0, p0, Lcom/viber/voip/messages/orm/manager/EntityManager;->mPositions:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/orm/manager/EntityManager;->mPositions:[I

    aget p1, v0, p1

    .line 260
    :cond_0
    invoke-virtual {p0, p1}, Lcom/viber/voip/messages/orm/manager/EntityManager;->isPositionAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 261
    iget-object v0, p0, Lcom/viber/voip/messages/orm/manager/EntityManager;->mDataCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 262
    iget-object v0, p0, Lcom/viber/voip/messages/orm/manager/EntityManager;->mDataCursor:Landroid/database/Cursor;

    invoke-interface {v0, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 264
    :goto_0
    return-wide v0

    :cond_1
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public getLong(ILjava/lang/String;)J
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 268
    invoke-virtual {p0, p1}, Lcom/viber/voip/messages/orm/manager/EntityManager;->isPositionAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/viber/voip/messages/orm/manager/EntityManager;->mDataCursor:Landroid/database/Cursor;

    invoke-interface {v0, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 270
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 271
    iget-object v1, p0, Lcom/viber/voip/messages/orm/manager/EntityManager;->mDataCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 272
    iget-object v1, p0, Lcom/viber/voip/messages/orm/manager/EntityManager;->mDataCursor:Landroid/database/Cursor;

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 275
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public declared-synchronized getPosition()I
    .locals 1

    .prologue
    .line 314
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/viber/voip/messages/orm/manager/EntityManager;->isCursorOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/orm/manager/EntityManager;->mDataCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/viber/voip/messages/orm/manager/EntityManager;->mDataCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getPosition()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 317
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0

    .line 314
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getPositionsSize()I
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/viber/voip/messages/orm/manager/EntityManager;->mPositions:[I

    array-length v0, v0

    return v0
.end method

.method public getString(II)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 250
    iget-object v0, p0, Lcom/viber/voip/messages/orm/manager/EntityManager;->mPositions:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/orm/manager/EntityManager;->mPositions:[I

    aget p1, v0, p1

    .line 251
    :cond_0
    invoke-virtual {p0, p1}, Lcom/viber/voip/messages/orm/manager/EntityManager;->isPositionAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 252
    iget-object v0, p0, Lcom/viber/voip/messages/orm/manager/EntityManager;->mDataCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 253
    iget-object v0, p0, Lcom/viber/voip/messages/orm/manager/EntityManager;->mDataCursor:Landroid/database/Cursor;

    invoke-interface {v0, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 255
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized isCursorOpen()Z
    .locals 1

    .prologue
    .line 86
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/messages/orm/manager/EntityManager;->mDataCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/orm/manager/EntityManager;->mDataCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized isPositionAvailable(I)Z
    .locals 1
    .parameter

    .prologue
    .line 90
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/viber/voip/messages/orm/manager/EntityManager;->isCursorOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/orm/manager/EntityManager;->mDataCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/viber/voip/messages/orm/entity/Entity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 322
    new-instance v0, Lcom/viber/voip/messages/orm/manager/EntityManager$EntityIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/viber/voip/messages/orm/manager/EntityManager$EntityIterator;-><init>(Lcom/viber/voip/messages/orm/manager/EntityManager;Lcom/viber/voip/messages/orm/manager/EntityManager$1;)V

    return-object v0
.end method

.method public declared-synchronized moveToFirst()Z
    .locals 1

    .prologue
    .line 294
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/messages/orm/manager/EntityManager;->mDataCursor:Landroid/database/Cursor;

    invoke-static {v0}, Lcom/viber/voip/util/al;->b(Landroid/database/Cursor;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/orm/manager/EntityManager;->mDataCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized moveToNext()Z
    .locals 1

    .prologue
    .line 298
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/messages/orm/manager/EntityManager;->mDataCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/orm/manager/EntityManager;->mDataCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized processMessagesReplyInternal(Landroid/database/Cursor;)V
    .locals 1
    .parameter

    .prologue
    .line 94
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/viber/voip/util/al;->b(Landroid/database/Cursor;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    :goto_0
    monitor-exit p0

    return-void

    .line 97
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/viber/voip/messages/orm/manager/EntityManager;->closeCursor()Z

    .line 98
    invoke-virtual {p0, p1}, Lcom/viber/voip/messages/orm/manager/EntityManager;->setDataCursor(Landroid/database/Cursor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 94
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public save(Lcom/viber/voip/messages/orm/entity/Entity;)Z
    .locals 1
    .parameter

    .prologue
    .line 178
    iget-object v0, p0, Lcom/viber/voip/messages/orm/manager/EntityManager;->mCreator:Lcom/viber/voip/messages/orm/creator/Creator;

    invoke-static {p1, v0}, Lcom/viber/voip/messages/orm/manager/EntityManager;->save(Lcom/viber/voip/messages/orm/entity/Entity;Lcom/viber/voip/messages/orm/creator/Creator;)Z

    move-result v0

    return v0
.end method

.method protected declared-synchronized setDataCursor(Landroid/database/Cursor;)V
    .locals 3
    .parameter

    .prologue
    .line 102
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 103
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 104
    iget-object v0, p0, Lcom/viber/voip/messages/orm/manager/EntityManager;->mCreator:Lcom/viber/voip/messages/orm/creator/Creator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/orm/manager/EntityManager;->mCreator:Lcom/viber/voip/messages/orm/creator/Creator;

    invoke-virtual {v0}, Lcom/viber/voip/messages/orm/creator/Creator;->getAggregateField()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 106
    :try_start_1
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/orm/manager/EntityManager;->checkPositions(Landroid/database/Cursor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    .line 112
    :cond_0
    :goto_0
    :try_start_2
    iput-object p1, p0, Lcom/viber/voip/messages/orm/manager/EntityManager;->mDataCursor:Landroid/database/Cursor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 113
    monitor-exit p0

    return-void

    .line 107
    :catch_0
    move-exception v0

    .line 108
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "EXCEPTION: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/messages/orm/manager/EntityManager;->log(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 102
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public update(Lcom/viber/voip/messages/orm/entity/Entity;)I
    .locals 1
    .parameter

    .prologue
    .line 195
    iget-object v0, p0, Lcom/viber/voip/messages/orm/manager/EntityManager;->mCreator:Lcom/viber/voip/messages/orm/creator/Creator;

    invoke-static {p1, v0}, Lcom/viber/voip/messages/orm/manager/EntityManager;->update(Lcom/viber/voip/messages/orm/entity/Entity;Lcom/viber/voip/messages/orm/creator/Creator;)I

    move-result v0

    return v0
.end method

.method public varargs update(Lcom/viber/voip/messages/orm/entity/Entity;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 209
    iget-object v0, p0, Lcom/viber/voip/messages/orm/manager/EntityManager;->mCreator:Lcom/viber/voip/messages/orm/creator/Creator;

    invoke-static {p1, v0, p2, p3}, Lcom/viber/voip/messages/orm/manager/EntityManager;->update(Lcom/viber/voip/messages/orm/entity/Entity;Lcom/viber/voip/messages/orm/creator/Creator;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method
