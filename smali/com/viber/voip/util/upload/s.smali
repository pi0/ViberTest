.class public Lcom/viber/voip/util/upload/s;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;

.field private static c:Landroid/os/Handler;

.field private static final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/viber/voip/util/upload/y;",
            ">;"
        }
    .end annotation
.end field

.field private static e:Ljava/lang/String;

.field private static f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    invoke-static {}, Lcom/viber/voip/bc;->b()Lcom/viber/voip/bd;

    move-result-object v0

    iget-object v0, v0, Lcom/viber/voip/bd;->t:Ljava/lang/String;

    sput-object v0, Lcom/viber/voip/util/upload/s;->a:Ljava/lang/String;

    .line 47
    invoke-static {}, Lcom/viber/voip/bc;->b()Lcom/viber/voip/bd;

    move-result-object v0

    iget-object v0, v0, Lcom/viber/voip/bd;->u:Ljava/lang/String;

    sput-object v0, Lcom/viber/voip/util/upload/s;->b:Ljava/lang/String;

    .line 60
    sget-object v0, Lcom/viber/voip/dk;->j:Lcom/viber/voip/dk;

    invoke-static {v0}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/util/upload/s;->c:Landroid/os/Handler;

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/viber/voip/util/upload/s;->d:Ljava/util/Map;

    .line 62
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    sput-object v0, Lcom/viber/voip/util/upload/s;->e:Ljava/lang/String;

    .line 329
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/util/upload/s;->f:Ljava/util/Set;

    return-void
.end method

.method public static a()V
    .locals 6

    .prologue
    .line 299
    sget-object v1, Lcom/viber/voip/util/upload/s;->e:Ljava/lang/String;

    monitor-enter v1

    .line 300
    :try_start_0
    const-string/jumbo v0, ""

    sput-object v0, Lcom/viber/voip/util/upload/s;->e:Ljava/lang/String;

    .line 301
    sget-object v0, Lcom/viber/voip/util/upload/s;->f:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 303
    :try_start_1
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v3

    .line 304
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "FREEZING FILE DELETE stopVideoPlaying. delete video file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, ", isOK: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/util/upload/s;->h(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 305
    :catch_0
    move-exception v0

    goto :goto_0

    .line 308
    :cond_0
    :try_start_2
    sget-object v0, Lcom/viber/voip/util/upload/s;->f:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 309
    monitor-exit v1

    .line 310
    return-void

    .line 309
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public static a(Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;Lcom/viber/voip/util/upload/b;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 66
    const-string/jumbo v0, "animated_message"

    invoke-virtual {p0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMimeType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    invoke-virtual {p0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getBucket()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getDownloadId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMimeType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, p1}, Lcom/viber/voip/util/upload/s;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/viber/voip/util/upload/b;)V

    .line 75
    :goto_0
    return-void

    .line 69
    :cond_0
    invoke-virtual {p0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->isPublicGroup()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 70
    invoke-static {p0, p1}, Lcom/viber/voip/util/upload/s;->b(Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;Lcom/viber/voip/util/upload/b;)V

    goto :goto_0

    .line 72
    :cond_1
    invoke-virtual {p0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getBucket()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getDownloadId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMimeType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, p1}, Lcom/viber/voip/util/upload/s;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/viber/voip/util/upload/b;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/viber/voip/util/upload/y;)V
    .locals 0
    .parameter

    .prologue
    .line 38
    invoke-static {p0}, Lcom/viber/voip/util/upload/s;->c(Lcom/viber/voip/util/upload/y;)V

    return-void
.end method

.method static synthetic a(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-static {p0, p1}, Lcom/viber/voip/util/upload/s;->b(Ljava/lang/String;Landroid/net/Uri;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/viber/voip/util/upload/b;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 81
    invoke-static {p2}, Lcom/viber/voip/util/upload/s;->g(Ljava/lang/String;)V

    .line 82
    invoke-static {p1, p2}, Lcom/viber/voip/util/upload/n;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 83
    invoke-static {p1, p2}, Lcom/viber/voip/util/upload/n;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 89
    if-eqz v2, :cond_0

    if-nez v3, :cond_1

    .line 90
    :cond_0
    const-string/jumbo v0, "startDownload error in creating temp or save files"

    invoke-static {v0}, Lcom/viber/voip/util/upload/s;->h(Ljava/lang/String;)V

    .line 91
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-interface {p3, v0, v1}, Lcom/viber/voip/util/upload/b;->a(Landroid/net/Uri;I)V

    .line 112
    :goto_0
    return-void

    .line 95
    :cond_1
    new-instance v0, Lcom/viber/voip/util/upload/t;

    sget-object v1, Lcom/viber/voip/util/upload/s;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {p2}, Lcom/viber/voip/util/upload/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v4, p1

    move-object v6, p0

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/viber/voip/util/upload/t;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    new-instance v1, Lcom/viber/voip/util/upload/y;

    invoke-direct {v1, v0, p3}, Lcom/viber/voip/util/upload/y;-><init>(Lcom/viber/voip/util/upload/aa;Lcom/viber/voip/util/upload/b;)V

    invoke-static {v1}, Lcom/viber/voip/util/upload/s;->b(Lcom/viber/voip/util/upload/y;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;ZLcom/viber/voip/util/upload/b;)V
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x2

    .line 210
    :try_start_0
    invoke-static {p0, p1}, Lcom/viber/voip/util/upload/n;->a(Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v2

    .line 211
    const-string/jumbo v0, "image"

    invoke-static {p0, v0}, Lcom/viber/voip/util/upload/n;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 212
    const-string/jumbo v0, "image"

    invoke-static {v0}, Lcom/viber/voip/util/upload/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 218
    if-eqz v2, :cond_0

    if-nez v3, :cond_1

    .line 219
    :cond_0
    const-string/jumbo v0, "startDownload error in creating temp or save files"

    invoke-static {v0}, Lcom/viber/voip/util/upload/s;->h(Ljava/lang/String;)V

    .line 220
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-interface {p2, v0, v1}, Lcom/viber/voip/util/upload/b;->a(Landroid/net/Uri;I)V

    .line 240
    :goto_0
    return-void

    .line 224
    :cond_1
    new-instance v0, Lcom/viber/voip/util/upload/x;

    sget-object v1, Lcom/viber/voip/util/upload/s;->b:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    move-object v4, p0

    move v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/viber/voip/util/upload/x;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 235
    new-instance v1, Lcom/viber/voip/util/upload/y;

    invoke-direct {v1, v0, p2}, Lcom/viber/voip/util/upload/y;-><init>(Lcom/viber/voip/util/upload/aa;Lcom/viber/voip/util/upload/b;)V

    invoke-static {v1}, Lcom/viber/voip/util/upload/s;->b(Lcom/viber/voip/util/upload/y;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 236
    :catch_0
    move-exception v0

    .line 237
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startDownloadUserImage = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/util/upload/s;->h(Ljava/lang/String;)V

    .line 238
    invoke-interface {p2, v8, v7}, Lcom/viber/voip/util/upload/b;->a(Landroid/net/Uri;I)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 2
    .parameter

    .prologue
    .line 264
    sget-object v1, Lcom/viber/voip/util/upload/s;->d:Ljava/util/Map;

    monitor-enter v1

    .line 265
    :try_start_0
    sget-object v0, Lcom/viber/voip/util/upload/s;->d:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/util/upload/y;

    .line 266
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/viber/voip/util/upload/y;->c()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 267
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static b(Ljava/lang/String;)Lcom/viber/voip/util/upload/z;
    .locals 1
    .parameter

    .prologue
    .line 271
    sget-object v0, Lcom/viber/voip/util/upload/s;->d:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/util/upload/y;

    .line 272
    if-eqz v0, :cond_0

    .line 273
    invoke-virtual {v0}, Lcom/viber/voip/util/upload/y;->a()Lcom/viber/voip/util/upload/z;

    move-result-object v0

    .line 275
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b()Ljava/util/Map;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/viber/voip/util/upload/s;->d:Ljava/util/Map;

    return-object v0
.end method

.method private static b(Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;Lcom/viber/voip/util/upload/b;)V
    .locals 9
    .parameter
    .parameter

    .prologue
    .line 173
    invoke-virtual {p0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getPublicCacheMimeType()Ljava/lang/String;

    move-result-object v8

    .line 174
    invoke-static {v8}, Lcom/viber/voip/util/upload/s;->g(Ljava/lang/String;)V

    .line 175
    invoke-virtual {p0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getDownloadId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v8}, Lcom/viber/voip/util/upload/n;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    .line 176
    invoke-virtual {p0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getDownloadId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v8}, Lcom/viber/voip/util/upload/n;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    .line 183
    if-eqz v5, :cond_0

    if-nez v6, :cond_1

    .line 184
    :cond_0
    const-string/jumbo v0, "startDownload error in creating temp or save files"

    invoke-static {v0}, Lcom/viber/voip/util/upload/s;->h(Ljava/lang/String;)V

    .line 185
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-interface {p1, v0, v1}, Lcom/viber/voip/util/upload/b;->a(Landroid/net/Uri;I)V

    .line 206
    :goto_0
    return-void

    .line 189
    :cond_1
    new-instance v0, Lcom/viber/voip/util/upload/w;

    sget-object v1, Lcom/viber/voip/util/upload/ak;->f:Lcom/viber/voip/util/upload/ak;

    invoke-static {v8}, Lcom/viber/voip/util/upload/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getDownloadId()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    move-object v7, p0

    invoke-direct/range {v0 .. v8}, Lcom/viber/voip/util/upload/w;-><init>(Lcom/viber/voip/util/upload/ak;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;Ljava/lang/String;)V

    .line 205
    new-instance v1, Lcom/viber/voip/util/upload/y;

    invoke-direct {v1, v0, p1}, Lcom/viber/voip/util/upload/y;-><init>(Lcom/viber/voip/util/upload/aa;Lcom/viber/voip/util/upload/b;)V

    invoke-static {v1}, Lcom/viber/voip/util/upload/s;->b(Lcom/viber/voip/util/upload/y;)V

    goto :goto_0
.end method

.method private static b(Lcom/viber/voip/util/upload/y;)V
    .locals 3
    .parameter

    .prologue
    .line 244
    invoke-static {p0}, Lcom/viber/voip/util/upload/y;->a(Lcom/viber/voip/util/upload/y;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/util/upload/s;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 246
    invoke-static {p0}, Lcom/viber/voip/util/upload/y;->b(Lcom/viber/voip/util/upload/y;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 247
    sget-object v2, Lcom/viber/voip/util/upload/s;->d:Ljava/util/Map;

    monitor-enter v2

    .line 248
    :try_start_0
    sget-object v0, Lcom/viber/voip/util/upload/s;->d:Ljava/util/Map;

    invoke-static {p0}, Lcom/viber/voip/util/upload/y;->a(Lcom/viber/voip/util/upload/y;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/util/upload/y;

    .line 249
    invoke-static {p0}, Lcom/viber/voip/util/upload/y;->b(Lcom/viber/voip/util/upload/y;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/viber/voip/util/upload/b;

    invoke-virtual {v0, v1}, Lcom/viber/voip/util/upload/y;->a(Lcom/viber/voip/util/upload/b;)V

    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "workerSize = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/util/upload/s;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", added id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/viber/voip/util/upload/y;->a(Lcom/viber/voip/util/upload/y;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", this id is already in download state. add download listener"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/util/upload/s;->h(Ljava/lang/String;)V

    .line 251
    monitor-exit v2

    .line 261
    :cond_0
    :goto_0
    return-void

    .line 251
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 256
    :cond_1
    sget-object v1, Lcom/viber/voip/util/upload/s;->d:Ljava/util/Map;

    monitor-enter v1

    .line 257
    :try_start_1
    sget-object v0, Lcom/viber/voip/util/upload/s;->d:Ljava/util/Map;

    invoke-static {p0}, Lcom/viber/voip/util/upload/y;->a(Lcom/viber/voip/util/upload/y;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "workerSize = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/viber/voip/util/upload/s;->d:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ", added id = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/viber/voip/util/upload/y;->a(Lcom/viber/voip/util/upload/y;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/util/upload/s;->h(Ljava/lang/String;)V

    .line 259
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 260
    sget-object v0, Lcom/viber/voip/util/upload/s;->c:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 259
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method private static b(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 320
    const-string/jumbo v0, "video"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 321
    invoke-static {p1}, Lcom/viber/voip/util/upload/n;->a(Landroid/net/Uri;)Landroid/net/Uri;

    .line 322
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "inserting downloaded video, new Uri = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/util/upload/s;->h(Ljava/lang/String;)V

    .line 327
    :cond_0
    :goto_0
    return-void

    .line 323
    :cond_1
    const-string/jumbo v0, "image"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 324
    invoke-static {p1}, Lcom/viber/voip/util/upload/n;->c(Landroid/net/Uri;)Landroid/net/Uri;

    .line 325
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "inserting downloaded image, new Uri = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/util/upload/s;->h(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/viber/voip/util/upload/b;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 142
    const-string/jumbo v0, "animated_message_cache"

    invoke-static {p1, v0}, Lcom/viber/voip/util/upload/n;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 143
    const-string/jumbo v1, "animated_message_cache"

    invoke-static {p1, v1}, Lcom/viber/voip/util/upload/n;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 145
    invoke-static {p0}, Lcom/viber/voip/k/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 152
    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    .line 153
    :cond_0
    const-string/jumbo v0, "startDownload error in creating temp or save files"

    invoke-static {v0}, Lcom/viber/voip/util/upload/s;->h(Ljava/lang/String;)V

    .line 154
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-interface {p3, v0, v1}, Lcom/viber/voip/util/upload/b;->a(Landroid/net/Uri;I)V

    .line 170
    :goto_0
    return-void

    .line 158
    :cond_1
    new-instance v3, Lcom/viber/voip/util/upload/v;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v2, v0, v1, p1}, Lcom/viber/voip/util/upload/v;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    new-instance v0, Lcom/viber/voip/util/upload/y;

    invoke-direct {v0, v3, p3}, Lcom/viber/voip/util/upload/y;-><init>(Lcom/viber/voip/util/upload/aa;Lcom/viber/voip/util/upload/b;)V

    invoke-static {v0}, Lcom/viber/voip/util/upload/s;->b(Lcom/viber/voip/util/upload/y;)V

    goto :goto_0
.end method

.method private static c(Lcom/viber/voip/util/upload/y;)V
    .locals 3
    .parameter

    .prologue
    .line 279
    sget-object v1, Lcom/viber/voip/util/upload/s;->d:Ljava/util/Map;

    monitor-enter v1

    .line 280
    :try_start_0
    sget-object v0, Lcom/viber/voip/util/upload/s;->d:Ljava/util/Map;

    invoke-static {p0}, Lcom/viber/voip/util/upload/y;->a(Lcom/viber/voip/util/upload/y;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    monitor-exit v1

    .line 282
    return-void

    .line 281
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static c(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 290
    if-nez p0, :cond_0

    const-string/jumbo p0, ""

    .line 291
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "FREEZING FILE DELETE startVideoPlay: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/util/upload/s;->h(Ljava/lang/String;)V

    .line 292
    sget-object v1, Lcom/viber/voip/util/upload/s;->e:Ljava/lang/String;

    monitor-enter v1

    .line 293
    :try_start_0
    sput-object p0, Lcom/viber/voip/util/upload/s;->e:Ljava/lang/String;

    .line 294
    monitor-exit v1

    .line 295
    return-void

    .line 294
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static d(Ljava/lang/String;)Z
    .locals 2
    .parameter

    .prologue
    .line 313
    sget-object v1, Lcom/viber/voip/util/upload/s;->e:Ljava/lang/String;

    monitor-enter v1

    .line 314
    :try_start_0
    sget-object v0, Lcom/viber/voip/util/upload/s;->e:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 315
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static final e(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 332
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "FREEZING FILE DELETE saveTempFile : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/util/upload/s;->h(Ljava/lang/String;)V

    .line 333
    sget-object v0, Lcom/viber/voip/util/upload/s;->f:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 334
    return-void
.end method

.method static synthetic f(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 38
    invoke-static {p0}, Lcom/viber/voip/util/upload/s;->h(Ljava/lang/String;)V

    return-void
.end method

.method private static g(Ljava/lang/String;)V
    .locals 10
    .parameter

    .prologue
    .line 115
    const-string/jumbo v0, "image_public_cache"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "video_public_cache"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 116
    :cond_0
    invoke-static {}, Lcom/viber/voip/messages/extras/image/h;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 117
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/viber/voip/w;->s:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 118
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 119
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 120
    new-instance v0, Lcom/viber/voip/util/upload/u;

    invoke-direct {v0}, Lcom/viber/voip/util/upload/u;-><init>()V

    invoke-static {v3, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 125
    const-wide/16 v1, 0x0

    .line 128
    array-length v4, v3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_3

    aget-object v5, v3, v0

    .line 129
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v6

    add-long/2addr v1, v6

    .line 130
    const-wide/32 v6, 0x6400000

    cmp-long v6, v1, v6

    if-gez v6, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    sub-long/2addr v6, v8

    const-wide/32 v8, 0x48190800

    cmp-long v6, v6, v8

    if-ltz v6, :cond_2

    .line 131
    :cond_1
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 128
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 137
    :cond_3
    return-void
.end method

.method private static h(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 287
    return-void
.end method
