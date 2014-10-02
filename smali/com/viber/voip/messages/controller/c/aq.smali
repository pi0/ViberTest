.class public Lcom/viber/voip/messages/controller/c/aq;
.super Lcom/viber/voip/messages/controller/c/ar;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcom/viber/voip/messages/controller/c/aq;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/messages/controller/c/aq;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/viber/voip/messages/controller/c/ar;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 598
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 599
    invoke-virtual {v0, p2, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    invoke-virtual {p0}, Lcom/viber/voip/messages/controller/c/aq;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "=?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p3, v3, v4

    invoke-virtual {v1, p1, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 601
    return-void
.end method

.method private a(ZLandroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 329
    if-eqz p2, :cond_2

    if-eqz p1, :cond_0

    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    if-nez p1, :cond_2

    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 330
    :cond_1
    const/4 v0, 0x1

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p3, p4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 334
    :goto_0
    return-void

    .line 332
    :cond_2
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p3, p4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0
.end method


# virtual methods
.method protected a(JLjava/lang/String;)Lcom/viber/voip/messages/orm/entity/impl/ParticipantEntityImpl;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 429
    const-string/jumbo v0, "participants.conversation_id IN (SELECT conversations._id FROM conversations WHERE conversations.group_id=?) AND participants.participant_info_id IN (SELECT participants_info._id FROM participants_info WHERE participants_info.number=?)"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/viber/voip/messages/controller/c/aq;->h(Ljava/lang/String;[Ljava/lang/String;)Lcom/viber/voip/messages/orm/entity/impl/ParticipantEntityImpl;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/util/Set;J)Ljava/util/List;
    .locals 10
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;J)",
            "Ljava/util/List",
            "<",
            "Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 387
    .line 388
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 390
    :try_start_0
    invoke-virtual {p0}, Lcom/viber/voip/messages/controller/c/aq;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string/jumbo v1, "participants_info"

    sget-object v2, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityHelper;->PROJECTIONS:[Ljava/lang/String;

    const-string/jumbo v3, "participants_info.number IN (%s) OR participants_info._id IN (SELECT participants.participant_info_id FROM participants WHERE participants.conversation_id=?)"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Lcom/viber/voip/i/a;->a(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 393
    :try_start_1
    invoke-virtual {p0, v1, v9}, Lcom/viber/voip/messages/controller/c/aq;->a(Landroid/database/Cursor;Ljava/util/List;)Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 395
    invoke-virtual {p0, v1}, Lcom/viber/voip/messages/controller/c/aq;->a(Landroid/database/Cursor;)V

    .line 397
    return-object v0

    .line 395
    :catchall_0
    move-exception v0

    move-object v1, v8

    :goto_0
    invoke-virtual {p0, v1}, Lcom/viber/voip/messages/controller/c/aq;->a(Landroid/database/Cursor;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method public a([J)Ljava/util/Map;
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([J)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 353
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 356
    :try_start_0
    invoke-virtual {p0}, Lcom/viber/voip/messages/controller/c/aq;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string/jumbo v3, "SELECT DISTINCT messages.conversation_id, messages.conversation_type FROM messages WHERE messages.token IN (%s)"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Lcom/viber/voip/i/a;->a([J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 358
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 360
    :cond_0
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    .line 364
    :cond_1
    invoke-virtual {p0, v1}, Lcom/viber/voip/messages/controller/c/aq;->a(Landroid/database/Cursor;)V

    .line 366
    return-object v0

    .line 364
    :catchall_0
    move-exception v0

    invoke-virtual {p0, v1}, Lcom/viber/voip/messages/controller/c/aq;->a(Landroid/database/Cursor;)V

    throw v0
.end method

.method public a()Ljava/util/Set;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 337
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    .line 340
    :try_start_0
    invoke-virtual {p0}, Lcom/viber/voip/messages/controller/c/aq;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string/jumbo v1, "messages"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 341
    if-eqz v1, :cond_1

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 343
    :cond_0
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 344
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    if-nez v0, :cond_0

    .line 347
    :cond_1
    invoke-virtual {p0, v1}, Lcom/viber/voip/messages/controller/c/aq;->a(Landroid/database/Cursor;)V

    .line 349
    return-object v9

    .line 347
    :catchall_0
    move-exception v0

    move-object v1, v8

    :goto_0
    invoke-virtual {p0, v1}, Lcom/viber/voip/messages/controller/c/aq;->a(Landroid/database/Cursor;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method public a(Lcom/viber/voip/ViberApplication;Ljava/lang/String;)Ljava/util/Set;
    .locals 12
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/viber/voip/ViberApplication;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 563
    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    .line 567
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 568
    const-string/jumbo v1, "number"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    invoke-virtual {p0}, Lcom/viber/voip/messages/controller/c/aq;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string/jumbo v2, "participants_info"

    const-string/jumbo v3, "participant_type=0"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 572
    invoke-virtual {p0}, Lcom/viber/voip/messages/controller/c/aq;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x1

    const-string/jumbo v2, "participants_info"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "number"

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 575
    if-eqz v1, :cond_2

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 577
    :cond_0
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 578
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 579
    invoke-static {p1, v0}, Lcom/viber/voip/util/hd;->a(Lcom/viber/voip/ViberApplication;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 580
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 582
    new-instance v3, Landroid/util/Pair;

    invoke-direct {v3, v0, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v11, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 584
    const-string/jumbo v3, "messages"

    const-string/jumbo v4, "address"

    invoke-direct {p0, v3, v4, v0, v2}, Lcom/viber/voip/messages/controller/c/aq;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    const-string/jumbo v3, "conversations"

    const-string/jumbo v4, "recipient_number"

    invoke-direct {p0, v3, v4, v0, v2}, Lcom/viber/voip/messages/controller/c/aq;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    const-string/jumbo v3, "participants_info"

    const-string/jumbo v4, "number"

    invoke-direct {p0, v3, v4, v0, v2}, Lcom/viber/voip/messages/controller/c/aq;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    if-nez v0, :cond_0

    .line 592
    :cond_2
    invoke-virtual {p0, v1}, Lcom/viber/voip/messages/controller/c/aq;->a(Landroid/database/Cursor;)V

    .line 594
    return-object v11

    .line 592
    :catchall_0
    move-exception v0

    move-object v1, v10

    :goto_0
    invoke-virtual {p0, v1}, Lcom/viber/voip/messages/controller/c/aq;->a(Landroid/database/Cursor;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;
    .locals 10
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 542
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    .line 545
    :try_start_0
    invoke-virtual {p0}, Lcom/viber/voip/messages/controller/c/aq;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string/jumbo v1, "messages"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "extra_uri"

    aput-object v4, v2, v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 547
    if-eqz v1, :cond_2

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 548
    const-string/jumbo v0, "extra_uri"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 550
    :cond_0
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 551
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 552
    invoke-interface {v9, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 554
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v2

    if-nez v2, :cond_0

    .line 557
    :cond_2
    invoke-virtual {p0, v1}, Lcom/viber/voip/messages/controller/c/aq;->a(Landroid/database/Cursor;)V

    .line 559
    return-object v9

    .line 557
    :catchall_0
    move-exception v0

    move-object v1, v8

    :goto_0
    invoke-virtual {p0, v1}, Lcom/viber/voip/messages/controller/c/aq;->a(Landroid/database/Cursor;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method public a(J)V
    .locals 5
    .parameter

    .prologue
    .line 249
    invoke-virtual {p0}, Lcom/viber/voip/messages/controller/c/aq;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string/jumbo v1, "UPDATE conversations SET unread_message_count = (SELECT COUNT() FROM messages WHERE (messages.deleted IS NULL OR messages.deleted=0) AND conversations._id=messages.conversation_id AND messages.read>0 AND (extra_mime <>\'call\')),unread_calls_count = (SELECT SUM(read) FROM messages WHERE (messages.deleted IS NULL OR messages.deleted=0) AND conversations._id=messages.conversation_id AND messages.read>0 AND (extra_mime =\'call\')),media_msg_count = (SELECT COUNT() FROM messages WHERE (messages.deleted IS NULL OR messages.deleted=0) AND conversations._id=messages.conversation_id AND extra_mime IN ( \'image\', \'video\', \'animated_message\' ) ) WHERE _id=?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 250
    return-void
.end method

.method public a(JI)V
    .locals 10
    .parameter
    .parameter

    .prologue
    .line 268
    if-eqz p3, :cond_5

    const/4 v0, 0x1

    .line 269
    :goto_0
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 272
    const/4 v3, 0x0

    .line 273
    const-wide/16 v1, 0x0

    .line 275
    :try_start_0
    invoke-virtual {p0}, Lcom/viber/voip/messages/controller/c/aq;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    const-string/jumbo v6, "SELECT participants.last_message_id, participants.participant_info_id, messages.date FROM participants LEFT OUTER JOIN messages ON (messages._id=participants.last_message_id) LEFT OUTER JOIN participants_info ON (participants.participant_info_id=participants_info._id) WHERE participants.conversation_id=? ORDER BY messages.date DESC,messages.token DESC,participants_info.participant_type ASC,participants_info.display_name ASC  LIMIT 1"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    move-result-object v3

    .line 277
    if-eqz v3, :cond_7

    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 280
    if-eqz v0, :cond_0

    .line 281
    const/4 v1, 0x1

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 282
    const-string/jumbo v5, "participant_id_1"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 285
    :cond_0
    const/4 v5, 0x0

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 286
    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-lez v7, :cond_6

    .line 287
    const-string/jumbo v7, "last_message_id"

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 288
    const-string/jumbo v5, "date"

    const/4 v6, 0x2

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 299
    :cond_1
    :goto_1
    invoke-virtual {p0, v3}, Lcom/viber/voip/messages/controller/c/aq;->a(Landroid/database/Cursor;)V

    .line 303
    if-eqz v0, :cond_2

    .line 305
    const/4 v3, 0x0

    .line 307
    :try_start_2
    invoke-virtual {p0}, Lcom/viber/voip/messages/controller/c/aq;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string/jumbo v5, "SELECT participants.last_message_id, participants.participant_info_id, messages.date FROM participants LEFT OUTER JOIN messages ON (messages._id=participants.last_message_id) LEFT OUTER JOIN participants_info ON (participants.participant_info_id=participants_info._id) WHERE participants.conversation_id=? AND participants_info._id<>? AND participants.active=0 ORDER BY messages.date DESC,messages.token DESC,participants_info.participant_type ASC,participants_info.display_name ASC  LIMIT 4"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v7

    invoke-virtual {v0, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v1

    .line 310
    const/4 v0, 0x1

    :try_start_3
    const-string/jumbo v2, "participant_id_2"

    invoke-direct {p0, v0, v1, v4, v2}, Lcom/viber/voip/messages/controller/c/aq;->a(ZLandroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 311
    const/4 v0, 0x0

    const-string/jumbo v2, "participant_id_3"

    invoke-direct {p0, v0, v1, v4, v2}, Lcom/viber/voip/messages/controller/c/aq;->a(ZLandroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 312
    const/4 v0, 0x0

    const-string/jumbo v2, "participant_id_4"

    invoke-direct {p0, v0, v1, v4, v2}, Lcom/viber/voip/messages/controller/c/aq;->a(ZLandroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 314
    invoke-virtual {p0, v1}, Lcom/viber/voip/messages/controller/c/aq;->a(Landroid/database/Cursor;)V

    .line 317
    :cond_2
    const/4 v0, 0x2

    if-eq p3, v0, :cond_3

    const/4 v0, 0x3

    if-ne p3, v0, :cond_4

    .line 318
    :cond_3
    const-string/jumbo v0, "last_message_id"

    invoke-virtual {v4, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 319
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_8

    .line 320
    invoke-virtual {p0}, Lcom/viber/voip/messages/controller/c/aq;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string/jumbo v3, "UPDATE group_conversations_extras SET local_message_id = (SELECT message_global_id FROM messages WHERE messages._id= %s) where group_conversations_extras.group_id = (SELECT conversations.group_id FROM conversations WHERE conversations._id= %s)"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v5, v6

    const/4 v0, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v5, v0

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 325
    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/viber/voip/messages/controller/c/aq;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string/jumbo v1, "conversations"

    const-string/jumbo v2, "_id=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 326
    return-void

    .line 268
    :cond_5
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 290
    :cond_6
    :try_start_4
    const-string/jumbo v5, "last_message_id"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1

    .line 299
    :catchall_0
    move-exception v0

    move-object v1, v3

    :goto_3
    invoke-virtual {p0, v1}, Lcom/viber/voip/messages/controller/c/aq;->a(Landroid/database/Cursor;)V

    throw v0

    .line 293
    :cond_7
    :try_start_5
    const-string/jumbo v5, "last_message_id"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 295
    if-eqz v0, :cond_1

    .line 296
    const-string/jumbo v5, "participant_id_1"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_1

    .line 314
    :catchall_1
    move-exception v0

    move-object v1, v3

    :goto_4
    invoke-virtual {p0, v1}, Lcom/viber/voip/messages/controller/c/aq;->a(Landroid/database/Cursor;)V

    throw v0

    .line 322
    :cond_8
    invoke-virtual {p0}, Lcom/viber/voip/messages/controller/c/aq;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string/jumbo v1, "UPDATE group_conversations_extras SET local_message_id = 0 where group_conversations_extras.group_id = (SELECT conversations.group_id FROM conversations WHERE conversations._id= %s)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_2

    .line 314
    :catchall_2
    move-exception v0

    goto :goto_4

    .line 299
    :catchall_3
    move-exception v0

    move-object v1, v3

    goto :goto_3
.end method

.method public a(JJ)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 257
    invoke-virtual {p0}, Lcom/viber/voip/messages/controller/c/aq;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string/jumbo v1, "UPDATE participants SET last_message_id =  (SELECT messages._id FROM messages WHERE (messages.deleted IS NULL OR messages.deleted=0) AND participants._id=messages.participant_id ORDER BY messages.date DESC, messages.token DESC LIMIT 1) WHERE conversation_id=?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 259
    return-void
.end method

.method public a(Ljava/util/Set;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 239
    invoke-virtual {p0}, Lcom/viber/voip/messages/controller/c/aq;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string/jumbo v1, "UPDATE conversations SET deleted =  (CASE WHEN conversation_type = 0 THEN 0 ELSE 1 END),delete_token = (SELECT MAX(messages.token) FROM messages WHERE conversations._id = messages.conversation_id), last_message_id = 0, unread_calls_count = 0, unread_message_count = 0  WHERE _id IN (%s)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Lcom/viber/voip/i/a;->c(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 240
    return-void
.end method

.method public b(JJ)I
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 262
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 263
    const-string/jumbo v1, "read_notification_token"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 264
    invoke-virtual {p0}, Lcom/viber/voip/messages/controller/c/aq;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string/jumbo v2, "conversations"

    const-string/jumbo v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected b()Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 433
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 436
    :try_start_0
    invoke-virtual {p0}, Lcom/viber/voip/messages/controller/c/aq;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string/jumbo v3, "SELECT DISTINCT participants_info.number FROM participants_info WHERE participants_info.participant_type=1"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 437
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 439
    :cond_0
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 440
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    .line 443
    :cond_1
    invoke-virtual {p0, v1}, Lcom/viber/voip/messages/controller/c/aq;->a(Landroid/database/Cursor;)V

    .line 445
    return-object v0

    .line 443
    :catchall_0
    move-exception v0

    invoke-virtual {p0, v1}, Lcom/viber/voip/messages/controller/c/aq;->a(Landroid/database/Cursor;)V

    throw v0
.end method

.method public b([J)Ljava/util/Set;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([J)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 527
    const-string/jumbo v0, "extra_mime=? AND token IN (%s)"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p1}, Lcom/viber/voip/i/a;->a([J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string/jumbo v2, "sound"

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/viber/voip/messages/controller/c/aq;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public b(J)V
    .locals 5
    .parameter

    .prologue
    .line 253
    invoke-virtual {p0}, Lcom/viber/voip/messages/controller/c/aq;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string/jumbo v1, "UPDATE participants SET last_message_id =  (SELECT messages._id FROM messages WHERE (messages.deleted IS NULL OR messages.deleted=0) AND participants._id=messages.participant_id ORDER BY messages.date DESC, messages.token DESC LIMIT 1) WHERE conversation_id=?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 254
    return-void
.end method

.method public b(Ljava/util/Set;)V
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 243
    invoke-static {p1}, Lcom/viber/voip/i/a;->c(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v0

    .line 244
    invoke-virtual {p0}, Lcom/viber/voip/messages/controller/c/aq;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string/jumbo v2, "messages"

    const-string/jumbo v3, "conversation_id IN (%s)"

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 245
    invoke-virtual {p0}, Lcom/viber/voip/messages/controller/c/aq;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string/jumbo v2, "public_messages_extras"

    const-string/jumbo v3, "group_id IN (%s)"

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 246
    return-void
.end method

.method protected c(J)Ljava/util/List;
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;",
            ">;"
        }
    .end annotation

    .prologue
    .line 414
    const/4 v1, 0x0

    .line 415
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 417
    :try_start_0
    invoke-virtual {p0}, Lcom/viber/voip/messages/controller/c/aq;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string/jumbo v3, "SELECT %s FROM participants_info LEFT OUTER JOIN participants ON (participants_info._id=participants.participant_info_id) LEFT OUTER JOIN messages ON (participants.last_message_id=messages._id) WHERE participants.conversation_id=? AND participants.active=0 ORDER BY participants_info.has_photo DESC, messages.date DESC, participants_info.display_name LIMIT 4"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "participants_info"

    sget-object v7, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityHelper;->PROJECTIONS:[Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/viber/voip/i/a;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 421
    invoke-virtual {p0, v1, v0}, Lcom/viber/voip/messages/controller/c/aq;->a(Landroid/database/Cursor;Ljava/util/List;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 423
    invoke-virtual {p0, v1}, Lcom/viber/voip/messages/controller/c/aq;->a(Landroid/database/Cursor;)V

    .line 425
    return-object v0

    .line 423
    :catchall_0
    move-exception v0

    invoke-virtual {p0, v1}, Lcom/viber/voip/messages/controller/c/aq;->a(Landroid/database/Cursor;)V

    throw v0
.end method

.method public c(Ljava/util/Set;)Ljava/util/Map;
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 370
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 373
    :try_start_0
    invoke-virtual {p0}, Lcom/viber/voip/messages/controller/c/aq;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string/jumbo v3, "SELECT DISTINCT messages.conversation_id, messages.conversation_type FROM messages WHERE messages._id IN (%s)"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Lcom/viber/voip/i/a;->c(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 375
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 377
    :cond_0
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    .line 381
    :cond_1
    invoke-virtual {p0, v1}, Lcom/viber/voip/messages/controller/c/aq;->a(Landroid/database/Cursor;)V

    .line 383
    return-object v0

    .line 381
    :catchall_0
    move-exception v0

    invoke-virtual {p0, v1}, Lcom/viber/voip/messages/controller/c/aq;->a(Landroid/database/Cursor;)V

    throw v0
.end method

.method public c(JJ)Ljava/util/Set;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 522
    const-string/jumbo v0, "extra_mime=? AND token<=? AND conversation_id=?"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "sound"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/viber/voip/messages/controller/c/aq;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public d(J)Ljava/util/Map;
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 504
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 507
    :try_start_0
    invoke-virtual {p0}, Lcom/viber/voip/messages/controller/c/aq;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string/jumbo v3, "SELECT participants_info.number, participants.active FROM participants LEFT OUTER JOIN participants_info ON (participants.participant_info_id=participants_info._id) WHERE participants.conversation_id= %s AND participants_info.participant_type = 1"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 508
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 510
    :cond_0
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 511
    const/4 v3, 0x1

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 512
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 513
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    .line 516
    :cond_1
    invoke-virtual {p0, v1}, Lcom/viber/voip/messages/controller/c/aq;->a(Landroid/database/Cursor;)V

    .line 518
    return-object v0

    .line 516
    :catchall_0
    move-exception v0

    invoke-virtual {p0, v1}, Lcom/viber/voip/messages/controller/c/aq;->a(Landroid/database/Cursor;)V

    throw v0
.end method

.method protected d(Ljava/util/Set;)Ljava/util/Set;
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 449
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 452
    :try_start_0
    invoke-virtual {p0}, Lcom/viber/voip/messages/controller/c/aq;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string/jumbo v3, "SELECT DISTINCT participants_info.number FROM participants_info WHERE participants_info.number IN (%s)"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Lcom/viber/voip/i/a;->a(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 454
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 456
    :cond_0
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 457
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    .line 460
    :cond_1
    invoke-virtual {p0, v1}, Lcom/viber/voip/messages/controller/c/aq;->a(Landroid/database/Cursor;)V

    .line 462
    return-object v0

    .line 460
    :catchall_0
    move-exception v0

    invoke-virtual {p0, v1}, Lcom/viber/voip/messages/controller/c/aq;->a(Landroid/database/Cursor;)V

    throw v0
.end method

.method protected e(Ljava/util/Set;)Ljava/util/Set;
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 466
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 469
    :try_start_0
    invoke-virtual {p0}, Lcom/viber/voip/messages/controller/c/aq;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string/jumbo v3, "SELECT DISTINCT participants_info.number FROM participants_info WHERE participants_info.contact_id IN (%s)"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Lcom/viber/voip/i/a;->c(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 471
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 473
    :cond_0
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 474
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    .line 477
    :cond_1
    invoke-virtual {p0, v1}, Lcom/viber/voip/messages/controller/c/aq;->a(Landroid/database/Cursor;)V

    .line 479
    return-object v0

    .line 477
    :catchall_0
    move-exception v0

    invoke-virtual {p0, v1}, Lcom/viber/voip/messages/controller/c/aq;->a(Landroid/database/Cursor;)V

    throw v0
.end method

.method public e(J)[J
    .locals 7
    .parameter

    .prologue
    .line 609
    const/4 v0, 0x4

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    .line 610
    const/4 v1, 0x0

    .line 612
    :try_start_0
    invoke-virtual {p0}, Lcom/viber/voip/messages/controller/c/aq;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string/jumbo v3, "SELECT SUM ( unread_calls_count ), SUM ( CASE WHEN (conversation_type=0 OR conversation_type=1) THEN unread_message_count ELSE 0 END), SUM ( CASE WHEN (conversation_type<>0 AND conversation_type<>1) THEN unread_message_count ELSE 0 END) FROM conversations WHERE conversations._id<>?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 613
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 614
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    int-to-long v3, v3

    aput-wide v3, v0, v2

    .line 615
    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    int-to-long v3, v3

    aput-wide v3, v0, v2

    .line 616
    const/4 v2, 0x2

    const/4 v3, 0x2

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    int-to-long v3, v3

    aput-wide v3, v0, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 619
    :cond_0
    invoke-virtual {p0, v1}, Lcom/viber/voip/messages/controller/c/aq;->a(Landroid/database/Cursor;)V

    .line 622
    :try_start_1
    invoke-virtual {p0}, Lcom/viber/voip/messages/controller/c/aq;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string/jumbo v3, "SELECT date FROM messages WHERE conversation_id<>? AND (conversation_type<>0 AND conversation_type<>1) AND messages.read>0 ORDER BY date DESC LIMIT 1"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 623
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 624
    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    aput-wide v3, v0, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 627
    :cond_1
    invoke-virtual {p0, v1}, Lcom/viber/voip/messages/controller/c/aq;->a(Landroid/database/Cursor;)V

    .line 629
    return-object v0

    .line 619
    :catchall_0
    move-exception v0

    invoke-virtual {p0, v1}, Lcom/viber/voip/messages/controller/c/aq;->a(Landroid/database/Cursor;)V

    throw v0

    .line 627
    :catchall_1
    move-exception v0

    invoke-virtual {p0, v1}, Lcom/viber/voip/messages/controller/c/aq;->a(Landroid/database/Cursor;)V

    throw v0

    .line 609
    nop

    :array_0
    .array-data 0x8
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public f(J)I
    .locals 7
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 633
    .line 634
    const/4 v1, 0x0

    .line 636
    :try_start_0
    invoke-virtual {p0}, Lcom/viber/voip/messages/controller/c/aq;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string/jumbo v3, "SELECT COUNT (*) FROM messages WHERE deleted=0 AND conversation_id=? AND type=1 AND status NOT IN (1,2,-1)"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 637
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 638
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 641
    :cond_0
    invoke-virtual {p0, v1}, Lcom/viber/voip/messages/controller/c/aq;->a(Landroid/database/Cursor;)V

    .line 643
    return v0

    .line 641
    :catchall_0
    move-exception v0

    invoke-virtual {p0, v1}, Lcom/viber/voip/messages/controller/c/aq;->a(Landroid/database/Cursor;)V

    throw v0
.end method

.method public f(Ljava/util/Set;)Ljava/util/Set;
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 483
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 486
    :try_start_0
    invoke-virtual {p0}, Lcom/viber/voip/messages/controller/c/aq;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string/jumbo v3, "SELECT DISTINCT participants.conversation_id FROM participants WHERE participants.participant_info_id IN (%s)"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Lcom/viber/voip/i/a;->c(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 488
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 490
    :cond_0
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 491
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    .line 494
    :cond_1
    invoke-virtual {p0, v1}, Lcom/viber/voip/messages/controller/c/aq;->a(Landroid/database/Cursor;)V

    .line 496
    return-object v0

    .line 494
    :catchall_0
    move-exception v0

    invoke-virtual {p0, v1}, Lcom/viber/voip/messages/controller/c/aq;->a(Landroid/database/Cursor;)V

    throw v0
.end method

.method public g(J)I
    .locals 7
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 647
    .line 648
    const/4 v1, 0x0

    .line 650
    :try_start_0
    invoke-virtual {p0}, Lcom/viber/voip/messages/controller/c/aq;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string/jumbo v3, "SELECT COUNT (*) FROM messages WHERE read>0 AND extra_mime <>\'notif\' AND extra_mime <>\'call\' AND extra_mime <>\'formatted_follow\' AND (extra_flags & 4) = 0 AND conversation_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 651
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 652
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 655
    :cond_0
    invoke-virtual {p0, v1}, Lcom/viber/voip/messages/controller/c/aq;->a(Landroid/database/Cursor;)V

    .line 657
    return v0

    .line 655
    :catchall_0
    move-exception v0

    invoke-virtual {p0, v1}, Lcom/viber/voip/messages/controller/c/aq;->a(Landroid/database/Cursor;)V

    throw v0
.end method

.method public g(Ljava/util/Set;)Ljava/util/Set;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 532
    const-string/jumbo v0, "extra_mime=? AND _id IN (%s)"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p1}, Lcom/viber/voip/i/a;->c(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string/jumbo v2, "sound"

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/viber/voip/messages/controller/c/aq;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public h(Ljava/util/Set;)Ljava/util/Set;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 537
    const-string/jumbo v0, "extra_mime=? AND conversation_id IN (%s)"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p1}, Lcom/viber/voip/i/a;->c(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string/jumbo v2, "sound"

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/viber/voip/messages/controller/c/aq;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public h(J)V
    .locals 5
    .parameter

    .prologue
    .line 661
    invoke-virtual {p0}, Lcom/viber/voip/messages/controller/c/aq;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string/jumbo v1, "UPDATE messages SET date = date_real WHERE conversation_id=? AND date_real<>date"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 662
    return-void
.end method
