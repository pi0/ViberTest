.class public Lcom/viber/provider/messages/ViberMessagesProvider;
.super Lcom/viber/provider/ViberContentProvider;
.source "SourceFile"


# static fields
.field private static final b:Ljava/lang/String;

.field private static final c:Landroid/content/UriMatcher;

.field private static d:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 33
    const-class v0, Lcom/viber/provider/messages/ViberMessagesProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/provider/messages/ViberMessagesProvider;->b:Ljava/lang/String;

    .line 40
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/viber/provider/messages/ViberMessagesProvider;->c:Landroid/content/UriMatcher;

    .line 43
    sget-object v0, Lcom/viber/provider/messages/ViberMessagesProvider;->c:Landroid/content/UriMatcher;

    const-string/jumbo v1, "com.viber.provider.vibermessages"

    const-string/jumbo v2, "messages_list"

    const/16 v3, 0xc9

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 44
    sget-object v0, Lcom/viber/provider/messages/ViberMessagesProvider;->c:Landroid/content/UriMatcher;

    const-string/jumbo v1, "com.viber.provider.vibermessages"

    const-string/jumbo v2, "extra_messages_list"

    const/16 v3, 0xca

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 45
    sget-object v0, Lcom/viber/provider/messages/ViberMessagesProvider;->c:Landroid/content/UriMatcher;

    const-string/jumbo v1, "com.viber.provider.vibermessages"

    const-string/jumbo v2, "conversations_list"

    const/16 v3, 0x65

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 46
    sget-object v0, Lcom/viber/provider/messages/ViberMessagesProvider;->c:Landroid/content/UriMatcher;

    const-string/jumbo v1, "com.viber.provider.vibermessages"

    const-string/jumbo v2, "conversations_extra_list"

    const/16 v3, 0x66

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 47
    sget-object v0, Lcom/viber/provider/messages/ViberMessagesProvider;->c:Landroid/content/UriMatcher;

    const-string/jumbo v1, "com.viber.provider.vibermessages"

    const-string/jumbo v2, "participants_list"

    const/16 v3, 0x12d

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 48
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/viber/provider/ViberContentProvider;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 2
    .parameter

    .prologue
    .line 62
    sget-object v0, Lcom/viber/provider/messages/ViberMessagesProvider;->d:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/viber/provider/messages/ViberMessagesProvider;->d:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_3

    .line 63
    :cond_0
    const-class v1, Lcom/viber/provider/messages/ViberMessagesProvider;

    monitor-enter v1

    .line 64
    :try_start_0
    sget-object v0, Lcom/viber/provider/messages/ViberMessagesProvider;->d:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/viber/provider/messages/ViberMessagesProvider;->d:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_2

    .line 65
    :cond_1
    invoke-static {p0}, Lcom/viber/provider/messages/ViberMessagesProvider;->b(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sput-object v0, Lcom/viber/provider/messages/ViberMessagesProvider;->d:Landroid/database/sqlite/SQLiteDatabase;

    .line 67
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    :cond_3
    sget-object v0, Lcom/viber/provider/messages/ViberMessagesProvider;->d:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0

    .line 67
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static b(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 2
    .parameter

    .prologue
    .line 53
    invoke-static {p0}, Lcom/viber/provider/messages/b/g;->a(Landroid/content/Context;)Landroid/database/sqlite/SQLiteOpenHelper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 54
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-nez v1, :cond_0

    .line 56
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/provider/messages/b/g;->a(Landroid/content/Context;)Landroid/database/sqlite/SQLiteOpenHelper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 58
    :cond_0
    return-object v0
.end method


# virtual methods
.method protected a()Landroid/database/sqlite/SQLiteOpenHelper;
    .locals 1

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/viber/provider/messages/ViberMessagesProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/provider/messages/b/g;->a(Landroid/content/Context;)Landroid/database/sqlite/SQLiteOpenHelper;

    move-result-object v0

    return-object v0
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 156
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/viber/provider/messages/ViberMessagesProvider;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " not support delete operation"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 95
    sget-object v0, Lcom/viber/provider/messages/ViberMessagesProvider;->c:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    .line 96
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown URI "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 146
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/viber/provider/messages/ViberMessagesProvider;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " not support insert operation"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreate()Z
    .locals 2

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/viber/provider/messages/ViberMessagesProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/process/k;->a(Landroid/content/Context;)Lcom/viber/voip/process/k;

    .line 75
    const-class v1, Lcom/viber/provider/messages/ViberMessagesProvider;

    monitor-enter v1

    .line 76
    :try_start_0
    sget-object v0, Lcom/viber/provider/messages/ViberMessagesProvider;->d:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 78
    :try_start_1
    invoke-virtual {p0}, Lcom/viber/provider/messages/ViberMessagesProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/provider/messages/ViberMessagesProvider;->b(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/provider/messages/ViberMessagesProvider;->a:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 80
    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/viber/provider/messages/ViberMessagesProvider;->a:Landroid/database/sqlite/SQLiteDatabase;

    sput-object v0, Lcom/viber/provider/messages/ViberMessagesProvider;->d:Landroid/database/sqlite/SQLiteDatabase;

    .line 84
    :goto_1
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 85
    iget-object v0, p0, Lcom/viber/provider/messages/ViberMessagesProvider;->a:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_2
    return v0

    .line 82
    :cond_0
    :try_start_3
    sget-object v0, Lcom/viber/provider/messages/ViberMessagesProvider;->d:Landroid/database/sqlite/SQLiteDatabase;

    iput-object v0, p0, Lcom/viber/provider/messages/ViberMessagesProvider;->a:Landroid/database/sqlite/SQLiteDatabase;

    goto :goto_1

    .line 84
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 85
    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    .line 79
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    .line 102
    invoke-virtual {p0, p1, v7, v7}, Lcom/viber/provider/messages/ViberMessagesProvider;->a(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    :goto_0
    return-object v7

    .line 107
    :cond_0
    sget-object v0, Lcom/viber/provider/messages/ViberMessagesProvider;->c:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 108
    sparse-switch v0, :sswitch_data_0

    .line 130
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unsupported URI:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :sswitch_0
    new-instance v0, Lcom/viber/voip/i/a/k;

    invoke-direct {v0}, Lcom/viber/voip/i/a/k;-><init>()V

    .line 134
    :goto_1
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 137
    :goto_2
    :try_start_0
    invoke-virtual {p0}, Lcom/viber/provider/messages/ViberMessagesProvider;->a()Landroid/database/sqlite/SQLiteOpenHelper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    goto :goto_0

    .line 114
    :sswitch_1
    new-instance v0, Lcom/viber/voip/i/a/j;

    invoke-direct {v0}, Lcom/viber/voip/i/a/j;-><init>()V

    goto :goto_1

    .line 118
    :sswitch_2
    new-instance v0, Lcom/viber/voip/i/a/m;

    invoke-direct {v0}, Lcom/viber/voip/i/a/m;-><init>()V

    goto :goto_1

    .line 122
    :sswitch_3
    new-instance v0, Lcom/viber/voip/i/a/l;

    invoke-direct {v0}, Lcom/viber/voip/i/a/l;-><init>()V

    goto :goto_1

    .line 126
    :sswitch_4
    new-instance v0, Lcom/viber/voip/i/a/n;

    invoke-direct {v0}, Lcom/viber/voip/i/a/n;-><init>()V

    goto :goto_1

    :cond_1
    move-object v7, p5

    .line 134
    goto :goto_2

    .line 138
    :catch_0
    move-exception v0

    .line 140
    throw v0

    .line 108
    :sswitch_data_0
    .sparse-switch
        0x65 -> :sswitch_0
        0x66 -> :sswitch_1
        0xc9 -> :sswitch_2
        0xca -> :sswitch_3
        0x12d -> :sswitch_4
    .end sparse-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 151
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/viber/provider/messages/ViberMessagesProvider;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " not support update operation"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
