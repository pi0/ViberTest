.class public Lcom/viber/provider/messages/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static A:Ljava/lang/String;

.field private static B:Ljava/lang/String;

.field private static C:Ljava/lang/String;

.field private static D:Ljava/lang/String;

.field private static E:Ljava/lang/String;

.field private static F:Ljava/lang/String;

.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/String;

.field private static e:Ljava/lang/String;

.field private static f:Ljava/lang/String;

.field private static g:Ljava/lang/String;

.field private static h:Ljava/lang/String;

.field private static i:Ljava/lang/String;

.field private static j:Ljava/lang/String;

.field private static k:Ljava/lang/String;

.field private static l:Ljava/lang/String;

.field private static m:Ljava/lang/String;

.field private static n:Ljava/lang/String;

.field private static o:Ljava/lang/String;

.field private static p:Ljava/lang/String;

.field private static q:Ljava/lang/String;

.field private static r:Ljava/lang/String;

.field private static s:Ljava/lang/String;

.field private static t:Ljava/lang/String;

.field private static u:Ljava/lang/String;

.field private static v:Ljava/lang/String;

.field private static w:Ljava/lang/String;

.field private static x:Ljava/lang/String;

.field private static y:Ljava/lang/String;

.field private static z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 115
    const-string/jumbo v0, "ALTER TABLE threads ADD COLUMN message_draft TEXT;"

    sput-object v0, Lcom/viber/provider/messages/a/b;->a:Ljava/lang/String;

    .line 118
    const-string/jumbo v0, "ALTER TABLE threads ADD COLUMN contact_name TEXT;"

    sput-object v0, Lcom/viber/provider/messages/a/b;->b:Ljava/lang/String;

    .line 119
    const-string/jumbo v0, "ALTER TABLE messages ADD COLUMN twitter_status INTEGER DEFAULT 0;"

    sput-object v0, Lcom/viber/provider/messages/a/b;->c:Ljava/lang/String;

    .line 120
    const-string/jumbo v0, "ALTER TABLE threads ADD COLUMN unread_message_count INTEGER DEFAULT 0;"

    sput-object v0, Lcom/viber/provider/messages/a/b;->d:Ljava/lang/String;

    .line 122
    const-string/jumbo v0, "ALTER TABLE messages ADD COLUMN thumbnail_x;"

    sput-object v0, Lcom/viber/provider/messages/a/b;->e:Ljava/lang/String;

    .line 123
    const-string/jumbo v0, "ALTER TABLE messages ADD COLUMN thumbnail_y;"

    sput-object v0, Lcom/viber/provider/messages/a/b;->f:Ljava/lang/String;

    .line 126
    const-string/jumbo v0, "ALTER TABLE messages DROP COLUMN seen;"

    sput-object v0, Lcom/viber/provider/messages/a/b;->g:Ljava/lang/String;

    .line 127
    const-string/jumbo v0, "ALTER TABLE messages ADD COLUMN opened INTEGER DEFAULT 0;"

    sput-object v0, Lcom/viber/provider/messages/a/b;->h:Ljava/lang/String;

    .line 128
    const-string/jumbo v0, "UPDATE participants SET number = \'owner\' WHERE participant_type = 0"

    sput-object v0, Lcom/viber/provider/messages/a/b;->i:Ljava/lang/String;

    .line 132
    const-string/jumbo v0, "ALTER TABLE groups ADD COLUMN smart_event_date INTEGER DEFAULT 0;"

    sput-object v0, Lcom/viber/provider/messages/a/b;->j:Ljava/lang/String;

    .line 135
    const-string/jumbo v0, "ALTER TABLE messages ADD COLUMN deleted INTEGER DEFAULT 0;"

    sput-object v0, Lcom/viber/provider/messages/a/b;->k:Ljava/lang/String;

    .line 136
    const-string/jumbo v0, "ALTER TABLE threads ADD COLUMN delete_token LONG DEFAULT 0;"

    sput-object v0, Lcom/viber/provider/messages/a/b;->l:Ljava/lang/String;

    .line 137
    const-string/jumbo v0, "ALTER TABLE threads ADD COLUMN deleted INTEGER DEFAULT 0;"

    sput-object v0, Lcom/viber/provider/messages/a/b;->m:Ljava/lang/String;

    .line 140
    const-string/jumbo v0, "ALTER TABLE messages ADD COLUMN description TEXT;"

    sput-object v0, Lcom/viber/provider/messages/a/b;->n:Ljava/lang/String;

    .line 143
    const-string/jumbo v0, "ALTER TABLE messages ADD COLUMN count INTEGER DEFAULT 1;"

    sput-object v0, Lcom/viber/provider/messages/a/b;->o:Ljava/lang/String;

    .line 145
    const-string/jumbo v0, "ALTER TABLE threads ADD COLUMN unread_calls_count INTEGER DEFAULT 0;"

    sput-object v0, Lcom/viber/provider/messages/a/b;->p:Ljava/lang/String;

    .line 148
    const-string/jumbo v0, "UPDATE messages SET read = -1 WHERE read = 0;"

    sput-object v0, Lcom/viber/provider/messages/a/b;->q:Ljava/lang/String;

    .line 150
    const-string/jumbo v0, "UPDATE messages SET read = 0 WHERE read = 1;"

    sput-object v0, Lcom/viber/provider/messages/a/b;->r:Ljava/lang/String;

    .line 152
    const-string/jumbo v0, "UPDATE messages SET read = 1 WHERE read = -1;"

    sput-object v0, Lcom/viber/provider/messages/a/b;->s:Ljava/lang/String;

    .line 156
    const-string/jumbo v0, "ALTER TABLE groups ADD COLUMN read_notification_token INTEGER DEFAULT 0;"

    sput-object v0, Lcom/viber/provider/messages/a/b;->t:Ljava/lang/String;

    .line 157
    const-string/jumbo v0, "ALTER TABLE messages ADD COLUMN extra_flags INTEGER DEFAULT 0;"

    sput-object v0, Lcom/viber/provider/messages/a/b;->u:Ljava/lang/String;

    .line 160
    const-string/jumbo v0, "INSERT INTO groups (thread_id, smart_notification) SELECT _id, 0 FROM threads WHERE _id NOT IN(SELECT thread_id FROM groups);"

    sput-object v0, Lcom/viber/provider/messages/a/b;->v:Ljava/lang/String;

    .line 165
    const-string/jumbo v0, "INSERT INTO  participants (thread_id, number, contact_id, participant_type) SELECT threads._id, recipient_number, person, 1 FROM threads AS threads WHERE threads._id NOT IN (SELECT thread_id FROM participants WHERE participant_type = 1)"

    sput-object v0, Lcom/viber/provider/messages/a/b;->w:Ljava/lang/String;

    .line 169
    const-string/jumbo v0, "INSERT INTO participants (thread_id, number, contact_id, participant_type) SELECT threads._id, \'owner\', -1, 0 FROM threads AS threads WHERE threads._id NOT IN (SELECT thread_id FROM participants WHERE participant_type = 0)"

    sput-object v0, Lcom/viber/provider/messages/a/b;->x:Ljava/lang/String;

    .line 173
    const-string/jumbo v0, "REPLACE INTO participants (thread_id, contact_id, number, last_message_date, snippet, mime_type, participant_type, active) SELECT msgs.thread_id, participants.contact_id, msgs.address, msgs.date,  msgs.body, msgs.extra_mime, 1, 0 FROM messages AS msgs, participants AS participants WHERE msgs.type=0 AND  participants.thread_id = msgs.thread_id AND participants.number = msgs.address ORDER BY msgs.date"

    sput-object v0, Lcom/viber/provider/messages/a/b;->y:Ljava/lang/String;

    .line 177
    const-string/jumbo v0, "REPLACE INTO participants (thread_id, contact_id, number, last_message_date, snippet, mime_type, participant_type, active) SELECT msgs.thread_id, -1, \'owner\', msgs.date,  msgs.body, msgs.extra_mime, 0, 0 FROM messages AS msgs, participants AS participants WHERE msgs.type=1 AND participants.thread_id = msgs.thread_id AND participants.number = msgs.address ORDER BY msgs.date"

    sput-object v0, Lcom/viber/provider/messages/a/b;->z:Ljava/lang/String;

    .line 181
    const-string/jumbo v0, "DELETE FROM participants WHERE participant_type=0"

    sput-object v0, Lcom/viber/provider/messages/a/b;->A:Ljava/lang/String;

    .line 183
    const-string/jumbo v0, "INSERT INTO participants (thread_id, number, contact_id, participant_type) SELECT threads._id, \'owner\', -1, 0 FROM threads AS threads WHERE threads._id NOT IN (SELECT thread_id FROM participants WHERE participant_type = 0)"

    sput-object v0, Lcom/viber/provider/messages/a/b;->B:Ljava/lang/String;

    .line 187
    const-string/jumbo v0, "REPLACE INTO participants (thread_id, contact_id, number, last_message_date, snippet, mime_type, participant_type, active) SELECT msgs.thread_id, participants.contact_id, msgs.address, msgs.date,  msgs.body, msgs.extra_mime, 1, 0 FROM messages AS msgs, participants AS participants WHERE msgs.type=0 AND msgs.address<>\'owner\' AND  participants.thread_id = msgs.thread_id AND participants.number = msgs.address ORDER BY msgs.date"

    sput-object v0, Lcom/viber/provider/messages/a/b;->C:Ljava/lang/String;

    .line 191
    const-string/jumbo v0, "REPLACE INTO participants (thread_id, contact_id, number, last_message_date, snippet, mime_type, participant_type, active) SELECT msgs.thread_id, -1, \'owner\', msgs.date,  msgs.body, msgs.extra_mime, 0, 0 FROM messages AS msgs, participants AS participants WHERE (msgs.type=1 OR msgs.address=\'owner\' OR msgs.address=\'groupEntity\') AND participants.thread_id = msgs.thread_id ORDER BY msgs.date"

    sput-object v0, Lcom/viber/provider/messages/a/b;->D:Ljava/lang/String;

    .line 195
    const-string/jumbo v0, "UPDATE messages SET extra_status = 3 WHERE extra_status is NULL"

    sput-object v0, Lcom/viber/provider/messages/a/b;->E:Ljava/lang/String;

    .line 196
    const-string/jumbo v0, "UPDATE messages SET extra_mime=\'text\' WHERE extra_mime is NULL"

    sput-object v0, Lcom/viber/provider/messages/a/b;->F:Ljava/lang/String;

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    sget-object v0, Lcom/viber/provider/messages/a/b;->E:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)V
    .locals 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 252
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 253
    const/4 v2, 0x3

    const-string/jumbo v3, "ViberMessagesHelper$DbPatch"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ViberMessagesHelper$DbPatch.execute: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 255
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 256
    :catch_0
    move-exception v2

    .line 257
    const/4 v3, 0x6

    const-string/jumbo v4, "ViberMessagesHelper$DbPatch"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "ViberMessagesHelper$DbPatch.execute FAIL on sql: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v4, v0, v2}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 260
    :cond_0
    return-void
.end method

.method public static a(Lcom/viber/provider/messages/a/a;Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v7, 0x2a

    const/16 v6, 0x29

    const/16 v5, 0x28

    const/16 v4, 0x22

    const/16 v3, 0x24

    .line 199
    const/4 v0, 0x3

    const-string/jumbo v1, "ViberMessagesHelper$DbPatch"

    const-string/jumbo v2, "ViberMessagesHelper$DbPatch.execute"

    invoke-static {v0, v1, v2}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 200
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 202
    if-ge p2, v4, :cond_0

    if-lt p3, v4, :cond_0

    .line 203
    invoke-static {v0}, Lcom/viber/provider/messages/a/b;->a(Ljava/util/List;)V

    .line 205
    :cond_0
    if-ge p2, v3, :cond_1

    if-lt p3, v3, :cond_1

    .line 206
    invoke-static {v0}, Lcom/viber/provider/messages/a/b;->b(Ljava/util/List;)V

    .line 216
    :cond_1
    if-ge p2, v3, :cond_2

    const/16 v1, 0x25

    if-lt p3, v1, :cond_2

    .line 217
    invoke-static {v0}, Lcom/viber/provider/messages/a/b;->c(Ljava/util/List;)V

    .line 220
    :cond_2
    if-ge p2, v5, :cond_3

    if-lt p3, v5, :cond_3

    .line 221
    invoke-static {v0}, Lcom/viber/provider/messages/a/b;->d(Ljava/util/List;)V

    .line 224
    :cond_3
    if-ge p2, v6, :cond_4

    if-lt p3, v6, :cond_4

    .line 225
    invoke-static {v0}, Lcom/viber/provider/messages/a/b;->e(Ljava/util/List;)V

    .line 228
    :cond_4
    if-ge p2, v7, :cond_5

    if-lt p3, v7, :cond_5

    .line 229
    invoke-static {v0}, Lcom/viber/provider/messages/a/b;->f(Ljava/util/List;)V

    .line 232
    :cond_5
    const/16 v1, 0x2b

    if-ge p2, v1, :cond_6

    const/16 v1, 0x2b

    if-lt p3, v1, :cond_6

    .line 233
    invoke-static {v0}, Lcom/viber/provider/messages/a/b;->g(Ljava/util/List;)V

    .line 236
    :cond_6
    const/16 v1, 0x2c

    if-ge p2, v1, :cond_7

    const/16 v1, 0x2c

    if-lt p3, v1, :cond_7

    .line 237
    invoke-static {v0}, Lcom/viber/provider/messages/a/b;->h(Ljava/util/List;)V

    .line 240
    :cond_7
    const/16 v1, 0x2d

    if-ge p2, v1, :cond_8

    const/16 v1, 0x2d

    if-lt p3, v1, :cond_8

    .line 241
    invoke-static {v0}, Lcom/viber/provider/messages/a/b;->i(Ljava/util/List;)V

    .line 244
    :cond_8
    const-string/jumbo v1, "CREATE INDEX IF NOT EXISTS message_token_date_asc ON messages (date ASC, token ASC)"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 245
    const-string/jumbo v1, "CREATE INDEX IF NOT EXISTS message_token_date_desc ON messages (date DESC, token DESC)"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 246
    const-string/jumbo v1, "CREATE INDEX IF NOT EXISTS thread_date_desc ON threads (date DESC)"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    invoke-static {p1, v0}, Lcom/viber/provider/messages/a/b;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)V

    .line 249
    return-void
.end method

.method private static a(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 263
    const/4 v0, 0x3

    const-string/jumbo v1, "ViberMessagesHelper$DbPatch"

    const-string/jumbo v2, "ViberContactsHelper$DbPatch.patchToVer34"

    invoke-static {v0, v1, v2}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 264
    sget-object v0, Lcom/viber/provider/messages/a/b;->a:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 266
    return-void
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    sget-object v0, Lcom/viber/provider/messages/a/b;->F:Ljava/lang/String;

    return-object v0
.end method

.method private static b(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 269
    const/4 v0, 0x3

    const-string/jumbo v1, "ViberMessagesHelper$DbPatch"

    const-string/jumbo v2, "ViberContactsHelper$DbPatch.patchToVer36"

    invoke-static {v0, v1, v2}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 271
    sget-object v0, Lcom/viber/provider/messages/a/b;->b:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 272
    sget-object v0, Lcom/viber/provider/messages/a/b;->c:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 273
    sget-object v0, Lcom/viber/provider/messages/a/b;->d:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 274
    sget-object v0, Lcom/viber/provider/messages/a/b;->e:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 275
    sget-object v0, Lcom/viber/provider/messages/a/b;->f:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 277
    sget-object v0, Lcom/viber/provider/messages/a/b;->v:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 278
    sget-object v0, Lcom/viber/provider/messages/a/b;->w:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 279
    sget-object v0, Lcom/viber/provider/messages/a/b;->x:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 280
    sget-object v0, Lcom/viber/provider/messages/a/b;->y:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 281
    sget-object v0, Lcom/viber/provider/messages/a/b;->z:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 282
    return-void
.end method

.method private static c(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 285
    sget-object v0, Lcom/viber/provider/messages/a/b;->A:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 286
    sget-object v0, Lcom/viber/provider/messages/a/b;->B:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 287
    sget-object v0, Lcom/viber/provider/messages/a/b;->C:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 288
    sget-object v0, Lcom/viber/provider/messages/a/b;->D:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 289
    return-void
.end method

.method private static d(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 292
    const/4 v0, 0x3

    const-string/jumbo v1, "ViberMessagesHelper$DbPatch"

    const-string/jumbo v2, "ViberContactsHelper$DbPatch.patchToVer40"

    invoke-static {v0, v1, v2}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 293
    sget-object v0, Lcom/viber/provider/messages/a/b;->g:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 294
    sget-object v0, Lcom/viber/provider/messages/a/b;->h:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 295
    sget-object v0, Lcom/viber/provider/messages/a/b;->i:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 297
    return-void
.end method

.method private static e(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 300
    const/4 v0, 0x3

    const-string/jumbo v1, "ViberMessagesHelper$DbPatch"

    const-string/jumbo v2, "ViberContactsHelper$DbPatch.patchToVer41"

    invoke-static {v0, v1, v2}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 301
    sget-object v0, Lcom/viber/provider/messages/a/b;->j:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 302
    return-void
.end method

.method private static f(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 305
    const/4 v0, 0x3

    const-string/jumbo v1, "ViberMessagesHelper$DbPatch"

    const-string/jumbo v2, "ViberContactsHelper$DbPatch.patchToVer42"

    invoke-static {v0, v1, v2}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 306
    sget-object v0, Lcom/viber/provider/messages/a/b;->k:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 307
    sget-object v0, Lcom/viber/provider/messages/a/b;->l:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 308
    sget-object v0, Lcom/viber/provider/messages/a/b;->m:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 310
    const-string/jumbo v0, "CREATE INDEX IF NOT EXISTS message_token_date_asc ON messages (date ASC, token ASC)"

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 311
    const-string/jumbo v0, "CREATE INDEX IF NOT EXISTS message_token_date_desc ON messages (date DESC, token DESC)"

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 312
    const-string/jumbo v0, "CREATE INDEX IF NOT EXISTS thread_date_desc ON threads (date DESC)"

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 313
    return-void
.end method

.method private static g(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 316
    const/4 v0, 0x3

    const-string/jumbo v1, "ViberMessagesHelper$DbPatch"

    const-string/jumbo v2, "ViberContactsHelper$DbPatch.patchToVer43"

    invoke-static {v0, v1, v2}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 317
    sget-object v0, Lcom/viber/provider/messages/a/b;->n:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 318
    return-void
.end method

.method private static h(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 321
    const/4 v0, 0x3

    const-string/jumbo v1, "ViberMessagesHelper$DbPatch"

    const-string/jumbo v2, "ViberContactsHelper$DbPatch.patchToVer43"

    invoke-static {v0, v1, v2}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 322
    sget-object v0, Lcom/viber/provider/messages/a/b;->o:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 323
    sget-object v0, Lcom/viber/provider/messages/a/b;->p:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 324
    sget-object v0, Lcom/viber/provider/messages/a/b;->q:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 325
    sget-object v0, Lcom/viber/provider/messages/a/b;->r:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 326
    sget-object v0, Lcom/viber/provider/messages/a/b;->s:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 327
    return-void
.end method

.method private static i(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 330
    const/4 v0, 0x3

    const-string/jumbo v1, "ViberMessagesHelper$DbPatch"

    const-string/jumbo v2, "ViberMessagessHelper$DbPatch.patchToVer45"

    invoke-static {v0, v1, v2}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 331
    sget-object v0, Lcom/viber/provider/messages/a/b;->t:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 332
    sget-object v0, Lcom/viber/provider/messages/a/b;->u:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 333
    return-void
.end method
