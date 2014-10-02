.class public abstract Lcom/viber/provider/ViberContentProvider;
.super Landroid/content/ContentProvider;
.source "SourceFile"


# static fields
.field private static final b:Landroid/content/UriMatcher;


# instance fields
.field protected a:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0x5dc

    .line 60
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/viber/provider/ViberContentProvider;->b:Landroid/content/UriMatcher;

    .line 61
    sget-object v0, Lcom/viber/provider/ViberContentProvider;->b:Landroid/content/UriMatcher;

    const-string/jumbo v1, "com.viber.provider.vibermessages"

    const-string/jumbo v2, "method/*"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 62
    sget-object v0, Lcom/viber/provider/ViberContentProvider;->b:Landroid/content/UriMatcher;

    const-string/jumbo v1, "com.viber.provider.vibercontacts"

    const-string/jumbo v2, "method/*"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 63
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private a(Ljava/io/File;Ljava/io/File;)V
    .locals 8
    .parameter
    .parameter

    .prologue
    .line 146
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    .line 151
    :cond_0
    :try_start_0
    invoke-virtual {p2}, Ljava/io/File;->createNewFile()Z

    .line 152
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 153
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 154
    invoke-virtual {v6}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 155
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v5

    .line 156
    const-wide/16 v1, 0x0

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J

    .line 159
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    .line 160
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    :goto_0
    return-void

    .line 162
    :catch_0
    move-exception v0

    .line 165
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private b()V
    .locals 5

    .prologue
    .line 99
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 101
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/viber/provider/ViberContentProvider;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 102
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/viber/voip/w;->f:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 103
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 104
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 107
    :cond_0
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ".sqlite"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 111
    iget-object v1, p0, Lcom/viber/provider/ViberContentProvider;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 112
    invoke-direct {p0, v0, v2}, Lcom/viber/provider/ViberContentProvider;->a(Ljava/io/File;Ljava/io/File;)V

    .line 113
    invoke-virtual {p0}, Lcom/viber/provider/ViberContentProvider;->a()Landroid/database/sqlite/SQLiteOpenHelper;

    move-result-object v0

    .line 114
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/provider/ViberContentProvider;->a:Landroid/database/sqlite/SQLiteDatabase;

    .line 116
    :cond_1
    return-void
.end method

.method private c()V
    .locals 5

    .prologue
    .line 123
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/viber/provider/ViberContentProvider;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 126
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/viber/voip/w;->f:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ".sqlite"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 130
    iget-object v1, p0, Lcom/viber/provider/ViberContentProvider;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 131
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 142
    :cond_0
    :goto_0
    return-void

    .line 137
    :cond_1
    iget-object v2, p0, Lcom/viber/provider/ViberContentProvider;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 138
    invoke-direct {p0, v1, v0}, Lcom/viber/provider/ViberContentProvider;->a(Ljava/io/File;Ljava/io/File;)V

    .line 139
    invoke-virtual {p0}, Lcom/viber/provider/ViberContentProvider;->a()Landroid/database/sqlite/SQLiteOpenHelper;

    move-result-object v0

    .line 140
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/provider/ViberContentProvider;->a:Landroid/database/sqlite/SQLiteDatabase;

    goto :goto_0
.end method


# virtual methods
.method protected abstract a()Landroid/database/sqlite/SQLiteOpenHelper;
.end method

.method public a(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 74
    sget-object v1, Lcom/viber/provider/ViberContentProvider;->b:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    .line 76
    const/16 v2, 0x5dc

    if-ne v2, v1, :cond_3

    .line 77
    const-string/jumbo v1, "copyDB"

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 78
    invoke-direct {p0}, Lcom/viber/provider/ViberContentProvider;->b()V

    .line 91
    :cond_0
    :goto_0
    return v0

    .line 80
    :cond_1
    const-string/jumbo v1, "restoreDB"

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 81
    invoke-direct {p0}, Lcom/viber/provider/ViberContentProvider;->c()V

    goto :goto_0

    .line 83
    :cond_2
    const-string/jumbo v1, "updateLanguage"

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 84
    iget-object v1, p0, Lcom/viber/provider/ViberContentProvider;->a:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/viber/provider/ViberContentProvider;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 85
    iget-object v1, p0, Lcom/viber/provider/ViberContentProvider;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0}, Lcom/viber/provider/ViberContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->setLocale(Ljava/util/Locale;)V

    goto :goto_0

    .line 91
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method
