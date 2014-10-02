.class public final Lcom/viber/voip/util/bu;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/net/Uri;Landroid/net/Uri;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 122
    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    invoke-static {p1}, Lcom/viber/voip/messages/extras/image/h;->b(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/viber/voip/messages/extras/image/h;->b(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 133
    :cond_0
    :goto_0
    return-void

    .line 126
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 127
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 129
    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 130
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 132
    :cond_2
    invoke-static {v0, v1}, Lcom/viber/voip/util/bu;->a(Ljava/io/File;Ljava/io/File;)V

    goto :goto_0
.end method

.method public static a(Ljava/io/File;Ljava/io/File;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 92
    if-eqz p1, :cond_0

    if-nez p0, :cond_1

    .line 107
    :cond_0
    :goto_0
    return-void

    .line 99
    :cond_1
    :try_start_0
    new-instance v3, Ljava/io/BufferedOutputStream;

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    :try_start_1
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 101
    :try_start_2
    invoke-static {v1, v3}, Lcom/viber/voip/util/bu;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 103
    new-array v0, v6, [Ljava/io/Closeable;

    aput-object v1, v0, v4

    aput-object v3, v0, v5

    invoke-static {v0}, Lcom/viber/voip/util/bu;->a([Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_1
    new-array v3, v6, [Ljava/io/Closeable;

    aput-object v1, v3, v4

    aput-object v2, v3, v5

    invoke-static {v3}, Lcom/viber/voip/util/bu;->a([Ljava/io/Closeable;)V

    .line 105
    throw v0

    .line 103
    :catchall_1
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_1

    :catchall_2
    move-exception v0

    move-object v2, v3

    goto :goto_1
.end method

.method public static a(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 72
    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 74
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 75
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 77
    :cond_0
    return-void
.end method

.method public static varargs a([Ljava/io/Closeable;)V
    .locals 3
    .parameter

    .prologue
    .line 142
    array-length v1, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v2, p0, v0

    .line 144
    if-eqz v2, :cond_0

    :try_start_0
    invoke-interface {v2}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 145
    :catch_0
    move-exception v2

    goto :goto_1

    .line 149
    :cond_1
    return-void
.end method

.method public static varargs a([Ljava/io/Flushable;)V
    .locals 3
    .parameter

    .prologue
    .line 158
    array-length v1, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v2, p0, v0

    .line 160
    if-eqz v2, :cond_0

    :try_start_0
    invoke-interface {v2}, Ljava/io/Flushable;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 161
    :catch_0
    move-exception v2

    goto :goto_1

    .line 165
    :cond_1
    return-void
.end method

.method public static a(Landroid/net/Uri;)Z
    .locals 2
    .parameter

    .prologue
    .line 176
    invoke-static {p0}, Lcom/viber/voip/messages/extras/image/h;->b(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
