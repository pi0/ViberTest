.class public Lcom/viber/voip/util/b/w;
.super Lcom/viber/voip/util/b/ac;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/viber/voip/util/b/ac;-><init>(Landroid/content/Context;)V

    .line 81
    invoke-direct {p0, p1}, Lcom/viber/voip/util/b/w;->b(Landroid/content/Context;)V

    .line 82
    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/net/Uri;Z)Landroid/graphics/Bitmap;
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 144
    .line 146
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/viber/voip/util/b/w;->b(Landroid/content/Context;Landroid/net/Uri;Z)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v2

    .line 147
    if-eqz v2, :cond_0

    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v1

    if-lez v1, :cond_0

    .line 148
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v0

    .line 165
    new-array v1, v7, [Ljava/io/Closeable;

    aput-object v2, v1, v6

    invoke-static {v1}, Lcom/viber/voip/util/bu;->a([Ljava/io/Closeable;)V

    .line 167
    :goto_0
    return-object v0

    .line 165
    :cond_0
    new-array v1, v7, [Ljava/io/Closeable;

    aput-object v2, v1, v6

    invoke-static {v1}, Lcom/viber/voip/util/bu;->a([Ljava/io/Closeable;)V

    goto :goto_0

    .line 150
    :catch_0
    move-exception v1

    move-object v2, v0

    .line 151
    :goto_1
    :try_start_2
    const-string/jumbo v3, "ImageFetcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "File can\'t be found by the given Uri "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 165
    new-array v1, v7, [Ljava/io/Closeable;

    aput-object v2, v1, v6

    invoke-static {v1}, Lcom/viber/voip/util/bu;->a([Ljava/io/Closeable;)V

    goto :goto_0

    .line 152
    :catch_1
    move-exception v1

    move-object v2, v0

    .line 153
    :goto_2
    :try_start_3
    const-string/jumbo v3, "ImageFetcher"

    const-string/jumbo v4, "Unable to read bitmap from stream."

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 165
    new-array v1, v7, [Ljava/io/Closeable;

    aput-object v2, v1, v6

    invoke-static {v1}, Lcom/viber/voip/util/bu;->a([Ljava/io/Closeable;)V

    goto :goto_0

    .line 154
    :catch_2
    move-exception v1

    move-object v2, v0

    .line 156
    :goto_3
    :try_start_4
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 165
    new-array v1, v7, [Ljava/io/Closeable;

    aput-object v2, v1, v6

    invoke-static {v1}, Lcom/viber/voip/util/bu;->a([Ljava/io/Closeable;)V

    goto :goto_0

    .line 157
    :catch_3
    move-exception v1

    move-object v2, v0

    .line 165
    :goto_4
    new-array v1, v7, [Ljava/io/Closeable;

    aput-object v2, v1, v6

    invoke-static {v1}, Lcom/viber/voip/util/bu;->a([Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_5
    new-array v1, v7, [Ljava/io/Closeable;

    aput-object v2, v1, v6

    invoke-static {v1}, Lcom/viber/voip/util/bu;->a([Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_5

    .line 157
    :catch_4
    move-exception v1

    goto :goto_4

    .line 154
    :catch_5
    move-exception v1

    goto :goto_3

    .line 152
    :catch_6
    move-exception v1

    goto :goto_2

    .line 150
    :catch_7
    move-exception v1

    goto :goto_1
.end method

.method public static a(Landroid/net/Uri;ZZII)Landroid/graphics/Bitmap;
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 186
    .line 188
    :try_start_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/viber/voip/util/b/w;->b(Landroid/net/Uri;ZZII)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v1

    .line 189
    if-eqz v1, :cond_0

    .line 190
    :try_start_1
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v0

    .line 206
    new-array v2, v4, [Ljava/io/Closeable;

    aput-object v1, v2, v3

    invoke-static {v2}, Lcom/viber/voip/util/bu;->a([Ljava/io/Closeable;)V

    .line 208
    :goto_0
    return-object v0

    .line 206
    :cond_0
    new-array v2, v4, [Ljava/io/Closeable;

    aput-object v1, v2, v3

    invoke-static {v2}, Lcom/viber/voip/util/bu;->a([Ljava/io/Closeable;)V

    goto :goto_0

    .line 193
    :catch_0
    move-exception v1

    move-object v1, v0

    .line 206
    :goto_1
    new-array v2, v4, [Ljava/io/Closeable;

    aput-object v1, v2, v3

    invoke-static {v2}, Lcom/viber/voip/util/bu;->a([Ljava/io/Closeable;)V

    goto :goto_0

    .line 195
    :catch_1
    move-exception v1

    move-object v1, v0

    .line 197
    :goto_2
    :try_start_2
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 206
    new-array v2, v4, [Ljava/io/Closeable;

    aput-object v1, v2, v3

    invoke-static {v2}, Lcom/viber/voip/util/bu;->a([Ljava/io/Closeable;)V

    goto :goto_0

    .line 198
    :catch_2
    move-exception v1

    move-object v1, v0

    .line 206
    :goto_3
    new-array v2, v4, [Ljava/io/Closeable;

    aput-object v1, v2, v3

    invoke-static {v2}, Lcom/viber/voip/util/bu;->a([Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    :goto_4
    new-array v2, v4, [Ljava/io/Closeable;

    aput-object v1, v2, v3

    invoke-static {v2}, Lcom/viber/voip/util/bu;->a([Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_4

    .line 198
    :catch_3
    move-exception v2

    goto :goto_3

    .line 195
    :catch_4
    move-exception v2

    goto :goto_2

    .line 193
    :catch_5
    move-exception v2

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;)Lcom/viber/voip/util/b/w;
    .locals 2
    .parameter

    .prologue
    .line 66
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 67
    const-string/jumbo v1, "image_fetcher"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/util/b/w;

    .line 68
    if-nez v0, :cond_0

    .line 69
    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "ImageFetcher not found."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 71
    :cond_0
    return-object v0
.end method

.method public static a(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 257
    invoke-static {p0, v0, v0, v0, v0}, Lcom/viber/voip/util/b/w;->c(Landroid/net/Uri;ZZII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 328
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;Landroid/net/Uri;Z)Ljava/io/InputStream;
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 230
    if-nez p1, :cond_0

    .line 231
    const/4 v0, 0x0

    .line 245
    :goto_0
    return-object v0

    .line 232
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 233
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "file"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    .line 236
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 237
    invoke-static {p1}, Lcom/viber/voip/util/b/w;->c(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0

    .line 238
    :cond_2
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 239
    if-eqz p2, :cond_3

    invoke-static {}, Lcom/viber/voip/util/gl;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 240
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/provider/ContactsContract$Contacts;->openContactPhotoInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;Z)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0

    .line 242
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/provider/ContactsContract$Contacts;->openContactPhotoInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0

    .line 245
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0
.end method

.method private static b(Landroid/net/Uri;ZZII)Ljava/io/InputStream;
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 267
    invoke-static {p0, p1, p2, p3, p4}, Lcom/viber/voip/util/b/w;->c(Landroid/net/Uri;ZZII)Ljava/lang/String;

    move-result-object v1

    .line 268
    invoke-static {v1}, Lcom/viber/voip/util/gj;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/io/FileInputStream;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    goto :goto_0
.end method

.method private b(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/viber/voip/util/b/w;->c(Landroid/content/Context;)V

    .line 86
    return-void
.end method

.method private static c(Landroid/net/Uri;)Ljava/io/InputStream;
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x2

    .line 261
    invoke-static {p0, v1, v1, v0, v0}, Lcom/viber/voip/util/b/w;->b(Landroid/net/Uri;ZZII)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method private static c(Landroid/net/Uri;ZZII)Ljava/lang/String;
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x0

    .line 274
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/viber/voip/w;->z:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/viber/voip/util/gj;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".tmp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 278
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "maps.google.com/maps/api/staticmap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/viber/voip/w;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/viber/voip/util/gj;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 280
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".tmp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 281
    new-instance v0, Lcom/viber/voip/util/upload/l;

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    move v4, p2

    move v5, p1

    move v6, p3

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/viber/voip/util/upload/l;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZII)V

    move-object v6, v3

    move-object v5, v2

    .line 310
    :goto_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 312
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 313
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 316
    :cond_0
    invoke-static {v5, v6, p0}, Lcom/viber/voip/util/b/w;->a(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 318
    :try_start_0
    invoke-virtual {v0}, Lcom/viber/voip/util/upload/d;->d()V
    :try_end_0
    .catch Lcom/viber/voip/util/upload/e; {:try_start_0 .. :try_end_0} :catch_0

    .line 324
    :cond_1
    :goto_1
    return-object v5

    .line 283
    :cond_2
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "stickers/icons"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 284
    const-string/jumbo v0, "\\d+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {p0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 285
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 286
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 287
    invoke-static {v0}, Lcom/viber/voip/stickers/c/e;->e(I)Ljava/lang/String;

    move-result-object v5

    .line 288
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".tmp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 292
    new-instance v0, Lcom/viber/voip/util/upload/d;

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v5, v6}, Lcom/viber/voip/util/upload/d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object v5, v9

    .line 290
    goto :goto_1

    .line 293
    :cond_4
    invoke-static {p0}, Lcom/viber/voip/util/hv;->a(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 294
    invoke-static {p0}, Lcom/viber/voip/util/hv;->b(Landroid/net/Uri;)Lcom/viber/voip/util/hw;

    move-result-object v4

    .line 295
    new-instance v0, Lcom/viber/voip/util/upload/ab;

    iget-object v1, v4, Lcom/viber/voip/util/hw;->b:Lcom/viber/voip/util/upload/ak;

    iget-object v2, v4, Lcom/viber/voip/util/hw;->c:Ljava/lang/String;

    iget-object v3, v4, Lcom/viber/voip/util/hw;->a:Ljava/lang/String;

    iget v4, v4, Lcom/viber/voip/util/hw;->d:I

    invoke-direct/range {v0 .. v6}, Lcom/viber/voip/util/upload/ab;-><init>(Lcom/viber/voip/util/upload/ak;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 302
    :cond_5
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/util/upload/s;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 303
    const-string/jumbo v0, "image"

    invoke-static {v0}, Lcom/viber/voip/util/upload/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 304
    new-instance v3, Lcom/viber/voip/util/upload/aa;

    sget-object v4, Lcom/viber/voip/util/upload/s;->b:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v7

    invoke-direct/range {v3 .. v8}, Lcom/viber/voip/util/upload/aa;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v3

    .line 306
    goto/16 :goto_0

    .line 307
    :cond_6
    new-instance v0, Lcom/viber/voip/util/upload/d;

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v5, v6}, Lcom/viber/voip/util/upload/d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 319
    :catch_0
    move-exception v0

    move-object v5, v9

    .line 321
    goto/16 :goto_1
.end method

.method private c(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 94
    const-string/jumbo v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 96
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 97
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v0

    if-nez v0, :cond_1

    .line 98
    :cond_0
    const-string/jumbo v0, "ImageFetcher"

    const-string/jumbo v1, "checkConnection - no connection found"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :cond_1
    return-void
.end method


# virtual methods
.method protected a(Landroid/net/Uri;Lcom/viber/voip/util/b/x;)Landroid/graphics/Bitmap;
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 113
    const/4 v0, 0x0

    .line 115
    :try_start_0
    invoke-virtual {p0}, Lcom/viber/voip/util/b/w;->b()Lcom/viber/voip/util/b/s;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/util/b/w;->c:Landroid/content/Context;

    invoke-static {p1, p2, v1, v2}, Lcom/viber/voip/util/b/w;->a(Landroid/net/Uri;Lcom/viber/voip/util/b/x;Lcom/viber/voip/util/b/s;Landroid/content/Context;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v0

    .line 131
    :goto_0
    return-object v0

    .line 116
    :catch_0
    move-exception v1

    .line 117
    const-string/jumbo v2, "ImageFetcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "File can\'t be found by the given Uri "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 118
    :catch_1
    move-exception v1

    .line 119
    const-string/jumbo v2, "ImageFetcher"

    const-string/jumbo v3, "Unable to read bitmap from the stream."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 120
    :catch_2
    move-exception v1

    .line 121
    const-string/jumbo v2, "ImageFetcher"

    const-string/jumbo v3, "Not enough memory to allocate bitmap."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 122
    :catch_3
    move-exception v1

    .line 128
    const-string/jumbo v2, "ImageFetcher"

    const-string/jumbo v3, "Unexpected error on loading bitmap from the stream. Nobody is perfect."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
