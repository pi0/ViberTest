.class public abstract Lcom/viber/voip/messages/controller/c/ar;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/viber/voip/messages/controller/c/ar;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/messages/controller/c/ar;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(JLjava/lang/String;Landroid/content/ContentValues;)I
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 84
    :try_start_0
    invoke-virtual {p0}, Lcom/viber/voip/messages/controller/c/ar;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string/jumbo v2, "_id=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, p3, p4, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 88
    :goto_0
    return v0

    .line 85
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected a(Ljava/lang/String;Landroid/content/ContentValues;)J
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 75
    :try_start_0
    invoke-virtual {p0}, Lcom/viber/voip/messages/controller/c/ar;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 79
    :goto_0
    return-wide v0

    .line 76
    :catch_0
    move-exception v0

    .line 79
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method protected a(Landroid/database/Cursor;Ljava/util/List;)Ljava/util/List;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Ljava/util/List",
            "<",
            "Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;",
            ">;"
        }
    .end annotation

    .prologue
    .line 275
    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 277
    :cond_0
    new-instance v0, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;

    invoke-direct {v0}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;-><init>()V

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityHelper;->createEntity(Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;Landroid/database/Cursor;I)Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 278
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 280
    :cond_1
    return-object p2
.end method

.method protected a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;",
            ">;"
        }
    .end annotation

    .prologue
    .line 98
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/viber/voip/messages/controller/c/ar;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 102
    .line 103
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 105
    :try_start_0
    invoke-virtual {p0}, Lcom/viber/voip/messages/controller/c/ar;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string/jumbo v1, "messages"

    sget-object v2, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityHelper;->PROJECTIONS:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p4

    move-object v7, p3

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 106
    if-eqz v1, :cond_1

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 108
    :cond_0
    new-instance v0, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    invoke-direct {v0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;-><init>()V

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityHelper;->createEntity(Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;Landroid/database/Cursor;I)Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    if-nez v0, :cond_0

    .line 112
    :cond_1
    invoke-virtual {p0, v1}, Lcom/viber/voip/messages/controller/c/ar;->a(Landroid/database/Cursor;)V

    .line 114
    return-object v10

    .line 112
    :catchall_0
    move-exception v0

    move-object v1, v9

    :goto_0
    invoke-virtual {p0, v1}, Lcom/viber/voip/messages/controller/c/ar;->a(Landroid/database/Cursor;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method protected a(Landroid/database/Cursor;)V
    .locals 0
    .parameter

    .prologue
    .line 284
    invoke-static {p1}, Lcom/viber/voip/util/al;->a(Landroid/database/Cursor;)V

    .line 285
    return-void
.end method

.method public a(Lcom/viber/voip/messages/orm/entity/BaseEntity;)Z
    .locals 4
    .parameter

    .prologue
    .line 47
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Can update entity, entity is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_0
    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/BaseEntity;->getContentValues()Landroid/content/ContentValues;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Can update entity, content values is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_1
    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/BaseEntity;->getTable()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Can update entity, table is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_2
    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/BaseEntity;->getTable()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/BaseEntity;->getContentValues()Landroid/content/ContentValues;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/viber/voip/messages/controller/c/ar;->a(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 52
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_3

    .line 53
    invoke-virtual {p1, v0, v1}, Lcom/viber/voip/messages/orm/entity/BaseEntity;->setId(J)Lcom/viber/voip/messages/orm/entity/Entity;

    .line 54
    const/4 v0, 0x1

    .line 56
    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected b(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x0

    .line 122
    .line 125
    :try_start_0
    invoke-virtual {p0}, Lcom/viber/voip/messages/controller/c/ar;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string/jumbo v1, "messages"

    sget-object v2, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityHelper;->PROJECTIONS:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v8, "1"

    move-object v3, p1

    move-object v4, p2

    move-object v7, p3

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 126
    if-eqz v1, :cond_0

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    invoke-direct {v0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;-><init>()V

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityHelper;->createEntity(Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;Landroid/database/Cursor;I)Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 129
    :goto_0
    invoke-virtual {p0, v1}, Lcom/viber/voip/messages/controller/c/ar;->a(Landroid/database/Cursor;)V

    .line 131
    return-object v0

    :cond_0
    move-object v0, v9

    .line 126
    goto :goto_0

    .line 129
    :catchall_0
    move-exception v0

    :goto_1
    invoke-virtual {p0, v9}, Lcom/viber/voip/messages/controller/c/ar;->a(Landroid/database/Cursor;)V

    throw v0

    :catchall_1
    move-exception v0

    move-object v9, v1

    goto :goto_1
.end method

.method protected b(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;",
            ">;"
        }
    .end annotation

    .prologue
    .line 94
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/viber/voip/messages/controller/c/ar;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected b(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityImpl;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 143
    .line 144
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 146
    :try_start_0
    invoke-virtual {p0}, Lcom/viber/voip/messages/controller/c/ar;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string/jumbo v1, "messages_calls"

    sget-object v2, Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityHelper;->PROJECTIONS:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p4

    move-object v7, p3

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 147
    if-eqz v1, :cond_1

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 149
    :cond_0
    new-instance v0, Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityImpl;

    invoke-direct {v0}, Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityImpl;-><init>()V

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityHelper;->createEntity(Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityImpl;Landroid/database/Cursor;I)Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityImpl;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    if-nez v0, :cond_0

    .line 153
    :cond_1
    invoke-virtual {p0, v1}, Lcom/viber/voip/messages/controller/c/ar;->a(Landroid/database/Cursor;)V

    .line 155
    return-object v10

    .line 153
    :catchall_0
    move-exception v0

    move-object v1, v9

    :goto_0
    invoke-virtual {p0, v1}, Lcom/viber/voip/messages/controller/c/ar;->a(Landroid/database/Cursor;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method public b(Lcom/viber/voip/messages/orm/entity/BaseEntity;)Z
    .locals 4
    .parameter

    .prologue
    .line 61
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Can update entity, entity is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_0
    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/BaseEntity;->getContentValues()Landroid/content/ContentValues;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Can update entity, content values is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_1
    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/BaseEntity;->getTable()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Can update entity, table is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_2
    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/BaseEntity;->getId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Can update entity, invalid entity id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/BaseEntity;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_3
    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/BaseEntity;->getId()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/BaseEntity;->getTable()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/BaseEntity;->getContentValues()Landroid/content/ContentValues;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/viber/voip/messages/controller/c/ar;->a(JLjava/lang/String;Landroid/content/ContentValues;)I

    move-result v0

    if-lez v0, :cond_4

    .line 67
    const/4 v0, 0x1

    .line 69
    :goto_0
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .prologue
    .line 43
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/provider/messages/b/g;->a(Landroid/content/Context;)Landroid/database/sqlite/SQLiteOpenHelper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method protected c(Ljava/lang/String;[Ljava/lang/String;)Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 118
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/viber/voip/messages/controller/c/ar;->b(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    move-result-object v0

    return-object v0
.end method

.method protected c(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityImpl;",
            ">;"
        }
    .end annotation

    .prologue
    .line 139
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/viber/voip/messages/controller/c/ar;->b(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected c(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/viber/voip/messages/orm/entity/impl/ParticipantEntityImpl;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 227
    .line 228
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 230
    :try_start_0
    invoke-virtual {p0}, Lcom/viber/voip/messages/controller/c/ar;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string/jumbo v1, "participants"

    sget-object v2, Lcom/viber/voip/messages/orm/entity/impl/ParticipantEntityHelper;->PROJECTIONS:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p4

    move-object v7, p3

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 231
    if-eqz v1, :cond_1

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 233
    :cond_0
    new-instance v0, Lcom/viber/voip/messages/orm/entity/impl/ParticipantEntityImpl;

    invoke-direct {v0}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantEntityImpl;-><init>()V

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantEntityHelper;->createEntity(Lcom/viber/voip/messages/orm/entity/impl/ParticipantEntityImpl;Landroid/database/Cursor;I)Lcom/viber/voip/messages/orm/entity/impl/ParticipantEntityImpl;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    if-nez v0, :cond_0

    .line 237
    :cond_1
    invoke-virtual {p0, v1}, Lcom/viber/voip/messages/controller/c/ar;->a(Landroid/database/Cursor;)V

    .line 239
    return-object v10

    .line 237
    :catchall_0
    move-exception v0

    move-object v1, v9

    :goto_0
    invoke-virtual {p0, v1}, Lcom/viber/voip/messages/controller/c/ar;->a(Landroid/database/Cursor;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method protected d(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityImpl;",
            ">;"
        }
    .end annotation

    .prologue
    .line 135
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/viber/voip/messages/controller/c/ar;->c(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected d(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 11
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 182
    .line 183
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 185
    :try_start_0
    invoke-virtual {p0}, Lcom/viber/voip/messages/controller/c/ar;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string/jumbo v1, "conversations"

    sget-object v2, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityHelper;->PROJECTIONS:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v3, p1

    move-object v4, p2

    move-object v7, p3

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 187
    if-eqz v1, :cond_1

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 189
    :cond_0
    new-instance v0, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;

    invoke-direct {v0}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;-><init>()V

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityHelper;->createEntity(Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;Landroid/database/Cursor;I)Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    if-nez v0, :cond_0

    .line 193
    :cond_1
    invoke-virtual {p0, v1}, Lcom/viber/voip/messages/controller/c/ar;->a(Landroid/database/Cursor;)V

    .line 195
    return-object v10

    .line 193
    :catchall_0
    move-exception v0

    move-object v1, v9

    :goto_0
    invoke-virtual {p0, v1}, Lcom/viber/voip/messages/controller/c/ar;->a(Landroid/database/Cursor;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method protected e(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x0

    .line 203
    .line 206
    :try_start_0
    invoke-virtual {p0}, Lcom/viber/voip/messages/controller/c/ar;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string/jumbo v1, "conversations"

    sget-object v2, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityHelper;->PROJECTIONS:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v8, "1"

    move-object v3, p1

    move-object v4, p2

    move-object v7, p3

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 208
    if-eqz v1, :cond_0

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;

    invoke-direct {v0}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;-><init>()V

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityHelper;->createEntity(Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;Landroid/database/Cursor;I)Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 211
    :goto_0
    invoke-virtual {p0, v1}, Lcom/viber/voip/messages/controller/c/ar;->a(Landroid/database/Cursor;)V

    .line 213
    return-object v0

    :cond_0
    move-object v0, v9

    .line 208
    goto :goto_0

    .line 211
    :catchall_0
    move-exception v0

    :goto_1
    invoke-virtual {p0, v9}, Lcom/viber/voip/messages/controller/c/ar;->a(Landroid/database/Cursor;)V

    throw v0

    :catchall_1
    move-exception v0

    move-object v9, v1

    goto :goto_1
.end method

.method protected e(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;",
            ">;"
        }
    .end annotation

    .prologue
    .line 178
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/viber/voip/messages/controller/c/ar;->d(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected f(Ljava/lang/String;[Ljava/lang/String;)Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 199
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/viber/voip/messages/controller/c/ar;->e(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;

    move-result-object v0

    return-object v0
.end method

.method protected f(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/viber/voip/messages/orm/entity/impl/ParticipantEntityImpl;",
            ">;"
        }
    .end annotation

    .prologue
    .line 223
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/viber/voip/messages/controller/c/ar;->c(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected g(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Lcom/viber/voip/messages/orm/entity/impl/ParticipantEntityImpl;
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x0

    .line 247
    .line 250
    :try_start_0
    invoke-virtual {p0}, Lcom/viber/voip/messages/controller/c/ar;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string/jumbo v1, "participants"

    sget-object v2, Lcom/viber/voip/messages/orm/entity/impl/ParticipantEntityHelper;->PROJECTIONS:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v8, "1"

    move-object v3, p1

    move-object v4, p2

    move-object v7, p3

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 251
    if-eqz v1, :cond_0

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/viber/voip/messages/orm/entity/impl/ParticipantEntityImpl;

    invoke-direct {v0}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantEntityImpl;-><init>()V

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantEntityHelper;->createEntity(Lcom/viber/voip/messages/orm/entity/impl/ParticipantEntityImpl;Landroid/database/Cursor;I)Lcom/viber/voip/messages/orm/entity/impl/ParticipantEntityImpl;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 254
    :goto_0
    invoke-virtual {p0, v1}, Lcom/viber/voip/messages/controller/c/ar;->a(Landroid/database/Cursor;)V

    .line 256
    return-object v0

    :cond_0
    move-object v0, v9

    .line 251
    goto :goto_0

    .line 254
    :catchall_0
    move-exception v0

    :goto_1
    invoke-virtual {p0, v9}, Lcom/viber/voip/messages/controller/c/ar;->a(Landroid/database/Cursor;)V

    throw v0

    :catchall_1
    move-exception v0

    move-object v9, v1

    goto :goto_1
.end method

.method protected g(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/viber/voip/messages/orm/entity/impl/ParticipantEntityImpl;",
            ">;"
        }
    .end annotation

    .prologue
    .line 219
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/viber/voip/messages/controller/c/ar;->f(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected h(Ljava/lang/String;[Ljava/lang/String;)Lcom/viber/voip/messages/orm/entity/impl/ParticipantEntityImpl;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 243
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/viber/voip/messages/controller/c/ar;->g(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Lcom/viber/voip/messages/orm/entity/impl/ParticipantEntityImpl;

    move-result-object v0

    return-object v0
.end method

.method protected h(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 11
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 262
    .line 263
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 265
    :try_start_0
    invoke-virtual {p0}, Lcom/viber/voip/messages/controller/c/ar;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string/jumbo v1, "participants_info"

    sget-object v2, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityHelper;->PROJECTIONS:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v3, p1

    move-object v4, p2

    move-object v7, p3

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 267
    :try_start_1
    invoke-virtual {p0, v1, v10}, Lcom/viber/voip/messages/controller/c/ar;->a(Landroid/database/Cursor;Ljava/util/List;)Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 269
    invoke-virtual {p0, v1}, Lcom/viber/voip/messages/controller/c/ar;->a(Landroid/database/Cursor;)V

    .line 271
    return-object v0

    .line 269
    :catchall_0
    move-exception v0

    move-object v1, v9

    :goto_0
    invoke-virtual {p0, v1}, Lcom/viber/voip/messages/controller/c/ar;->a(Landroid/database/Cursor;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method protected i(Ljava/lang/String;[Ljava/lang/String;)Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 288
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/viber/voip/messages/controller/c/ar;->i(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;

    move-result-object v0

    return-object v0
.end method

.method protected i(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x0

    .line 292
    .line 295
    :try_start_0
    invoke-virtual {p0}, Lcom/viber/voip/messages/controller/c/ar;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string/jumbo v1, "participants_info"

    sget-object v2, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityHelper;->PROJECTIONS:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v8, "1"

    move-object v3, p1

    move-object v4, p2

    move-object v7, p3

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 297
    if-eqz v1, :cond_0

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;

    invoke-direct {v0}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;-><init>()V

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityHelper;->createEntity(Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;Landroid/database/Cursor;I)Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 300
    :goto_0
    invoke-virtual {p0, v1}, Lcom/viber/voip/messages/controller/c/ar;->a(Landroid/database/Cursor;)V

    .line 302
    return-object v0

    :cond_0
    move-object v0, v9

    .line 297
    goto :goto_0

    .line 300
    :catchall_0
    move-exception v0

    :goto_1
    invoke-virtual {p0, v9}, Lcom/viber/voip/messages/controller/c/ar;->a(Landroid/database/Cursor;)V

    throw v0

    :catchall_1
    move-exception v0

    move-object v9, v1

    goto :goto_1
.end method

.method protected j(Ljava/lang/String;[Ljava/lang/String;)Lcom/viber/voip/messages/orm/entity/impl/PublicGroupMessageInfoEntityImpl;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 316
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/viber/voip/messages/controller/c/ar;->j(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Lcom/viber/voip/messages/orm/entity/impl/PublicGroupMessageInfoEntityImpl;

    move-result-object v0

    return-object v0
.end method

.method protected j(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Lcom/viber/voip/messages/orm/entity/impl/PublicGroupMessageInfoEntityImpl;
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x0

    .line 320
    .line 323
    :try_start_0
    invoke-virtual {p0}, Lcom/viber/voip/messages/controller/c/ar;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string/jumbo v1, "public_messages_extras"

    sget-object v2, Lcom/viber/voip/messages/orm/entity/impl/PublicMessageExtraEntityHelper;->PROJECTIONS:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v8, "1"

    move-object v3, p1

    move-object v4, p2

    move-object v7, p3

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 325
    if-eqz v1, :cond_0

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupMessageInfoEntityImpl;

    invoke-direct {v0}, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupMessageInfoEntityImpl;-><init>()V

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/viber/voip/messages/orm/entity/impl/PublicMessageExtraEntityHelper;->createEntity(Lcom/viber/voip/messages/orm/entity/impl/PublicGroupMessageInfoEntityImpl;Landroid/database/Cursor;I)Lcom/viber/voip/messages/orm/entity/impl/PublicGroupMessageInfoEntityImpl;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 328
    :goto_0
    invoke-virtual {p0, v1}, Lcom/viber/voip/messages/controller/c/ar;->a(Landroid/database/Cursor;)V

    .line 330
    return-object v0

    :cond_0
    move-object v0, v9

    .line 325
    goto :goto_0

    .line 328
    :catchall_0
    move-exception v0

    :goto_1
    invoke-virtual {p0, v9}, Lcom/viber/voip/messages/controller/c/ar;->a(Landroid/database/Cursor;)V

    throw v0

    :catchall_1
    move-exception v0

    move-object v9, v1

    goto :goto_1
.end method

.method protected k(Ljava/lang/String;[Ljava/lang/String;)Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 335
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/viber/voip/messages/controller/c/ar;->k(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;

    move-result-object v0

    return-object v0
.end method

.method protected k(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x0

    .line 339
    .line 342
    :try_start_0
    invoke-virtual {p0}, Lcom/viber/voip/messages/controller/c/ar;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string/jumbo v1, "group_conversations_extras"

    sget-object v2, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityHelper;->PROJECTIONS:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v8, "1"

    move-object v3, p1

    move-object v4, p2

    move-object v7, p3

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 344
    if-eqz v1, :cond_0

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;

    invoke-direct {v0}, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;-><init>()V

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityHelper;->createEntity(Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;Landroid/database/Cursor;I)Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 347
    :goto_0
    invoke-virtual {p0, v1}, Lcom/viber/voip/messages/controller/c/ar;->a(Landroid/database/Cursor;)V

    .line 349
    return-object v0

    :cond_0
    move-object v0, v9

    .line 344
    goto :goto_0

    .line 347
    :catchall_0
    move-exception v0

    :goto_1
    invoke-virtual {p0, v9}, Lcom/viber/voip/messages/controller/c/ar;->a(Landroid/database/Cursor;)V

    throw v0

    :catchall_1
    move-exception v0

    move-object v9, v1

    goto :goto_1
.end method

.method protected l(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 11
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 354
    .line 355
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 357
    :try_start_0
    invoke-virtual {p0}, Lcom/viber/voip/messages/controller/c/ar;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string/jumbo v1, "group_conversations_extras"

    sget-object v2, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityHelper;->PROJECTIONS:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 358
    if-eqz v1, :cond_1

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 360
    :cond_0
    new-instance v0, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;

    invoke-direct {v0}, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;-><init>()V

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityHelper;->createEntity(Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;Landroid/database/Cursor;I)Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 361
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    if-nez v0, :cond_0

    .line 364
    :cond_1
    invoke-virtual {p0, v1}, Lcom/viber/voip/messages/controller/c/ar;->a(Landroid/database/Cursor;)V

    .line 366
    return-object v10

    .line 364
    :catchall_0
    move-exception v0

    move-object v1, v9

    :goto_0
    invoke-virtual {p0, v1}, Lcom/viber/voip/messages/controller/c/ar;->a(Landroid/database/Cursor;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_0
.end method
