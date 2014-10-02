.class public Lcom/viber/provider/messages/b/g;
.super Lcom/viber/provider/messages/a/a;
.source "SourceFile"


# static fields
.field private static final d:Ljava/lang/String;

.field private static e:Lcom/viber/provider/messages/b/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/viber/provider/messages/b/g;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/provider/messages/b/g;->d:Ljava/lang/String;

    .line 26
    const/4 v0, 0x0

    sput-object v0, Lcom/viber/provider/messages/b/g;->e:Lcom/viber/provider/messages/b/g;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/viber/provider/messages/a/a;-><init>(Landroid/content/Context;I)V

    .line 35
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Landroid/database/sqlite/SQLiteOpenHelper;
    .locals 3
    .parameter

    .prologue
    .line 29
    const-class v1, Lcom/viber/provider/messages/b/g;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/viber/provider/messages/b/g;->e:Lcom/viber/provider/messages/b/g;

    if-nez v0, :cond_0

    new-instance v0, Lcom/viber/provider/messages/b/g;

    const/16 v2, 0x35

    invoke-direct {v0, p0, v2}, Lcom/viber/provider/messages/b/g;-><init>(Landroid/content/Context;I)V

    sput-object v0, Lcom/viber/provider/messages/b/g;->e:Lcom/viber/provider/messages/b/g;

    .line 30
    :cond_0
    sget-object v0, Lcom/viber/provider/messages/b/g;->e:Lcom/viber/provider/messages/b/g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 29
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 5
    .parameter

    .prologue
    .line 41
    const-string/jumbo v0, "CREATE TABLE IF NOT EXISTS conversations (_id INTEGER PRIMARY KEY autoincrement,conversation_type INTEGER DEFAULT 0,group_id INTEGER DEFAULT 0,recipient_number TEXT,share_location INTEGER DEFAULT 0,message_draft TEXT,unread_message_count INTEGER DEFAULT 0,unread_calls_count INTEGER DEFAULT 0,media_msg_count INTEGER DEFAULT 0,deleted INTEGER DEFAULT 0,delete_token LONG DEFAULT 0,name TEXT,background_landscape TEXT, background_portrait TEXT, smart_notification INTEGER,smart_event_date INTEGER DEFAULT 0, mute_notification INTEGER, flags INTEGER DEFAULT 0,date LONG DEFAULT 0,last_message_id LONG DEFAULT 0,read_notification_token LONG DEFAULT 0,participant_id_1 LONG DEFAULT 0,participant_id_2 LONG DEFAULT 0,participant_id_3 LONG DEFAULT 0,participant_id_4 LONG DEFAULT 0,participant_id_5 LONG DEFAULT 0,participant_id_6 LONG DEFAULT 0,participant_id_7 LONG DEFAULT 0,participant_id_8 LONG DEFAULT 0);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 42
    const-string/jumbo v0, "CREATE TABLE IF NOT EXISTS group_conversations_extras (_id INTEGER PRIMARY KEY autoincrement,group_id INTEGER DEFAULT 0,group_role INTEGER DEFAULT 3,group_uri TEXT,icon_id TEXT,background_id TEXT,location_lat INTEGER DEFAULT 0,location_lng INTEGER DEFAULT 0,country TEXT,location_address TEXT,revision INTEGER DEFAULT 0,watchers_count INTEGER DEFAULT 0,tag_line TEXT, tags TEXT, local_message_id INTEGER DEFAULT 0, server_message_id INTEGER DEFAULT 0, verified INTEGER,inviter TEXT, last_media_type TEXT, last_msg_text TEXT, sender_phone TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 43
    const-string/jumbo v0, "CREATE TABLE IF NOT EXISTS participants (_id INTEGER PRIMARY KEY autoincrement,conversation_id INTEGER DEFAULT 0,participant_info_id INTEGER DEFAULT 0,last_message_id INTEGER DEFAULT 0,active INTEGER DEFAULT TRUE, group_role INTEGER DEFAULT 0 );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 44
    const-string/jumbo v0, "CREATE TABLE IF NOT EXISTS participants_info (_id INTEGER PRIMARY KEY autoincrement,number TEXT,display_name TEXT,contact_name TEXT,contact_id INTEGER DEFAULT 0,native_contact_id INTEGER DEFAULT 0,viber_name TEXT,viber_image TEXT,location_lat LONG DEFAULT 0,location_lng LONG DEFAULT 0,location_date LONG DEFAULT 0,participant_type INTEGER DEFAULT 1, has_contact_name INTEGER DEFAULT 0, native_photo_id LONG DEFAULT 0, has_photo INTEGER DEFAULT 0 );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 45
    const-string/jumbo v0, "CREATE TABLE IF NOT EXISTS messages (_id INTEGER PRIMARY KEY autoincrement,address TEXT NOT NULL,date INTEGER NOT NULL,read INTEGER DEFAULT 0,opened INTEGER DEFAULT 0,status INTEGER DEFAULT 0,type INTEGER NOT NULL,body TEXT,sync_read INTEGER DEFAULT 0,flag INTEGER DEFAULT 0,token LONG, location_lat LONG,location_lng LONG,extra_uri TEXT,extra_mime TEXT,extra_status INTEGER,seq INTEGER,message_global_id INTEGER,extra_upload_id LONG,extra_download_id TEXT,extra_bucket_name TEXT,extra_duration LONG,fb_status INTEGER DEFAULT 0,twitter_status INTEGER DEFAULT 0,thumbnail_x INTEGER ,thumbnail_y INTEGER ,description TEXT ,deleted INTEGER DEFAULT 0,count INTEGER DEFAULT 1,group_id INTEGER DEFAULT 0,conversation_id INTEGER DEFAULT 0,conversation_type INTEGER DEFAULT 0,participant_id DEFAULT 0, extra_flags INTEGER DEFAULT 0, date_real INTEGER NOT NULL);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 46
    const-string/jumbo v0, "CREATE TABLE IF NOT EXISTS messages_calls (_id INTEGER PRIMARY KEY AUTOINCREMENT,conversation_id INTEGER NOT NULL,message_id INTEGER NOT NULL,canonized_number TEXT NOT NULL,viber_call_type INTEGER DEFAULT 1, date LONG NOT NULL,duration LONG NOT NULL,type INT NOT NULL,end_reason INT DEFAULT 0,start_reason INT DEFAULT 0,token LONG DEFAULT 0);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 47
    const-string/jumbo v0, "CREATE TABLE IF NOT EXISTS public_messages_extras (_id INTEGER PRIMARY KEY autoincrement,group_id INTEGER NOT NULL,liked INTEGER DEFAULT 0,likes_count INTEGER DEFAULT 0,message_token LONG DEFAULT 0,sync_like INTEGER DEFAULT 0);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 48
    const-string/jumbo v0, "CREATE TABLE IF NOT EXISTS kvdata (_id INTEGER PRIMARY KEY autoincrement,object_id LONG DEFAULT 0,key TEXT,value TEXT,value_type INTEGER DEFAULT 0);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 50
    const-string/jumbo v0, "CREATE TABLE IF NOT EXISTS stickers_packages ( _id INTEGER PRIMARY KEY NOT NULL, package_name TEXT, flags INTEGER DEFAULT 0, thumb_axis_shrink_factor FLOAT DEFAULT 0, visibility INTEGER DEFAULT 0, menu_position INTEGER DEFAULT 0)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 51
    const-string/jumbo v0, "CREATE TABLE IF NOT EXISTS stickers ( _id INTEGER PRIMARY KEY NOT NULL, package_id INTEGER DEFAULT 0, generic_col_pos INTEGER DEFAULT 0, generic_row_pos INTEGER DEFAULT 0, column_span INTEGER DEFAULT 0, row_span INTEGER DEFAULT 0, flags INTEGER DEFAULT 0 );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 53
    const-string/jumbo v0, "CREATE TABLE IF NOT EXISTS purchase ( order_id TEXT PRIMARY KEY NOT NULL, category INTEGER, type TEXT, package_name TEXT, product_id TEXT, purchase_time LONG DEFAULT 0, purchase_state INTEGER DEFAULT 0, dev_payload TEXT, token TEXT, json TEXT, signature TEXT,verified INTEGER DEFAULT 0, consumed INTEGER DEFAULT 0, pending INTEGER DEFAULT 0);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p0}, Lcom/viber/provider/messages/b/g;->a()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/viber/provider/messages/b/g;->d:Ljava/lang/String;

    const-string/jumbo v2, "db/script_for_filling_stickers_table.sql"

    invoke-static {v0, v1, v2, p1}, Lcom/viber/provider/messages/b/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 57
    const-string/jumbo v0, "CREATE INDEX IF NOT EXISTS message_token_date_asc ON messages (date ASC, token ASC)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 58
    const-string/jumbo v0, "CREATE INDEX IF NOT EXISTS message_token_date_desc ON messages (date DESC, token DESC)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 59
    const-string/jumbo v0, "CREATE INDEX IF NOT EXISTS conversation_date_desc ON conversations (date DESC)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 61
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/viber/voip/w;->w:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/viber/voip/util/bj;->a(Ljava/io/File;)Z

    move-result v0

    .line 62
    const/4 v1, 0x3

    const-string/jumbo v2, "ViberMessagesHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "delete old sticker folder success : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0}, Lcom/viber/provider/messages/b/g;->a()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/viber/provider/messages/b/g;->c:I

    invoke-static {v0, v1}, Lcom/viber/voip/viberout/e;->a(Landroid/content/Context;I)V

    .line 65
    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 69
    invoke-super {p0, p1, p2, p3}, Lcom/viber/provider/messages/a/a;->onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 90
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v6, 0x31

    const/16 v5, 0x30

    const/16 v3, 0x2f

    const/16 v0, 0x2d

    const/4 v4, 0x3

    .line 94
    invoke-super {p0, p1, p2, p3}, Lcom/viber/provider/messages/a/a;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 99
    if-ge p2, v0, :cond_0

    if-lt p3, v0, :cond_0

    .line 100
    invoke-virtual {p0}, Lcom/viber/provider/messages/b/g;->a()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/viber/provider/messages/b/g;->d:Ljava/lang/String;

    const-string/jumbo v2, "db/messages_migration_45.sql"

    invoke-static {v0, v1, v2, p1}, Lcom/viber/provider/messages/b/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 103
    :cond_0
    if-ge p2, v3, :cond_1

    if-lt p3, v3, :cond_1

    .line 104
    const-string/jumbo v0, "CREATE TABLE IF NOT EXISTS stickers_packages ( _id INTEGER PRIMARY KEY NOT NULL, package_name TEXT, flags INTEGER DEFAULT 0, thumb_axis_shrink_factor FLOAT DEFAULT 0, visibility INTEGER DEFAULT 0, menu_position INTEGER DEFAULT 0)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 105
    const-string/jumbo v0, "CREATE TABLE IF NOT EXISTS stickers ( _id INTEGER PRIMARY KEY NOT NULL, package_id INTEGER DEFAULT 0, generic_col_pos INTEGER DEFAULT 0, generic_row_pos INTEGER DEFAULT 0, column_span INTEGER DEFAULT 0, row_span INTEGER DEFAULT 0, flags INTEGER DEFAULT 0 );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 106
    const-string/jumbo v0, "CREATE TABLE IF NOT EXISTS purchase ( order_id TEXT PRIMARY KEY NOT NULL, category INTEGER, type TEXT, package_name TEXT, product_id TEXT, purchase_time LONG DEFAULT 0, purchase_state INTEGER DEFAULT 0, dev_payload TEXT, token TEXT, json TEXT, signature TEXT,verified INTEGER DEFAULT 0, consumed INTEGER DEFAULT 0, pending INTEGER DEFAULT 0);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p0}, Lcom/viber/provider/messages/b/g;->a()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/viber/provider/messages/b/g;->d:Ljava/lang/String;

    const-string/jumbo v2, "db/messages_migration_47.sql"

    invoke-static {v0, v1, v2, p1}, Lcom/viber/provider/messages/b/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 109
    invoke-virtual {p0}, Lcom/viber/provider/messages/b/g;->a()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/viber/provider/messages/b/g;->d:Ljava/lang/String;

    const-string/jumbo v2, "db/script_for_filling_stickers_table.sql"

    invoke-static {v0, v1, v2, p1}, Lcom/viber/provider/messages/b/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 111
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/viber/voip/w;->w:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/viber/voip/util/bj;->a(Ljava/io/File;)Z

    move-result v0

    .line 112
    const-string/jumbo v1, "ViberMessagesHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "delete old sticker folder success : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v1, v0}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 114
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/viber/voip/w;->r:Ljava/lang/String;

    const/4 v2, 0x0

    sget-object v3, Lcom/viber/voip/w;->r:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 115
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/viber/voip/w;->p:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "Viber Video"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 117
    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    .line 118
    const-string/jumbo v1, "ViberMessagesHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "rename Video to Videos success: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v1, v0}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 121
    :cond_1
    if-ge p2, v5, :cond_2

    if-lt p3, v5, :cond_2

    .line 122
    invoke-virtual {p0}, Lcom/viber/provider/messages/b/g;->a()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/viber/provider/messages/b/g;->d:Ljava/lang/String;

    const-string/jumbo v2, "db/messages_migration_48.sql"

    invoke-static {v0, v1, v2, p1}, Lcom/viber/provider/messages/b/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 125
    :cond_2
    if-ge p2, v6, :cond_3

    if-lt p3, v6, :cond_3

    .line 126
    const-string/jumbo v0, "CREATE TABLE IF NOT EXISTS messages_calls (_id INTEGER PRIMARY KEY AUTOINCREMENT,conversation_id INTEGER NOT NULL,message_id INTEGER NOT NULL,canonized_number TEXT NOT NULL,viber_call_type INTEGER DEFAULT 1, date LONG NOT NULL,duration LONG NOT NULL,type INT NOT NULL,end_reason INT DEFAULT 0,start_reason INT DEFAULT 0,token LONG DEFAULT 0);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p0}, Lcom/viber/provider/messages/b/g;->a()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/viber/provider/messages/b/g;->d:Ljava/lang/String;

    const-string/jumbo v2, "db/messages_migration_49.sql"

    invoke-static {v0, v1, v2, p1}, Lcom/viber/provider/messages/b/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 130
    :cond_3
    const/16 v0, 0x32

    if-ge p2, v0, :cond_4

    const/16 v0, 0x32

    if-lt p3, v0, :cond_4

    .line 131
    invoke-virtual {p0}, Lcom/viber/provider/messages/b/g;->a()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/viber/provider/messages/b/g;->d:Ljava/lang/String;

    const-string/jumbo v2, "db/messages_migration_50.sql"

    invoke-static {v0, v1, v2, p1}, Lcom/viber/provider/messages/b/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 134
    :cond_4
    const/16 v0, 0x34

    if-ge p2, v0, :cond_5

    const/16 v0, 0x34

    if-lt p3, v0, :cond_5

    .line 135
    invoke-virtual {p0}, Lcom/viber/provider/messages/b/g;->a()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/viber/provider/messages/b/g;->d:Ljava/lang/String;

    const-string/jumbo v2, "db/messages_migration_52.sql"

    invoke-static {v0, v1, v2, p1}, Lcom/viber/provider/messages/b/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 138
    :cond_5
    const/16 v0, 0x35

    if-ge p2, v0, :cond_6

    const/16 v0, 0x35

    if-lt p3, v0, :cond_6

    .line 139
    const-string/jumbo v0, "CREATE TABLE IF NOT EXISTS participants_info (_id INTEGER PRIMARY KEY autoincrement,number TEXT,display_name TEXT,contact_name TEXT,contact_id INTEGER DEFAULT 0,native_contact_id INTEGER DEFAULT 0,viber_name TEXT,viber_image TEXT,location_lat LONG DEFAULT 0,location_lng LONG DEFAULT 0,location_date LONG DEFAULT 0,participant_type INTEGER DEFAULT 1, has_contact_name INTEGER DEFAULT 0, native_photo_id LONG DEFAULT 0, has_photo INTEGER DEFAULT 0 );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 140
    const-string/jumbo v0, "CREATE TABLE IF NOT EXISTS participants (_id INTEGER PRIMARY KEY autoincrement,conversation_id INTEGER DEFAULT 0,participant_info_id INTEGER DEFAULT 0,last_message_id INTEGER DEFAULT 0,active INTEGER DEFAULT TRUE, group_role INTEGER DEFAULT 0 );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 141
    const-string/jumbo v0, "CREATE TABLE IF NOT EXISTS group_conversations_extras (_id INTEGER PRIMARY KEY autoincrement,group_id INTEGER DEFAULT 0,group_role INTEGER DEFAULT 3,group_uri TEXT,icon_id TEXT,background_id TEXT,location_lat INTEGER DEFAULT 0,location_lng INTEGER DEFAULT 0,country TEXT,location_address TEXT,revision INTEGER DEFAULT 0,watchers_count INTEGER DEFAULT 0,tag_line TEXT, tags TEXT, local_message_id INTEGER DEFAULT 0, server_message_id INTEGER DEFAULT 0, verified INTEGER,inviter TEXT, last_media_type TEXT, last_msg_text TEXT, sender_phone TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 142
    const-string/jumbo v0, "CREATE TABLE IF NOT EXISTS public_messages_extras (_id INTEGER PRIMARY KEY autoincrement,group_id INTEGER NOT NULL,liked INTEGER DEFAULT 0,likes_count INTEGER DEFAULT 0,message_token LONG DEFAULT 0,sync_like INTEGER DEFAULT 0);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p0}, Lcom/viber/provider/messages/b/g;->a()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/viber/provider/messages/b/g;->d:Ljava/lang/String;

    const-string/jumbo v2, "db/messages_migration_53(public groups).sql"

    invoke-static {v0, v1, v2, p1}, Lcom/viber/provider/messages/b/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 149
    :cond_6
    iget-object v0, p0, Lcom/viber/provider/messages/b/g;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/viber/voip/settings/j;->a(Landroid/content/Context;)V

    .line 152
    invoke-virtual {p0}, Lcom/viber/provider/messages/b/g;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2, p3}, Lcom/viber/voip/viberout/e;->a(Landroid/content/Context;II)V

    .line 153
    return-void
.end method
