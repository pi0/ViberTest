.class Lcom/viber/provider/contacts/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static A:Ljava/lang/String;

.field private static B:Ljava/lang/String;

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
    .line 75
    const-string/jumbo v0, "DROP TABLE IF EXISTS contacts"

    sput-object v0, Lcom/viber/provider/contacts/a/b;->a:Ljava/lang/String;

    .line 76
    const-string/jumbo v0, "DROP TABLE IF EXISTS contacts_hashes"

    sput-object v0, Lcom/viber/provider/contacts/a/b;->b:Ljava/lang/String;

    .line 77
    const-string/jumbo v0, "DROP TABLE IF EXISTS calls"

    sput-object v0, Lcom/viber/provider/contacts/a/b;->c:Ljava/lang/String;

    .line 78
    const-string/jumbo v0, "CREATE TABLE IF NOT EXISTS calls (_id INTEGER PRIMARY KEY AUTOINCREMENT,call_id LONG NOT NULL,aggregate_hash LONG NOT NULL,number TEXT NOT NULL,canonized_number TEXT NOT NULL,viber_call BOOLEAN DEFAULT TRUE,viber_call_type INTEGER DEFAULT 1, date LONG NOT NULL,duration LONG NOT NULL,type INT NOT NULL,end_reason INT DEFAULT 0,start_reason INT DEFAULT 0,token LONG DEFAULT 0,looked BOOLEAN DEFAULT TRUE);"

    sput-object v0, Lcom/viber/provider/contacts/a/b;->d:Ljava/lang/String;

    .line 81
    const-string/jumbo v0, "ALTER TABLE messages ADD COLUMN location_lat LONG;"

    sput-object v0, Lcom/viber/provider/contacts/a/b;->e:Ljava/lang/String;

    .line 83
    const-string/jumbo v0, "ALTER TABLE messages ADD COLUMN location_lng LONG;"

    sput-object v0, Lcom/viber/provider/contacts/a/b;->f:Ljava/lang/String;

    .line 84
    const-string/jumbo v0, "ALTER TABLE messages ADD COLUMN has_extras BOOLEAN DEFAULT false;"

    sput-object v0, Lcom/viber/provider/contacts/a/b;->g:Ljava/lang/String;

    .line 85
    const-string/jumbo v0, "ALTER TABLE messages ADD COLUMN extra_uri TEXT;"

    sput-object v0, Lcom/viber/provider/contacts/a/b;->h:Ljava/lang/String;

    .line 86
    const-string/jumbo v0, "ALTER TABLE messages ADD COLUMN extra_mime TEXT;"

    sput-object v0, Lcom/viber/provider/contacts/a/b;->i:Ljava/lang/String;

    .line 87
    const-string/jumbo v0, "ALTER TABLE messages ADD COLUMN extra_status INTEGER;"

    sput-object v0, Lcom/viber/provider/contacts/a/b;->j:Ljava/lang/String;

    .line 89
    const-string/jumbo v0, "ALTER TABLE messages ADD COLUMN seq INTEGER;"

    sput-object v0, Lcom/viber/provider/contacts/a/b;->k:Ljava/lang/String;

    .line 90
    const-string/jumbo v0, "ALTER TABLE messages ADD COLUMN extra_upload_id LONG;"

    sput-object v0, Lcom/viber/provider/contacts/a/b;->l:Ljava/lang/String;

    .line 91
    const-string/jumbo v0, "ALTER TABLE messages ADD COLUMN extra_bucket_name TEXT;"

    sput-object v0, Lcom/viber/provider/contacts/a/b;->m:Ljava/lang/String;

    .line 93
    const-string/jumbo v0, "ALTER TABLE messages ADD COLUMN extra_download_id TEXT;"

    sput-object v0, Lcom/viber/provider/contacts/a/b;->n:Ljava/lang/String;

    .line 95
    const-string/jumbo v0, "ALTER TABLE messages ADD COLUMN fb_status INTEGER DEFAULT 0;"

    sput-object v0, Lcom/viber/provider/contacts/a/b;->o:Ljava/lang/String;

    .line 98
    const-string/jumbo v0, "ALTER TABLE messages ADD COLUMN extra_duration LONG;"

    sput-object v0, Lcom/viber/provider/contacts/a/b;->p:Ljava/lang/String;

    .line 99
    const-string/jumbo v0, "ALTER TABLE threads ADD COLUMN share_location INTEGER DEFAULT 0;"

    sput-object v0, Lcom/viber/provider/contacts/a/b;->q:Ljava/lang/String;

    .line 101
    const-string/jumbo v0, "ALTER TABLE phonebookcontact ADD COLUMN low_display_name TEXT;"

    sput-object v0, Lcom/viber/provider/contacts/a/b;->r:Ljava/lang/String;

    .line 102
    const-string/jumbo v0, "ALTER TABLE phonebookdata ADD COLUMN data5 TEXT;"

    sput-object v0, Lcom/viber/provider/contacts/a/b;->s:Ljava/lang/String;

    .line 103
    const-string/jumbo v0, "UPDATE phonebookcontact SET low_display_name = (SELECT display_name FROM phonebookcontact p1 WHERE p1._id = phonebookcontact._id)"

    sput-object v0, Lcom/viber/provider/contacts/a/b;->t:Ljava/lang/String;

    .line 107
    const-string/jumbo v0, "ALTER TABLE calls ADD COLUMN end_reason INT DEFAULT 0;"

    sput-object v0, Lcom/viber/provider/contacts/a/b;->u:Ljava/lang/String;

    .line 108
    const-string/jumbo v0, "ALTER TABLE calls ADD COLUMN start_reason INT DEFAULT 0;"

    sput-object v0, Lcom/viber/provider/contacts/a/b;->v:Ljava/lang/String;

    .line 110
    const-string/jumbo v0, "ALTER TABLE phonebookdata ADD COLUMN int_data1 INTEGER DEFAULT 0;"

    sput-object v0, Lcom/viber/provider/contacts/a/b;->w:Ljava/lang/String;

    .line 111
    const-string/jumbo v0, "ALTER TABLE phonebookcontact ADD COLUMN numbers_name TEXT DEFAULT \'\';"

    sput-object v0, Lcom/viber/provider/contacts/a/b;->x:Ljava/lang/String;

    .line 112
    const-string/jumbo v0, "DELETE FROM  calls WHERE viber_call=0;"

    sput-object v0, Lcom/viber/provider/contacts/a/b;->y:Ljava/lang/String;

    .line 114
    const-string/jumbo v0, "ALTER TABLE  phonebookcontact ADD COLUMN  flags INTEGER DEFAULT 0;"

    sput-object v0, Lcom/viber/provider/contacts/a/b;->z:Ljava/lang/String;

    .line 116
    const-string/jumbo v0, "ALTER TABLE  calls ADD COLUMN  viber_call_type INTEGER DEFAULT 1;"

    sput-object v0, Lcom/viber/provider/contacts/a/b;->A:Ljava/lang/String;

    .line 118
    const-string/jumbo v0, "UPDATE calls SET viber_call_type= (CASE WHEN calls.viber_call = 1 THEN 1 ELSE 0 END)"

    sput-object v0, Lcom/viber/provider/contacts/a/b;->B:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/viber/provider/contacts/a/a;Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v8, 0x20

    const/16 v7, 0x1f

    const/16 v6, 0x1e

    const/16 v5, 0x1d

    const/16 v4, 0x1c

    .line 123
    const/4 v0, 0x3

    const-string/jumbo v1, "ViberContactsHelper$DbPatch"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ViberContactsHelper$DbPatch.execute oldVersion: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "; newVersion: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 125
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 127
    invoke-static {p0, p3, p4}, Lcom/viber/voip/contacts/c/f/a/a/n;->a(Landroid/content/Context;II)V

    .line 129
    const/16 v0, 0x1b

    if-ge p3, v0, :cond_0

    .line 130
    invoke-static {v2}, Lcom/viber/provider/contacts/a/b;->a(Ljava/util/List;)V

    .line 132
    :cond_0
    if-ge p3, v4, :cond_1

    if-lt p4, v4, :cond_1

    .line 133
    invoke-static {v2}, Lcom/viber/provider/contacts/a/b;->b(Ljava/util/List;)V

    .line 135
    :cond_1
    if-ge p3, v5, :cond_2

    if-lt p4, v5, :cond_2

    .line 136
    invoke-static {v2}, Lcom/viber/provider/contacts/a/b;->c(Ljava/util/List;)V

    .line 138
    :cond_2
    if-ge p3, v6, :cond_3

    if-lt p4, v6, :cond_3

    .line 139
    invoke-static {v2}, Lcom/viber/provider/contacts/a/b;->d(Ljava/util/List;)V

    .line 141
    :cond_3
    if-ge p3, v7, :cond_4

    if-lt p4, v7, :cond_4

    .line 142
    invoke-static {v2}, Lcom/viber/provider/contacts/a/b;->e(Ljava/util/List;)V

    .line 144
    :cond_4
    if-ge p3, v8, :cond_5

    if-lt p4, v8, :cond_5

    .line 145
    invoke-static {v2}, Lcom/viber/provider/contacts/a/b;->f(Ljava/util/List;)V

    .line 151
    :cond_5
    invoke-static {p2, v2}, Lcom/viber/provider/contacts/a/b;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)V

    .line 152
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 153
    const/16 v0, 0x21

    if-ge p3, v0, :cond_6

    const/16 v0, 0x21

    if-lt p4, v0, :cond_6

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    .line 154
    invoke-static/range {v0 .. v5}, Lcom/viber/provider/contacts/a/b;->a(Landroid/content/Context;Lcom/viber/provider/contacts/a/a;Ljava/util/List;Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 156
    :cond_6
    const/16 v0, 0x27

    if-ge p3, v0, :cond_7

    const/16 v0, 0x27

    if-lt p4, v0, :cond_7

    .line 157
    invoke-static {v2, p2}, Lcom/viber/provider/contacts/a/b;->a(Ljava/util/List;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 159
    :cond_7
    const/16 v0, 0x2a

    if-ge p3, v0, :cond_8

    const/16 v0, 0x2a

    if-lt p4, v0, :cond_8

    .line 160
    invoke-static {v2}, Lcom/viber/provider/contacts/a/b;->g(Ljava/util/List;)V

    .line 162
    :cond_8
    const/16 v0, 0x2b

    if-ge p3, v0, :cond_9

    const/16 v0, 0x2b

    if-lt p4, v0, :cond_9

    .line 163
    invoke-static {v2, p2}, Lcom/viber/provider/contacts/a/b;->b(Ljava/util/List;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 165
    :cond_9
    const/16 v0, 0x2c

    if-ge p3, v0, :cond_a

    const/16 v0, 0x2c

    if-lt p4, v0, :cond_a

    .line 166
    invoke-static {v2, p2}, Lcom/viber/provider/contacts/a/b;->c(Ljava/util/List;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 168
    :cond_a
    const/16 v0, 0x2e

    if-ge p3, v0, :cond_b

    const/16 v0, 0x2e

    if-lt p4, v0, :cond_b

    .line 169
    invoke-static {v2, p2}, Lcom/viber/provider/contacts/a/b;->d(Ljava/util/List;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 171
    :cond_b
    invoke-static {p2, v2}, Lcom/viber/provider/contacts/a/b;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)V

    .line 172
    return-void
.end method

.method private static a(Landroid/content/Context;Lcom/viber/provider/contacts/a/a;Ljava/util/List;Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/viber/provider/contacts/a/a;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "II)V"
        }
    .end annotation

    .prologue
    .line 213
    const/4 v0, 0x3

    const-string/jumbo v1, "ViberContactsHelper$DbPatch"

    const-string/jumbo v2, "ViberContactsHelper$DbPatch.patchToVer33: SPLIT DATABASE"

    invoke-static {v0, v1, v2}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p2

    .line 214
    invoke-static/range {v0 .. v5}, Lcom/viber/provider/messages/a/a;->a(Landroid/content/Context;Lcom/viber/provider/contacts/a/a;Landroid/database/sqlite/SQLiteDatabase;IILjava/util/List;)V

    .line 215
    return-void
.end method

.method private static a(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)V
    .locals 6
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
    .line 270
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 271
    const/4 v2, 0x3

    const-string/jumbo v3, "ViberContactsHelper$DbPatch"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ViberContactsHelper$DbPatch.execute: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 273
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 274
    :catch_0
    move-exception v0

    .line 275
    invoke-virtual {v0}, Landroid/database/SQLException;->printStackTrace()V

    goto :goto_0

    .line 278
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 279
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
    .line 175
    const/4 v0, 0x3

    const-string/jumbo v1, "ViberContactsHelper$DbPatch"

    const-string/jumbo v2, "ViberContactsHelper$DbPatch.patchToVer27"

    invoke-static {v0, v1, v2}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 176
    sget-object v0, Lcom/viber/provider/contacts/a/b;->e:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    return-void
.end method

.method private static a(Ljava/util/List;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")V"
        }
    .end annotation

    .prologue
    .line 218
    const/4 v0, 0x3

    const-string/jumbo v1, "ViberContactsHelper$DbPatch"

    const-string/jumbo v2, "ViberContactsHelper$DbPatch.patchToVer39"

    invoke-static {v0, v1, v2}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 219
    sget-object v0, Lcom/viber/provider/contacts/a/b;->a:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    sget-object v0, Lcom/viber/provider/contacts/a/b;->b:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    sget-object v0, Lcom/viber/provider/contacts/a/b;->r:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    sget-object v0, Lcom/viber/provider/contacts/a/b;->s:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    sget-object v0, Lcom/viber/provider/contacts/a/b;->t:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 228
    const-string/jumbo v1, "SELECT call_id FROM calls"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 229
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 231
    :cond_0
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 232
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 234
    :cond_1
    invoke-static {v1}, Lcom/viber/voip/util/al;->a(Landroid/database/Cursor;)V

    .line 235
    invoke-static {v0}, Lcom/viber/voip/calls/af;->a(Ljava/util/Set;)V

    .line 238
    sget-object v0, Lcom/viber/provider/contacts/a/b;->c:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    sget-object v0, Lcom/viber/provider/contacts/a/b;->d:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    const-string/jumbo v0, "CREATE INDEX IF NOT EXISTS call_date ON calls (date DESC)"

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    const-string/jumbo v0, "CREATE INDEX IF NOT EXISTS contacts_name ON phonebookcontact (recently_joined_date DESC, low_display_name ASC)"

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    return-void
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
    .line 180
    const/4 v0, 0x3

    const-string/jumbo v1, "ViberContactsHelper$DbPatch"

    const-string/jumbo v2, "ViberContactsHelper$DbPatch.patchToVer28"

    invoke-static {v0, v1, v2}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 181
    sget-object v0, Lcom/viber/provider/contacts/a/b;->f:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    sget-object v0, Lcom/viber/provider/contacts/a/b;->g:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    sget-object v0, Lcom/viber/provider/contacts/a/b;->h:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    sget-object v0, Lcom/viber/provider/contacts/a/b;->i:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    sget-object v0, Lcom/viber/provider/contacts/a/b;->j:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    return-void
.end method

.method private static b(Ljava/util/List;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")V"
        }
    .end annotation

    .prologue
    .line 252
    const/4 v0, 0x3

    const-string/jumbo v1, "ViberContactsHelper$DbPatch"

    const-string/jumbo v2, "ViberContactsHelper$DbPatch.patchToVer43"

    invoke-static {v0, v1, v2}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 253
    sget-object v0, Lcom/viber/provider/contacts/a/b;->w:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 254
    sget-object v0, Lcom/viber/provider/contacts/a/b;->x:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 255
    sget-object v0, Lcom/viber/provider/contacts/a/b;->y:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 256
    return-void
.end method

.method private static c(Ljava/util/List;)V
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
    .line 189
    const/4 v0, 0x3

    const-string/jumbo v1, "ViberContactsHelper$DbPatch"

    const-string/jumbo v2, "ViberContactsHelper$DbPatch.patchToVer29"

    invoke-static {v0, v1, v2}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 190
    sget-object v0, Lcom/viber/provider/contacts/a/b;->k:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    sget-object v0, Lcom/viber/provider/contacts/a/b;->l:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    return-void
.end method

.method private static c(Ljava/util/List;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")V"
        }
    .end annotation

    .prologue
    .line 259
    const/4 v0, 0x3

    const-string/jumbo v1, "ViberContactsHelper$DbPatch"

    const-string/jumbo v2, "ViberContactsHelper$DbPatch.patchToVer44"

    invoke-static {v0, v1, v2}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 260
    sget-object v0, Lcom/viber/provider/contacts/a/b;->z:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 261
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
    .line 195
    const/4 v0, 0x3

    const-string/jumbo v1, "ViberContactsHelper$DbPatch"

    const-string/jumbo v2, "ViberContactsHelper$DbPatch.patchToVer30"

    invoke-static {v0, v1, v2}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 196
    sget-object v0, Lcom/viber/provider/contacts/a/b;->n:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    sget-object v0, Lcom/viber/provider/contacts/a/b;->m:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    return-void
.end method

.method private static d(Ljava/util/List;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")V"
        }
    .end annotation

    .prologue
    .line 264
    const/4 v0, 0x3

    const-string/jumbo v1, "ViberContactsHelper$DbPatch"

    const-string/jumbo v2, "ViberContactsHelper$DbPatch.patchToVer46"

    invoke-static {v0, v1, v2}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 265
    sget-object v0, Lcom/viber/provider/contacts/a/b;->A:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 266
    sget-object v0, Lcom/viber/provider/contacts/a/b;->B:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 267
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
    .line 201
    const/4 v0, 0x3

    const-string/jumbo v1, "ViberContactsHelper$DbPatch"

    const-string/jumbo v2, "ViberContactsHelper$DbPatch.patchToVer31"

    invoke-static {v0, v1, v2}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 202
    sget-object v0, Lcom/viber/provider/contacts/a/b;->o:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
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
    .line 206
    const/4 v0, 0x3

    const-string/jumbo v1, "ViberContactsHelper$DbPatch"

    const-string/jumbo v2, "ViberContactsHelper$DbPatch.patchToVer32"

    invoke-static {v0, v1, v2}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 207
    sget-object v0, Lcom/viber/provider/contacts/a/b;->p:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    sget-object v0, Lcom/viber/provider/contacts/a/b;->q:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
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
    .line 246
    const/4 v0, 0x3

    const-string/jumbo v1, "ViberContactsHelper$DbPatch"

    const-string/jumbo v2, "ViberContactsHelper$DbPatch.patchToVer42"

    invoke-static {v0, v1, v2}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 247
    sget-object v0, Lcom/viber/provider/contacts/a/b;->u:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    sget-object v0, Lcom/viber/provider/contacts/a/b;->v:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 249
    return-void
.end method
