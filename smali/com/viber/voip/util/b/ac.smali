.class public abstract Lcom/viber/voip/util/b/ac;
.super Lcom/viber/voip/util/b/ad;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/viber/voip/util/b/ad;-><init>(Landroid/content/Context;)V

    .line 50
    return-void
.end method

.method public static a(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 255
    iget v1, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 256
    iget v2, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 257
    const/4 v0, 0x1

    .line 259
    if-lez p2, :cond_0

    if-gt v1, p2, :cond_1

    :cond_0
    if-lez p1, :cond_2

    if-le v2, p1, :cond_2

    .line 261
    :cond_1
    div-int/lit8 v1, v1, 0x2

    .line 262
    div-int/lit8 v2, v2, 0x2

    .line 267
    :goto_0
    div-int v3, v1, v0

    if-le v3, p2, :cond_2

    div-int v3, v2, v0

    if-le v3, p1, :cond_2

    .line 268
    mul-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 286
    :cond_2
    return v0
.end method

.method static a(Landroid/net/Uri;Lcom/viber/voip/util/b/x;Lcom/viber/voip/util/b/s;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 171
    invoke-virtual {p1, p3}, Lcom/viber/voip/util/b/x;->e(Landroid/content/Context;)I

    move-result v1

    .line 172
    invoke-virtual {p1, p3}, Lcom/viber/voip/util/b/x;->f(Landroid/content/Context;)I

    move-result v2

    .line 174
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 175
    iput-boolean v7, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 177
    iget-boolean v4, p1, Lcom/viber/voip/util/b/x;->c:Z

    invoke-static {p3, p0, v4}, Lcom/viber/voip/util/b/w;->b(Landroid/content/Context;Landroid/net/Uri;Z)Ljava/io/InputStream;

    move-result-object v4

    .line 179
    if-eqz v4, :cond_0

    :try_start_0
    invoke-virtual {v4}, Ljava/io/InputStream;->available()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-gtz v5, :cond_1

    .line 182
    :cond_0
    new-array v1, v7, [Ljava/io/Closeable;

    aput-object v4, v1, v6

    invoke-static {v1}, Lcom/viber/voip/util/bu;->a([Ljava/io/Closeable;)V

    .line 205
    :goto_0
    return-object v0

    .line 180
    :cond_1
    const/4 v5, 0x0

    :try_start_1
    invoke-static {v4, v5, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 182
    new-array v5, v7, [Ljava/io/Closeable;

    aput-object v4, v5, v6

    invoke-static {v5}, Lcom/viber/voip/util/bu;->a([Ljava/io/Closeable;)V

    .line 185
    invoke-static {v3, v1, v2}, Lcom/viber/voip/util/b/ac;->a(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v1

    iput v1, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 188
    iput-boolean v6, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 191
    invoke-static {}, Lcom/viber/voip/util/gl;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 192
    invoke-static {v3, p2}, Lcom/viber/voip/util/b/ac;->a(Landroid/graphics/BitmapFactory$Options;Lcom/viber/voip/util/b/s;)V

    .line 196
    :cond_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-ge v1, v2, :cond_3

    .line 197
    invoke-static {v3}, Lcom/viber/voip/util/b/ac;->a(Landroid/graphics/BitmapFactory$Options;)V

    .line 200
    :cond_3
    iget-boolean v1, p1, Lcom/viber/voip/util/b/x;->c:Z

    invoke-static {p3, p0, v1}, Lcom/viber/voip/util/b/w;->b(Landroid/content/Context;Landroid/net/Uri;Z)Ljava/io/InputStream;

    move-result-object v1

    .line 202
    if-eqz v1, :cond_4

    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v2

    if-gtz v2, :cond_5

    .line 205
    :cond_4
    new-array v2, v7, [Ljava/io/Closeable;

    aput-object v1, v2, v6

    invoke-static {v2}, Lcom/viber/voip/util/bu;->a([Ljava/io/Closeable;)V

    goto :goto_0

    .line 182
    :catchall_0
    move-exception v0

    new-array v1, v7, [Ljava/io/Closeable;

    aput-object v4, v1, v6

    invoke-static {v1}, Lcom/viber/voip/util/bu;->a([Ljava/io/Closeable;)V

    throw v0

    .line 203
    :cond_5
    const/4 v0, 0x0

    :try_start_3
    invoke-static {v1, v0, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v0

    .line 205
    new-array v2, v7, [Ljava/io/Closeable;

    aput-object v1, v2, v6

    invoke-static {v2}, Lcom/viber/voip/util/bu;->a([Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_1
    move-exception v0

    new-array v2, v7, [Ljava/io/Closeable;

    aput-object v1, v2, v6

    invoke-static {v2}, Lcom/viber/voip/util/bu;->a([Ljava/io/Closeable;)V

    throw v0
.end method

.method public static a(Ljava/io/FileDescriptor;IILcom/viber/voip/util/b/s;)Landroid/graphics/Bitmap;
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 137
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 138
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 139
    invoke-static {p0, v3, v0}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 142
    invoke-static {v0, p1, p2}, Lcom/viber/voip/util/b/ac;->a(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v1

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 145
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 148
    invoke-static {}, Lcom/viber/voip/util/gl;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 149
    invoke-static {v0, p3}, Lcom/viber/voip/util/b/ac;->a(Landroid/graphics/BitmapFactory$Options;Lcom/viber/voip/util/b/s;)V

    .line 153
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-ge v1, v2, :cond_1

    .line 154
    invoke-static {v0}, Lcom/viber/voip/util/b/ac;->a(Landroid/graphics/BitmapFactory$Options;)V

    .line 156
    :cond_1
    invoke-static {p0, v3, v0}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/graphics/BitmapFactory$Options;)V
    .locals 2
    .parameter

    .prologue
    .line 227
    :try_start_0
    const-class v0, Landroid/graphics/BitmapFactory$Options;

    const-string/jumbo v1, "inNativeAlloc"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    :goto_0
    return-void

    .line 235
    :catch_0
    move-exception v0

    goto :goto_0

    .line 233
    :catch_1
    move-exception v0

    goto :goto_0

    .line 231
    :catch_2
    move-exception v0

    goto :goto_0

    .line 228
    :catch_3
    move-exception v0

    goto :goto_0
.end method

.method private static a(Landroid/graphics/BitmapFactory$Options;Lcom/viber/voip/util/b/s;)V
    .locals 1
    .parameter
    .parameter
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 213
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 215
    if-eqz p1, :cond_0

    .line 217
    invoke-virtual {p1, p0}, Lcom/viber/voip/util/b/s;->a(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 219
    if-eqz v0, :cond_0

    .line 220
    iput-object v0, p0, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 223
    :cond_0
    return-void
.end method
