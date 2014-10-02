.class public Lcom/viber/voip/messages/controller/c/as;
.super Lcom/viber/voip/messages/controller/c/ar;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/lang/String;

.field private static c:Lcom/viber/voip/messages/controller/c/as;


# instance fields
.field private final d:Lcom/viber/voip/messages/controller/c/at;

.field private final e:Lcom/viber/voip/messages/controller/c/aq;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 51
    const-class v0, Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/messages/controller/c/as;->a:Ljava/lang/String;

    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SELECT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "participants_info"

    sget-object v2, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityHelper;->PROJECTIONS:[Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/viber/voip/i/a;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " FROM "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "participants_info"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " LEFT OUTER JOIN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "participants"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " ON ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "participants_info"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "participants"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " WHERE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "participants"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "=? AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "participants"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "conversation_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "=?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/messages/controller/c/as;->b:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 250
    invoke-direct {p0}, Lcom/viber/voip/messages/controller/c/ar;-><init>()V

    .line 251
    new-instance v0, Lcom/viber/voip/messages/controller/c/aq;

    invoke-direct {v0}, Lcom/viber/voip/messages/controller/c/aq;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/messages/controller/c/as;->e:Lcom/viber/voip/messages/controller/c/aq;

    .line 252
    new-instance v0, Lcom/viber/voip/messages/controller/c/at;

    invoke-direct {v0}, Lcom/viber/voip/messages/controller/c/at;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/messages/controller/c/as;->d:Lcom/viber/voip/messages/controller/c/at;

    .line 253
    return-void
.end method

.method public static a()Lcom/viber/voip/messages/controller/c/as;
    .locals 2

    .prologue
    .line 240
    sget-object v0, Lcom/viber/voip/messages/controller/c/as;->c:Lcom/viber/voip/messages/controller/c/as;

    if-nez v0, :cond_1

    .line 241
    const-class v1, Lcom/viber/voip/messages/controller/c/as;

    monitor-enter v1

    .line 242
    :try_start_0
    sget-object v0, Lcom/viber/voip/messages/controller/c/as;->c:Lcom/viber/voip/messages/controller/c/as;

    if-nez v0, :cond_0

    .line 243
    new-instance v0, Lcom/viber/voip/messages/controller/c/as;

    invoke-direct {v0}, Lcom/viber/voip/messages/controller/c/as;-><init>()V

    sput-object v0, Lcom/viber/voip/messages/controller/c/as;->c:Lcom/viber/voip/messages/controller/c/as;

    .line 245
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 247
    :cond_1
    sget-object v0, Lcom/viber/voip/messages/controller/c/as;->c:Lcom/viber/voip/messages/controller/c/as;

    return-object v0

    .line 245
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public A(J)Z
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 942
    const-string/jumbo v2, "message_id=? AND end_reason<>10"

    new-array v3, v0, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-virtual {p0, v2, v3}, Lcom/viber/voip/messages/controller/c/as;->d(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public B(J)Z
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 946
    const-string/jumbo v2, "message_id=? AND start_reason<>1"

    new-array v3, v0, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-virtual {p0, v2, v3}, Lcom/viber/voip/messages/controller/c/as;->d(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public a(JJJ)I
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 663
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 664
    const-string/jumbo v1, "sync_read"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 665
    const-string/jumbo v1, "read"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 667
    invoke-virtual {p0}, Lcom/viber/voip/messages/controller/c/as;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string/jumbo v2, "messages"

    const-string/jumbo v3, "conversation_id=? AND read>0 AND (token<=? OR date<=?)"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    const/4 v5, 0x2

    invoke-static {p5, p6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public a(JLjava/lang/String;II)I
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 759
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 760
    const-string/jumbo v1, "body"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 761
    const-string/jumbo v1, "thumbnail_x"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 762
    const-string/jumbo v1, "thumbnail_y"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 764
    invoke-virtual {p0}, Lcom/viber/voip/messages/controller/c/as;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string/jumbo v2, "messages"

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

.method public a(JLjava/lang/String;Ljava/lang/String;)I
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 709
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 710
    const-string/jumbo v1, "background_landscape"

    invoke-virtual {v0, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 711
    const-string/jumbo v1, "background_portrait"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 713
    invoke-virtual {p0}, Lcom/viber/voip/messages/controller/c/as;->c()Landroid/database/sqlite/SQLiteDatabase;

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

.method public a(JZ)I
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 717
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 718
    const-string/jumbo v4, "smart_notification"

    if-eqz p3, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 720
    invoke-virtual {p0}, Lcom/viber/voip/messages/controller/c/as;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string/jumbo v4, "conversations"

    const-string/jumbo v5, "_id=?"

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v2

    invoke-virtual {v0, v4, v3, v5, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_0
    move v0, v2

    .line 718
    goto :goto_0
.end method

.method public a(Ljava/util/Set;Z)I
    .locals 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;Z)I"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 731
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 732
    const-string/jumbo v4, "mute_notification"

    if-eqz p2, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 734
    invoke-virtual {p0}, Lcom/viber/voip/messages/controller/c/as;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string/jumbo v4, "conversations"

    const-string/jumbo v5, "_id IN (%s)"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Lcom/viber/voip/i/a;->c(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v2

    invoke-static {v5, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v4, v3, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_0
    move v0, v2

    .line 732
    goto :goto_0
.end method

.method public a([J)I
    .locals 6
    .parameter

    .prologue
    .line 579
    invoke-virtual {p0}, Lcom/viber/voip/messages/controller/c/as;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string/jumbo v1, "messages"

    const-string/jumbo v2, "token IN (%s)"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Lcom/viber/voip/i/a;->a([J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public a([Ljava/lang/String;)J
    .locals 9
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 880
    .line 881
    const-wide/16 v0, -0x1

    .line 883
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 885
    :try_start_0
    invoke-virtual {p0}, Lcom/viber/voip/messages/controller/c/as;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string/jumbo v5, "SELECT conversations._id, count(conversations._id) FROM conversations,participants_info,participants WHERE participants_info.number IN (%s) AND participants.conversation_id=conversations._id AND participants.participant_info_id=participants_info._id AND conversations.deleted=0 AND participants.active=0 AND conversation_type=1 GROUP BY conversations._id"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {p1}, Lcom/viber/voip/i/a;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 886
    if-eqz v2, :cond_2

    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 888
    :cond_0
    const/4 v4, 0x0

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 889
    const/4 v6, 0x1

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 890
    array-length v7, p1

    if-ne v6, v7, :cond_1

    .line 891
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 893
    :cond_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 895
    :cond_2
    invoke-virtual {p0, v2}, Lcom/viber/voip/messages/controller/c/as;->a(Landroid/database/Cursor;)V

    .line 897
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_4

    .line 898
    invoke-virtual {p0}, Lcom/viber/voip/messages/controller/c/as;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    const-string/jumbo v5, "SELECT participants.conversation_id,conversations.group_id, count(participants.conversation_id) FROM participants,conversations WHERE participants.conversation_id IN (%s) AND  participants.active=0 AND participants.conversation_id=conversations._id GROUP BY participants.conversation_id"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v3}, Lcom/viber/voip/i/a;->c(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    .line 899
    if-eqz v4, :cond_6

    :try_start_2
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 901
    :cond_3
    const/4 v2, 0x0

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getLong(I)J

    .line 902
    const/4 v2, 0x1

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 903
    const/4 v5, 0x2

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 905
    add-int/lit8 v5, v5, -0x1

    array-length v6, p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-ne v5, v6, :cond_5

    move-wide v0, v2

    move-object v2, v4

    .line 916
    :cond_4
    :goto_0
    invoke-virtual {p0, v2}, Lcom/viber/voip/messages/controller/c/as;->a(Landroid/database/Cursor;)V

    .line 919
    :goto_1
    return-wide v0

    .line 909
    :cond_5
    :try_start_3
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result v2

    if-nez v2, :cond_3

    :cond_6
    move-object v2, v4

    goto :goto_0

    .line 913
    :catch_0
    move-exception v2

    .line 914
    :goto_2
    :try_start_4
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 916
    invoke-virtual {p0, v4}, Lcom/viber/voip/messages/controller/c/as;->a(Landroid/database/Cursor;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v2, v4

    :goto_3
    invoke-virtual {p0, v2}, Lcom/viber/voip/messages/controller/c/as;->a(Landroid/database/Cursor;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v2, v4

    goto :goto_3

    .line 913
    :catch_1
    move-exception v3

    move-object v4, v2

    move-object v2, v3

    goto :goto_2
.end method

.method public a(J)Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;
    .locals 4
    .parameter

    .prologue
    .line 260
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 261
    const-string/jumbo v0, "group_id=?"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/viber/voip/messages/controller/c/as;->f(Ljava/lang/String;[Ljava/lang/String;)Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;

    move-result-object v0

    .line 263
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;
    .locals 3
    .parameter

    .prologue
    .line 313
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 314
    const-string/jumbo v0, "recipient_number=?"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/viber/voip/messages/controller/c/as;->f(Ljava/lang/String;[Ljava/lang/String;)Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;

    move-result-object v0

    .line 316
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(I)Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;
    .locals 4
    .parameter

    .prologue
    .line 473
    const-string/jumbo v0, "seq=?"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/viber/voip/messages/controller/c/as;->c(Ljava/lang/String;[Ljava/lang/String;)Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;I)Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 866
    const-string/jumbo v0, "type=1 AND status=? AND address=?"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const-string/jumbo v2, "date DESC, token DESC"

    invoke-virtual {p0, v0, v1, v2}, Lcom/viber/voip/messages/controller/c/as;->b(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 485
    const-string/jumbo v0, "extra_uri=? AND extra_mime=?"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/viber/voip/messages/controller/c/as;->c(Ljava/lang/String;[Ljava/lang/String;)Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    move-result-object v0

    return-object v0
.end method

.method public a(JJ)Lcom/viber/voip/messages/orm/entity/impl/ParticipantEntityImpl;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 420
    const-string/jumbo v0, "conversation_id=? AND participant_info_id=?"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/viber/voip/messages/controller/c/as;->h(Ljava/lang/String;[Ljava/lang/String;)Lcom/viber/voip/messages/orm/entity/impl/ParticipantEntityImpl;

    move-result-object v0

    return-object v0
.end method

.method public a(JLjava/lang/String;)Lcom/viber/voip/messages/orm/entity/impl/ParticipantEntityImpl;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 382
    iget-object v0, p0, Lcom/viber/voip/messages/controller/c/as;->e:Lcom/viber/voip/messages/controller/c/aq;

    invoke-virtual {v0, p1, p2, p3}, Lcom/viber/voip/messages/controller/c/aq;->a(JLjava/lang/String;)Lcom/viber/voip/messages/orm/entity/impl/ParticipantEntityImpl;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/viber/voip/messages/controller/c/ao;)Ljava/util/ArrayList;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/viber/voip/messages/controller/c/ao;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 923
    iget-object v0, p0, Lcom/viber/voip/messages/controller/c/as;->d:Lcom/viber/voip/messages/controller/c/at;

    invoke-virtual {v0, p1}, Lcom/viber/voip/messages/controller/c/at;->a(Lcom/viber/voip/messages/controller/c/ao;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/util/Set;)Ljava/util/List;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;",
            ">;"
        }
    .end annotation

    .prologue
    .line 292
    const-string/jumbo v0, "_id IN (%s)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Lcom/viber/voip/i/a;->c(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/viber/voip/messages/controller/c/as;->e(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/util/Set;J)Ljava/util/List;
    .locals 1
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
    .line 370
    iget-object v0, p0, Lcom/viber/voip/messages/controller/c/as;->e:Lcom/viber/voip/messages/controller/c/aq;

    invoke-virtual {v0, p1, p2, p3}, Lcom/viber/voip/messages/controller/c/aq;->a(Ljava/util/Set;J)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/util/Set;Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;",
            ">;"
        }
    .end annotation

    .prologue
    .line 457
    const-string/jumbo v0, "_id IN (%s)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Lcom/viber/voip/i/a;->c(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p2}, Lcom/viber/voip/messages/controller/c/as;->h(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/viber/voip/ViberApplication;Ljava/lang/String;)Ljava/util/Set;
    .locals 1
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
    .line 408
    iget-object v0, p0, Lcom/viber/voip/messages/controller/c/as;->e:Lcom/viber/voip/messages/controller/c/aq;

    invoke-virtual {v0, p1, p2}, Lcom/viber/voip/messages/controller/c/aq;->a(Lcom/viber/voip/ViberApplication;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;
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
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 296
    .line 297
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    .line 299
    :try_start_0
    invoke-virtual {p0}, Lcom/viber/voip/messages/controller/c/as;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string/jumbo v1, "conversations"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "_id"

    aput-object v4, v2, v3

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

    .line 301
    if-eqz v1, :cond_1

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 303
    :cond_0
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 304
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    if-nez v0, :cond_0

    .line 307
    :cond_1
    invoke-virtual {p0, v1}, Lcom/viber/voip/messages/controller/c/as;->a(Landroid/database/Cursor;)V

    .line 309
    return-object v10

    .line 307
    :catchall_0
    move-exception v0

    move-object v1, v9

    :goto_0
    invoke-virtual {p0, v1}, Lcom/viber/voip/messages/controller/c/as;->a(Landroid/database/Cursor;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method public a(JI)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 613
    iget-object v0, p0, Lcom/viber/voip/messages/controller/c/as;->e:Lcom/viber/voip/messages/controller/c/aq;

    invoke-virtual {v0, p1, p2, p3}, Lcom/viber/voip/messages/controller/c/aq;->a(JI)V

    .line 614
    return-void
.end method

.method public b(JLjava/lang/String;)I
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 738
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 739
    const-string/jumbo v1, "name"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 741
    invoke-virtual {p0}, Lcom/viber/voip/messages/controller/c/as;->c()Landroid/database/sqlite/SQLiteDatabase;

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

.method public b(JZ)I
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 724
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 725
    const-string/jumbo v4, "mute_notification"

    if-eqz p3, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 727
    invoke-virtual {p0}, Lcom/viber/voip/messages/controller/c/as;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string/jumbo v4, "conversations"

    const-string/jumbo v5, "_id=?"

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v2

    invoke-virtual {v0, v4, v3, v5, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_0
    move v0, v2

    .line 725
    goto :goto_0
.end method

.method public b([J)I
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 680
    invoke-static {p1}, Lcom/viber/voip/i/a;->a([J)Ljava/lang/String;

    move-result-object v0

    .line 681
    invoke-virtual {p0}, Lcom/viber/voip/messages/controller/c/as;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string/jumbo v2, "messages"

    const-string/jumbo v3, "token IN (%s) AND deleted=1"

    new-array v4, v5, [Ljava/lang/Object;

    aput-object v0, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 682
    if-lez v1, :cond_0

    .line 683
    invoke-virtual {p0}, Lcom/viber/voip/messages/controller/c/as;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string/jumbo v3, "public_messages_extras"

    const-string/jumbo v4, "message_token IN (%s)"

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 685
    :cond_0
    return v1
.end method

.method public b(Ljava/lang/String;)Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;
    .locals 3
    .parameter

    .prologue
    .line 321
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 322
    const-string/jumbo v0, "group_id IN (SELECT group_id FROM group_conversations_extras WHERE group_uri=?)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/viber/voip/messages/controller/c/as;->f(Ljava/lang/String;[Ljava/lang/String;)Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;

    move-result-object v0

    .line 324
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(JJ)Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 566
    const-string/jumbo v0, "conversation_id=? AND token>=?"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string/jumbo v2, "token ASC"

    invoke-virtual {p0, v0, v1, v2}, Lcom/viber/voip/messages/controller/c/as;->b(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 489
    const-string/jumbo v0, "extra_download_id=? AND extra_mime=?"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/viber/voip/messages/controller/c/as;->c(Ljava/lang/String;[Ljava/lang/String;)Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    move-result-object v0

    return-object v0
.end method

.method public b(J)Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;
    .locals 4
    .parameter

    .prologue
    .line 268
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 269
    const-string/jumbo v0, "group_id=?"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/viber/voip/messages/controller/c/as;->k(Ljava/lang/String;[Ljava/lang/String;)Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;

    move-result-object v0

    .line 271
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Lcom/viber/voip/messages/controller/c/ao;)Ljava/util/ArrayList;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/viber/voip/messages/controller/c/ao;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/viber/voip/messages/conversation/ConversationLoaderPublicGroupEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 927
    iget-object v0, p0, Lcom/viber/voip/messages/controller/c/as;->d:Lcom/viber/voip/messages/controller/c/at;

    invoke-virtual {v0, p1}, Lcom/viber/voip/messages/controller/c/at;->b(Lcom/viber/voip/messages/controller/c/ao;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/viber/voip/messages/orm/entity/impl/PublicGroupConversationEntityImpl;",
            ">;"
        }
    .end annotation

    .prologue
    .line 276
    const-string/jumbo v0, "local_message_id < server_message_id AND server_message_id > 0 AND group_role = 3"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/viber/voip/messages/controller/c/as;->l(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/util/Set;)Ljava/util/Set;
    .locals 1
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
    .line 386
    iget-object v0, p0, Lcom/viber/voip/messages/controller/c/as;->e:Lcom/viber/voip/messages/controller/c/aq;

    invoke-virtual {v0, p1}, Lcom/viber/voip/messages/controller/c/aq;->d(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public c(JLjava/lang/String;)I
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 752
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 753
    const-string/jumbo v1, "message_draft"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 755
    invoke-virtual {p0}, Lcom/viber/voip/messages/controller/c/as;->c()Landroid/database/sqlite/SQLiteDatabase;

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

.method public c(JZ)I
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 745
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 746
    const-string/jumbo v4, "share_location"

    if-eqz p3, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 748
    invoke-virtual {p0}, Lcom/viber/voip/messages/controller/c/as;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string/jumbo v4, "conversations"

    const-string/jumbo v5, "_id=?"

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v2

    invoke-virtual {v0, v4, v3, v5, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_0
    move v0, v2

    .line 746
    goto :goto_0
.end method

.method public c([J)I
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 689
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 690
    const-string/jumbo v1, "sync_read"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 692
    invoke-virtual {p0}, Lcom/viber/voip/messages/controller/c/as;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string/jumbo v2, "messages"

    const-string/jumbo v3, "token IN (%s) AND sync_read=1"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Lcom/viber/voip/i/a;->a([J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public c(J)Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;
    .locals 4
    .parameter

    .prologue
    .line 284
    const-string/jumbo v0, "_id=?"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/viber/voip/messages/controller/c/as;->f(Ljava/lang/String;[Ljava/lang/String;)Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;

    move-result-object v0

    return-object v0
.end method

.method public c(JJ)Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 570
    const-string/jumbo v0, "conversation_id=? AND token<?"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string/jumbo v2, "token DESC"

    invoke-virtual {p0, v0, v1, v2}, Lcom/viber/voip/messages/controller/c/as;->b(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/lang/String;)Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;
    .locals 3
    .parameter

    .prologue
    .line 424
    const-string/jumbo v0, "number=? AND participant_type=1"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/viber/voip/messages/controller/c/as;->i(Ljava/lang/String;[Ljava/lang/String;)Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/util/Set;)Ljava/util/Set;
    .locals 1
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
    .line 390
    iget-object v0, p0, Lcom/viber/voip/messages/controller/c/as;->e:Lcom/viber/voip/messages/controller/c/aq;

    invoke-virtual {v0, p1}, Lcom/viber/voip/messages/controller/c/aq;->e(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public d(J)I
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 349
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-lez v1, :cond_0

    .line 350
    invoke-virtual {p0}, Lcom/viber/voip/messages/controller/c/as;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string/jumbo v2, "conversations"

    const-string/jumbo v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 352
    :cond_0
    return v0
.end method

.method public d(JJ)I
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 574
    invoke-virtual {p0}, Lcom/viber/voip/messages/controller/c/as;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string/jumbo v1, "messages"

    const-string/jumbo v2, "conversation_id=? AND token<=?"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public d(JLjava/lang/String;)I
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 931
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 932
    const-string/jumbo v1, "extra_bucket_name"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 934
    invoke-virtual {p0}, Lcom/viber/voip/messages/controller/c/as;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string/jumbo v2, "messages"

    const-string/jumbo v3, "_id=? AND extra_mime NOT IN ( \'image\', \'video\')"

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

.method public d([J)I
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 768
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 769
    const-string/jumbo v1, "read"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 771
    invoke-virtual {p0}, Lcom/viber/voip/messages/controller/c/as;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string/jumbo v2, "messages"

    const-string/jumbo v3, "token IN (%s)"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Lcom/viber/voip/i/a;->a([J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public d()Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;
    .locals 3

    .prologue
    .line 288
    const-string/jumbo v0, "conversation_type=1"

    const/4 v1, 0x0

    const-string/jumbo v2, "date DESC"

    invoke-virtual {p0, v0, v1, v2}, Lcom/viber/voip/messages/controller/c/as;->e(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;

    move-result-object v0

    return-object v0
.end method

.method public d(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;",
            ">;"
        }
    .end annotation

    .prologue
    .line 562
    const-string/jumbo v0, "extra_mime=?"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string/jumbo v2, "date ASC"

    invoke-virtual {p0, v0, v1, v2}, Lcom/viber/voip/messages/controller/c/as;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public d(Ljava/util/Set;)Ljava/util/Set;
    .locals 1
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
    .line 404
    iget-object v0, p0, Lcom/viber/voip/messages/controller/c/as;->e:Lcom/viber/voip/messages/controller/c/aq;

    invoke-virtual {v0, p1}, Lcom/viber/voip/messages/controller/c/aq;->f(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public e(J)I
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 357
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-eqz v1, :cond_0

    .line 358
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 359
    invoke-virtual {p0}, Lcom/viber/voip/messages/controller/c/as;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string/jumbo v2, "conversations"

    const-string/jumbo v3, "group_id=? AND deleted=1"

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 360
    if-lez v0, :cond_0

    .line 361
    invoke-virtual {p0}, Lcom/viber/voip/messages/controller/c/as;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string/jumbo v3, "group_conversations_extras"

    const-string/jumbo v4, "group_id=?"

    invoke-virtual {v2, v3, v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 365
    :cond_0
    return v0
.end method

.method public e()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;",
            ">;"
        }
    .end annotation

    .prologue
    .line 329
    const-string/jumbo v0, "deleted=1 OR delete_token>0"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/viber/voip/messages/controller/c/as;->e(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public e(Ljava/util/Set;)Ljava/util/List;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 453
    const-string/jumbo v0, "_id IN (%s)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Lcom/viber/voip/i/a;->c(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v4, v4}, Lcom/viber/voip/messages/controller/c/as;->h(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public e([J)Ljava/util/Set;
    .locals 1
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
    .line 801
    iget-object v0, p0, Lcom/viber/voip/messages/controller/c/as;->e:Lcom/viber/voip/messages/controller/c/aq;

    invoke-virtual {v0, p1}, Lcom/viber/voip/messages/controller/c/aq;->b([J)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public e(JJ)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 609
    iget-object v0, p0, Lcom/viber/voip/messages/controller/c/as;->e:Lcom/viber/voip/messages/controller/c/aq;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/viber/voip/messages/controller/c/aq;->a(JJ)V

    .line 610
    return-void
.end method

.method public f()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;",
            ">;"
        }
    .end annotation

    .prologue
    .line 337
    const-string/jumbo v0, "(deleted=1 AND (token>0 OR status=-1))"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/viber/voip/messages/controller/c/as;->b(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public f(J)Ljava/util/List;
    .locals 1
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
    .line 378
    iget-object v0, p0, Lcom/viber/voip/messages/controller/c/as;->e:Lcom/viber/voip/messages/controller/c/aq;

    invoke-virtual {v0, p1, p2}, Lcom/viber/voip/messages/controller/c/aq;->c(J)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public f(Ljava/util/Set;)Ljava/util/List;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 461
    const-string/jumbo v0, "number IN (%s)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Lcom/viber/voip/i/a;->a(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v4, v4}, Lcom/viber/voip/messages/controller/c/as;->h(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public f([J)Ljava/util/Map;
    .locals 1
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
    .line 858
    iget-object v0, p0, Lcom/viber/voip/messages/controller/c/as;->e:Lcom/viber/voip/messages/controller/c/aq;

    invoke-virtual {v0, p1}, Lcom/viber/voip/messages/controller/c/aq;->a([J)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public f(JJ)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 621
    iget-object v0, p0, Lcom/viber/voip/messages/controller/c/as;->e:Lcom/viber/voip/messages/controller/c/aq;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/viber/voip/messages/controller/c/aq;->b(JJ)I

    .line 622
    return-void
.end method

.method public g(JJ)I
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 641
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 642
    const-string/jumbo v1, "sync_read"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 644
    invoke-virtual {p0}, Lcom/viber/voip/messages/controller/c/as;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string/jumbo v2, "messages"

    const-string/jumbo v3, "conversation_id=? AND token<=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    const/4 v5, 0x1

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public g()Ljava/util/Set;
    .locals 1
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
    .line 394
    iget-object v0, p0, Lcom/viber/voip/messages/controller/c/as;->e:Lcom/viber/voip/messages/controller/c/aq;

    invoke-virtual {v0}, Lcom/viber/voip/messages/controller/c/aq;->b()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public g(J)Ljava/util/Set;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 398
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 399
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 400
    iget-object v1, p0, Lcom/viber/voip/messages/controller/c/as;->e:Lcom/viber/voip/messages/controller/c/aq;

    invoke-virtual {v1, v0}, Lcom/viber/voip/messages/controller/c/aq;->f(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public g(Ljava/util/Set;)V
    .locals 1
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
    .line 617
    iget-object v0, p0, Lcom/viber/voip/messages/controller/c/as;->e:Lcom/viber/voip/messages/controller/c/aq;

    invoke-virtual {v0, p1}, Lcom/viber/voip/messages/controller/c/aq;->a(Ljava/util/Set;)V

    .line 618
    return-void
.end method

.method public h(JJ)I
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 672
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 673
    const-string/jumbo v1, "delete_token"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 675
    invoke-virtual {p0}, Lcom/viber/voip/messages/controller/c/as;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string/jumbo v2, "conversations"

    const-string/jumbo v3, "_id=? AND delete_token=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    const/4 v5, 0x1

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public h()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 449
    invoke-virtual {p0, v0, v0, v0}, Lcom/viber/voip/messages/controller/c/as;->h(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public h(J)Ljava/util/Map;
    .locals 1
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
    .line 412
    iget-object v0, p0, Lcom/viber/voip/messages/controller/c/as;->e:Lcom/viber/voip/messages/controller/c/aq;

    invoke-virtual {v0, p1, p2}, Lcom/viber/voip/messages/controller/c/aq;->d(J)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public h(Ljava/util/Set;)V
    .locals 1
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
    .line 625
    iget-object v0, p0, Lcom/viber/voip/messages/controller/c/as;->e:Lcom/viber/voip/messages/controller/c/aq;

    invoke-virtual {v0, p1}, Lcom/viber/voip/messages/controller/c/aq;->b(Ljava/util/Set;)V

    .line 626
    return-void
.end method

.method public i(JJ)I
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 697
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 698
    const-string/jumbo v1, "delete_token"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 700
    invoke-virtual {p0}, Lcom/viber/voip/messages/controller/c/as;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string/jumbo v2, "conversations"

    const-string/jumbo v3, "group_id=?"

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

.method public i(Ljava/util/Set;)I
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)I"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 633
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 634
    const-string/jumbo v1, "deleted"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 636
    invoke-virtual {p0}, Lcom/viber/voip/messages/controller/c/as;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string/jumbo v2, "messages"

    const-string/jumbo v3, "_id IN (%s)"

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Lcom/viber/voip/i/a;->c(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public i()Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;
    .locals 2

    .prologue
    .line 465
    const-string/jumbo v0, "participant_type=0"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/viber/voip/messages/controller/c/as;->i(Ljava/lang/String;[Ljava/lang/String;)Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;

    move-result-object v0

    return-object v0
.end method

.method public i(J)Ljava/util/List;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Lcom/viber/voip/messages/orm/entity/impl/ParticipantEntityImpl;",
            ">;"
        }
    .end annotation

    .prologue
    .line 416
    const-string/jumbo v0, "conversation_id=?"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/viber/voip/messages/controller/c/as;->g(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public j(JJ)I
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 775
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 776
    const-string/jumbo v1, "read"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 778
    invoke-virtual {p0}, Lcom/viber/voip/messages/controller/c/as;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string/jumbo v2, "messages"

    const-string/jumbo v3, "conversation_id=? AND token<=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    const/4 v5, 0x1

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public j(J)Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;
    .locals 5
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 428
    const-string/jumbo v0, "_id IN (%s)"

    new-array v1, v3, [Ljava/lang/Object;

    const-string/jumbo v2, "SELECT participant_info_id FROM participants WHERE _id=?"

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lcom/viber/voip/messages/controller/c/as;->i(Ljava/lang/String;[Ljava/lang/String;)Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;

    move-result-object v0

    return-object v0
.end method

.method public j()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;",
            ">;"
        }
    .end annotation

    .prologue
    .line 509
    const-string/jumbo v0, "type=1 AND status IN( 0, 4 )"

    const/4 v1, 0x0

    const-string/jumbo v2, "date ASC"

    invoke-virtual {p0, v0, v1, v2}, Lcom/viber/voip/messages/controller/c/as;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public j(Ljava/util/Set;)Ljava/util/Set;
    .locals 1
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
    .line 805
    iget-object v0, p0, Lcom/viber/voip/messages/controller/c/as;->e:Lcom/viber/voip/messages/controller/c/aq;

    invoke-virtual {v0, p1}, Lcom/viber/voip/messages/controller/c/aq;->g(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public k(J)Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;
    .locals 4
    .parameter

    .prologue
    .line 477
    const-string/jumbo v0, "token=?"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/viber/voip/messages/controller/c/as;->c(Ljava/lang/String;[Ljava/lang/String;)Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    move-result-object v0

    return-object v0
.end method

.method public k()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;",
            ">;"
        }
    .end annotation

    .prologue
    .line 513
    const-string/jumbo v0, "type=0 AND ( extra_mime IN ( \'image\', \'video\') AND extra_uri IS NULL AND status<>\'-1\') OR ( extra_mime = \'sound\' AND extra_status = 4 ) "

    const/4 v1, 0x0

    const-string/jumbo v2, "date DESC"

    invoke-virtual {p0, v0, v1, v2}, Lcom/viber/voip/messages/controller/c/as;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public k(JJ)Ljava/util/Set;
    .locals 1
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
    .line 797
    iget-object v0, p0, Lcom/viber/voip/messages/controller/c/as;->e:Lcom/viber/voip/messages/controller/c/aq;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/viber/voip/messages/controller/c/aq;->c(JJ)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public k(Ljava/util/Set;)Ljava/util/Set;
    .locals 1
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
    .line 809
    iget-object v0, p0, Lcom/viber/voip/messages/controller/c/as;->e:Lcom/viber/voip/messages/controller/c/aq;

    invoke-virtual {v0, p1}, Lcom/viber/voip/messages/controller/c/aq;->h(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public l(J)Lcom/viber/voip/messages/orm/entity/impl/PublicGroupMessageInfoEntityImpl;
    .locals 4
    .parameter

    .prologue
    .line 481
    const-string/jumbo v0, "message_token=?"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/viber/voip/messages/controller/c/as;->j(Ljava/lang/String;[Ljava/lang/String;)Lcom/viber/voip/messages/orm/entity/impl/PublicGroupMessageInfoEntityImpl;

    move-result-object v0

    return-object v0
.end method

.method public l()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;",
            ">;"
        }
    .end annotation

    .prologue
    .line 517
    const-string/jumbo v0, "read>0 AND extra_mime <>\'notif\' AND extra_mime <>\'call\' AND extra_mime <>\'formatted_follow\' AND (extra_flags & 16) = 0"

    const/4 v1, 0x0

    const-string/jumbo v2, "date DESC"

    const-string/jumbo v3, "conversation_id"

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/viber/voip/messages/controller/c/as;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public l(Ljava/util/Set;)Ljava/util/Map;
    .locals 1
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
    .line 862
    iget-object v0, p0, Lcom/viber/voip/messages/controller/c/as;->e:Lcom/viber/voip/messages/controller/c/aq;

    invoke-virtual {v0, p1}, Lcom/viber/voip/messages/controller/c/aq;->c(Ljava/util/Set;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public m(J)Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;
    .locals 4
    .parameter

    .prologue
    .line 493
    const-string/jumbo v0, "_id=?"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/viber/voip/messages/controller/c/as;->c(Ljava/lang/String;[Ljava/lang/String;)Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    move-result-object v0

    return-object v0
.end method

.method public m()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;",
            ">;"
        }
    .end annotation

    .prologue
    .line 521
    const-string/jumbo v0, "read>0 AND extra_mime=\'notif\'"

    const/4 v1, 0x0

    const-string/jumbo v2, "date DESC"

    const-string/jumbo v3, "conversation_id"

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/viber/voip/messages/controller/c/as;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public n()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;",
            ">;"
        }
    .end annotation

    .prologue
    .line 533
    const-string/jumbo v0, "read>0 AND extra_mime =\'call\'"

    const/4 v1, 0x0

    const-string/jumbo v2, "date DESC"

    const-string/jumbo v3, "conversation_id"

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/viber/voip/messages/controller/c/as;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public n(J)Ljava/util/List;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;",
            ">;"
        }
    .end annotation

    .prologue
    .line 501
    const-string/jumbo v0, "type=1 AND status=-1 AND conversation_id=?"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string/jumbo v2, "date DESC"

    invoke-virtual {p0, v0, v1, v2}, Lcom/viber/voip/messages/controller/c/as;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public o()Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 553
    const-string/jumbo v1, "read>0"

    const-string/jumbo v2, "date DESC, token DESC"

    invoke-virtual {p0, v1, v0, v2}, Lcom/viber/voip/messages/controller/c/as;->b(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    move-result-object v1

    .line 554
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getConversationId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/viber/voip/messages/controller/c/as;->c(J)Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public o(J)Ljava/util/List;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;",
            ">;"
        }
    .end annotation

    .prologue
    .line 525
    const-string/jumbo v0, "read>0 AND extra_mime=\'notif\' AND conversation_id=?"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string/jumbo v2, "date ASC"

    invoke-virtual {p0, v0, v1, v2}, Lcom/viber/voip/messages/controller/c/as;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public p(J)Ljava/util/List;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;",
            ">;"
        }
    .end annotation

    .prologue
    .line 529
    const-string/jumbo v0, "read>0 AND conversation_id=? AND (extra_mime <>\'call\' AND extra_mime <>\'notif\' AND extra_mime <>\'formatted_follow\')"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string/jumbo v2, "date DESC"

    invoke-virtual {p0, v0, v1, v2}, Lcom/viber/voip/messages/controller/c/as;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public p()[J
    .locals 3

    .prologue
    .line 587
    iget-object v0, p0, Lcom/viber/voip/messages/controller/c/as;->e:Lcom/viber/voip/messages/controller/c/aq;

    const-wide/16 v1, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/messages/controller/c/aq;->e(J)[J

    move-result-object v0

    return-object v0
.end method

.method public q()I
    .locals 5

    .prologue
    .line 649
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 650
    const-string/jumbo v1, "status"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 652
    invoke-virtual {p0}, Lcom/viber/voip/messages/controller/c/as;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string/jumbo v2, "messages"

    const-string/jumbo v3, "status=3"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public q(J)Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;
    .locals 4
    .parameter

    .prologue
    .line 541
    const-string/jumbo v0, "conversation_id=?"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string/jumbo v2, "date DESC"

    invoke-virtual {p0, v0, v1, v2}, Lcom/viber/voip/messages/controller/c/as;->b(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    move-result-object v0

    return-object v0
.end method

.method public r()I
    .locals 5

    .prologue
    .line 656
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 657
    const-string/jumbo v1, "status"

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 659
    invoke-virtual {p0}, Lcom/viber/voip/messages/controller/c/as;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string/jumbo v2, "messages"

    const-string/jumbo v3, "status=6 OR status=5"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public r(J)Ljava/util/List;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Lcom/viber/voip/messages/orm/entity/impl/MessageCallEntityImpl;",
            ">;"
        }
    .end annotation

    .prologue
    .line 545
    const-string/jumbo v0, "message_id=?"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string/jumbo v2, "date ASC"

    invoke-virtual {p0, v0, v1, v2}, Lcom/viber/voip/messages/controller/c/as;->c(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public s(J)Ljava/util/List;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;",
            ">;"
        }
    .end annotation

    .prologue
    .line 558
    const-string/jumbo v0, "conversation_id=?"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string/jumbo v2, "token ASC"

    invoke-virtual {p0, v0, v1, v2}, Lcom/viber/voip/messages/controller/c/as;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public s()V
    .locals 4

    .prologue
    .line 783
    invoke-virtual {p0}, Lcom/viber/voip/messages/controller/c/as;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 785
    :try_start_0
    invoke-virtual {p0}, Lcom/viber/voip/messages/controller/c/as;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string/jumbo v1, "conversations"

    const-string/jumbo v2, "last_message_id<=0 AND conversation_type=0 AND (delete_token=0 OR delete_token IS NULL)"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 786
    invoke-virtual {p0}, Lcom/viber/voip/messages/controller/c/as;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string/jumbo v1, "messages"

    const-string/jumbo v2, "conversation_id=-1 OR (deleted<>1 AND conversation_id NOT IN (SELECT _id FROM conversations))"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 787
    invoke-virtual {p0}, Lcom/viber/voip/messages/controller/c/as;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string/jumbo v1, "messages_calls"

    const-string/jumbo v2, "message_id NOT IN (SELECT _id FROM messages)"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 788
    invoke-virtual {p0}, Lcom/viber/voip/messages/controller/c/as;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string/jumbo v1, "participants"

    const-string/jumbo v2, "conversation_id=-1 OR (conversation_id NOT IN (SELECT _id FROM conversations))"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 789
    invoke-virtual {p0}, Lcom/viber/voip/messages/controller/c/as;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string/jumbo v1, "participants_info"

    const-string/jumbo v2, "participant_type=1 AND _id NOT IN (SELECT participant_info_id FROM participants)"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 790
    invoke-virtual {p0}, Lcom/viber/voip/messages/controller/c/as;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 792
    invoke-virtual {p0}, Lcom/viber/voip/messages/controller/c/as;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 794
    return-void

    .line 792
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/viber/voip/messages/controller/c/as;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method public t(J)I
    .locals 1
    .parameter

    .prologue
    .line 591
    iget-object v0, p0, Lcom/viber/voip/messages/controller/c/as;->e:Lcom/viber/voip/messages/controller/c/aq;

    invoke-virtual {v0, p1, p2}, Lcom/viber/voip/messages/controller/c/aq;->f(J)I

    move-result v0

    return v0
.end method

.method public t()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 813
    invoke-virtual {p0}, Lcom/viber/voip/messages/controller/c/as;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string/jumbo v1, "messages"

    const-string/jumbo v2, "status = ?"

    new-array v3, v6, [Ljava/lang/String;

    const/4 v4, 0x0

    const/16 v5, 0xa

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 814
    const-string/jumbo v0, "extra_status=6 AND extra_mime=\'sound\'"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/viber/voip/messages/controller/c/as;->b(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 815
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/jni/PhoneControllerWrapper;->getPttController()Lcom/viber/jni/ptt/PttController;

    move-result-object v1

    .line 816
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    .line 821
    invoke-virtual {v0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->isOutgoing()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMediaUri()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 822
    invoke-virtual {v0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMediaUri()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/viber/jni/ptt/PttController;->handleRestorePttDuration(Ljava/lang/String;)I

    move-result v3

    int-to-long v3, v3

    .line 823
    invoke-static {}, Lcom/viber/voip/h/b;->d()Lcom/viber/voip/h/b;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Lcom/viber/voip/h/b;->a(J)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setDuration(J)V

    .line 824
    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setExtraStatus(I)V

    .line 825
    iget-object v3, p0, Lcom/viber/voip/messages/controller/c/as;->e:Lcom/viber/voip/messages/controller/c/aq;

    invoke-virtual {v3, v0}, Lcom/viber/voip/messages/controller/c/aq;->b(Lcom/viber/voip/messages/orm/entity/BaseEntity;)Z

    goto :goto_0

    .line 826
    :cond_1
    invoke-virtual {v0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMediaUri()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 827
    invoke-virtual {v0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMediaUri()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/viber/jni/ptt/PttController;->handleDeletePtt(Ljava/lang/String;)I

    .line 828
    invoke-virtual {v0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getDownloadId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/viber/jni/ptt/PttController;->handleDownloadPtt(Ljava/lang/String;)V

    goto :goto_0

    .line 831
    :cond_2
    return-void
.end method

.method public u()Ljava/util/Set;
    .locals 5
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
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 834
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 835
    const-string/jumbo v1, "last_message_id"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 836
    invoke-virtual {p0}, Lcom/viber/voip/messages/controller/c/as;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string/jumbo v2, "participants"

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 838
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 839
    const-string/jumbo v1, "last_message_id"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 840
    invoke-virtual {p0}, Lcom/viber/voip/messages/controller/c/as;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string/jumbo v2, "conversations"

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 841
    invoke-virtual {p0}, Lcom/viber/voip/messages/controller/c/as;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string/jumbo v1, "messages"

    invoke-virtual {v0, v1, v3, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 843
    iget-object v0, p0, Lcom/viber/voip/messages/controller/c/as;->e:Lcom/viber/voip/messages/controller/c/aq;

    invoke-virtual {v0}, Lcom/viber/voip/messages/controller/c/aq;->a()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public u(J)V
    .locals 1
    .parameter

    .prologue
    .line 595
    iget-object v0, p0, Lcom/viber/voip/messages/controller/c/as;->e:Lcom/viber/voip/messages/controller/c/aq;

    invoke-virtual {v0, p1, p2}, Lcom/viber/voip/messages/controller/c/aq;->h(J)V

    .line 596
    return-void
.end method

.method public v()Ljava/util/Set;
    .locals 4
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
    const/4 v3, 0x0

    .line 847
    iget-object v0, p0, Lcom/viber/voip/messages/controller/c/as;->e:Lcom/viber/voip/messages/controller/c/aq;

    invoke-virtual {v0}, Lcom/viber/voip/messages/controller/c/aq;->a()Ljava/util/Set;

    move-result-object v0

    .line 849
    invoke-virtual {p0}, Lcom/viber/voip/messages/controller/c/as;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string/jumbo v2, "conversations"

    invoke-virtual {v1, v2, v3, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 850
    invoke-virtual {p0}, Lcom/viber/voip/messages/controller/c/as;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string/jumbo v2, "participants"

    invoke-virtual {v1, v2, v3, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 851
    invoke-virtual {p0}, Lcom/viber/voip/messages/controller/c/as;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string/jumbo v2, "messages"

    invoke-virtual {v1, v2, v3, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 852
    invoke-virtual {p0}, Lcom/viber/voip/messages/controller/c/as;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string/jumbo v2, "participants_info"

    invoke-virtual {v1, v2, v3, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 854
    return-object v0
.end method

.method public v(J)V
    .locals 4
    .parameter

    .prologue
    .line 599
    iget-object v0, p0, Lcom/viber/voip/messages/controller/c/as;->e:Lcom/viber/voip/messages/controller/c/aq;

    invoke-virtual {v0, p1, p2}, Lcom/viber/voip/messages/controller/c/aq;->a(J)V

    .line 600
    invoke-static {}, Lcom/viber/voip/util/fz;->a()Lcom/viber/voip/util/fz;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/controller/c/as;->e:Lcom/viber/voip/messages/controller/c/aq;

    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/viber/voip/ViberApplication;->getPhoneApp()Lcom/viber/voip/phone/v;

    move-result-object v2

    invoke-virtual {v2}, Lcom/viber/voip/phone/v;->a()Lcom/viber/voip/e/u;

    move-result-object v2

    invoke-virtual {v2}, Lcom/viber/voip/e/u;->g()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/viber/voip/messages/controller/c/aq;->e(J)[J

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/util/fz;->a([J)V

    .line 602
    return-void
.end method

.method public w()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 876
    invoke-virtual {p0, v0, v0}, Lcom/viber/voip/messages/controller/c/as;->e(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public w(J)V
    .locals 1
    .parameter

    .prologue
    .line 605
    iget-object v0, p0, Lcom/viber/voip/messages/controller/c/as;->e:Lcom/viber/voip/messages/controller/c/aq;

    invoke-virtual {v0, p1, p2}, Lcom/viber/voip/messages/controller/c/aq;->b(J)V

    .line 606
    return-void
.end method

.method public x(J)I
    .locals 1
    .parameter

    .prologue
    .line 629
    iget-object v0, p0, Lcom/viber/voip/messages/controller/c/as;->e:Lcom/viber/voip/messages/controller/c/aq;

    invoke-virtual {v0, p1, p2}, Lcom/viber/voip/messages/controller/c/aq;->g(J)I

    move-result v0

    return v0
.end method

.method public x()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 954
    invoke-virtual {p0, v1, v1}, Lcom/viber/voip/messages/controller/c/as;->f(Ljava/lang/String;[Ljava/lang/String;)Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1, v1}, Lcom/viber/voip/messages/controller/c/as;->c(Ljava/lang/String;[Ljava/lang/String;)Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public y(J)I
    .locals 6
    .parameter

    .prologue
    .line 705
    invoke-virtual {p0}, Lcom/viber/voip/messages/controller/c/as;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string/jumbo v1, "messages"

    const-string/jumbo v2, "_id=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public y()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 958
    const-string/jumbo v0, "LOWER(address) = \'viber\'"

    const/4 v2, 0x0

    const-string/jumbo v3, "date ASC"

    invoke-virtual {p0, v0, v2, v3}, Lcom/viber/voip/messages/controller/c/as;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 959
    if-nez v0, :cond_0

    move v0, v1

    .line 968
    :goto_0
    return v0

    .line 962
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    .line 963
    invoke-virtual {v0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getBody()Ljava/lang/String;

    move-result-object v0

    .line 964
    if-eqz v0, :cond_1

    sget-object v3, Lcom/viber/voip/util/fq;->n:Ljava/util/regex/Pattern;

    invoke-virtual {v3}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 965
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 968
    goto :goto_0
.end method

.method public z(J)Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;
    .locals 4
    .parameter

    .prologue
    .line 871
    const-string/jumbo v0, "sync_read=1 AND conversation_id=?"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string/jumbo v2, "token DESC"

    invoke-virtual {p0, v0, v1, v2}, Lcom/viber/voip/messages/controller/c/as;->b(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    move-result-object v0

    return-object v0
.end method

.method public z()V
    .locals 8

    .prologue
    .line 972
    invoke-virtual {p0}, Lcom/viber/voip/messages/controller/c/as;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 975
    :try_start_0
    invoke-virtual {p0}, Lcom/viber/voip/messages/controller/c/as;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string/jumbo v1, "SELECT conversations.group_id, conversations._id FROM conversations LEFT OUTER JOIN group_conversations_extras ON (group_conversations_extras.group_id=conversations.group_id) WHERE group_role = 3 AND conversation_type=2"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 980
    invoke-static {v0}, Lcom/viber/voip/util/al;->b(Landroid/database/Cursor;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    .line 1001
    :cond_0
    invoke-virtual {p0}, Lcom/viber/voip/messages/controller/c/as;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1004
    :goto_0
    return-void

    .line 985
    :cond_1
    const/4 v1, 0x0

    :try_start_1
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 986
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 992
    invoke-virtual {p0}, Lcom/viber/voip/messages/controller/c/as;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string/jumbo v4, "messages"

    const-string/jumbo v5, "group_id=? AND _id NOT IN (SELECT _id FROM messages WHERE group_id=? ORDER BY message_global_id DESC LIMIT 200)"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    const/4 v7, 0x1

    aput-object v1, v6, v7

    invoke-virtual {v3, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 993
    invoke-virtual {p0}, Lcom/viber/voip/messages/controller/c/as;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string/jumbo v4, "public_messages_extras"

    const-string/jumbo v5, "group_id=? AND message_token NOT IN (SELECT token FROM messages WHERE group_id=? ORDER BY message_global_id DESC LIMIT 200)"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    const/4 v2, 0x1

    aput-object v1, v6, v2

    invoke-virtual {v3, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 996
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 998
    invoke-static {v0}, Lcom/viber/voip/util/al;->a(Landroid/database/Cursor;)V

    .line 999
    invoke-virtual {p0}, Lcom/viber/voip/messages/controller/c/as;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1001
    invoke-virtual {p0}, Lcom/viber/voip/messages/controller/c/as;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/viber/voip/messages/controller/c/as;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method
