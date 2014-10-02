.class public Lcom/viber/voip/util/upload/n;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 23
    const-class v0, Lcom/viber/voip/util/upload/n;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/util/upload/n;->a:Ljava/lang/String;

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/viber/voip/util/upload/n;->b:Ljava/util/HashMap;

    .line 32
    sget-object v0, Lcom/viber/voip/util/upload/n;->b:Ljava/util/HashMap;

    const-string/jumbo v1, "image"

    const-string/jumbo v2, "jpg"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    sget-object v0, Lcom/viber/voip/util/upload/n;->b:Ljava/util/HashMap;

    const-string/jumbo v1, "location"

    const-string/jumbo v2, "jpg"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v0, Lcom/viber/voip/util/upload/n;->b:Ljava/util/HashMap;

    const-string/jumbo v1, "animated_message"

    const-string/jumbo v2, "mp4"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v0, Lcom/viber/voip/util/upload/n;->b:Ljava/util/HashMap;

    const-string/jumbo v1, "animated_message_cache"

    const-string/jumbo v2, "mp4"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v0, Lcom/viber/voip/util/upload/n;->b:Ljava/util/HashMap;

    const-string/jumbo v1, "image_public_cache"

    const-string/jumbo v2, "jpg"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v0, Lcom/viber/voip/util/upload/n;->b:Ljava/util/HashMap;

    const-string/jumbo v1, "video_public_cache"

    const-string/jumbo v2, "mp4"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v0, Lcom/viber/voip/util/upload/n;->b:Ljava/util/HashMap;

    const-string/jumbo v1, "video"

    const-string/jumbo v2, "mp4"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v0, Lcom/viber/voip/util/upload/n;->b:Ljava/util/HashMap;

    const-string/jumbo v1, "sound"

    const-string/jumbo v2, "3gp"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()Landroid/content/ContentResolver;
    .locals 1

    .prologue
    .line 114
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 8
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 52
    invoke-static {p0}, Lcom/viber/voip/messages/extras/image/h;->b(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    :goto_0
    return-object v2

    .line 53
    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    .line 54
    const-wide/16 v3, 0x0

    .line 55
    new-instance v6, Landroid/media/MediaPlayer;

    invoke-direct {v6}, Landroid/media/MediaPlayer;-><init>()V

    .line 57
    :try_start_0
    invoke-virtual {v6, v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 58
    invoke-virtual {v6}, Landroid/media/MediaPlayer;->prepare()V

    .line 59
    invoke-virtual {v6}, Landroid/media/MediaPlayer;->getDuration()I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v0

    int-to-long v0, v0

    .line 60
    :try_start_1
    invoke-virtual {v6}, Landroid/media/MediaPlayer;->release()V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 68
    :goto_1
    new-instance v3, Landroid/content/ContentValues;

    const/4 v4, 0x3

    invoke-direct {v3, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 69
    const-string/jumbo v4, "mime_type"

    const-string/jumbo v6, "video/mp4"

    invoke-virtual {v3, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const-string/jumbo v4, "_data"

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    const-string/jumbo v4, "duration"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 75
    :try_start_2
    invoke-static {}, Lcom/viber/voip/util/upload/n;->a()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v0

    .line 79
    :goto_2
    invoke-static {v5}, Lcom/viber/voip/util/upload/n;->b(Ljava/lang/String;)V

    move-object v2, v0

    .line 80
    goto :goto_0

    .line 61
    :catch_0
    move-exception v0

    move-object v7, v0

    move-wide v0, v3

    move-object v3, v7

    .line 62
    :goto_3
    invoke-virtual {v3}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 63
    :catch_1
    move-exception v0

    move-object v7, v0

    move-wide v0, v3

    move-object v3, v7

    .line 64
    :goto_4
    invoke-virtual {v3}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_1

    .line 65
    :catch_2
    move-exception v0

    move-object v7, v0

    move-wide v0, v3

    move-object v3, v7

    .line 66
    :goto_5
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 76
    :catch_3
    move-exception v0

    .line 77
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    move-object v0, v2

    goto :goto_2

    .line 65
    :catch_4
    move-exception v3

    goto :goto_5

    .line 63
    :catch_5
    move-exception v3

    goto :goto_4

    .line 61
    :catch_6
    move-exception v3

    goto :goto_3
.end method

.method public static a(Landroid/net/Uri;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 187
    invoke-static {p0}, Lcom/viber/voip/messages/extras/image/h;->b(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 199
    :cond_0
    :goto_0
    return-object p1

    .line 188
    :cond_1
    new-instance v1, Landroid/content/ContentValues;

    const/4 v0, 0x2

    invoke-direct {v1, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 189
    const-string/jumbo v0, "mime_type"

    const-string/jumbo v2, "image/jpg"

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    const-string/jumbo v0, "_data"

    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    const/4 v0, 0x0

    .line 195
    :try_start_0
    invoke-static {}, Lcom/viber/voip/util/upload/n;->a()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 197
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "inserted image from:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", to:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/viber/voip/util/upload/n;->e(Ljava/lang/String;)V

    .line 198
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/viber/voip/util/upload/n;->b(Ljava/lang/String;)V

    .line 199
    if-eqz v0, :cond_0

    move-object p1, v0

    goto :goto_0

    .line 196
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 203
    invoke-static {}, Lcom/viber/voip/messages/extras/image/h;->a()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/viber/voip/messages/extras/image/h;->c()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 204
    invoke-static {p1}, Lcom/viber/voip/util/upload/n;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 206
    const-string/jumbo v0, "animated_message"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    invoke-static {p0}, Lcom/viber/voip/util/gj;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 208
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    .line 213
    :cond_0
    :goto_0
    const-string/jumbo v0, "image_public_cache"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 214
    const-string/jumbo p1, "image"

    .line 218
    :cond_1
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "-V."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/viber/voip/util/upload/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 219
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 221
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    .line 222
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 224
    :cond_2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    :goto_2
    return-object v0

    .line 210
    :cond_3
    const-string/jumbo v0, "[^a-zA-Z0-9\\._]+"

    const-string/jumbo v2, "_"

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 215
    :cond_4
    const-string/jumbo v0, "video_public_cache"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 216
    const-string/jumbo p1, "video"

    goto :goto_1

    .line 226
    :cond_5
    const/4 v0, 0x0

    goto :goto_2
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 236
    sget-object v0, Lcom/viber/voip/w;->z:Ljava/lang/String;

    .line 237
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 238
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 239
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Lcom/viber/voip/util/upload/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 240
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    return-object v2
.end method

.method public static a(Ljava/lang/String;Z)Ljava/io/File;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 118
    invoke-static {}, Lcom/viber/voip/messages/extras/image/h;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/viber/voip/w;->A:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 120
    if-eqz p1, :cond_0

    .line 121
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/util/upload/n;->b(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 123
    :cond_0
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/viber/voip/w;->A:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 124
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 126
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/viber/voip/w;->A:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".nomedia"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 127
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 128
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 131
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 133
    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 43
    sget-object v0, Lcom/viber/voip/util/upload/n;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 232
    const-string/jumbo v0, "dl-"

    invoke-static {v0, p0, p1}, Lcom/viber/voip/util/upload/n;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 144
    if-eqz p0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/viber/voip/w;->A:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/viber/voip/util/gj;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 84
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/media/MediaScannerConnection;

    .line 85
    new-instance v1, Lcom/viber/voip/util/upload/o;

    invoke-direct {v1, v0, p0}, Lcom/viber/voip/util/upload/o;-><init>([Landroid/media/MediaScannerConnection;Ljava/lang/String;)V

    .line 103
    new-instance v2, Landroid/media/MediaScannerConnection;

    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/viber/voip/ViberApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Landroid/media/MediaScannerConnection;-><init>(Landroid/content/Context;Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;)V

    aput-object v2, v0, v4

    .line 104
    aget-object v0, v0, v4

    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->connect()V

    .line 105
    return-void
.end method

.method public static c(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 1
    .parameter

    .prologue
    .line 174
    invoke-static {p0, p0}, Lcom/viber/voip/util/upload/n;->a(Landroid/net/Uri;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 148
    const-string/jumbo v0, ""

    .line 149
    const-string/jumbo v1, "image"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 150
    sget-object v0, Lcom/viber/voip/w;->q:Ljava/lang/String;

    .line 163
    :cond_0
    :goto_0
    return-object v0

    .line 151
    :cond_1
    const-string/jumbo v1, "video"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 152
    sget-object v0, Lcom/viber/voip/w;->r:Ljava/lang/String;

    goto :goto_0

    .line 153
    :cond_2
    const-string/jumbo v1, "animated_message"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 154
    sget-object v0, Lcom/viber/voip/w;->r:Ljava/lang/String;

    goto :goto_0

    .line 155
    :cond_3
    const-string/jumbo v1, "animated_message_cache"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 156
    sget-object v0, Lcom/viber/voip/w;->t:Ljava/lang/String;

    goto :goto_0

    .line 157
    :cond_4
    const-string/jumbo v1, "image_public_cache"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string/jumbo v1, "video_public_cache"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 159
    :cond_5
    sget-object v0, Lcom/viber/voip/w;->s:Ljava/lang/String;

    goto :goto_0

    .line 160
    :cond_6
    const-string/jumbo v1, "sound"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 161
    sget-object v0, Lcom/viber/voip/w;->u:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic d(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 22
    invoke-static {p0}, Lcom/viber/voip/util/upload/n;->e(Ljava/lang/String;)V

    return-void
.end method

.method private static e(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 111
    return-void
.end method
