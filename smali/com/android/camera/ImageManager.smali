.class public Lcom/android/camera/ImageManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;

.field private static final c:Landroid/net/Uri;

.field private static final d:Landroid/net/Uri;

.field private static final e:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 57
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/android/camera/ImageManager;->c:Landroid/net/Uri;

    .line 59
    sget-object v0, Landroid/provider/MediaStore$Images$Thumbnails;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/android/camera/ImageManager;->d:Landroid/net/Uri;

    .line 62
    const-string/jumbo v0, "content://media/external/video/media"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/camera/ImageManager;->e:Landroid/net/Uri;

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/DCIM/Camera"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/ImageManager;->a:Ljava/lang/String;

    .line 134
    sget-object v0, Lcom/android/camera/ImageManager;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/camera/ImageManager;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/ImageManager;->b:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/ContentResolver;Ljava/lang/String;JLandroid/location/Location;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;[B[I)Landroid/net/Uri;
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v5, 0x0

    .line 203
    .line 204
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 206
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 207
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 208
    :cond_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p5, p6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 210
    if-eqz p7, :cond_2

    .line 211
    :try_start_1
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x4b

    invoke-virtual {p7, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 212
    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v4, p9, v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 224
    :goto_0
    invoke-static {v2}, Lcom/android/camera/z;->a(Ljava/io/Closeable;)V

    .line 227
    new-instance v0, Landroid/content/ContentValues;

    const/4 v2, 0x7

    invoke-direct {v0, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 228
    const-string/jumbo v2, "title"

    invoke-virtual {v0, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    const-string/jumbo v2, "_display_name"

    invoke-virtual {v0, v2, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    const-string/jumbo v2, "datetaken"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 235
    const-string/jumbo v2, "mime_type"

    const-string/jumbo v3, "image/jpeg"

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    const-string/jumbo v2, "orientation"

    aget v3, p9, v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 237
    const-string/jumbo v2, "_data"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    if-eqz p4, :cond_1

    .line 240
    const-string/jumbo v1, "latitude"

    invoke-virtual {p4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 241
    const-string/jumbo v1, "longitude"

    invoke-virtual {p4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 244
    :cond_1
    sget-object v1, Lcom/android/camera/ImageManager;->c:Landroid/net/Uri;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    :goto_1
    return-object v0

    .line 214
    :cond_2
    :try_start_2
    invoke-virtual {v2, p8}, Ljava/io/OutputStream;->write([B)V

    .line 215
    const/4 v3, 0x0

    invoke-static {v1}, Lcom/android/camera/ImageManager;->c(Ljava/lang/String;)I

    move-result v4

    aput v4, p9, v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 217
    :catch_0
    move-exception v1

    .line 218
    :goto_2
    :try_start_3
    const-string/jumbo v3, "ImageManager"

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 224
    invoke-static {v2}, Lcom/android/camera/z;->a(Ljava/io/Closeable;)V

    goto :goto_1

    .line 220
    :catch_1
    move-exception v1

    move-object v2, v0

    .line 221
    :goto_3
    :try_start_4
    const-string/jumbo v3, "ImageManager"

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 224
    invoke-static {v2}, Lcom/android/camera/z;->a(Ljava/io/Closeable;)V

    goto :goto_1

    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_4
    invoke-static {v2}, Lcom/android/camera/z;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_4

    .line 220
    :catch_2
    move-exception v1

    goto :goto_3

    .line 217
    :catch_3
    move-exception v1

    move-object v2, v0

    goto :goto_2
.end method

.method public static a(Landroid/net/Uri;)Lcom/android/camera/ImageManager$ImageListParam;
    .locals 1
    .parameter

    .prologue
    .line 413
    new-instance v0, Lcom/android/camera/ImageManager$ImageListParam;

    invoke-direct {v0}, Lcom/android/camera/ImageManager$ImageListParam;-><init>()V

    .line 414
    iput-object p0, v0, Lcom/android/camera/ImageManager$ImageListParam;->e:Landroid/net/Uri;

    .line 415
    return-object v0
.end method

.method public static a(Lcom/android/camera/p;IILjava/lang/String;)Lcom/android/camera/ImageManager$ImageListParam;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 404
    new-instance v0, Lcom/android/camera/ImageManager$ImageListParam;

    invoke-direct {v0}, Lcom/android/camera/ImageManager$ImageListParam;-><init>()V

    .line 405
    iput-object p0, v0, Lcom/android/camera/ImageManager$ImageListParam;->a:Lcom/android/camera/p;

    .line 406
    iput p1, v0, Lcom/android/camera/ImageManager$ImageListParam;->b:I

    .line 407
    iput p2, v0, Lcom/android/camera/ImageManager$ImageListParam;->c:I

    .line 408
    iput-object p3, v0, Lcom/android/camera/ImageManager$ImageListParam;->d:Ljava/lang/String;

    .line 409
    return-object v0
.end method

.method public static a(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/android/camera/a/d;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 436
    invoke-static {p1}, Lcom/android/camera/ImageManager;->a(Landroid/net/Uri;)Lcom/android/camera/ImageManager$ImageListParam;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/camera/ImageManager;->a(Landroid/content/ContentResolver;Lcom/android/camera/ImageManager$ImageListParam;)Lcom/android/camera/a/d;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/ContentResolver;Landroid/net/Uri;I)Lcom/android/camera/a/d;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 337
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 343
    :goto_0
    const-string/jumbo v1, "content://drm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 344
    sget-object v0, Lcom/android/camera/p;->d:Lcom/android/camera/p;

    const/4 v1, 0x2

    invoke-static {p0, v0, v1, p2, v2}, Lcom/android/camera/ImageManager;->a(Landroid/content/ContentResolver;Lcom/android/camera/p;IILjava/lang/String;)Lcom/android/camera/a/d;

    move-result-object v0

    .line 353
    :goto_1
    return-object v0

    .line 337
    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0

    .line 346
    :cond_1
    const-string/jumbo v1, "content://media/external/video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 347
    sget-object v0, Lcom/android/camera/p;->c:Lcom/android/camera/p;

    const/4 v1, 0x4

    invoke-static {p0, v0, v1, p2, v2}, Lcom/android/camera/ImageManager;->a(Landroid/content/ContentResolver;Lcom/android/camera/p;IILjava/lang/String;)Lcom/android/camera/a/d;

    move-result-object v0

    goto :goto_1

    .line 349
    :cond_2
    invoke-static {v0}, Lcom/android/camera/ImageManager;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 350
    invoke-static {p0, p1}, Lcom/android/camera/ImageManager;->a(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/android/camera/a/d;

    move-result-object v0

    goto :goto_1

    .line 352
    :cond_3
    const-string/jumbo v0, "bucketId"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 353
    sget-object v1, Lcom/android/camera/p;->d:Lcom/android/camera/p;

    const/4 v2, 0x1

    invoke-static {p0, v1, v2, p2, v0}, Lcom/android/camera/ImageManager;->a(Landroid/content/ContentResolver;Lcom/android/camera/p;IILjava/lang/String;)Lcom/android/camera/a/d;

    move-result-object v0

    goto :goto_1
.end method

.method public static a(Landroid/content/ContentResolver;Lcom/android/camera/ImageManager$ImageListParam;)Lcom/android/camera/a/d;
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    .line 280
    iget-object v0, p1, Lcom/android/camera/ImageManager$ImageListParam;->a:Lcom/android/camera/p;

    .line 281
    iget v1, p1, Lcom/android/camera/ImageManager$ImageListParam;->b:I

    .line 282
    iget v2, p1, Lcom/android/camera/ImageManager$ImageListParam;->c:I

    .line 283
    iget-object v3, p1, Lcom/android/camera/ImageManager$ImageListParam;->d:Ljava/lang/String;

    .line 284
    iget-object v4, p1, Lcom/android/camera/ImageManager$ImageListParam;->e:Landroid/net/Uri;

    .line 285
    iget-boolean v5, p1, Lcom/android/camera/ImageManager$ImageListParam;->f:Z

    .line 287
    if-nez v5, :cond_0

    if-nez p0, :cond_1

    .line 288
    :cond_0
    new-instance v0, Lcom/android/camera/q;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/camera/q;-><init>(Lcom/android/camera/o;)V

    .line 331
    :goto_0
    return-object v0

    .line 291
    :cond_1
    if-eqz v4, :cond_2

    .line 292
    new-instance v0, Lcom/android/camera/a/o;

    invoke-direct {v0, p0, v4}, Lcom/android/camera/a/o;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    goto :goto_0

    .line 296
    :cond_2
    invoke-static {v7}, Lcom/android/camera/ImageManager;->a(Z)Z

    move-result v4

    .line 299
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 301
    if-eqz v4, :cond_3

    sget-object v4, Lcom/android/camera/p;->b:Lcom/android/camera/p;

    if-eq v0, v4, :cond_3

    .line 302
    and-int/lit8 v4, v1, 0x1

    if-eqz v4, :cond_3

    .line 303
    new-instance v4, Lcom/android/camera/a/f;

    sget-object v6, Lcom/android/camera/ImageManager;->c:Landroid/net/Uri;

    invoke-direct {v4, p0, v6, v2, v3}, Lcom/android/camera/a/f;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;ILjava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 306
    :cond_3
    sget-object v4, Lcom/android/camera/p;->b:Lcom/android/camera/p;

    if-eq v0, v4, :cond_4

    sget-object v4, Lcom/android/camera/p;->d:Lcom/android/camera/p;

    if-ne v0, v4, :cond_5

    .line 307
    :cond_4
    and-int/lit8 v0, v1, 0x1

    if-eqz v0, :cond_5

    .line 308
    new-instance v0, Lcom/android/camera/a/f;

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/camera/a/f;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;ILjava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 315
    :cond_5
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 316
    :cond_6
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 317
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/a/b;

    .line 318
    invoke-virtual {v0}, Lcom/android/camera/a/b;->c()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 319
    invoke-virtual {v0}, Lcom/android/camera/a/b;->a()V

    .line 320
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 324
    :cond_7
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    .line 325
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/a/b;

    goto :goto_0

    .line 329
    :cond_8
    new-instance v1, Lcom/android/camera/a/g;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/android/camera/a/d;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/a/d;

    invoke-direct {v1, v0, v2}, Lcom/android/camera/a/g;-><init>([Lcom/android/camera/a/d;I)V

    move-object v0, v1

    .line 331
    goto :goto_0
.end method

.method public static a(Landroid/content/ContentResolver;Lcom/android/camera/p;IILjava/lang/String;)Lcom/android/camera/a/d;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 426
    invoke-static {p1, p2, p3, p4}, Lcom/android/camera/ImageManager;->a(Lcom/android/camera/p;IILjava/lang/String;)Lcom/android/camera/ImageManager$ImageListParam;

    move-result-object v0

    .line 428
    invoke-static {p0, v0}, Lcom/android/camera/ImageManager;->a(Landroid/content/ContentResolver;Lcom/android/camera/ImageManager$ImageListParam;)Lcom/android/camera/a/d;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 142
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 443
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/DCIM"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 445
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 446
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_1

    .line 447
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_1

    .line 463
    :cond_0
    :goto_0
    return v0

    .line 451
    :cond_1
    new-instance v2, Ljava/io/File;

    const-string/jumbo v3, ".probe"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 455
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 457
    :cond_2
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 460
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 461
    const/4 v0, 0x1

    goto :goto_0

    .line 462
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static a(Z)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 472
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    .line 474
    const-string/jumbo v2, "mounted"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 475
    if-eqz p0, :cond_0

    .line 476
    invoke-static {}, Lcom/android/camera/ImageManager;->a()Z

    move-result v0

    .line 485
    :cond_0
    :goto_0
    return v0

    .line 481
    :cond_1
    if-nez p0, :cond_2

    const-string/jumbo v2, "mounted_ro"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 485
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 163
    const-string/jumbo v0, "image/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static c(Ljava/lang/String;)I
    .locals 6
    .parameter

    .prologue
    const/4 v5, -0x1

    .line 248
    const/4 v0, 0x0

    .line 249
    const/4 v2, 0x0

    .line 251
    :try_start_0
    new-instance v1, Landroid/media/ExifInterface;

    invoke-direct {v1, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    :goto_0
    if-eqz v1, :cond_0

    .line 256
    const-string/jumbo v2, "Orientation"

    invoke-virtual {v1, v2, v5}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v1

    .line 258
    if-eq v1, v5, :cond_0

    .line 260
    packed-switch v1, :pswitch_data_0

    .line 274
    :cond_0
    :goto_1
    :pswitch_0
    return v0

    .line 252
    :catch_0
    move-exception v1

    .line 253
    const-string/jumbo v3, "ImageManager"

    const-string/jumbo v4, "cannot read exif"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v2

    goto :goto_0

    .line 262
    :pswitch_1
    const/16 v0, 0x5a

    .line 263
    goto :goto_1

    .line 265
    :pswitch_2
    const/16 v0, 0xb4

    .line 266
    goto :goto_1

    .line 268
    :pswitch_3
    const/16 v0, 0x10e

    goto :goto_1

    .line 260
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method static d(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 359
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/provider/MediaStore$Images$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
