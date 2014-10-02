.class public Lcom/android/camera/CropImage;
.super Lcom/android/camera/MonitoredActivity;
.source "SourceFile"


# static fields
.field private static final e:Landroid/graphics/Bitmap$Config;


# instance fields
.field a:Z

.field b:Z

.field c:Lcom/android/camera/m;

.field d:Ljava/lang/Runnable;

.field private f:Landroid/graphics/Bitmap$CompressFormat;

.field private g:Landroid/net/Uri;

.field private h:Z

.field private i:I

.field private j:I

.field private k:Z

.field private l:Z

.field private final m:Landroid/os/Handler;

.field private n:I

.field private o:I

.field private p:Z

.field private q:Z

.field private r:Lcom/android/camera/CropImageView;

.field private s:Landroid/content/ContentResolver;

.field private t:Landroid/graphics/Bitmap;

.field private u:Lcom/android/camera/a/d;

.field private v:Lcom/android/camera/a/c;

.field private w:Z

.field private x:Landroid/net/Uri;

.field private y:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 69
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    :goto_0
    sput-object v0, Lcom/android/camera/CropImage;->e:Landroid/graphics/Bitmap$Config;

    return-void

    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 66
    invoke-direct {p0}, Lcom/android/camera/MonitoredActivity;-><init>()V

    .line 72
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    iput-object v0, p0, Lcom/android/camera/CropImage;->f:Landroid/graphics/Bitmap$CompressFormat;

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/CropImage;->g:Landroid/net/Uri;

    .line 75
    iput-boolean v1, p0, Lcom/android/camera/CropImage;->h:Z

    .line 77
    iput-boolean v2, p0, Lcom/android/camera/CropImage;->k:Z

    .line 78
    iput-boolean v1, p0, Lcom/android/camera/CropImage;->l:Z

    .line 79
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/camera/CropImage;->m:Landroid/os/Handler;

    .line 84
    iput-boolean v2, p0, Lcom/android/camera/CropImage;->q:Z

    .line 472
    new-instance v0, Lcom/android/camera/k;

    invoke-direct {v0, p0}, Lcom/android/camera/k;-><init>(Lcom/android/camera/CropImage;)V

    iput-object v0, p0, Lcom/android/camera/CropImage;->d:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lcom/android/camera/CropImage;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/camera/CropImage;->t:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic a(Lcom/android/camera/CropImage;Lcom/android/camera/a/c;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Lcom/android/camera/CropImage;->a(Lcom/android/camera/a/c;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/android/camera/a/c;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 200
    if-eqz p1, :cond_0

    .line 201
    const/4 v0, -0x1

    const/high16 v1, 0x10

    invoke-interface {p1, v0, v1}, Lcom/android/camera/a/c;->a(II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 202
    iget v1, p0, Lcom/android/camera/CropImage;->y:I

    invoke-static {v0, v1}, Lcom/viber/voip/messages/extras/image/h;->a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 205
    :cond_0
    return-object p2
.end method

.method private a()V
    .locals 4

    .prologue
    .line 210
    invoke-virtual {p0}, Lcom/android/camera/CropImage;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    :goto_0
    return-void

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CropImage;->r:Lcom/android/camera/CropImageView;

    iget-object v1, p0, Lcom/android/camera/CropImage;->t:Landroid/graphics/Bitmap;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/CropImageView;->a(Landroid/graphics/Bitmap;Z)V

    .line 216
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/camera/CropImage;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c04bb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/camera/g;

    invoke-direct {v2, p0}, Lcom/android/camera/g;-><init>(Lcom/android/camera/CropImage;)V

    iget-object v3, p0, Lcom/android/camera/CropImage;->m:Landroid/os/Handler;

    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/camera/z;->a(Lcom/android/camera/MonitoredActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Landroid/os/Handler;)V

    goto :goto_0
.end method

.method private a(Landroid/graphics/Bitmap;)V
    .locals 11
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v7, -0x1

    .line 361
    iget-object v0, p0, Lcom/android/camera/CropImage;->g:Landroid/net/Uri;

    if-eqz v0, :cond_2

    .line 364
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/CropImage;->s:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/camera/CropImage;->g:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 365
    if-eqz v1, :cond_0

    .line 366
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/CropImage;->f:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x50

    invoke-virtual {p1, v0, v2, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 372
    :cond_0
    invoke-static {v1}, Lcom/android/camera/z;->a(Ljava/io/Closeable;)V

    .line 374
    :goto_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 375
    const-string/jumbo v1, "portraitUri"

    iget-object v2, p0, Lcom/android/camera/CropImage;->g:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    iget-boolean v1, p0, Lcom/android/camera/CropImage;->w:Z

    if-eqz v1, :cond_1

    .line 378
    const-string/jumbo v1, "landscapeUri"

    iget-object v2, p0, Lcom/android/camera/CropImage;->x:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    :cond_1
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/camera/CropImage;->g:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v7, v0}, Lcom/android/camera/CropImage;->setResult(ILandroid/content/Intent;)V

    .line 446
    :goto_1
    iget-object v0, p0, Lcom/android/camera/CropImage;->m:Landroid/os/Handler;

    new-instance v1, Lcom/android/camera/j;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/j;-><init>(Lcom/android/camera/CropImage;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 454
    invoke-virtual {p0}, Lcom/android/camera/CropImage;->finish()V

    .line 455
    return-void

    .line 368
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 370
    :goto_2
    :try_start_2
    const-string/jumbo v2, "CropImage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Cannot open file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/CropImage;->g:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 372
    invoke-static {v1}, Lcom/android/camera/z;->a(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_3
    invoke-static {v1}, Lcom/android/camera/z;->a(Ljava/io/Closeable;)V

    throw v0

    .line 381
    :cond_2
    iget-boolean v0, p0, Lcom/android/camera/CropImage;->h:Z

    if-eqz v0, :cond_3

    .line 383
    :try_start_3
    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/WallpaperManager;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 384
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/CropImage;->setResult(I)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 385
    :catch_1
    move-exception v0

    .line 386
    const-string/jumbo v2, "CropImage"

    const-string/jumbo v3, "Failed to set wallpaper."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 387
    invoke-virtual {p0, v1}, Lcom/android/camera/CropImage;->setResult(I)V

    goto :goto_1

    .line 390
    :cond_3
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 391
    const-string/jumbo v0, "rect"

    iget-object v2, p0, Lcom/android/camera/CropImage;->c:Lcom/android/camera/m;

    invoke-virtual {v2}, Lcom/android/camera/m;->b()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    iget-object v0, p0, Lcom/android/camera/CropImage;->v:Lcom/android/camera/a/c;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/camera/CropImage;->v:Lcom/android/camera/a/c;

    invoke-interface {v0}, Lcom/android/camera/a/c;->a()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "/picasa"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 395
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/android/camera/CropImage;->v:Lcom/android/camera/a/c;

    invoke-interface {v2}, Lcom/android/camera/a/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 399
    :goto_4
    new-instance v5, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 402
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 403
    const-string/jumbo v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v7, :cond_9

    .line 404
    const-string/jumbo v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    move v0, v1

    .line 410
    :goto_5
    add-int/lit8 v7, v0, 0x1

    .line 411
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 412
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    .line 413
    if-nez v0, :cond_6

    .line 419
    const/4 v0, 0x1

    :try_start_4
    new-array v9, v0, [I

    .line 420
    iget-object v0, p0, Lcom/android/camera/CropImage;->s:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/camera/CropImage;->v:Lcom/android/camera/a/c;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/camera/CropImage;->v:Lcom/android/camera/a/c;

    invoke-interface {v1}, Lcom/android/camera/a/c;->d()Ljava/lang/String;

    move-result-object v1

    :goto_6
    iget-object v2, p0, Lcom/android/camera/CropImage;->v:Lcom/android/camera/a/c;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/camera/CropImage;->v:Lcom/android/camera/a/c;

    invoke-interface {v2}, Lcom/android/camera/a/c;->b()J

    move-result-wide v2

    :goto_7
    const/4 v4, 0x0

    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, "-"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ".jpg"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    move-object v7, p1

    invoke-static/range {v0 .. v9}, Lcom/android/camera/ImageManager;->a(Landroid/content/ContentResolver;Ljava/lang/String;JLandroid/location/Location;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;[B[I)Landroid/net/Uri;

    move-result-object v0

    .line 430
    iget-boolean v1, p0, Lcom/android/camera/CropImage;->w:Z

    if-eqz v1, :cond_4

    .line 431
    const-string/jumbo v1, "landscapeUri"

    iget-object v2, p0, Lcom/android/camera/CropImage;->x:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    :cond_4
    const-string/jumbo v1, "portraitUri"

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    const/4 v1, -0x1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/CropImage;->setResult(ILandroid/content/Intent;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_1

    .line 438
    :catch_2
    move-exception v0

    .line 441
    const-string/jumbo v1, "CropImage"

    const-string/jumbo v2, "store image fail, continue anyway"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 397
    :cond_5
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/viber/voip/w;->q:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_6
    move v0, v7

    .line 416
    goto/16 :goto_5

    :cond_7
    move-object v1, v6

    .line 420
    goto/16 :goto_6

    :cond_8
    :try_start_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    move-result-wide v2

    goto/16 :goto_7

    .line 372
    :catchall_1
    move-exception v0

    goto/16 :goto_3

    .line 368
    :catch_3
    move-exception v0

    goto/16 :goto_2

    :cond_9
    move-object v6, v0

    move v0, v1

    goto/16 :goto_5
.end method

.method static synthetic a(Lcom/android/camera/CropImage;)V
    .locals 0
    .parameter

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/camera/CropImage;->b()V

    return-void
.end method

.method static synthetic b(Lcom/android/camera/CropImage;)Lcom/android/camera/a/c;
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/camera/CropImage;->v:Lcom/android/camera/a/c;

    return-object v0
.end method

.method private b()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/high16 v9, 0x4000

    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 251
    iget-object v0, p0, Lcom/android/camera/CropImage;->c:Lcom/android/camera/m;

    if-nez v0, :cond_1

    .line 358
    :cond_0
    :goto_0
    return-void

    .line 255
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/CropImage;->b:Z

    if-nez v0, :cond_0

    .line 256
    iput-boolean v5, p0, Lcom/android/camera/CropImage;->b:Z

    .line 262
    iget v0, p0, Lcom/android/camera/CropImage;->n:I

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/camera/CropImage;->o:I

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/camera/CropImage;->p:Z

    if-nez v0, :cond_4

    .line 265
    iget v0, p0, Lcom/android/camera/CropImage;->n:I

    iget v1, p0, Lcom/android/camera/CropImage;->o:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 267
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 269
    iget-object v3, p0, Lcom/android/camera/CropImage;->c:Lcom/android/camera/m;

    invoke-virtual {v3}, Lcom/android/camera/m;->b()Landroid/graphics/Rect;

    move-result-object v3

    .line 270
    new-instance v4, Landroid/graphics/Rect;

    iget v6, p0, Lcom/android/camera/CropImage;->n:I

    iget v7, p0, Lcom/android/camera/CropImage;->o:I

    invoke-direct {v4, v2, v2, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 272
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v7

    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    .line 273
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v7

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v8

    sub-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x2

    .line 276
    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    move-result v9

    invoke-virtual {v3, v8, v9}, Landroid/graphics/Rect;->inset(II)V

    .line 279
    neg-int v6, v6

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    neg-int v7, v7

    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v4, v6, v2}, Landroid/graphics/Rect;->inset(II)V

    .line 282
    iget-object v2, p0, Lcom/android/camera/CropImage;->t:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2, v3, v4, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 285
    iget-object v0, p0, Lcom/android/camera/CropImage;->r:Lcom/android/camera/CropImageView;

    invoke-virtual {v0}, Lcom/android/camera/CropImageView;->a()V

    .line 286
    iget-object v0, p0, Lcom/android/camera/CropImage;->t:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 331
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/camera/CropImage;->r:Lcom/android/camera/CropImageView;

    invoke-virtual {v0, v1, v5}, Lcom/android/camera/CropImageView;->a(Landroid/graphics/Bitmap;Z)V

    .line 332
    iget-object v0, p0, Lcom/android/camera/CropImage;->r:Lcom/android/camera/CropImageView;

    invoke-virtual {v0, v5, v5}, Lcom/android/camera/CropImageView;->a(ZZ)V

    .line 333
    iget-object v0, p0, Lcom/android/camera/CropImage;->r:Lcom/android/camera/CropImageView;

    iget-object v0, v0, Lcom/android/camera/CropImageView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 336
    invoke-virtual {p0}, Lcom/android/camera/CropImage;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 337
    if-eqz v0, :cond_8

    const-string/jumbo v2, "data"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    if-nez v2, :cond_3

    const-string/jumbo v2, "return-data"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 339
    :cond_3
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 340
    const-string/jumbo v2, "data"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 341
    const/4 v1, -0x1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v3, "inline-data"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/CropImage;->setResult(ILandroid/content/Intent;)V

    .line 343
    invoke-virtual {p0}, Lcom/android/camera/CropImage;->finish()V

    goto/16 :goto_0

    .line 288
    :cond_4
    iget-object v0, p0, Lcom/android/camera/CropImage;->c:Lcom/android/camera/m;

    invoke-virtual {v0}, Lcom/android/camera/m;->b()Landroid/graphics/Rect;

    move-result-object v3

    .line 290
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 291
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v6

    .line 295
    sget-object v0, Lcom/android/camera/CropImage;->e:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v6, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 297
    iget-boolean v0, p0, Lcom/android/camera/CropImage;->w:Z

    if-eqz v0, :cond_5

    .line 298
    iget v0, p0, Lcom/android/camera/CropImage;->n:I

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/android/camera/CropImage;->o:I

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/android/camera/CropImage;->p:Z

    if-eqz v0, :cond_7

    move v0, v5

    .line 299
    :goto_2
    iget-object v7, p0, Lcom/android/camera/CropImage;->t:Landroid/graphics/Bitmap;

    iget-boolean v8, p0, Lcom/android/camera/CropImage;->q:Z

    invoke-static {p0, v7, v3, v0, v8}, Lcom/android/camera/b/a;->a(Landroid/app/Activity;Landroid/graphics/Bitmap;Landroid/graphics/Rect;ZZ)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CropImage;->x:Landroid/net/Uri;

    .line 302
    :cond_5
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 303
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, v2, v2, v4, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 304
    iget-object v8, p0, Lcom/android/camera/CropImage;->t:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v8, v3, v7, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 307
    iget-object v0, p0, Lcom/android/camera/CropImage;->r:Lcom/android/camera/CropImageView;

    invoke-virtual {v0}, Lcom/android/camera/CropImageView;->a()V

    .line 308
    iget-object v0, p0, Lcom/android/camera/CropImage;->t:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 310
    iget-boolean v0, p0, Lcom/android/camera/CropImage;->l:Z

    if-eqz v0, :cond_6

    .line 316
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 317
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    .line 318
    int-to-float v7, v4

    div-float/2addr v7, v9

    int-to-float v6, v6

    div-float/2addr v6, v9

    int-to-float v4, v4

    div-float/2addr v4, v9

    sget-object v8, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v3, v7, v6, v4, v8}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 320
    sget-object v4, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 321
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 325
    :cond_6
    iget v0, p0, Lcom/android/camera/CropImage;->n:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/camera/CropImage;->o:I

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/camera/CropImage;->p:Z

    if-eqz v0, :cond_2

    .line 326
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iget v2, p0, Lcom/android/camera/CropImage;->n:I

    iget v3, p0, Lcom/android/camera/CropImage;->o:I

    iget-boolean v4, p0, Lcom/android/camera/CropImage;->q:Z

    invoke-static/range {v0 .. v5}, Lcom/android/camera/z;->a(Landroid/graphics/Matrix;Landroid/graphics/Bitmap;IIZZ)Landroid/graphics/Bitmap;

    move-result-object v1

    goto/16 :goto_1

    :cond_7
    move v0, v2

    .line 298
    goto :goto_2

    .line 346
    :cond_8
    iget-boolean v0, p0, Lcom/android/camera/CropImage;->h:Z

    if-eqz v0, :cond_9

    const v0, 0x7f0c04b9

    .line 349
    :goto_3
    invoke-virtual {p0}, Lcom/android/camera/CropImage;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/android/camera/i;

    invoke-direct {v2, p0, v1}, Lcom/android/camera/i;-><init>(Lcom/android/camera/CropImage;Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/android/camera/CropImage;->m:Landroid/os/Handler;

    invoke-static {p0, v10, v0, v2, v1}, Lcom/android/camera/z;->a(Lcom/android/camera/MonitoredActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Landroid/os/Handler;)V

    goto/16 :goto_0

    .line 346
    :cond_9
    const v0, 0x7f0c04ba

    goto :goto_3
.end method

.method static synthetic b(Lcom/android/camera/CropImage;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/android/camera/CropImage;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic c(Lcom/android/camera/CropImage;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/camera/CropImage;->t:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic d(Lcom/android/camera/CropImage;)Lcom/android/camera/CropImageView;
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/camera/CropImage;->r:Lcom/android/camera/CropImageView;

    return-object v0
.end method

.method static synthetic e(Lcom/android/camera/CropImage;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/camera/CropImage;->m:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic f(Lcom/android/camera/CropImage;)Z
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/android/camera/CropImage;->l:Z

    return v0
.end method

.method static synthetic g(Lcom/android/camera/CropImage;)I
    .locals 1
    .parameter

    .prologue
    .line 66
    iget v0, p0, Lcom/android/camera/CropImage;->i:I

    return v0
.end method

.method static synthetic h(Lcom/android/camera/CropImage;)I
    .locals 1
    .parameter

    .prologue
    .line 66
    iget v0, p0, Lcom/android/camera/CropImage;->j:I

    return v0
.end method

.method static synthetic i(Lcom/android/camera/CropImage;)Z
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/android/camera/CropImage;->k:Z

    return v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 105
    invoke-super {p0, p1}, Lcom/android/camera/MonitoredActivity;->onCreate(Landroid/os/Bundle;)V

    .line 106
    iput v2, p0, Lcom/android/camera/CropImage;->y:I

    .line 107
    invoke-virtual {p0}, Lcom/android/camera/CropImage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CropImage;->s:Landroid/content/ContentResolver;

    .line 109
    invoke-virtual {p0, v1}, Lcom/android/camera/CropImage;->requestWindowFeature(I)Z

    .line 110
    const v0, 0x7f030089

    invoke-virtual {p0, v0}, Lcom/android/camera/CropImage;->setContentView(I)V

    .line 112
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    sget-object v3, Lcom/viber/voip/a/a;->f:Lcom/viber/voip/a/s;

    invoke-virtual {v3}, Lcom/viber/voip/a/s;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/viber/voip/a/bc;->a(Ljava/lang/String;)V

    .line 114
    const v0, 0x7f070070

    invoke-virtual {p0, v0}, Lcom/android/camera/CropImage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/CropImageView;

    iput-object v0, p0, Lcom/android/camera/CropImage;->r:Lcom/android/camera/CropImageView;

    .line 115
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v0, v3, :cond_0

    iget-object v0, p0, Lcom/android/camera/CropImage;->r:Lcom/android/camera/CropImageView;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Lcom/android/camera/CropImageView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 117
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/CropImage;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 118
    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    .line 120
    if-eqz v4, :cond_3

    .line 121
    const-string/jumbo v0, "circleCrop"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 122
    iput-boolean v1, p0, Lcom/android/camera/CropImage;->l:Z

    .line 123
    iput v1, p0, Lcom/android/camera/CropImage;->i:I

    .line 124
    iput v1, p0, Lcom/android/camera/CropImage;->j:I

    .line 126
    :cond_1
    const-string/jumbo v0, "output"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/camera/CropImage;->g:Landroid/net/Uri;

    .line 127
    iget-object v0, p0, Lcom/android/camera/CropImage;->g:Landroid/net/Uri;

    if-eqz v0, :cond_6

    .line 128
    const-string/jumbo v0, "outputFormat"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 129
    if-eqz v0, :cond_2

    .line 130
    invoke-static {v0}, Landroid/graphics/Bitmap$CompressFormat;->valueOf(Ljava/lang/String;)Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CropImage;->f:Landroid/graphics/Bitmap$CompressFormat;

    .line 136
    :cond_2
    :goto_0
    const-string/jumbo v0, "data"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/camera/CropImage;->t:Landroid/graphics/Bitmap;

    .line 137
    const-string/jumbo v0, "aspectX"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/CropImage;->i:I

    .line 138
    const-string/jumbo v0, "aspectY"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/CropImage;->j:I

    .line 139
    const-string/jumbo v0, "outputX"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/CropImage;->n:I

    .line 140
    const-string/jumbo v0, "outputY"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/CropImage;->o:I

    .line 141
    const-string/jumbo v0, "scale"

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/CropImage;->p:Z

    .line 142
    const-string/jumbo v0, "scaleUpIfNeeded"

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/CropImage;->q:Z

    .line 143
    const-string/jumbo v0, "landscapeCutting"

    invoke-virtual {v4, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/CropImage;->w:Z

    .line 144
    const-string/jumbo v0, "noFaceDetection"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string/jumbo v0, "noFaceDetection"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/camera/CropImage;->k:Z

    .line 149
    :cond_3
    iget-object v0, p0, Lcom/android/camera/CropImage;->t:Landroid/graphics/Bitmap;

    if-nez v0, :cond_4

    .line 150
    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 151
    iget-object v4, p0, Lcom/android/camera/CropImage;->s:Landroid/content/ContentResolver;

    invoke-static {v4, v0, v1}, Lcom/android/camera/ImageManager;->a(Landroid/content/ContentResolver;Landroid/net/Uri;I)Lcom/android/camera/a/d;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/CropImage;->u:Lcom/android/camera/a/d;

    .line 153
    iget-object v4, p0, Lcom/android/camera/CropImage;->u:Lcom/android/camera/a/d;

    invoke-interface {v4, v0}, Lcom/android/camera/a/d;->a(Landroid/net/Uri;)Lcom/android/camera/a/c;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/CropImage;->v:Lcom/android/camera/a/c;

    .line 154
    iget-object v4, p0, Lcom/android/camera/CropImage;->v:Lcom/android/camera/a/c;

    if-eqz v4, :cond_4

    .line 159
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/messages/extras/image/h;->a(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/CropImage;->y:I

    .line 160
    iget-object v0, p0, Lcom/android/camera/CropImage;->v:Lcom/android/camera/a/c;

    invoke-interface {v0, v1}, Lcom/android/camera/a/c;->a(Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CropImage;->t:Landroid/graphics/Bitmap;

    .line 161
    iget-object v0, p0, Lcom/android/camera/CropImage;->t:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/android/camera/CropImage;->y:I

    invoke-static {v0, v1}, Lcom/viber/voip/messages/extras/image/h;->a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CropImage;->t:Landroid/graphics/Bitmap;

    .line 165
    :cond_4
    iget-object v0, p0, Lcom/android/camera/CropImage;->t:Landroid/graphics/Bitmap;

    if-nez v0, :cond_5

    .line 166
    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0, v2}, Lcom/viber/voip/util/b/w;->a(Landroid/content/Context;Landroid/net/Uri;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CropImage;->t:Landroid/graphics/Bitmap;

    .line 169
    :cond_5
    iget-object v0, p0, Lcom/android/camera/CropImage;->t:Landroid/graphics/Bitmap;

    if-nez v0, :cond_9

    .line 170
    invoke-virtual {p0}, Lcom/android/camera/CropImage;->finish()V

    .line 197
    :goto_2
    return-void

    .line 134
    :cond_6
    const-string/jumbo v0, "setWallpaper"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/CropImage;->h:Z

    goto/16 :goto_0

    :cond_7
    move v0, v2

    .line 144
    goto :goto_1

    :cond_8
    move v0, v2

    goto :goto_1

    .line 175
    :cond_9
    invoke-virtual {p0}, Lcom/android/camera/CropImage;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 177
    const v0, 0x7f070220

    invoke-virtual {p0, v0}, Lcom/android/camera/CropImage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/camera/e;

    invoke-direct {v1, p0}, Lcom/android/camera/e;-><init>(Lcom/android/camera/CropImage;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    const v0, 0x7f070173

    invoke-virtual {p0, v0}, Lcom/android/camera/CropImage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/camera/f;

    invoke-direct {v1, p0}, Lcom/android/camera/f;-><init>(Lcom/android/camera/CropImage;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    invoke-direct {p0}, Lcom/android/camera/CropImage;->a()V

    goto :goto_2
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 466
    iget-object v0, p0, Lcom/android/camera/CropImage;->u:Lcom/android/camera/a/d;

    if-eqz v0, :cond_0

    .line 467
    iget-object v0, p0, Lcom/android/camera/CropImage;->u:Lcom/android/camera/a/d;

    invoke-interface {v0}, Lcom/android/camera/a/d;->a()V

    .line 469
    :cond_0
    invoke-super {p0}, Lcom/android/camera/MonitoredActivity;->onDestroy()V

    .line 470
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 461
    invoke-super {p0}, Lcom/android/camera/MonitoredActivity;->onPause()V

    .line 462
    return-void
.end method
