.class public Lcom/viber/voip/util/bj;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 45
    const-class v0, Lcom/viber/voip/util/bj;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/util/bj;->a:Ljava/lang/String;

    .line 419
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x23

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "3G2A"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "3GE6"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "3GE7"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string/jumbo v3, "3GG6"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string/jumbo v3, "3GP1"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string/jumbo v3, "3GP2"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string/jumbo v3, "3GP3"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string/jumbo v3, "3GP4"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string/jumbo v3, "3GP5"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string/jumbo v3, "3GP6"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string/jumbo v3, "3GR6"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string/jumbo v3, "3GS6"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string/jumbo v3, "3GS7"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string/jumbo v3, "AVC1"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string/jumbo v3, "F4V"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string/jumbo v3, "F4P"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string/jumbo v3, "F4A"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string/jumbo v3, "F4B"

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string/jumbo v3, "ISO2"

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const-string/jumbo v3, "ISOM"

    aput-object v3, v1, v2

    const/16 v2, 0x14

    const-string/jumbo v3, "MMP4"

    aput-object v3, v1, v2

    const/16 v2, 0x15

    const-string/jumbo v3, "MP41"

    aput-object v3, v1, v2

    const/16 v2, 0x16

    const-string/jumbo v3, "MP42"

    aput-object v3, v1, v2

    const/16 v2, 0x17

    const-string/jumbo v3, "MSNV"

    aput-object v3, v1, v2

    const/16 v2, 0x18

    const-string/jumbo v3, "MSNV"

    aput-object v3, v1, v2

    const/16 v2, 0x19

    const-string/jumbo v3, "NDSC"

    aput-object v3, v1, v2

    const/16 v2, 0x1a

    const-string/jumbo v3, "NDSH"

    aput-object v3, v1, v2

    const/16 v2, 0x1b

    const-string/jumbo v3, "NDSM"

    aput-object v3, v1, v2

    const/16 v2, 0x1c

    const-string/jumbo v3, "NDSP"

    aput-object v3, v1, v2

    const/16 v2, 0x1d

    const-string/jumbo v3, "NDSS"

    aput-object v3, v1, v2

    const/16 v2, 0x1e

    const-string/jumbo v3, "NDXC"

    aput-object v3, v1, v2

    const/16 v2, 0x1f

    const-string/jumbo v3, "NDXH"

    aput-object v3, v1, v2

    const/16 v2, 0x20

    const-string/jumbo v3, "NDXM"

    aput-object v3, v1, v2

    const/16 v2, 0x21

    const-string/jumbo v3, "NDXP"

    aput-object v3, v1, v2

    const/16 v2, 0x22

    const-string/jumbo v3, "NDXS"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/viber/voip/util/bj;->b:Ljava/util/HashSet;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    return-void
.end method

.method public static a(Landroid/net/Uri;)I
    .locals 2
    .parameter

    .prologue
    .line 114
    invoke-static {p0}, Lcom/viber/voip/util/bj;->c(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 116
    if-eqz v0, :cond_2

    .line 117
    const-string/jumbo v1, "image"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 118
    const/4 v0, 0x2

    .line 126
    :goto_0
    return v0

    .line 119
    :cond_0
    const-string/jumbo v1, "video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 120
    const/4 v0, 0x1

    goto :goto_0

    .line 121
    :cond_1
    const-string/jumbo v1, "sound"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 122
    const/4 v0, 0x3

    goto :goto_0

    .line 126
    :cond_2
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static a()J
    .locals 5

    .prologue
    .line 208
    const-wide/16 v0, -0x1

    .line 210
    :try_start_0
    new-instance v2, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 211
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/StatFs;->restat(Ljava/lang/String;)V

    .line 212
    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    int-to-long v0, v0

    mul-long/2addr v0, v3

    .line 217
    :goto_0
    return-wide v0

    .line 213
    :catch_0
    move-exception v2

    .line 214
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Landroid/net/Uri;)J
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 102
    const-wide/16 v1, 0x0

    .line 104
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    .line 105
    invoke-virtual {v3}, Ljava/io/InputStream;->available()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    int-to-long v0, v0

    .line 106
    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 110
    :goto_0
    return-wide v0

    .line 107
    :catch_0
    move-exception v0

    move-object v4, v0

    move-wide v5, v1

    move-wide v0, v5

    move-object v2, v4

    .line 108
    :goto_1
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 107
    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;)J
    .locals 6
    .parameter

    .prologue
    .line 84
    const-wide/16 v1, 0x0

    .line 85
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 86
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 87
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 88
    if-eqz v3, :cond_0

    .line 89
    const/4 v0, 0x0

    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_0

    .line 90
    aget-object v4, v3, v0

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    add-long/2addr v1, v4

    .line 89
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 94
    :cond_0
    return-wide v1
.end method

.method private static a([BI)Ljava/lang/String;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 425
    const-string/jumbo v0, ""

    .line 426
    array-length v1, p0

    add-int/lit8 v1, v1, -0x4

    if-lt p1, v1, :cond_0

    .line 428
    :goto_0
    return-object v0

    .line 427
    :cond_0
    const/4 v1, 0x0

    :goto_1
    const/4 v2, 0x4

    if-ge v1, v2, :cond_2

    add-int v2, p1, v1

    aget-byte v2, p0, v2

    const/16 v3, 0x20

    if-le v2, v3, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int v2, p1, v1

    aget-byte v2, p0, v2

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 428
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 414
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    sget-object v2, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v2, "306"

    invoke-virtual {v1, v2}, Lcom/viber/voip/a/u;->b(Ljava/lang/String;)Lcom/viber/voip/a/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 416
    const-string/jumbo v0, ""

    const v1, 0x7f0c0456

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {p0, v0, v1, v2, v3}, Lcom/viber/voip/util/at;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Z)Landroid/content/DialogInterface;

    .line 417
    return-void
.end method

.method public static a(Landroid/net/Uri;Landroid/net/Uri;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 535
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 555
    :cond_0
    :goto_0
    return-void

    .line 536
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 537
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    .line 538
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "copyFile srcFile:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " not exist"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/util/bj;->i(Ljava/lang/String;)V

    goto :goto_0

    .line 541
    :cond_2
    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 544
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_3

    .line 545
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 547
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "copyFile srcFile:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",dstUri:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/viber/voip/util/bj;->i(Ljava/lang/String;)V

    .line 548
    invoke-static {v0, v1}, Lcom/viber/voip/util/bj;->a(Ljava/io/File;Ljava/io/File;)V

    .line 549
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 550
    :catch_0
    move-exception v0

    .line 551
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 552
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "copyFile srcFile:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",dstUri:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " IOException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/util/bj;->i(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static a(Ljava/io/File;Ljava/io/File;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 458
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 459
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 462
    const/16 v2, 0x400

    new-array v2, v2, [B

    .line 464
    :goto_0
    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_0

    .line 465
    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 467
    :cond_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 468
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 469
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 472
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Object;Ljava/util/concurrent/locks/ReentrantLock;)V
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 315
    const/4 v0, 0x0

    .line 317
    if-eqz p2, :cond_0

    .line 318
    :try_start_0
    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 320
    :cond_0
    new-instance v2, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "_"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 321
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 322
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 323
    :cond_1
    new-instance v1, Ljava/io/ObjectOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v3}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 324
    :try_start_1
    invoke-virtual {v1, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 325
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->flush()V

    .line 326
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 327
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 328
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 329
    :cond_2
    invoke-virtual {v2, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 333
    new-array v0, v7, [Ljava/io/Closeable;

    aput-object v1, v0, v6

    invoke-static {v0}, Lcom/viber/voip/util/bu;->a([Ljava/io/Closeable;)V

    .line 335
    if-eqz p2, :cond_3

    .line 336
    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 339
    :cond_3
    :goto_0
    return-void

    .line 330
    :catch_0
    move-exception v1

    .line 333
    :goto_1
    new-array v1, v7, [Ljava/io/Closeable;

    aput-object v0, v1, v6

    invoke-static {v1}, Lcom/viber/voip/util/bu;->a([Ljava/io/Closeable;)V

    .line 335
    if-eqz p2, :cond_3

    .line 336
    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 333
    :catchall_0
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    :goto_2
    new-array v2, v7, [Ljava/io/Closeable;

    aput-object v1, v2, v6

    invoke-static {v2}, Lcom/viber/voip/util/bu;->a([Ljava/io/Closeable;)V

    .line 335
    if-eqz p2, :cond_4

    .line 336
    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_4
    throw v0

    .line 333
    :catchall_1
    move-exception v0

    goto :goto_2

    .line 330
    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_1
.end method

.method private static a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 410
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/util/Map;Ljava/util/concurrent/locks/ReentrantLock;)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/concurrent/locks/ReentrantLock;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 272
    .line 274
    if-eqz p2, :cond_0

    .line 275
    :try_start_0
    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 277
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 278
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 279
    new-instance v2, Ljava/io/ObjectInputStream;

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4

    .line 282
    :goto_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readUTF()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_6

    move-result-object v0

    if-eqz v0, :cond_1

    .line 283
    :try_start_2
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/EOFException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_6

    goto :goto_0

    .line 286
    :catch_0
    move-exception v1

    .line 287
    :goto_1
    if-eqz v0, :cond_1

    .line 288
    const/4 v1, 0x0

    :try_start_3
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_6

    .line 297
    :cond_1
    :goto_2
    if-eqz v2, :cond_2

    .line 299
    :try_start_4
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 307
    :cond_2
    if-eqz p2, :cond_3

    .line 308
    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 311
    :cond_3
    :goto_3
    return-void

    .line 300
    :catch_1
    move-exception v0

    .line 301
    if-eqz p2, :cond_4

    .line 302
    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 304
    :cond_4
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 291
    :catch_2
    move-exception v0

    .line 292
    :goto_4
    :try_start_5
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 297
    if-eqz v1, :cond_5

    .line 299
    :try_start_6
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 307
    :cond_5
    if-eqz p2, :cond_3

    .line 308
    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_3

    .line 300
    :catch_3
    move-exception v0

    .line 301
    if-eqz p2, :cond_6

    .line 302
    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 304
    :cond_6
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 293
    :catch_4
    move-exception v0

    .line 294
    :goto_5
    :try_start_7
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 295
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "object cannot be deserialized - class not found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 297
    :catchall_0
    move-exception v0

    :goto_6
    if-eqz v1, :cond_7

    .line 299
    :try_start_8
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 307
    :cond_7
    if-eqz p2, :cond_8

    .line 308
    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_8
    throw v0

    .line 300
    :catch_5
    move-exception v0

    .line 301
    if-eqz p2, :cond_9

    .line 302
    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 304
    :cond_9
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 297
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_6

    .line 293
    :catch_6
    move-exception v0

    move-object v1, v2

    goto :goto_5

    .line 291
    :catch_7
    move-exception v0

    move-object v1, v2

    goto :goto_4

    .line 286
    :catch_8
    move-exception v0

    move-object v0, v1

    goto/16 :goto_1

    :cond_a
    move-object v2, v1

    goto/16 :goto_2
.end method

.method public static a(Ljava/lang/String;Ljava/util/concurrent/locks/ReentrantLock;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 342
    if-eqz p1, :cond_0

    .line 343
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 345
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 346
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 347
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 349
    :cond_1
    if-eqz p1, :cond_2

    .line 350
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 352
    :cond_2
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 56
    if-eqz p1, :cond_0

    .line 57
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/viber/voip/util/bj;->b(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .line 58
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    .line 60
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/io/File;)Z
    .locals 1
    .parameter

    .prologue
    .line 514
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/viber/voip/util/bj;->a(Ljava/io/File;Z)Z

    move-result v0

    return v0
.end method

.method public static a(Ljava/io/File;Z)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 518
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 519
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 520
    if-nez v2, :cond_0

    .line 531
    :goto_0
    return v1

    .line 523
    :cond_0
    const/4 v0, 0x0

    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 524
    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 525
    aget-object v3, v2, v0

    invoke-static {v3, p1}, Lcom/viber/voip/util/bj;->a(Ljava/io/File;Z)Z

    .line 523
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 527
    :cond_1
    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    goto :goto_2

    .line 531
    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    :goto_3
    move v1, v0

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_3
.end method

.method public static b(Ljava/lang/String;)J
    .locals 2
    .parameter

    .prologue
    .line 98
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method private static b(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 73
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "content"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 74
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 75
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 76
    const-string/jumbo v1, "_data"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 78
    :cond_0
    invoke-static {v0}, Lcom/viber/voip/util/al;->a(Landroid/database/Cursor;)V

    .line 80
    :cond_1
    return-object p1
.end method

.method public static b(Ljava/lang/String;Ljava/util/concurrent/locks/ReentrantLock;)Ljava/lang/Object;
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 356
    .line 359
    if-eqz p1, :cond_0

    .line 360
    :try_start_0
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 362
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 363
    new-instance v2, Ljava/io/ObjectInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3

    .line 365
    :try_start_1
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_6

    move-result-object v0

    .line 376
    :goto_0
    if-eqz v2, :cond_1

    .line 378
    :try_start_2
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 386
    :cond_1
    :goto_1
    if-eqz p1, :cond_2

    .line 387
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 390
    :cond_2
    :goto_2
    return-object v0

    .line 379
    :catch_0
    move-exception v1

    .line 381
    if-eqz p1, :cond_1

    .line 382
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_1

    .line 369
    :catch_1
    move-exception v1

    move-object v2, v0

    .line 371
    :goto_3
    :try_start_3
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 376
    if-eqz v2, :cond_3

    .line 378
    :try_start_4
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 386
    :cond_3
    :goto_4
    if-eqz p1, :cond_2

    .line 387
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_2

    .line 379
    :catch_2
    move-exception v1

    .line 381
    if-eqz p1, :cond_3

    .line 382
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_4

    .line 372
    :catch_3
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    .line 373
    :goto_5
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 374
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "object cannot be deserialized - class not found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 376
    :catchall_0
    move-exception v0

    :goto_6
    if-eqz v2, :cond_4

    .line 378
    :try_start_6
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 386
    :cond_4
    :goto_7
    if-eqz p1, :cond_5

    .line 387
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_5
    throw v0

    .line 379
    :catch_4
    move-exception v1

    .line 381
    if-eqz p1, :cond_4

    .line 382
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_7

    .line 366
    :catch_5
    move-exception v1

    goto :goto_0

    .line 376
    :catchall_1
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_6

    .line 372
    :catch_6
    move-exception v0

    goto :goto_5

    .line 369
    :catch_7
    move-exception v1

    goto :goto_3

    :cond_6
    move-object v2, v0

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 221
    .line 222
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 225
    :cond_0
    return-object p1
.end method

.method public static b(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 191
    invoke-static {p0}, Lcom/viber/voip/util/bj;->c(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 192
    if-eqz v0, :cond_2

    .line 193
    const-string/jumbo v1, "image"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 194
    const-string/jumbo v0, "image"

    .line 201
    :goto_0
    return-object v0

    .line 195
    :cond_0
    const-string/jumbo v1, "video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 196
    const-string/jumbo v0, "video"

    goto :goto_0

    .line 197
    :cond_1
    const-string/jumbo v1, "sound"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 198
    const-string/jumbo v0, "sound"

    goto :goto_0

    .line 201
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static c(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 132
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 137
    :try_start_0
    invoke-virtual {v1, p1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 154
    :goto_0
    if-nez v1, :cond_0

    .line 163
    :goto_1
    return-object v0

    .line 138
    :catch_0
    move-exception v1

    .line 139
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v1, v0

    goto :goto_0

    .line 156
    :cond_0
    const-string/jumbo v0, "image"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 157
    const-string/jumbo v0, "image"

    goto :goto_1

    .line 158
    :cond_1
    const-string/jumbo v0, "video"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 159
    const-string/jumbo v0, "video"

    goto :goto_1

    .line 160
    :cond_2
    const-string/jumbo v0, "sound"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 161
    const-string/jumbo v0, "sound"

    goto :goto_1

    :cond_3
    move-object v0, v1

    .line 163
    goto :goto_1
.end method

.method private static c(Landroid/net/Uri;)Ljava/lang/String;
    .locals 4
    .parameter
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 168
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 187
    :cond_0
    :goto_0
    return-object v0

    .line 172
    :cond_1
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, " "

    const-string/jumbo v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 173
    invoke-static {v1}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 175
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/webkit/MimeTypeMap;->hasExtension(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 176
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 178
    :cond_2
    if-nez v0, :cond_0

    .line 179
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/viber/voip/util/bj;->c(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 394
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 395
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 396
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 397
    if-eqz v0, :cond_0

    .line 401
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    goto :goto_0
.end method

.method public static d(Ljava/lang/String;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 432
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isMpeg4 fname: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/viber/voip/util/bj;->i(Ljava/lang/String;)V

    .line 433
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 434
    const/16 v3, 0x18

    new-array v3, v3, [B

    .line 435
    invoke-virtual {v2, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    .line 436
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 437
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isMpeg4 len: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/viber/voip/util/bj;->i(Ljava/lang/String;)V

    .line 438
    array-length v2, v3

    if-ge v4, v2, :cond_1

    .line 454
    :cond_0
    :goto_0
    return v0

    .line 439
    :cond_1
    const/4 v2, 0x0

    aget-byte v2, v3, v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    aget-byte v2, v3, v2

    if-nez v2, :cond_0

    const/4 v2, 0x2

    aget-byte v2, v3, v2

    if-nez v2, :cond_0

    .line 440
    const/4 v2, 0x4

    invoke-static {v3, v2}, Lcom/viber/voip/util/bj;->a([BI)Ljava/lang/String;

    move-result-object v2

    .line 441
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isMpeg4 sFtyp: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/viber/voip/util/bj;->i(Ljava/lang/String;)V

    .line 442
    const-string/jumbo v4, "FTYP"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 443
    const/16 v2, 0x8

    invoke-static {v3, v2}, Lcom/viber/voip/util/bj;->a([BI)Ljava/lang/String;

    move-result-object v2

    .line 444
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isMpeg4 codecId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/viber/voip/util/bj;->i(Ljava/lang/String;)V

    .line 445
    sget-object v4, Lcom/viber/voip/util/bj;->b:Ljava/util/HashSet;

    invoke-virtual {v4, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 446
    const/16 v2, 0x10

    invoke-static {v3, v2}, Lcom/viber/voip/util/bj;->a([BI)Ljava/lang/String;

    move-result-object v2

    .line 447
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isMpeg4 ftypId2: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/viber/voip/util/bj;->i(Ljava/lang/String;)V

    .line 448
    sget-object v3, Lcom/viber/voip/util/bj;->b:Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 449
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isMpeg4: it\'s Mpeg4 file:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/viber/voip/util/bj;->i(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 450
    goto/16 :goto_0

    .line 451
    :catch_0
    move-exception v1

    .line 452
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isMpeg can\'t open "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " IOException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/viber/voip/util/bj;->i(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static e(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 497
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    return v0
.end method

.method public static f(Ljava/lang/String;)Z
    .locals 4
    .parameter

    .prologue
    .line 501
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/.nomedia"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 502
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 504
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 505
    const/4 v0, 0x1

    .line 510
    :goto_0
    return v0

    .line 506
    :catch_0
    move-exception v1

    .line 507
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "could not create "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/viber/voip/util/bj;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 510
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static g(Ljava/lang/String;)I
    .locals 2
    .parameter

    .prologue
    .line 559
    const/4 v0, 0x0

    .line 560
    invoke-static {}, Lcom/viber/voip/messages/extras/image/h;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 561
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 562
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v0, v0

    .line 564
    :cond_0
    return v0
.end method

.method public static h(Ljava/lang/String;)Ljava/io/File;
    .locals 9
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 568
    invoke-static {}, Lcom/viber/voip/messages/extras/image/h;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 569
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 570
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 571
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    .line 574
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    array-length v1, v1

    if-lez v1, :cond_1

    .line 575
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    aget-object v1, v1, v0

    .line 576
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    array-length v4, v3

    move v2, v0

    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v0, v3, v2

    .line 577
    new-instance v5, Ljava/util/Date;

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    .line 578
    new-instance v6, Ljava/util/Date;

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v7

    invoke-direct {v6, v7, v8}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v6}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v5

    if-gez v5, :cond_3

    .line 576
    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v0

    goto :goto_0

    .line 585
    :cond_1
    const/4 v1, 0x0

    :cond_2
    return-object v1

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method

.method private static i(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 406
    return-void
.end method
