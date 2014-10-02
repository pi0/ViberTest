.class public Lcom/viber/voip/util/b/s;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Landroid/graphics/Bitmap$CompressFormat;


# instance fields
.field private b:Lcom/viber/voip/util/b/m;

.field private c:Landroid/support/v4/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/viber/voip/util/b/u;

.field private final e:Ljava/lang/Object;

.field private f:Z

.field private g:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    sput-object v0, Lcom/viber/voip/util/b/s;->a:Landroid/graphics/Bitmap$CompressFormat;

    return-void
.end method

.method constructor <init>(Lcom/viber/voip/util/b/u;)V
    .locals 1
    .parameter

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/util/b/s;->e:Ljava/lang/Object;

    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/viber/voip/util/b/s;->f:Z

    .line 96
    invoke-direct {p0, p1}, Lcom/viber/voip/util/b/s;->a(Lcom/viber/voip/util/b/u;)V

    .line 97
    return-void
.end method

.method public static a(Landroid/graphics/Bitmap;)I
    .locals 2
    .parameter
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 626
    invoke-static {}, Lcom/viber/voip/util/gl;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 627
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v0

    .line 631
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    goto :goto_0
.end method

.method public static a(Ljava/io/File;)J
    .locals 5
    .parameter
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .prologue
    .line 668
    invoke-static {}, Lcom/viber/voip/util/gl;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 669
    invoke-virtual {p0}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v0

    .line 672
    :goto_0
    return-wide v0

    .line 671
    :cond_0
    new-instance v0, Landroid/os/StatFs;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 672
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-long v3, v0

    mul-long v0, v1, v3

    goto :goto_0
.end method

.method public static a(Landroid/support/v4/app/FragmentManager;Lcom/viber/voip/util/b/u;Ljava/lang/String;)Lcom/viber/voip/util/b/s;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 110
    invoke-static {p0, p2}, Lcom/viber/voip/util/b/s;->a(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)Lcom/viber/voip/util/b/v;

    move-result-object v1

    .line 113
    invoke-virtual {v1}, Lcom/viber/voip/util/b/v;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/util/b/s;

    .line 116
    if-nez v0, :cond_0

    .line 117
    new-instance v0, Lcom/viber/voip/util/b/s;

    invoke-direct {v0, p1}, Lcom/viber/voip/util/b/s;-><init>(Lcom/viber/voip/util/b/u;)V

    .line 118
    invoke-virtual {v1, v0}, Lcom/viber/voip/util/b/v;->a(Ljava/lang/Object;)V

    .line 121
    :cond_0
    return-object v0
.end method

.method private static a(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)Lcom/viber/voip/util/b/v;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 688
    if-nez p1, :cond_0

    .line 689
    const-string/jumbo p1, "ImageCache"

    .line 693
    :cond_0
    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/util/b/v;

    .line 696
    if-nez v0, :cond_1

    .line 697
    new-instance v0, Lcom/viber/voip/util/b/v;

    invoke-direct {v0}, Lcom/viber/voip/util/b/v;-><init>()V

    .line 698
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 701
    :cond_1
    return-object v0
.end method

.method public static a(Landroid/content/Context;)Ljava/io/File;
    .locals 1
    .parameter

    .prologue
    .line 655
    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 568
    const-string/jumbo v0, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/viber/voip/util/b/s;->e()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    invoke-static {p0}, Lcom/viber/voip/util/b/s;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 573
    :goto_0
    if-nez v0, :cond_1

    .line 574
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 577
    :cond_1
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 568
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    goto :goto_0
.end method

.method private static a([B)Ljava/lang/String;
    .locals 5
    .parameter

    .prologue
    .line 598
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 599
    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 600
    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 601
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 602
    const/16 v3, 0x30

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 604
    :cond_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 599
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 606
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/viber/voip/util/b/s;)Ljava/util/Set;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/viber/voip/util/b/s;->g:Ljava/util/Set;

    return-object v0
.end method

.method private a(Lcom/viber/voip/util/b/u;)V
    .locals 2
    .parameter

    .prologue
    .line 130
    iput-object p1, p0, Lcom/viber/voip/util/b/s;->d:Lcom/viber/voip/util/b/u;

    .line 133
    iget-object v0, p0, Lcom/viber/voip/util/b/s;->d:Lcom/viber/voip/util/b/u;

    iget-boolean v0, v0, Lcom/viber/voip/util/b/u;->f:Z

    if-eqz v0, :cond_1

    .line 145
    invoke-static {}, Lcom/viber/voip/util/gl;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/util/b/s;->g:Ljava/util/Set;

    .line 150
    :cond_0
    new-instance v0, Lcom/viber/voip/util/b/t;

    iget-object v1, p0, Lcom/viber/voip/util/b/s;->d:Lcom/viber/voip/util/b/u;

    iget v1, v1, Lcom/viber/voip/util/b/u;->a:I

    invoke-direct {v0, p0, v1}, Lcom/viber/voip/util/b/t;-><init>(Lcom/viber/voip/util/b/s;I)V

    iput-object v0, p0, Lcom/viber/voip/util/b/s;->c:Landroid/support/v4/util/LruCache;

    .line 178
    :cond_1
    iget-boolean v0, p1, Lcom/viber/voip/util/b/u;->h:Z

    if-eqz v0, :cond_2

    .line 180
    invoke-virtual {p0}, Lcom/viber/voip/util/b/s;->a()V

    .line 182
    :cond_2
    return-void
.end method

.method private static a(Landroid/graphics/Bitmap;Landroid/graphics/BitmapFactory$Options;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 545
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget v2, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iget v2, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-ne v1, v2, :cond_0

    iget v1, p1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static e(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 587
    :try_start_0
    const-string/jumbo v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 588
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 589
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/util/b/s;->a([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 593
    :goto_0
    return-object v0

    .line 590
    :catch_0
    move-exception v0

    .line 591
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static e()Z
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .prologue
    .line 642
    invoke-static {}, Lcom/viber/voip/util/gl;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 643
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v0

    .line 645
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic f()Landroid/graphics/Bitmap$CompressFormat;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/viber/voip/util/b/s;->a:Landroid/graphics/Bitmap$CompressFormat;

    return-object v0
.end method


# virtual methods
.method protected a(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 5
    .parameter

    .prologue
    .line 391
    const/4 v1, 0x0

    .line 393
    iget-object v0, p0, Lcom/viber/voip/util/b/s;->g:Ljava/util/Set;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/viber/voip/util/b/s;->g:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 394
    iget-object v2, p0, Lcom/viber/voip/util/b/s;->g:Ljava/util/Set;

    monitor-enter v2

    .line 395
    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/util/b/s;->g:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 398
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 399
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 401
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 403
    invoke-static {v0, p1}, Lcom/viber/voip/util/b/s;->a(Landroid/graphics/Bitmap;Landroid/graphics/BitmapFactory$Options;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 407
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 415
    :goto_1
    monitor-exit v2

    .line 418
    :goto_2
    return-object v0

    .line 412
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 415
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    move-object v0, v1

    goto :goto_1

    :cond_3
    move-object v0, v1

    goto :goto_2
.end method

.method public a()V
    .locals 6

    .prologue
    .line 192
    iget-object v1, p0, Lcom/viber/voip/util/b/s;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 193
    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/util/b/s;->b:Lcom/viber/voip/util/b/m;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/util/b/s;->b:Lcom/viber/voip/util/b/m;

    invoke-virtual {v0}, Lcom/viber/voip/util/b/m;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/util/b/s;->d:Lcom/viber/voip/util/b/u;

    iget-object v0, v0, Lcom/viber/voip/util/b/u;->c:Ljava/io/File;

    .line 195
    iget-object v2, p0, Lcom/viber/voip/util/b/s;->d:Lcom/viber/voip/util/b/u;

    iget-boolean v2, v2, Lcom/viber/voip/util/b/u;->g:Z

    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    .line 196
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 197
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 199
    :cond_1
    invoke-static {v0}, Lcom/viber/voip/util/b/s;->a(Ljava/io/File;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/viber/voip/util/b/s;->d:Lcom/viber/voip/util/b/u;

    iget v4, v4, Lcom/viber/voip/util/b/u;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    .line 201
    const/4 v2, 0x1

    const/4 v3, 0x1

    :try_start_1
    iget-object v4, p0, Lcom/viber/voip/util/b/s;->d:Lcom/viber/voip/util/b/u;

    iget v4, v4, Lcom/viber/voip/util/b/u;->b:I

    int-to-long v4, v4

    invoke-static {v0, v2, v3, v4, v5}, Lcom/viber/voip/util/b/m;->a(Ljava/io/File;IIJ)Lcom/viber/voip/util/b/m;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/util/b/s;->b:Lcom/viber/voip/util/b/m;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 211
    :cond_2
    :goto_0
    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/viber/voip/util/b/s;->f:Z

    .line 212
    iget-object v0, p0, Lcom/viber/voip/util/b/s;->e:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 213
    monitor-exit v1

    .line 214
    return-void

    .line 204
    :catch_0
    move-exception v0

    .line 205
    iget-object v2, p0, Lcom/viber/voip/util/b/s;->d:Lcom/viber/voip/util/b/u;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/viber/voip/util/b/u;->c:Ljava/io/File;

    .line 206
    const-string/jumbo v2, "ImageCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "initDiskCache - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 213
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public a(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 279
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 319
    :cond_0
    :goto_0
    return-void

    .line 284
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/util/b/s;->c:Landroid/support/v4/util/LruCache;

    if-eqz v0, :cond_2

    .line 285
    iget-object v0, p0, Lcom/viber/voip/util/b/s;->c:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    :cond_2
    iget-object v2, p0, Lcom/viber/voip/util/b/s;->e:Ljava/lang/Object;

    monitor-enter v2

    .line 290
    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/util/b/s;->b:Lcom/viber/voip/util/b/m;

    if-eqz v0, :cond_4

    .line 291
    invoke-static {p1}, Lcom/viber/voip/util/b/s;->e(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 292
    const/4 v0, 0x0

    .line 294
    :try_start_1
    iget-object v3, p0, Lcom/viber/voip/util/b/s;->b:Lcom/viber/voip/util/b/m;

    invoke-virtual {v3, v1}, Lcom/viber/voip/util/b/m;->a(Ljava/lang/String;)Lcom/viber/voip/util/b/r;

    move-result-object v3

    .line 295
    if-nez v3, :cond_5

    .line 296
    iget-object v3, p0, Lcom/viber/voip/util/b/s;->b:Lcom/viber/voip/util/b/m;

    invoke-virtual {v3, v1}, Lcom/viber/voip/util/b/m;->b(Ljava/lang/String;)Lcom/viber/voip/util/b/o;

    move-result-object v1

    .line 297
    if-eqz v1, :cond_3

    .line 298
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/viber/voip/util/b/o;->a(I)Ljava/io/OutputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v0

    .line 299
    :try_start_2
    iget-object v3, p0, Lcom/viber/voip/util/b/s;->d:Lcom/viber/voip/util/b/u;

    iget-object v3, v3, Lcom/viber/voip/util/b/u;->d:Landroid/graphics/Bitmap$CompressFormat;

    iget-object v4, p0, Lcom/viber/voip/util/b/s;->d:Lcom/viber/voip/util/b/u;

    iget v4, v4, Lcom/viber/voip/util/b/u;->e:I

    invoke-virtual {p2, v3, v4, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 300
    invoke-virtual {v1}, Lcom/viber/voip/util/b/o;->a()V

    .line 301
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6

    .line 312
    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    .line 313
    :try_start_3
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 318
    :cond_4
    :goto_2
    :try_start_4
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 304
    :cond_5
    const/4 v1, 0x0

    :try_start_5
    invoke-virtual {v3, v1}, Lcom/viber/voip/util/b/r;->a(I)Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    .line 306
    :catch_0
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    .line 307
    :goto_3
    :try_start_6
    const-string/jumbo v3, "ImageCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "addBitmapToCache - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 312
    if-eqz v1, :cond_4

    .line 313
    :try_start_7
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_2

    .line 315
    :catch_1
    move-exception v0

    goto :goto_2

    .line 308
    :catch_2
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    .line 309
    :goto_4
    :try_start_8
    const-string/jumbo v3, "ImageCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "addBitmapToCache - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 312
    if-eqz v1, :cond_4

    .line 313
    :try_start_9
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    goto :goto_2

    .line 315
    :catch_3
    move-exception v0

    goto :goto_2

    .line 311
    :catchall_1
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    .line 312
    :goto_5
    if-eqz v1, :cond_6

    .line 313
    :try_start_a
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    .line 315
    :cond_6
    :goto_6
    :try_start_b
    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :catch_4
    move-exception v0

    goto :goto_2

    :catch_5
    move-exception v1

    goto :goto_6

    .line 311
    :catchall_2
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_5

    :catchall_3
    move-exception v0

    goto :goto_5

    .line 308
    :catch_6
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_4

    .line 306
    :catch_7
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_3
.end method

.method public a(Ljava/lang/String;)Z
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 224
    if-nez p1, :cond_0

    .line 231
    :goto_0
    return v1

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/util/b/s;->c:Landroid/support/v4/util/LruCache;

    if-eqz v0, :cond_2

    .line 228
    iget-object v0, p0, Lcom/viber/voip/util/b/s;->c:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 229
    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    move v1, v0

    .line 231
    goto :goto_0

    :cond_1
    move v0, v1

    .line 229
    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public b()V
    .locals 5

    .prologue
    .line 426
    iget-object v0, p0, Lcom/viber/voip/util/b/s;->c:Landroid/support/v4/util/LruCache;

    if-eqz v0, :cond_0

    .line 427
    iget-object v0, p0, Lcom/viber/voip/util/b/s;->c:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0}, Landroid/support/v4/util/LruCache;->evictAll()V

    .line 431
    :cond_0
    iget-object v1, p0, Lcom/viber/voip/util/b/s;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 432
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/viber/voip/util/b/s;->f:Z

    .line 433
    iget-object v0, p0, Lcom/viber/voip/util/b/s;->b:Lcom/viber/voip/util/b/m;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/viber/voip/util/b/s;->b:Lcom/viber/voip/util/b/m;

    invoke-virtual {v0}, Lcom/viber/voip/util/b/m;->a()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 435
    :try_start_1
    iget-object v0, p0, Lcom/viber/voip/util/b/s;->b:Lcom/viber/voip/util/b/m;

    invoke-virtual {v0}, Lcom/viber/voip/util/b/m;->c()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 442
    :goto_0
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/viber/voip/util/b/s;->b:Lcom/viber/voip/util/b/m;

    .line 443
    invoke-virtual {p0}, Lcom/viber/voip/util/b/s;->a()V

    .line 445
    :cond_1
    monitor-exit v1

    .line 446
    return-void

    .line 437
    :catch_0
    move-exception v0

    .line 438
    const-string/jumbo v2, "ImageCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "clearCache - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 445
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 439
    :catch_1
    move-exception v0

    .line 440
    :try_start_3
    const-string/jumbo v2, "ImageCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "clearCache - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 242
    if-nez p1, :cond_0

    .line 255
    :goto_0
    return v0

    .line 245
    :cond_0
    iget-object v2, p0, Lcom/viber/voip/util/b/s;->e:Ljava/lang/Object;

    monitor-enter v2

    .line 246
    :try_start_0
    iget-object v1, p0, Lcom/viber/voip/util/b/s;->b:Lcom/viber/voip/util/b/m;

    if-eqz v1, :cond_1

    .line 247
    invoke-static {p1}, Lcom/viber/voip/util/b/s;->e(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 249
    :try_start_1
    iget-object v3, p0, Lcom/viber/voip/util/b/s;->b:Lcom/viber/voip/util/b/m;

    invoke-virtual {v3, v1}, Lcom/viber/voip/util/b/m;->c(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    .line 254
    :cond_1
    :goto_1
    :try_start_2
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 250
    :catch_0
    move-exception v1

    .line 251
    :try_start_3
    const-string/jumbo v3, "ImageCache"

    const-string/jumbo v4, "Unable to remove bitmap from cache."

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public c(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter

    .prologue
    .line 328
    const/4 v0, 0x0

    .line 330
    iget-object v1, p0, Lcom/viber/voip/util/b/s;->c:Landroid/support/v4/util/LruCache;

    if-eqz v1, :cond_0

    .line 331
    iget-object v0, p0, Lcom/viber/voip/util/b/s;->c:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 336
    :cond_0
    return-object v0
.end method

.method public c()V
    .locals 5

    .prologue
    .line 453
    iget-object v1, p0, Lcom/viber/voip/util/b/s;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 454
    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/util/b/s;->b:Lcom/viber/voip/util/b/m;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 456
    :try_start_1
    iget-object v0, p0, Lcom/viber/voip/util/b/s;->b:Lcom/viber/voip/util/b/m;

    invoke-virtual {v0}, Lcom/viber/voip/util/b/m;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 462
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v1

    .line 463
    return-void

    .line 458
    :catch_0
    move-exception v0

    .line 459
    const-string/jumbo v2, "ImageCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "flush - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 462
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public d(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 8
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 346
    invoke-static {p1}, Lcom/viber/voip/util/b/s;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 349
    iget-object v4, p0, Lcom/viber/voip/util/b/s;->e:Ljava/lang/Object;

    monitor-enter v4

    .line 350
    :goto_0
    :try_start_0
    iget-boolean v2, p0, Lcom/viber/voip/util/b/s;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v2, :cond_0

    .line 352
    :try_start_1
    iget-object v2, p0, Lcom/viber/voip/util/b/s;->e:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 353
    :catch_0
    move-exception v2

    goto :goto_0

    .line 355
    :cond_0
    :try_start_2
    iget-object v2, p0, Lcom/viber/voip/util/b/s;->b:Lcom/viber/voip/util/b/m;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v2, :cond_2

    .line 358
    :try_start_3
    iget-object v2, p0, Lcom/viber/voip/util/b/s;->b:Lcom/viber/voip/util/b/m;

    invoke-virtual {v2, v1}, Lcom/viber/voip/util/b/m;->a(Ljava/lang/String;)Lcom/viber/voip/util/b/r;

    move-result-object v1

    .line 359
    if-eqz v1, :cond_4

    .line 362
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/viber/voip/util/b/r;->a(I)Ljava/io/InputStream;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v2

    .line 363
    if-eqz v2, :cond_1

    .line 364
    :try_start_4
    move-object v0, v2

    check-cast v0, Ljava/io/FileInputStream;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    .line 368
    const v5, 0x7fffffff

    const v6, 0x7fffffff

    invoke-static {v1, v5, v6, p0}, Lcom/viber/voip/util/b/ac;->a(Ljava/io/FileDescriptor;IILcom/viber/voip/util/b/s;)Landroid/graphics/Bitmap;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    move-result-object v3

    .line 376
    :cond_1
    :goto_1
    if-eqz v2, :cond_2

    .line 377
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 382
    :cond_2
    :goto_2
    :try_start_6
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    return-object v3

    .line 372
    :catch_1
    move-exception v1

    move-object v2, v3

    .line 373
    :goto_3
    :try_start_7
    const-string/jumbo v5, "ImageCache"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getBitmapFromDiskCache - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 376
    if-eqz v2, :cond_2

    .line 377
    :try_start_8
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_2

    .line 379
    :catch_2
    move-exception v1

    goto :goto_2

    .line 375
    :catchall_0
    move-exception v1

    move-object v2, v3

    .line 376
    :goto_4
    if-eqz v2, :cond_3

    .line 377
    :try_start_9
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    .line 379
    :cond_3
    :goto_5
    :try_start_a
    throw v1

    .line 383
    :catchall_1
    move-exception v1

    monitor-exit v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    throw v1

    .line 379
    :catch_3
    move-exception v1

    goto :goto_2

    :catch_4
    move-exception v2

    goto :goto_5

    .line 375
    :catchall_2
    move-exception v1

    goto :goto_4

    .line 372
    :catch_5
    move-exception v1

    goto :goto_3

    :cond_4
    move-object v2, v3

    goto :goto_1
.end method

.method public d()V
    .locals 5

    .prologue
    .line 470
    iget-object v1, p0, Lcom/viber/voip/util/b/s;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 471
    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/util/b/s;->b:Lcom/viber/voip/util/b/m;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 473
    :try_start_1
    iget-object v0, p0, Lcom/viber/voip/util/b/s;->b:Lcom/viber/voip/util/b/m;

    invoke-virtual {v0}, Lcom/viber/voip/util/b/m;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 474
    iget-object v0, p0, Lcom/viber/voip/util/b/s;->b:Lcom/viber/voip/util/b/m;

    invoke-virtual {v0}, Lcom/viber/voip/util/b/m;->close()V

    .line 475
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/viber/voip/util/b/s;->b:Lcom/viber/voip/util/b/m;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 482
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v1

    .line 483
    return-void

    .line 478
    :catch_0
    move-exception v0

    .line 479
    const-string/jumbo v2, "ImageCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "close - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 482
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
