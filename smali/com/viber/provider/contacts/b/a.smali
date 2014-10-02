.class public Lcom/viber/provider/contacts/b/a;
.super Lcom/viber/provider/contacts/a/a;
.source "SourceFile"


# static fields
.field public static final c:Ljava/lang/String;

.field private static d:Lcom/viber/provider/contacts/b/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/viber/provider/contacts/b/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/provider/contacts/b/a;->c:Ljava/lang/String;

    .line 27
    const/4 v0, 0x0

    sput-object v0, Lcom/viber/provider/contacts/b/a;->d:Lcom/viber/provider/contacts/b/a;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/viber/provider/contacts/a/a;-><init>(Landroid/content/Context;)V

    .line 25
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Landroid/database/sqlite/SQLiteOpenHelper;
    .locals 2
    .parameter

    .prologue
    .line 29
    const-class v1, Lcom/viber/provider/contacts/b/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/viber/provider/contacts/b/a;->d:Lcom/viber/provider/contacts/b/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/viber/provider/contacts/b/a;

    invoke-direct {v0, p0}, Lcom/viber/provider/contacts/b/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/viber/provider/contacts/b/a;->d:Lcom/viber/provider/contacts/b/a;

    .line 30
    :cond_0
    sget-object v0, Lcom/viber/provider/contacts/b/a;->d:Lcom/viber/provider/contacts/b/a;
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
    .locals 3
    .parameter

    .prologue
    .line 35
    const/4 v0, 0x3

    sget-object v1, Lcom/viber/provider/contacts/b/a;->c:Ljava/lang/String;

    const-string/jumbo v2, "onCreate"

    invoke-static {v0, v1, v2}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 37
    const-string/jumbo v0, "CREATE TABLE IF NOT EXISTS calls (_id INTEGER PRIMARY KEY AUTOINCREMENT,call_id LONG NOT NULL,aggregate_hash LONG NOT NULL,number TEXT NOT NULL,canonized_number TEXT NOT NULL,viber_call BOOLEAN DEFAULT TRUE,viber_call_type INTEGER DEFAULT 1, date LONG NOT NULL,duration LONG NOT NULL,type INT NOT NULL,end_reason INT DEFAULT 0,start_reason INT DEFAULT 0,token LONG DEFAULT 0,looked BOOLEAN DEFAULT TRUE);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 38
    const-string/jumbo v0, "CREATE TABLE IF NOT EXISTS phonebookrawcontact (_id INTEGER PRIMARY KEY NOT NULL,native_id INTEGER DEFAULT 0,contact_id INTEGER NOT NULL,version INTEGER NOT NULL,starred BOOLEAN NOT NULL,  UNIQUE (_id) ON CONFLICT REPLACE);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 39
    const-string/jumbo v0, "CREATE TABLE IF NOT EXISTS phonebookcontact (_id INTEGER PRIMARY KEY NOT NULL,native_id INTEGER DEFAULT 0,display_name TEXT,phonetic_name TEXT,phone_label TEXT,low_display_name TEXT,starred BOOLEAN, viber BOOLEAN, viber_out BOOLEAN DEFAULT FALSE, contact_lookup_key TEXT, contact_hash LONG, version INTEGER DEFAULT 0, has_number BOOLEAN, has_name BOOLEAN, native_photo_id LONG DEFAULT 0, recently_joined_date LONG DEFAULT 0, joined_date LONG DEFAULT 0, numbers_name TEXT DEFAULT \'\', deleted BOOLEAN, flags INTEGER DEFAULT 0,  UNIQUE (_id) ON CONFLICT REPLACE);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 40
    const-string/jumbo v0, "CREATE TABLE IF NOT EXISTS phonebookdata (_id INTEGER PRIMARY KEY AUTOINCREMENT,native_id INTEGER DEFAULT 0,contact_id INTEGER NOT NULL,raw_id INTEGER NOT NULL,data1 TEXT, data2 TEXT, data3 TEXT, data4 TEXT, data5 TEXT, int_data1 INTEGER DEFAULT 0, int_data2 INTEGER DEFAULT 0, mime_type INTEGER, clear INTEGER DEFAULT 0);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 41
    const-string/jumbo v0, "CREATE TABLE IF NOT EXISTS vibernumbers (_id INTEGER PRIMARY KEY AUTOINCREMENT,canonized_number TEXT NOT NULL,photo TEXT DEFAULT \'\', actual_photo TEXT DEFAULT \'\', viber_name TEXT, clear BOOLEAN );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 42
    const-string/jumbo v0, "CREATE TABLE IF NOT EXISTS blockednumbers (_id INTEGER PRIMARY KEY AUTOINCREMENT, canonized_number TEXT NOT NULL,blocked_date LONG DEFAULT 0,  UNIQUE (canonized_number) ON CONFLICT REPLACE );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 44
    const-string/jumbo v0, "CREATE INDEX IF NOT EXISTS contacts_name ON phonebookcontact (recently_joined_date DESC, low_display_name ASC)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 45
    const-string/jumbo v0, "CREATE INDEX IF NOT EXISTS call_date ON calls (date DESC)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 60
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v6, 0x33

    const/16 v5, 0x31

    const/16 v4, 0x30

    const/16 v3, 0x2f

    .line 65
    invoke-super {p0, p1, p2, p3}, Lcom/viber/provider/contacts/a/a;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 67
    const/4 v0, 0x3

    sget-object v1, Lcom/viber/provider/contacts/b/a;->c:Ljava/lang/String;

    const-string/jumbo v2, "onUpgrade"

    invoke-static {v0, v1, v2}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 69
    const-string/jumbo v0, "CREATE TABLE IF NOT EXISTS calls (_id INTEGER PRIMARY KEY AUTOINCREMENT,call_id LONG NOT NULL,aggregate_hash LONG NOT NULL,number TEXT NOT NULL,canonized_number TEXT NOT NULL,viber_call BOOLEAN DEFAULT TRUE,viber_call_type INTEGER DEFAULT 1, date LONG NOT NULL,duration LONG NOT NULL,type INT NOT NULL,end_reason INT DEFAULT 0,start_reason INT DEFAULT 0,token LONG DEFAULT 0,looked BOOLEAN DEFAULT TRUE);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 70
    const-string/jumbo v0, "CREATE TABLE IF NOT EXISTS phonebookrawcontact (_id INTEGER PRIMARY KEY NOT NULL,native_id INTEGER DEFAULT 0,contact_id INTEGER NOT NULL,version INTEGER NOT NULL,starred BOOLEAN NOT NULL,  UNIQUE (_id) ON CONFLICT REPLACE);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 71
    const-string/jumbo v0, "CREATE TABLE IF NOT EXISTS phonebookcontact (_id INTEGER PRIMARY KEY NOT NULL,native_id INTEGER DEFAULT 0,display_name TEXT,phonetic_name TEXT,phone_label TEXT,low_display_name TEXT,starred BOOLEAN, viber BOOLEAN, viber_out BOOLEAN DEFAULT FALSE, contact_lookup_key TEXT, contact_hash LONG, version INTEGER DEFAULT 0, has_number BOOLEAN, has_name BOOLEAN, native_photo_id LONG DEFAULT 0, recently_joined_date LONG DEFAULT 0, joined_date LONG DEFAULT 0, numbers_name TEXT DEFAULT \'\', deleted BOOLEAN, flags INTEGER DEFAULT 0,  UNIQUE (_id) ON CONFLICT REPLACE);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 72
    const-string/jumbo v0, "CREATE TABLE IF NOT EXISTS phonebookdata (_id INTEGER PRIMARY KEY AUTOINCREMENT,native_id INTEGER DEFAULT 0,contact_id INTEGER NOT NULL,raw_id INTEGER NOT NULL,data1 TEXT, data2 TEXT, data3 TEXT, data4 TEXT, data5 TEXT, int_data1 INTEGER DEFAULT 0, int_data2 INTEGER DEFAULT 0, mime_type INTEGER, clear INTEGER DEFAULT 0);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 73
    const-string/jumbo v0, "CREATE TABLE IF NOT EXISTS vibernumbers (_id INTEGER PRIMARY KEY AUTOINCREMENT,canonized_number TEXT NOT NULL,photo TEXT DEFAULT \'\', actual_photo TEXT DEFAULT \'\', viber_name TEXT, clear BOOLEAN );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 74
    const-string/jumbo v0, "CREATE TABLE IF NOT EXISTS blockednumbers (_id INTEGER PRIMARY KEY AUTOINCREMENT, canonized_number TEXT NOT NULL,blocked_date LONG DEFAULT 0,  UNIQUE (canonized_number) ON CONFLICT REPLACE );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 76
    if-ge p2, v3, :cond_0

    if-lt p3, v3, :cond_0

    .line 77
    invoke-virtual {p0}, Lcom/viber/provider/contacts/b/a;->a()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/viber/provider/contacts/b/a;->c:Ljava/lang/String;

    const-string/jumbo v2, "db/contacts_migration_47.sql"

    invoke-static {v0, v1, v2, p1}, Lcom/viber/provider/contacts/b/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 80
    :cond_0
    if-ge p2, v4, :cond_1

    if-lt p3, v4, :cond_1

    .line 81
    invoke-virtual {p0}, Lcom/viber/provider/contacts/b/a;->a()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/viber/provider/contacts/b/a;->c:Ljava/lang/String;

    const-string/jumbo v2, "db/contacts_migration_48.sql"

    invoke-static {v0, v1, v2, p1}, Lcom/viber/provider/contacts/b/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 84
    invoke-virtual {p0}, Lcom/viber/provider/contacts/b/a;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/settings/j;->a(Landroid/content/Context;)V

    .line 86
    invoke-virtual {p0}, Lcom/viber/provider/contacts/b/a;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/ViberApplication;->preferences(Landroid/content/Context;)Lcom/viber/voip/settings/l;

    move-result-object v0

    .line 87
    invoke-static {}, Lcom/viber/voip/settings/j;->t()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/viber/voip/settings/j;->t()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/viber/voip/settings/j;->v()Z

    move-result v3

    invoke-interface {v0, v2, v3}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;Z)Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;Z)Lcom/viber/voip/settings/l;

    .line 91
    :cond_1
    if-ge p2, v5, :cond_2

    if-lt p3, v5, :cond_2

    .line 92
    invoke-virtual {p0}, Lcom/viber/provider/contacts/b/a;->a()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/viber/provider/contacts/b/a;->c:Ljava/lang/String;

    const-string/jumbo v2, "db/contacts_migration_49.sql"

    invoke-static {v0, v1, v2, p1}, Lcom/viber/provider/contacts/b/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 95
    :cond_2
    if-ge p2, v6, :cond_3

    if-lt p3, v6, :cond_3

    .line 96
    invoke-virtual {p0}, Lcom/viber/provider/contacts/b/a;->a()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/viber/provider/contacts/b/a;->c:Ljava/lang/String;

    const-string/jumbo v2, "db/contacts_migration_51.sql"

    invoke-static {v0, v1, v2, p1}, Lcom/viber/provider/contacts/b/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 98
    :cond_3
    return-void
.end method
