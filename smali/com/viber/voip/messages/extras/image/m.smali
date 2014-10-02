.class public Lcom/viber/voip/messages/extras/image/m;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:I

.field private static b:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/messages/extras/image/m;->b:Ljava/lang/Integer;

    .line 49
    invoke-static {}, Lcom/viber/voip/messages/extras/image/m;->a()I

    move-result v0

    sput v0, Lcom/viber/voip/messages/extras/image/m;->a:I

    return-void
.end method

.method public static declared-synchronized a()I
    .locals 3

    .prologue
    .line 72
    const-class v1, Lcom/viber/voip/messages/extras/image/m;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/viber/voip/messages/extras/image/m;->b:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    .line 73
    const/high16 v0, 0x4348

    invoke-static {v0}, Lcom/viber/voip/messages/extras/image/h;->a(F)I

    move-result v0

    const/16 v2, 0x190

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/messages/extras/image/m;->b:Ljava/lang/Integer;

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getLocalThumbnailMaxWidth in px: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/viber/voip/messages/extras/image/m;->b:Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/messages/extras/image/m;->a(Ljava/lang/String;)V

    .line 76
    :cond_0
    sget-object v0, Lcom/viber/voip/messages/extras/image/m;->b:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 72
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)J
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 385
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 386
    const-wide/16 v0, 0x0

    .line 387
    const-string/jumbo v5, "video"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string/jumbo v5, "animated_message"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 388
    :cond_0
    sget-object v5, Lcom/viber/voip/w;->C:Landroid/content/UriMatcher;

    invoke-virtual {v5, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_3

    .line 389
    :goto_0
    if-eqz v2, :cond_4

    .line 391
    const/4 v2, 0x1

    :try_start_0
    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v5, "duration"

    aput-object v5, v2, v3

    invoke-static {v4, p1, v2}, Landroid/provider/MediaStore$Video;->query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 392
    invoke-static {v2}, Lcom/viber/voip/util/al;->b(Landroid/database/Cursor;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 393
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 395
    :cond_1
    invoke-static {v2}, Lcom/viber/voip/util/al;->a(Landroid/database/Cursor;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 408
    :cond_2
    :goto_1
    return-wide v0

    :cond_3
    move v2, v3

    .line 388
    goto :goto_0

    .line 396
    :catch_0
    move-exception v0

    .line 397
    invoke-static {p0, p1}, Lcom/viber/voip/messages/extras/image/m;->b(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v0

    goto :goto_1

    .line 400
    :cond_4
    invoke-static {p0, p1}, Lcom/viber/voip/messages/extras/image/m;->b(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v0

    goto :goto_1

    .line 402
    :cond_5
    const-string/jumbo v2, "image"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string/jumbo v2, "location"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 403
    :cond_6
    invoke-static {p0, p1}, Lcom/viber/voip/util/bj;->a(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v0

    goto :goto_1

    .line 404
    :cond_7
    const-string/jumbo v2, "sound"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 405
    invoke-static {p0, p1}, Lcom/viber/voip/messages/extras/image/m;->b(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v0

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/net/Uri;)Lcom/viber/voip/messages/extras/image/a;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 226
    const/4 v1, 0x0

    .line 227
    if-eqz p1, :cond_0

    .line 228
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 230
    :try_start_0
    invoke-virtual {v0, p2}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v0

    .line 231
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x50

    invoke-virtual {p1, v2, v3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 232
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 233
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 234
    new-instance v0, Lcom/viber/voip/messages/extras/image/a;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-direct {v0, p2, v2, v3}, Lcom/viber/voip/messages/extras/image/a;-><init>(Landroid/net/Uri;II)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 239
    :goto_0
    invoke-static {p1}, Lcom/viber/voip/messages/extras/image/h;->c(Landroid/graphics/Bitmap;)V

    .line 240
    return-object v0

    .line 235
    :catch_0
    move-exception v0

    .line 236
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Landroid/net/Uri;)Lcom/viber/voip/messages/extras/image/a;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 100
    sget-object v0, Lcom/viber/voip/messages/extras/image/l;->a:Lcom/viber/voip/messages/extras/image/l;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/messages/extras/image/h;->a(Lcom/viber/voip/messages/extras/image/l;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 101
    invoke-static {p0, p1, v0}, Lcom/viber/voip/messages/extras/image/m;->a(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;)Lcom/viber/voip/messages/extras/image/a;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Landroid/net/Uri;I)Lcom/viber/voip/messages/extras/image/a;
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 115
    sget-object v2, Lcom/viber/voip/messages/extras/image/l;->a:Lcom/viber/voip/messages/extras/image/l;

    const/4 v3, 0x0

    const/4 v6, -0x1

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move v5, p2

    invoke-static/range {v0 .. v6}, Lcom/viber/voip/messages/extras/image/m;->a(Landroid/content/Context;Landroid/net/Uri;Lcom/viber/voip/messages/extras/image/l;Landroid/net/Uri;III)Lcom/viber/voip/messages/extras/image/a;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Landroid/net/Uri;II)Lcom/viber/voip/messages/extras/image/a;
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 111
    sget-object v2, Lcom/viber/voip/messages/extras/image/l;->d:Lcom/viber/voip/messages/extras/image/l;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move v5, p2

    move v6, p3

    invoke-static/range {v0 .. v6}, Lcom/viber/voip/messages/extras/image/m;->a(Landroid/content/Context;Landroid/net/Uri;Lcom/viber/voip/messages/extras/image/l;Landroid/net/Uri;III)Lcom/viber/voip/messages/extras/image/a;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;)Lcom/viber/voip/messages/extras/image/a;
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 96
    sget-object v2, Lcom/viber/voip/messages/extras/image/l;->a:Lcom/viber/voip/messages/extras/image/l;

    sget v4, Lcom/viber/voip/messages/extras/image/m;->a:I

    sget v5, Lcom/viber/voip/messages/extras/image/m;->a:I

    const/4 v6, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    invoke-static/range {v0 .. v6}, Lcom/viber/voip/messages/extras/image/m;->a(Landroid/content/Context;Landroid/net/Uri;Lcom/viber/voip/messages/extras/image/l;Landroid/net/Uri;III)Lcom/viber/voip/messages/extras/image/a;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/content/Context;Landroid/net/Uri;Lcom/viber/voip/messages/extras/image/l;Landroid/net/Uri;III)Lcom/viber/voip/messages/extras/image/a;
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "createThumbnail mediaUri: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/ViberApplication;->log(Ljava/lang/String;)V

    .line 121
    invoke-static {p1}, Lcom/viber/voip/util/bj;->b(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 122
    invoke-static {}, Lcom/viber/voip/messages/extras/image/h;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/viber/voip/messages/extras/image/h;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 123
    :cond_0
    const-string/jumbo v0, "return null"

    invoke-static {v0}, Lcom/viber/voip/ViberApplication;->log(Ljava/lang/String;)V

    move-object v0, v7

    .line 143
    :goto_0
    return-object v0

    .line 125
    :cond_1
    const-string/jumbo v1, "video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 127
    invoke-static {p0, p1, p4, p5}, Lcom/viber/voip/messages/extras/image/m;->b(Landroid/content/Context;Landroid/net/Uri;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 128
    if-nez p3, :cond_2

    sget-object v1, Lcom/viber/voip/messages/extras/image/l;->a:Lcom/viber/voip/messages/extras/image/l;

    invoke-static {v1, v7}, Lcom/viber/voip/messages/extras/image/h;->a(Lcom/viber/voip/messages/extras/image/l;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    :cond_2
    invoke-static {p0, v0, p3}, Lcom/viber/voip/messages/extras/image/m;->a(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/net/Uri;)Lcom/viber/voip/messages/extras/image/a;

    move-result-object v0

    .line 142
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "createThumbnail return: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/viber/voip/ViberApplication;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 130
    :cond_3
    const-string/jumbo v1, "image"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 133
    if-eqz p3, :cond_4

    .line 134
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p2

    move v4, p4

    move v5, p5

    :try_start_0
    invoke-static/range {v0 .. v6}, Lcom/viber/voip/messages/extras/image/h;->a(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;Lcom/viber/voip/messages/extras/image/l;IIZ)Lcom/viber/voip/messages/extras/image/a;

    move-result-object v0

    goto :goto_1

    .line 136
    :cond_4
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p4

    move v4, p5

    move v6, p6

    invoke-static/range {v0 .. v6}, Lcom/viber/voip/messages/extras/image/h;->a(Landroid/content/Context;Landroid/net/Uri;Lcom/viber/voip/messages/extras/image/l;IIZI)Lcom/viber/voip/messages/extras/image/a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_1

    .line 138
    :catch_0
    move-exception v0

    .line 139
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "createThumbnail error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/ViberApplication;->log(Ljava/lang/String;)V

    :cond_5
    move-object v0, v7

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;[BLjava/lang/String;)Lcom/viber/voip/messages/extras/image/a;
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 200
    sget-object v0, Lcom/viber/voip/messages/extras/image/l;->a:Lcom/viber/voip/messages/extras/image/l;

    invoke-static {v0, p2}, Lcom/viber/voip/messages/extras/image/h;->a(Lcom/viber/voip/messages/extras/image/l;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 201
    if-eqz v1, :cond_0

    .line 203
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 204
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v0

    .line 205
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 206
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 207
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 209
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/provider/MediaStore$Images$Media;->getBitmap(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 210
    new-instance v0, Lcom/viber/voip/messages/extras/image/a;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-direct {v0, v1, v3, v4}, Lcom/viber/voip/messages/extras/image/a;-><init>(Landroid/net/Uri;II)V

    .line 211
    invoke-static {v2}, Lcom/viber/voip/messages/extras/image/h;->c(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    :goto_0
    return-object v0

    .line 213
    :catch_0
    move-exception v0

    .line 214
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "saveThumbnailsBytes error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/messages/extras/image/m;->a(Ljava/lang/String;)V

    .line 218
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;[BZ)Lcom/viber/voip/messages/extras/image/a;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 283
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/viber/voip/messages/extras/image/m;->a(Landroid/content/Context;[BZLjava/lang/String;)Lcom/viber/voip/messages/extras/image/a;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;[BZLjava/lang/String;)Lcom/viber/voip/messages/extras/image/a;
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 288
    if-eqz p1, :cond_0

    array-length v1, p1

    if-lez v1, :cond_0

    .line 290
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleMediaMessage: thumbExist="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/viber/voip/messages/extras/image/m;->a(Ljava/lang/String;)V

    .line 292
    const/4 v1, 0x0

    .line 293
    if-eqz v0, :cond_2

    .line 294
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "saveThumbnailMediaMessage: thumbExist="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/messages/extras/image/m;->a(Ljava/lang/String;)V

    .line 296
    invoke-static {p0, p1, p3}, Lcom/viber/voip/messages/extras/image/m;->a(Landroid/content/Context;[BLjava/lang/String;)Lcom/viber/voip/messages/extras/image/a;

    move-result-object v7

    .line 297
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "saveThumbnailMediaMessage saveThumbnailsPhoto size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", imageData: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/messages/extras/image/m;->a(Ljava/lang/String;)V

    .line 299
    sget v3, Lcom/viber/voip/messages/extras/image/m;->a:I

    .line 301
    if-eqz v7, :cond_1

    if-eqz p2, :cond_1

    .line 302
    const-string/jumbo v0, "saveThumbnailMediaMessage try to resize"

    invoke-static {v0}, Lcom/viber/voip/messages/extras/image/m;->a(Ljava/lang/String;)V

    .line 304
    :try_start_0
    iget-object v8, v7, Lcom/viber/voip/messages/extras/image/a;->a:Landroid/net/Uri;

    .line 305
    iget-object v1, v7, Lcom/viber/voip/messages/extras/image/a;->a:Landroid/net/Uri;

    sget-object v2, Lcom/viber/voip/messages/extras/image/l;->a:Lcom/viber/voip/messages/extras/image/l;

    const/4 v5, 0x1

    const/4 v6, -0x1

    move-object v0, p0

    move v4, v3

    invoke-static/range {v0 .. v6}, Lcom/viber/voip/messages/extras/image/h;->a(Landroid/content/Context;Landroid/net/Uri;Lcom/viber/voip/messages/extras/image/l;IIZI)Lcom/viber/voip/messages/extras/image/a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 307
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "saveThumbnailMediaMessage new imageData: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/viber/voip/messages/extras/image/m;->a(Ljava/lang/String;)V

    .line 308
    invoke-static {p0, v8}, Lcom/viber/voip/messages/extras/image/h;->c(Landroid/content/Context;Landroid/net/Uri;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 314
    :goto_1
    return-object v0

    .line 288
    :cond_0
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 309
    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v0, v7

    .line 310
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "createThumbnail error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/viber/voip/ViberApplication;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 309
    :catch_1
    move-exception v1

    goto :goto_2

    :cond_1
    move-object v0, v7

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method private static a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 430
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)[[B
    .locals 9
    .parameter
    .parameter

    .prologue
    const/16 v8, 0x2800

    const/16 v7, 0x1000

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 249
    const/4 v0, 0x2

    new-array v0, v0, [[B

    .line 251
    if-nez p1, :cond_0

    .line 252
    new-array v1, v5, [B

    aput-object v1, v0, v5

    .line 253
    new-array v1, v5, [B

    aput-object v1, v0, v6

    .line 279
    :goto_0
    return-object v0

    .line 257
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 259
    const/16 v2, 0x96

    invoke-static {p0, v1, v2, v7}, Lcom/viber/voip/messages/extras/image/m;->a(Landroid/content/Context;Landroid/net/Uri;II)Lcom/viber/voip/messages/extras/image/a;

    move-result-object v2

    .line 261
    if-eqz v2, :cond_1

    .line 262
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "CREATE OUTGOING SMALL THUMBNAIL: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/viber/voip/messages/extras/image/m;->a(Ljava/lang/String;)V

    .line 263
    iget-object v3, v2, Lcom/viber/voip/messages/extras/image/a;->a:Landroid/net/Uri;

    invoke-static {p0, v3, v7}, Lcom/viber/voip/messages/extras/image/m;->b(Landroid/content/Context;Landroid/net/Uri;I)[B

    move-result-object v3

    aput-object v3, v0, v5

    .line 265
    iget-object v2, v2, Lcom/viber/voip/messages/extras/image/a;->a:Landroid/net/Uri;

    invoke-static {p0, v2}, Lcom/viber/voip/messages/extras/image/h;->c(Landroid/content/Context;Landroid/net/Uri;)Z

    .line 270
    :goto_1
    const/16 v2, 0x190

    invoke-static {p0, v1, v2, v8}, Lcom/viber/voip/messages/extras/image/m;->a(Landroid/content/Context;Landroid/net/Uri;II)Lcom/viber/voip/messages/extras/image/a;

    move-result-object v1

    .line 271
    if-eqz v1, :cond_2

    .line 272
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "CREATE OUTGOING LARGE THUMBNAIL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/viber/voip/messages/extras/image/m;->a(Ljava/lang/String;)V

    .line 273
    iget-object v2, v1, Lcom/viber/voip/messages/extras/image/a;->a:Landroid/net/Uri;

    invoke-static {p0, v2, v8}, Lcom/viber/voip/messages/extras/image/m;->b(Landroid/content/Context;Landroid/net/Uri;I)[B

    move-result-object v2

    aput-object v2, v0, v6

    .line 274
    iget-object v1, v1, Lcom/viber/voip/messages/extras/image/a;->a:Landroid/net/Uri;

    invoke-static {p0, v1}, Lcom/viber/voip/messages/extras/image/h;->c(Landroid/content/Context;Landroid/net/Uri;)Z

    goto :goto_0

    .line 267
    :cond_1
    new-array v2, v5, [B

    aput-object v2, v0, v5

    goto :goto_1

    .line 276
    :cond_2
    new-array v1, v5, [B

    aput-object v1, v0, v6

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;Landroid/net/Uri;)J
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 412
    const-wide/16 v1, 0x0

    .line 413
    new-instance v3, Landroid/media/MediaPlayer;

    invoke-direct {v3}, Landroid/media/MediaPlayer;-><init>()V

    .line 415
    :try_start_0
    invoke-virtual {v3, p0, p1}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 416
    invoke-virtual {v3}, Landroid/media/MediaPlayer;->prepare()V

    .line 417
    invoke-virtual {v3}, Landroid/media/MediaPlayer;->getDuration()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    int-to-long v0, v0

    .line 418
    :try_start_1
    invoke-virtual {v3}, Landroid/media/MediaPlayer;->release()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 423
    :goto_0
    return-wide v0

    .line 420
    :catch_0
    move-exception v0

    move-object v4, v0

    move-wide v5, v1

    move-wide v0, v5

    move-object v2, v4

    .line 421
    :goto_1
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 420
    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method private static b(Landroid/content/Context;Landroid/net/Uri;II)Landroid/graphics/Bitmap;
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x7

    const/4 v0, 0x1

    .line 149
    .line 151
    :try_start_0
    sget-object v1, Lcom/viber/voip/w;->C:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_3

    .line 152
    :goto_0
    if-eqz v0, :cond_4

    .line 153
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 154
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 155
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 156
    const/4 v4, 0x1

    iput v4, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 158
    int-to-long v4, v1

    const/4 v1, 0x1

    invoke-static {v0, v4, v5, v1, v3}, Landroid/provider/MediaStore$Video$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 160
    if-nez v0, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v1, v6, :cond_0

    .line 161
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_0
    move-object v1, v0

    .line 167
    :goto_1
    if-eqz v1, :cond_6

    .line 168
    const/4 v0, 0x2

    .line 170
    const/4 v3, -0x2

    if-ne p3, v3, :cond_1

    .line 171
    const/high16 v0, 0x43c8

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v0, v3

    .line 172
    int-to-float v3, p2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 173
    cmpg-float v0, v0, v3

    if-gez v0, :cond_5

    .line 174
    const/4 v0, 0x4

    .line 175
    const/16 p2, 0x190

    .line 181
    :cond_1
    :goto_2
    const/4 v3, 0x1

    invoke-static {v1, p2, v0, v3}, Lcom/viber/voip/messages/extras/image/h;->b(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 182
    const/4 v3, 0x1

    invoke-static {v0, p2, p2, v3}, Lcom/viber/voip/messages/extras/image/h;->a(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 183
    if-eq v0, v1, :cond_2

    .line 184
    invoke-static {v1}, Lcom/viber/voip/messages/extras/image/h;->c(Landroid/graphics/Bitmap;)V

    .line 191
    :cond_2
    :goto_3
    return-object v0

    .line 151
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 164
    :cond_4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v0, v6, :cond_7

    .line 165
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_1

    .line 177
    :cond_5
    const/4 v0, 0x3

    .line 178
    goto :goto_2

    .line 189
    :catch_0
    move-exception v0

    .line 190
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getVideoThumbnails : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/ViberApplication;->log(Ljava/lang/String;)V

    move-object v0, v2

    .line 191
    goto :goto_3

    :cond_6
    move-object v0, v1

    goto :goto_3

    :cond_7
    move-object v1, v2

    goto :goto_1
.end method

.method private static b(Landroid/content/Context;Landroid/net/Uri;I)[B
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 318
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getThumbnailEncodedBody path = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ", maxThumbnailSize = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/messages/extras/image/m;->a(Ljava/lang/String;)V

    .line 319
    new-array v0, v3, [B

    .line 321
    if-nez p1, :cond_1

    .line 381
    :cond_0
    :goto_0
    return-object v0

    .line 325
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 326
    invoke-virtual {v2, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v1

    .line 328
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v2

    .line 331
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "compression:imageSize = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/viber/voip/messages/extras/image/m;->a(Ljava/lang/String;)V

    .line 332
    if-le v2, p2, :cond_5

    .line 333
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 334
    sget-object v3, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    iput-object v3, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 335
    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 336
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 338
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x46

    invoke-virtual {v3, v2, v5, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 340
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "compression:baos.size():"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, " with quality: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v5, 0x46

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/viber/voip/messages/extras/image/m;->a(Ljava/lang/String;)V

    .line 341
    int-to-double v5, p2

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v2

    int-to-double v7, v2

    div-double/2addr v5, v7

    const-wide v7, 0x4051800000000000L

    mul-double/2addr v5, v7

    double-to-int v2, v5

    .line 342
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "compression:defaultQuality:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/viber/voip/messages/extras/image/m;->a(Ljava/lang/String;)V

    .line 344
    :goto_1
    if-lez v2, :cond_2

    .line 345
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v3, v5, v2, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 346
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "compression:compression quality = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", bitmap size = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/viber/voip/messages/extras/image/m;->a(Ljava/lang/String;)V

    .line 347
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v5

    if-ge v5, p2, :cond_4

    .line 352
    :cond_2
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    move-result-object v2

    .line 353
    :try_start_2
    invoke-static {v3}, Lcom/viber/voip/messages/extras/image/h;->c(Landroid/graphics/Bitmap;)V

    .line 355
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7

    move-object v0, v2

    .line 372
    :goto_2
    if-eqz v1, :cond_3

    .line 374
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 379
    :cond_3
    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getThumbnailEncodedBody result size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/viber/voip/messages/extras/image/m;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 350
    :cond_4
    :try_start_4
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 344
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 357
    :cond_5
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v2

    new-array v2, v2, [B
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    .line 358
    :try_start_5
    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7

    move-object v0, v2

    goto :goto_2

    .line 361
    :catch_0
    move-exception v0

    .line 365
    const/4 v0, 0x0

    :try_start_6
    new-array v0, v0, [B
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 372
    if-eqz v1, :cond_0

    .line 374
    :try_start_7
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_0

    .line 375
    :catch_1
    move-exception v1

    goto/16 :goto_0

    .line 366
    :catch_2
    move-exception v2

    move-object v9, v2

    move-object v2, v1

    move-object v1, v9

    .line 370
    :goto_4
    :try_start_8
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 372
    if-eqz v2, :cond_3

    .line 374
    :try_start_9
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    goto :goto_3

    .line 375
    :catch_3
    move-exception v1

    goto :goto_3

    .line 372
    :catchall_0
    move-exception v0

    :goto_5
    if-eqz v1, :cond_6

    .line 374
    :try_start_a
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    .line 375
    :cond_6
    :goto_6
    throw v0

    :catch_4
    move-exception v1

    goto :goto_3

    :catch_5
    move-exception v1

    goto :goto_6

    .line 372
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_5

    .line 366
    :catch_6
    move-exception v2

    move-object v9, v2

    move-object v2, v1

    move-object v1, v9

    goto :goto_4

    :catch_7
    move-exception v0

    move-object v9, v0

    move-object v0, v2

    move-object v2, v1

    move-object v1, v9

    goto :goto_4
.end method
