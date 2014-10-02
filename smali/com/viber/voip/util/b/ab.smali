.class public Lcom/viber/voip/util/b/ab;
.super Lcom/viber/voip/util/b/ac;
.source "SourceFile"


# instance fields
.field private final d:Z

.field private e:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/viber/voip/util/b/ac;-><init>(Landroid/content/Context;)V

    .line 75
    invoke-direct {p0, p1}, Lcom/viber/voip/util/b/ab;->a(Landroid/content/Context;)V

    .line 77
    iput-boolean p2, p0, Lcom/viber/voip/util/b/ab;->d:Z

    .line 78
    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;)Lcom/viber/voip/util/b/ab;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 50
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/viber/voip/util/b/ab;->a(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;Z)Lcom/viber/voip/util/b/ab;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;Z)Lcom/viber/voip/util/b/ab;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 54
    new-instance v0, Lcom/viber/voip/util/b/u;

    const-string/jumbo v1, "ImageFetcherThumb"

    invoke-direct {v0, p0, v1}, Lcom/viber/voip/util/b/u;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 55
    const/high16 v1, 0x3e80

    invoke-virtual {v0, v1}, Lcom/viber/voip/util/b/u;->a(F)V

    .line 57
    new-instance v1, Lcom/viber/voip/util/b/ab;

    invoke-direct {v1, p0, p2}, Lcom/viber/voip/util/b/ab;-><init>(Landroid/content/Context;Z)V

    .line 58
    const-string/jumbo v2, "image_fetcher_thumb_cache"

    invoke-virtual {v1, p1, v0, v2}, Lcom/viber/voip/util/b/ab;->a(Landroid/support/v4/app/FragmentManager;Lcom/viber/voip/util/b/u;Ljava/lang/String;)V

    .line 60
    return-object v1
.end method

.method private a(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 81
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/util/b/ab;->e:Landroid/content/ContentResolver;

    .line 82
    return-void
.end method

.method private static b(Landroid/net/Uri;Lcom/viber/voip/util/b/x;Lcom/viber/voip/util/b/s;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 145
    const/4 v0, 0x0

    .line 147
    :try_start_0
    invoke-static {p0, p1, p2, p3}, Lcom/viber/voip/util/b/ab;->a(Landroid/net/Uri;Lcom/viber/voip/util/b/x;Lcom/viber/voip/util/b/s;Landroid/content/Context;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 158
    :goto_0
    return-object v0

    .line 154
    :catch_0
    move-exception v1

    .line 156
    invoke-static {}, Ljava/lang/System;->gc()V

    goto :goto_0

    .line 148
    :catch_1
    move-exception v1

    goto :goto_0

    .line 150
    :catch_2
    move-exception v1

    goto :goto_0

    .line 152
    :catch_3
    move-exception v1

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;)Lcom/viber/voip/util/b/ab;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 64
    new-instance v0, Lcom/viber/voip/util/b/u;

    const-string/jumbo v1, "ImageFetcherThumb"

    invoke-direct {v0, p0, v1}, Lcom/viber/voip/util/b/u;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 65
    const v1, 0x3e19999a

    invoke-virtual {v0, v1}, Lcom/viber/voip/util/b/u;->a(F)V

    .line 67
    new-instance v1, Lcom/viber/voip/util/b/ab;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/viber/voip/util/b/ab;-><init>(Landroid/content/Context;Z)V

    .line 68
    const-string/jumbo v2, "albums_fetcher_thumb_cache"

    invoke-virtual {v1, p1, v0, v2}, Lcom/viber/voip/util/b/ab;->a(Landroid/support/v4/app/FragmentManager;Lcom/viber/voip/util/b/u;Ljava/lang/String;)V

    .line 70
    return-object v1
.end method


# virtual methods
.method protected a(Landroid/net/Uri;Lcom/viber/voip/util/b/x;)Landroid/graphics/Bitmap;
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 96
    if-nez p1, :cond_1

    .line 121
    :cond_0
    :goto_0
    return-object v0

    .line 98
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 99
    if-eqz v1, :cond_2

    const-string/jumbo v2, "content"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v2, v3

    .line 100
    :goto_1
    if-eqz v2, :cond_3

    invoke-virtual {p0, p1}, Lcom/viber/voip/util/b/ab;->a(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    .line 102
    :goto_2
    if-eqz v1, :cond_0

    .line 106
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/viber/voip/messages/extras/image/h;->a(Ljava/lang/String;)I

    move-result v5

    .line 107
    iget-boolean v6, p0, Lcom/viber/voip/util/b/ab;->d:Z

    if-eqz v6, :cond_4

    if-eqz v2, :cond_4

    .line 108
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 110
    iget-object v4, p0, Lcom/viber/voip/util/b/ab;->e:Landroid/content/ContentResolver;

    invoke-static {v4, v1, v2, v3, v0}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 113
    invoke-static {v0, v5}, Lcom/viber/voip/messages/extras/image/h;->a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_2
    move v2, v4

    .line 99
    goto :goto_1

    :cond_3
    move-object v1, p1

    .line 100
    goto :goto_2

    .line 116
    :cond_4
    iget-object v2, p0, Lcom/viber/voip/util/b/ab;->c:Landroid/content/Context;

    invoke-static {v1, p2, v0, v2}, Lcom/viber/voip/util/b/ab;->b(Landroid/net/Uri;Lcom/viber/voip/util/b/x;Lcom/viber/voip/util/b/s;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 117
    invoke-static {v0}, Lcom/viber/voip/messages/extras/image/h;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 118
    iget-object v1, p0, Lcom/viber/voip/util/b/ab;->c:Landroid/content/Context;

    invoke-virtual {p2, v1}, Lcom/viber/voip/util/b/x;->e(Landroid/content/Context;)I

    move-result v1

    invoke-static {v0, v1, v3, v4, v5}, Lcom/viber/voip/messages/extras/image/h;->a(Landroid/graphics/Bitmap;IIZI)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method protected a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/viber/voip/util/b/ab;->d:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lcom/viber/voip/util/b/ac;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 125
    .line 129
    :try_start_0
    iget-object v1, p0, Lcom/viber/voip/util/b/ab;->e:Landroid/content/ContentResolver;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "_data"

    aput-object v4, v2, v3

    invoke-static {v1, p1, v2}, Landroid/provider/MediaStore$Images$Media;->query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 131
    if-eqz v1, :cond_0

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 132
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 133
    if-eqz v2, :cond_0

    .line 134
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 138
    :cond_0
    invoke-static {v1}, Lcom/viber/voip/util/al;->a(Landroid/database/Cursor;)V

    .line 141
    return-object v0

    .line 138
    :catchall_0
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    :goto_0
    invoke-static {v1}, Lcom/viber/voip/util/al;->a(Landroid/database/Cursor;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method protected a()V
    .locals 0

    .prologue
    .line 86
    invoke-super {p0}, Lcom/viber/voip/util/b/ac;->a()V

    .line 87
    return-void
.end method
