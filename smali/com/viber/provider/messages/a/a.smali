.class public Lcom/viber/provider/messages/a/a;
.super Lcom/viber/provider/i;
.source "SourceFile"


# static fields
.field public static final b:Ljava/lang/String;


# instance fields
.field protected c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/viber/provider/messages/a/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/provider/messages/a/a;->b:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 44
    const-string/jumbo v0, "viber_messages"

    invoke-direct {p0, p1, v0}, Lcom/viber/provider/i;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lcom/viber/provider/messages/a/a;->c:I

    .line 45
    iput p2, p0, Lcom/viber/provider/messages/a/a;->c:I

    .line 46
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/viber/provider/contacts/a/a;Landroid/database/sqlite/SQLiteDatabase;IILjava/util/List;)V
    .locals 9
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
            "Landroid/database/sqlite/SQLiteDatabase;",
            "II",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v8, 0x6

    const/4 v7, 0x0

    .line 337
    const/4 v0, 0x3

    sget-object v1, Lcom/viber/provider/messages/a/a;->b:Ljava/lang/String;

    const-string/jumbo v2, "ViberMessagesHelper$performSplitMigration_v33"

    invoke-static {v0, v1, v2}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 339
    const-string/jumbo v0, "ViberMessagesMigrateALIAS"

    .line 340
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->isDbLockedByCurrentThread()Z

    move-result v1

    .line 341
    const-string/jumbo v0, "viber_data"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 343
    new-instance v3, Lcom/viber/provider/messages/a/a;

    const/16 v0, 0x21

    invoke-direct {v3, p0, v0}, Lcom/viber/provider/messages/a/a;-><init>(Landroid/content/Context;I)V

    .line 344
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 346
    if-eqz v1, :cond_0

    .line 347
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 348
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 353
    :cond_0
    :try_start_0
    const-string/jumbo v0, "CREATE TABLE IF NOT EXISTS msgthreads (_id INTEGER PRIMARY KEY autoincrement,date INTEGER DEFAULT 0,message_count INTEGER DEFAULT 0,recipient_number TEXT,snippet TEXT,read INTEGER DEFAULT 1,type INTEGER DEFAULT 0,error INTEGER DEFAULT 0,person INTEGER DEFAULT -1,share_location INTEGER DEFAULT 0 );"

    invoke-virtual {v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 358
    :goto_0
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ATTACH DATABASE \'"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\' AS "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "ViberMessagesMigrateALIAS"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 359
    const-string/jumbo v0, "INSERT OR REPLACE INTO msgthreads SELECT _id, date, message_count, recipient_number, snippet, read, type, error, person, share_location FROM threads"

    invoke-virtual {v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 361
    const-string/jumbo v0, "INSERT OR REPLACE INTO msgs ( _id, thread_id, address, person, date, read, status, type, subject, body, error_code, flag, token, location_lat, location_lng, has_extras, extra_uri, extra_mime, extra_status, seq, extra_upload_id, extra_download_id, extra_bucket_name, fb_status, extra_duration) SELECT _id, thread_id, address, person, date, read, status, type, subject, body, error_code, flag, token, location_lat, location_lng, has_extras, extra_uri, extra_mime, extra_status, seq, extra_upload_id, extra_download_id, extra_bucket_name, fb_status, extra_duration FROM messages"

    invoke-virtual {v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 364
    const-string/jumbo v0, "DETACH DATABASE \'ViberMessagesMigrateALIAS\'"

    invoke-virtual {v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 365
    const-string/jumbo v0, "ALTER TABLE msgthreads RENAME TO threads"

    invoke-virtual {v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 366
    const-string/jumbo v0, "ALTER TABLE msgs RENAME TO messages"

    invoke-virtual {v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 367
    const-string/jumbo v0, "CREATE INDEX IF NOT EXISTS message_token_date_asc ON messages (date ASC, token ASC)"

    invoke-virtual {v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 368
    const-string/jumbo v0, "CREATE INDEX IF NOT EXISTS message_token_date_desc ON messages (date DESC, token DESC)"

    invoke-virtual {v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 369
    const-string/jumbo v0, "CREATE INDEX IF NOT EXISTS thread_date_desc ON threads (date DESC)"

    invoke-virtual {v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 370
    invoke-static {}, Lcom/viber/provider/messages/a/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 371
    invoke-static {}, Lcom/viber/provider/messages/a/b;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 372
    const-string/jumbo v0, "DROP TABLE IF EXISTS threads"

    invoke-virtual {p2, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 373
    const-string/jumbo v0, "DROP TABLE IF EXISTS messages"

    invoke-virtual {p2, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 378
    const-string/jumbo v0, "DETACH DATABASE ViberMessagesMigrateALIAS"

    invoke-virtual {v4, v0, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/util/al;->a(Landroid/database/Cursor;)V

    .line 379
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 380
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    .line 381
    if-eqz v1, :cond_1

    .line 382
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 385
    :cond_1
    :goto_1
    return-void

    .line 354
    :catch_0
    move-exception v0

    .line 355
    sget-object v5, Lcom/viber/provider/messages/a/a;->b:Ljava/lang/String;

    const-string/jumbo v6, "ViberMessagesHelper$performSplitMigration_v33"

    invoke-static {v8, v5, v6, v0}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 374
    :catch_1
    move-exception v0

    .line 376
    const/4 v2, 0x6

    :try_start_2
    sget-object v5, Lcom/viber/provider/messages/a/a;->b:Ljava/lang/String;

    const-string/jumbo v6, "ViberMessagesHelper$performSplitMigration_v33"

    invoke-static {v2, v5, v6, v0}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 378
    const-string/jumbo v0, "DETACH DATABASE ViberMessagesMigrateALIAS"

    invoke-virtual {v4, v0, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/util/al;->a(Landroid/database/Cursor;)V

    .line 379
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 380
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    .line 381
    if-eqz v1, :cond_1

    .line 382
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    goto :goto_1

    .line 378
    :catchall_0
    move-exception v0

    const-string/jumbo v2, "DETACH DATABASE ViberMessagesMigrateALIAS"

    invoke-virtual {v4, v2, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    invoke-static {v2}, Lcom/viber/voip/util/al;->a(Landroid/database/Cursor;)V

    .line 379
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 380
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    .line 381
    if-eqz v1, :cond_2

    .line 382
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :cond_2
    throw v0
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 5
    .parameter

    .prologue
    const/16 v4, 0x21

    .line 50
    const/4 v0, 0x3

    const-string/jumbo v1, "--trace--"

    const-string/jumbo v2, "onCreate db "

    invoke-static {v0, v1, v2}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 51
    iget v0, p0, Lcom/viber/provider/messages/a/a;->c:I

    if-ne v4, v0, :cond_1

    const-string/jumbo v0, "msgthreads (_id INTEGER PRIMARY KEY autoincrement,date INTEGER DEFAULT 0,message_count INTEGER DEFAULT 0,recipient_number TEXT,snippet TEXT,read INTEGER DEFAULT 1,type INTEGER DEFAULT 0,error INTEGER DEFAULT 0,person INTEGER DEFAULT -1,share_location INTEGER DEFAULT 0 );"

    .line 53
    :goto_0
    iget v1, p0, Lcom/viber/provider/messages/a/a;->c:I

    if-ne v4, v1, :cond_2

    const-string/jumbo v1, "msgs"

    .line 56
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "CREATE TABLE IF NOT EXISTS "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " (_id INTEGER PRIMARY KEY autoincrement,thread_id INTEGER NOT NULL,address TEXT NOT NULL,person INTEGER,date INTEGER NOT NULL,read INTEGER DEFAULT 0,opened INTEGER DEFAULT 0,status INTEGER DEFAULT 0,type INTEGER NOT NULL,subject TEXT,body TEXT,error_code INTEGER DEFAULT 0,seen INTEGER DEFAULT 0,flag INTEGER DEFAULT 0,token LONG,location_lat LONG,location_lng LONG,has_extras BOOLEAN DEFAULT false,extra_uri TEXT,extra_mime TEXT,extra_status INTEGER,seq INTEGER,extra_upload_id LONG,extra_download_id TEXT,extra_bucket_name TEXT,extra_duration LONG,fb_status INTEGER DEFAULT 0,twitter_status INTEGER DEFAULT 0,thumbnail_x INTEGER ,thumbnail_y INTEGER ,description TEXT ,deleted INTEGER DEFAULT 0,count INTEGER DEFAULT 1, extra_flags INTEGER DEFAULT 0 );"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 57
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "CREATE TABLE IF NOT EXISTS "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 59
    const-string/jumbo v0, "CREATE TABLE IF NOT EXISTS groups (_id INTEGER PRIMARY KEY autoincrement,thread_id INTEGER NOT NULL,name TEXT,active BOOLEAN DEFAULT true,smart_notification INTEGER,smart_event_date INTEGER DEFAULT 0, mute_notification INTEGER,background_landscape TEXT, background_portrait TEXT, read_notification_token INTEGER DEFAULT 0);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 60
    const-string/jumbo v0, "CREATE TABLE IF NOT EXISTS participants (_id INTEGER PRIMARY KEY autoincrement,thread_id INTEGER NOT NULL,number TEXT,contact_name TEXT,display_name TEXT,display_image TEXT,active BOOLEAN DEFAULT true,location_lat LONG,location_lng LONG,participant_type INTEGER,contact_id INTEGER,last_message_date LONG DEFAULT 0, snippet TEXT, mime_type TEXT, CONSTRAINT unique_thread UNIQUE(thread_id, number) ON CONFLICT REPLACE);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 61
    const-string/jumbo v0, "CREATE TABLE IF NOT EXISTS kvdata (_id INTEGER PRIMARY KEY autoincrement,object_id LONG DEFAULT 0,key TEXT,value TEXT,value_type INTEGER DEFAULT 0);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 63
    iget v0, p0, Lcom/viber/provider/messages/a/a;->c:I

    if-le v4, v0, :cond_0

    .line 64
    const-string/jumbo v0, "CREATE INDEX IF NOT EXISTS message_token_date_asc ON messages (date ASC, token ASC)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 65
    const-string/jumbo v0, "CREATE INDEX IF NOT EXISTS message_token_date_desc ON messages (date DESC, token DESC)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 66
    const-string/jumbo v0, "CREATE INDEX IF NOT EXISTS thread_date_desc ON threads (date DESC)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 68
    :cond_0
    return-void

    .line 51
    :cond_1
    const-string/jumbo v0, "threads (_id INTEGER PRIMARY KEY autoincrement,date INTEGER DEFAULT 0,message_count INTEGER DEFAULT 0,recipient_number TEXT,snippet TEXT,read INTEGER DEFAULT 1,type INTEGER DEFAULT 0,error INTEGER DEFAULT 0,person INTEGER DEFAULT -1,share_location INTEGER DEFAULT 0,contact_name TEXT,message_draft TEXT,unread_message_count INTEGER DEFAULT 0,unread_calls_count INTEGER DEFAULT 0,deleted INTEGER DEFAULT 0,delete_token LONG DEFAULT 0);"

    goto :goto_0

    .line 53
    :cond_2
    const-string/jumbo v1, "messages"

    goto :goto_1
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 110
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v4, 0x21

    .line 72
    const/4 v0, 0x3

    const-string/jumbo v1, "--trace--"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onUpgrade from db ver = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 74
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    if-le p2, p3, :cond_0

    .line 75
    invoke-virtual {p0, p1, p2, p3}, Lcom/viber/provider/messages/a/a;->onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 95
    :goto_0
    return-void

    .line 79
    :cond_0
    if-lt p2, v4, :cond_1

    iget v0, p0, Lcom/viber/provider/messages/a/a;->c:I

    if-eq v0, v4, :cond_1

    const/4 v0, 0x1

    move v2, v0

    .line 81
    :goto_1
    if-eqz v2, :cond_2

    const-string/jumbo v0, "threads (_id INTEGER PRIMARY KEY autoincrement,date INTEGER DEFAULT 0,message_count INTEGER DEFAULT 0,recipient_number TEXT,snippet TEXT,read INTEGER DEFAULT 1,type INTEGER DEFAULT 0,error INTEGER DEFAULT 0,person INTEGER DEFAULT -1,share_location INTEGER DEFAULT 0,contact_name TEXT,message_draft TEXT,unread_message_count INTEGER DEFAULT 0,unread_calls_count INTEGER DEFAULT 0,deleted INTEGER DEFAULT 0,delete_token LONG DEFAULT 0);"

    move-object v1, v0

    .line 83
    :goto_2
    if-eqz v2, :cond_3

    const-string/jumbo v0, "messages"

    .line 85
    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "CREATE TABLE IF NOT EXISTS "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " (_id INTEGER PRIMARY KEY autoincrement,thread_id INTEGER NOT NULL,address TEXT NOT NULL,person INTEGER,date INTEGER NOT NULL,read INTEGER DEFAULT 0,opened INTEGER DEFAULT 0,status INTEGER DEFAULT 0,type INTEGER NOT NULL,subject TEXT,body TEXT,error_code INTEGER DEFAULT 0,seen INTEGER DEFAULT 0,flag INTEGER DEFAULT 0,token LONG,location_lat LONG,location_lng LONG,has_extras BOOLEAN DEFAULT false,extra_uri TEXT,extra_mime TEXT,extra_status INTEGER,seq INTEGER,extra_upload_id LONG,extra_download_id TEXT,extra_bucket_name TEXT,extra_duration LONG,fb_status INTEGER DEFAULT 0,twitter_status INTEGER DEFAULT 0,thumbnail_x INTEGER ,thumbnail_y INTEGER ,description TEXT ,deleted INTEGER DEFAULT 0,count INTEGER DEFAULT 1, extra_flags INTEGER DEFAULT 0 );"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "CREATE TABLE IF NOT EXISTS "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 88
    const-string/jumbo v0, "CREATE TABLE IF NOT EXISTS groups (_id INTEGER PRIMARY KEY autoincrement,thread_id INTEGER NOT NULL,name TEXT,active BOOLEAN DEFAULT true,smart_notification INTEGER,smart_event_date INTEGER DEFAULT 0, mute_notification INTEGER,background_landscape TEXT, background_portrait TEXT, read_notification_token INTEGER DEFAULT 0);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 89
    const-string/jumbo v0, "CREATE TABLE IF NOT EXISTS participants (_id INTEGER PRIMARY KEY autoincrement,thread_id INTEGER NOT NULL,number TEXT,contact_name TEXT,display_name TEXT,display_image TEXT,active BOOLEAN DEFAULT true,location_lat LONG,location_lng LONG,participant_type INTEGER,contact_id INTEGER,last_message_date LONG DEFAULT 0, snippet TEXT, mime_type TEXT, CONSTRAINT unique_thread UNIQUE(thread_id, number) ON CONFLICT REPLACE);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 90
    const-string/jumbo v0, "CREATE TABLE IF NOT EXISTS kvdata (_id INTEGER PRIMARY KEY autoincrement,object_id LONG DEFAULT 0,key TEXT,value TEXT,value_type INTEGER DEFAULT 0);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 92
    invoke-static {p0, p1, p2, p3}, Lcom/viber/provider/messages/a/b;->a(Lcom/viber/provider/messages/a/a;Landroid/database/sqlite/SQLiteDatabase;II)V

    goto :goto_0

    .line 79
    :cond_1
    const/4 v0, 0x0

    move v2, v0

    goto :goto_1

    .line 81
    :cond_2
    const-string/jumbo v0, "msgthreads (_id INTEGER PRIMARY KEY autoincrement,date INTEGER DEFAULT 0,message_count INTEGER DEFAULT 0,recipient_number TEXT,snippet TEXT,read INTEGER DEFAULT 1,type INTEGER DEFAULT 0,error INTEGER DEFAULT 0,person INTEGER DEFAULT -1,share_location INTEGER DEFAULT 0 );"

    move-object v1, v0

    goto :goto_2

    .line 83
    :cond_3
    const-string/jumbo v0, "msgs"

    goto :goto_3
.end method
