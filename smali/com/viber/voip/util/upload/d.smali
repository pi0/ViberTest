.class public Lcom/viber/voip/util/upload/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static a:Z

.field public static b:I

.field private static final i:Ljava/lang/String;

.field private static final j:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field protected c:I

.field protected d:Ljava/io/InputStream;

.field protected e:Z

.field protected f:Ljava/io/File;

.field public g:Z

.field protected h:Lcom/viber/voip/util/upload/i;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:Z

.field private t:Z

.field private u:Lcom/viber/voip/util/upload/m;

.field private v:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 29
    const-class v0, Lcom/viber/voip/util/upload/d;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/util/upload/d;->i:Ljava/lang/String;

    .line 53
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/viber/voip/util/upload/d;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 61
    const/4 v0, 0x1

    sput-boolean v0, Lcom/viber/voip/util/upload/d;->a:Z

    .line 66
    sput v1, Lcom/viber/voip/util/upload/d;->b:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const/4 v0, 0x1

    iput v0, p0, Lcom/viber/voip/util/upload/d;->p:I

    .line 83
    iput v1, p0, Lcom/viber/voip/util/upload/d;->r:I

    .line 92
    iput-boolean v1, p0, Lcom/viber/voip/util/upload/d;->e:Z

    .line 99
    sget-object v0, Lcom/viber/voip/util/upload/d;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    iput v0, p0, Lcom/viber/voip/util/upload/d;->c:I

    .line 100
    iput-object p1, p0, Lcom/viber/voip/util/upload/d;->k:Ljava/lang/String;

    .line 101
    iput-object p2, p0, Lcom/viber/voip/util/upload/d;->n:Ljava/lang/String;

    .line 102
    iput-object p3, p0, Lcom/viber/voip/util/upload/d;->m:Ljava/lang/String;

    .line 103
    return-void
.end method

.method private a(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 13
    .parameter
    .parameter

    .prologue
    const/high16 v8, 0x1

    const v1, 0x7fffffff

    const/4 v6, 0x0

    .line 397
    const-string/jumbo v0, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 398
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "sdcard unmounted"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 401
    :cond_0
    if-nez p1, :cond_1

    .line 402
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "can\'t read null input stream!"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 407
    :cond_1
    iget v0, p0, Lcom/viber/voip/util/upload/d;->q:I

    if-lez v0, :cond_6

    iget v0, p0, Lcom/viber/voip/util/upload/d;->q:I

    iget v2, p0, Lcom/viber/voip/util/upload/d;->r:I

    sub-int/2addr v0, v2

    .line 408
    :goto_0
    new-array v9, v8, [B

    move v3, v0

    move v2, v6

    move v0, v6

    .line 410
    :goto_1
    const/4 v4, -0x1

    if-eq v0, v4, :cond_10

    if-lez v3, :cond_10

    move v7, v8

    move v4, v2

    move v2, v6

    move v12, v0

    move v0, v3

    move v3, v12

    .line 414
    :cond_2
    if-eqz v7, :cond_11

    if-lez v0, :cond_11

    .line 415
    const/16 v3, 0x2000

    .line 416
    if-le v3, v7, :cond_3

    move v3, v7

    .line 423
    :cond_3
    if-le v3, v0, :cond_4

    move v3, v0

    .line 426
    :cond_4
    :try_start_0
    invoke-virtual {p1, v9, v2, v3}, Ljava/io/InputStream;->read([BII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 427
    if-gtz v3, :cond_7

    move v12, v2

    move v2, v4

    move v4, v0

    move v0, v3

    move v3, v12

    .line 464
    :goto_2
    if-lez v3, :cond_5

    .line 465
    invoke-virtual {p2, v9, v6, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 467
    iget-object v3, p0, Lcom/viber/voip/util/upload/d;->h:Lcom/viber/voip/util/upload/i;

    if-eqz v3, :cond_5

    .line 468
    iget-object v3, p0, Lcom/viber/voip/util/upload/d;->h:Lcom/viber/voip/util/upload/i;

    invoke-virtual {v3}, Lcom/viber/voip/util/upload/i;->a()V

    .line 472
    :cond_5
    iget-boolean v3, p0, Lcom/viber/voip/util/upload/d;->s:Z

    if-nez v3, :cond_10

    if-lt v2, v1, :cond_d

    move v1, v2

    .line 476
    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "total bytes read from stream: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/viber/voip/util/upload/d;->a(Ljava/lang/String;)V

    .line 477
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "last read result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/util/upload/d;->a(Ljava/lang/String;)V

    .line 479
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    .line 480
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    .line 481
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 483
    iget v0, p0, Lcom/viber/voip/util/upload/d;->r:I

    iget v1, p0, Lcom/viber/voip/util/upload/d;->q:I

    if-eq v0, v1, :cond_f

    .line 484
    iget-boolean v0, p0, Lcom/viber/voip/util/upload/d;->s:Z

    if-eqz v0, :cond_e

    .line 485
    new-instance v0, Lcom/viber/voip/util/upload/e;

    sget-object v1, Lcom/viber/voip/util/upload/f;->c:Lcom/viber/voip/util/upload/f;

    invoke-direct {v0, v1}, Lcom/viber/voip/util/upload/e;-><init>(Lcom/viber/voip/util/upload/f;)V

    throw v0

    :cond_6
    move v0, v1

    .line 407
    goto/16 :goto_0

    .line 429
    :cond_7
    :try_start_1
    sget v5, Lcom/viber/voip/util/upload/d;->b:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-lez v5, :cond_8

    .line 431
    :try_start_2
    sget v5, Lcom/viber/voip/util/upload/d;->b:I

    int-to-long v10, v5

    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 437
    :cond_8
    :try_start_3
    iget-boolean v5, p0, Lcom/viber/voip/util/upload/d;->g:Z

    if-eqz v5, :cond_a

    iget v5, p0, Lcom/viber/voip/util/upload/d;->r:I

    const/high16 v10, 0x10

    if-le v5, v10, :cond_a

    move v5, v6

    .line 438
    :goto_4
    array-length v10, v9

    if-ge v5, v10, :cond_a

    .line 439
    and-int/lit16 v10, v5, 0xff

    int-to-byte v10, v10

    aput-byte v10, v9, v5

    .line 438
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 432
    :catch_0
    move-exception v0

    .line 433
    new-instance v1, Lcom/viber/voip/util/upload/e;

    invoke-direct {v1, v0}, Lcom/viber/voip/util/upload/e;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 464
    :catchall_0
    move-exception v0

    move v1, v2

    if-lez v1, :cond_9

    .line 465
    invoke-virtual {p2, v9, v6, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 467
    iget-object v1, p0, Lcom/viber/voip/util/upload/d;->h:Lcom/viber/voip/util/upload/i;

    if-eqz v1, :cond_9

    .line 468
    iget-object v1, p0, Lcom/viber/voip/util/upload/d;->h:Lcom/viber/voip/util/upload/i;

    invoke-virtual {v1}, Lcom/viber/voip/util/upload/i;->a()V

    :cond_9
    throw v0

    .line 443
    :cond_a
    add-int/2addr v2, v3

    .line 444
    sub-int/2addr v7, v3

    .line 445
    sub-int/2addr v0, v3

    .line 446
    :try_start_4
    iget v5, p0, Lcom/viber/voip/util/upload/d;->r:I

    add-int/2addr v5, v3

    iput v5, p0, Lcom/viber/voip/util/upload/d;->r:I

    .line 447
    add-int/2addr v4, v3

    .line 450
    iget-object v5, p0, Lcom/viber/voip/util/upload/d;->u:Lcom/viber/voip/util/upload/m;

    if-eqz v5, :cond_b

    .line 451
    iget v5, p0, Lcom/viber/voip/util/upload/d;->r:I

    mul-int/lit8 v5, v5, 0x64

    int-to-float v5, v5

    iget v10, p0, Lcom/viber/voip/util/upload/d;->q:I

    int-to-float v10, v10

    div-float/2addr v5, v10

    float-to-int v5, v5

    .line 453
    iget-object v10, p0, Lcom/viber/voip/util/upload/d;->u:Lcom/viber/voip/util/upload/m;

    invoke-interface {v10, v5}, Lcom/viber/voip/util/upload/m;->b(I)V

    .line 456
    :cond_b
    if-lt v4, v1, :cond_c

    .line 457
    const-string/jumbo v5, "download exceeded MAX_DOWNLOAD_SIZE, terminating"

    invoke-direct {p0, v5}, Lcom/viber/voip/util/upload/d;->a(Ljava/lang/String;)V

    move v12, v2

    move v2, v4

    move v4, v0

    move v0, v3

    move v3, v12

    .line 458
    goto/16 :goto_2

    .line 461
    :cond_c
    iget-boolean v5, p0, Lcom/viber/voip/util/upload/d;->s:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v5, :cond_2

    move v12, v2

    move v2, v4

    move v4, v0

    move v0, v3

    move v3, v12

    goto/16 :goto_2

    :cond_d
    move v3, v4

    .line 474
    goto/16 :goto_1

    .line 487
    :cond_e
    new-instance v0, Lcom/viber/voip/util/upload/e;

    sget-object v1, Lcom/viber/voip/util/upload/f;->d:Lcom/viber/voip/util/upload/f;

    invoke-direct {v0, v1}, Lcom/viber/voip/util/upload/e;-><init>(Lcom/viber/voip/util/upload/f;)V

    throw v0

    .line 490
    :cond_f
    return-void

    :cond_10
    move v1, v2

    goto/16 :goto_3

    :cond_11
    move v12, v2

    move v2, v4

    move v4, v0

    move v0, v3

    move v3, v12

    goto/16 :goto_2
.end method

.method private a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 514
    return-void
.end method

.method private b(Lcom/viber/voip/util/http/HttpRequest;)V
    .locals 7
    .parameter

    .prologue
    .line 381
    const-string/jumbo v0, "====== HEADERS ========"

    invoke-direct {p0, v0}, Lcom/viber/voip/util/upload/d;->a(Ljava/lang/String;)V

    .line 383
    :try_start_0
    invoke-interface {p1}, Lcom/viber/voip/util/http/HttpRequest;->getResponseHeaders()Ljava/util/Map;

    move-result-object v2

    .line 384
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 385
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 386
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "HEADER "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/viber/voip/util/upload/d;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 389
    :catch_0
    move-exception v0

    .line 390
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "failed getting headers: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/util/upload/d;->a(Ljava/lang/String;)V

    .line 392
    :cond_1
    const-string/jumbo v0, "======================="

    invoke-direct {p0, v0}, Lcom/viber/voip/util/upload/d;->a(Ljava/lang/String;)V

    .line 393
    return-void
.end method

.method protected static j()Landroid/content/ContentResolver;
    .locals 1

    .prologue
    .line 377
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected a(Landroid/net/Uri;)Ljava/io/OutputStream;
    .locals 2
    .parameter

    .prologue
    .line 336
    iget-boolean v0, p0, Lcom/viber/voip/util/upload/d;->e:Z

    if-eqz v0, :cond_0

    .line 337
    invoke-static {}, Lcom/viber/voip/util/upload/d;->j()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "wa"

    invoke-virtual {v0, p1, v1}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v0

    .line 339
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/viber/voip/util/upload/d;->j()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v0

    goto :goto_0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/viber/voip/util/upload/d;->k:Ljava/lang/String;

    return-object v0
.end method

.method protected a(I)V
    .locals 0
    .parameter

    .prologue
    .line 193
    return-void
.end method

.method protected a(Lcom/viber/voip/util/http/HttpRequest;)V
    .locals 0
    .parameter

    .prologue
    .line 196
    return-void
.end method

.method public a(Lcom/viber/voip/util/upload/m;)V
    .locals 0
    .parameter

    .prologue
    .line 157
    iput-object p1, p0, Lcom/viber/voip/util/upload/d;->u:Lcom/viber/voip/util/upload/m;

    .line 158
    return-void
.end method

.method protected a(Ljava/net/URL;)V
    .locals 7
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 238
    .line 240
    iget-object v0, p0, Lcom/viber/voip/util/upload/d;->m:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 241
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lcom/viber/voip/util/upload/d;->m:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/viber/voip/util/upload/d;->f:Ljava/io/File;

    .line 245
    iput-boolean v1, p0, Lcom/viber/voip/util/upload/d;->e:Z

    .line 246
    sget-boolean v0, Lcom/viber/voip/util/upload/d;->a:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/viber/voip/util/upload/d;->f:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/viber/voip/util/upload/d;->f:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-lez v0, :cond_6

    .line 247
    iget-object v0, p0, Lcom/viber/voip/util/upload/d;->f:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    long-to-int v0, v3

    .line 248
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Continuing download, current size:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/viber/voip/util/upload/d;->a(Ljava/lang/String;)V

    .line 249
    iput-boolean v2, p0, Lcom/viber/voip/util/upload/d;->e:Z

    .line 256
    :goto_0
    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/viber/voip/ViberEnv;->newHttpRequest(Ljava/lang/String;)Lcom/viber/voip/util/http/HttpRequest;

    move-result-object v3

    .line 257
    const v4, 0x927c0

    invoke-interface {v3, v4}, Lcom/viber/voip/util/http/HttpRequest;->setConnectTimeout(I)V

    .line 258
    const/16 v4, 0x7530

    invoke-interface {v3, v4}, Lcom/viber/voip/util/http/HttpRequest;->setReadTimeout(I)V

    .line 259
    iget-boolean v4, p0, Lcom/viber/voip/util/upload/d;->e:Z

    if-eqz v4, :cond_0

    .line 260
    const-string/jumbo v4, "Range"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "bytes="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/viber/voip/util/http/HttpRequest;->setRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    :cond_0
    invoke-virtual {p0, v3}, Lcom/viber/voip/util/upload/d;->a(Lcom/viber/voip/util/http/HttpRequest;)V

    .line 264
    invoke-interface {v3}, Lcom/viber/voip/util/http/HttpRequest;->getResponseCode()I

    move-result v4

    .line 265
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Response code : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/viber/voip/util/upload/d;->a(Ljava/lang/String;)V

    .line 266
    invoke-direct {p0, v3}, Lcom/viber/voip/util/upload/d;->b(Lcom/viber/voip/util/http/HttpRequest;)V

    .line 272
    sparse-switch v4, :sswitch_data_0

    .line 299
    :try_start_0
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v2, "Wrong server response: %d for URL = %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v5

    const/4 v5, 0x1

    aput-object p1, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 303
    :catchall_0
    move-exception v0

    :goto_1
    if-nez v1, :cond_1

    .line 304
    iput v4, p0, Lcom/viber/voip/util/upload/d;->v:I

    :cond_1
    throw v0

    .line 276
    :sswitch_0
    :try_start_1
    invoke-interface {v3}, Lcom/viber/voip/util/http/HttpRequest;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 277
    iput-object v2, p0, Lcom/viber/voip/util/upload/d;->d:Ljava/io/InputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 304
    iput v4, p0, Lcom/viber/voip/util/upload/d;->v:I

    .line 309
    iget-boolean v2, p0, Lcom/viber/voip/util/upload/d;->e:Z

    if-eqz v2, :cond_5

    .line 314
    const-string/jumbo v2, "Content-Range"

    invoke-interface {v3, v2}, Lcom/viber/voip/util/http/HttpRequest;->getResponseHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 315
    if-nez v2, :cond_2

    .line 316
    iput-boolean v1, p0, Lcom/viber/voip/util/upload/d;->e:Z

    .line 317
    invoke-interface {v3}, Lcom/viber/voip/util/http/HttpRequest;->getContentLength()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcom/viber/voip/util/upload/d;->q:I

    .line 332
    :goto_2
    iget v0, p0, Lcom/viber/voip/util/upload/d;->q:I

    invoke-virtual {p0, v0}, Lcom/viber/voip/util/upload/d;->a(I)V

    .line 333
    :goto_3
    return-void

    .line 285
    :sswitch_1
    :try_start_2
    iget v0, p0, Lcom/viber/voip/util/upload/d;->o:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/viber/voip/util/upload/d;->o:I

    .line 286
    const-string/jumbo v0, "location"

    invoke-interface {v3, v0}, Lcom/viber/voip/util/http/HttpRequest;->getResponseHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 288
    new-instance v1, Lcom/viber/voip/util/upload/g;

    invoke-direct {v1, v0}, Lcom/viber/voip/util/upload/g;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 303
    :catchall_1
    move-exception v0

    move v1, v2

    goto :goto_1

    .line 291
    :sswitch_2
    :try_start_3
    new-instance v0, Lcom/viber/voip/util/upload/e;

    sget-object v2, Lcom/viber/voip/util/upload/f;->e:Lcom/viber/voip/util/upload/f;

    invoke-direct {v0, v2}, Lcom/viber/voip/util/upload/e;-><init>(Lcom/viber/voip/util/upload/f;)V

    throw v0

    .line 295
    :sswitch_3
    iget-object v0, p0, Lcom/viber/voip/util/upload/d;->f:Ljava/io/File;

    invoke-virtual {p0, v0}, Lcom/viber/voip/util/upload/d;->b(Ljava/io/File;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 304
    iput v4, p0, Lcom/viber/voip/util/upload/d;->v:I

    goto :goto_3

    .line 319
    :cond_2
    invoke-static {v2}, Lcom/viber/voip/util/upload/j;->a(Ljava/lang/String;)Lcom/viber/voip/util/upload/k;

    move-result-object v1

    .line 320
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/viber/voip/util/upload/k;->a()I

    move-result v3

    if-eq v3, v0, :cond_4

    .line 321
    :cond_3
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid range header: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 323
    :cond_4
    invoke-virtual {v1}, Lcom/viber/voip/util/upload/k;->c()I

    move-result v2

    iput v2, p0, Lcom/viber/voip/util/upload/d;->q:I

    .line 324
    iput v0, p0, Lcom/viber/voip/util/upload/d;->r:I

    .line 325
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Continuing download, "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lcom/viber/voip/util/upload/k;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/util/upload/d;->a(Ljava/lang/String;)V

    goto :goto_2

    .line 328
    :cond_5
    invoke-interface {v3}, Lcom/viber/voip/util/http/HttpRequest;->getContentLength()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcom/viber/voip/util/upload/d;->q:I

    .line 329
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Starting download, totalFileSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/voip/util/upload/d;->q:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/util/upload/d;->a(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_6
    move v0, v1

    goto/16 :goto_0

    .line 272
    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0xcb -> :sswitch_0
        0xce -> :sswitch_0
        0x12d -> :sswitch_1
        0x12e -> :sswitch_1
        0x12f -> :sswitch_1
        0x133 -> :sswitch_1
        0x193 -> :sswitch_2
        0x1a0 -> :sswitch_3
    .end sparse-switch
.end method

.method protected a(Ljava/io/File;)Z
    .locals 1
    .parameter

    .prologue
    .line 204
    const/4 v0, 0x1

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/viber/voip/util/upload/d;->l:Ljava/lang/String;

    return-object v0
.end method

.method protected b(Ljava/io/File;)V
    .locals 3
    .parameter

    .prologue
    .line 364
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Moving temp file"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/util/upload/d;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",delete downloadFile:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/viber/voip/util/upload/d;->a(Ljava/io/File;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/util/upload/d;->a(Ljava/lang/String;)V

    .line 365
    invoke-virtual {p0, p1}, Lcom/viber/voip/util/upload/d;->a(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 366
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/viber/voip/util/upload/d;->n:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 373
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/viber/voip/util/upload/d;->t:Z

    .line 374
    return-void

    .line 368
    :cond_0
    const-string/jumbo v0, "Create copy for currently playing video file"

    invoke-direct {p0, v0}, Lcom/viber/voip/util/upload/d;->a(Ljava/lang/String;)V

    .line 369
    sget-object v0, Lcom/viber/voip/messages/extras/image/l;->d:Lcom/viber/voip/messages/extras/image/l;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/viber/voip/messages/extras/image/h;->b(Lcom/viber/voip/messages/extras/image/l;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 370
    invoke-static {p1, v0}, Lcom/viber/voip/util/bj;->a(Ljava/io/File;Ljava/io/File;)V

    .line 371
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/viber/voip/util/upload/d;->n:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    goto :goto_0
.end method

.method protected b(Ljava/net/URL;)V
    .locals 3
    .parameter

    .prologue
    .line 344
    invoke-virtual {p0, p1}, Lcom/viber/voip/util/upload/d;->a(Ljava/net/URL;)V

    .line 345
    iget-object v0, p0, Lcom/viber/voip/util/upload/d;->f:Ljava/io/File;

    if-eqz v0, :cond_1

    .line 347
    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/util/upload/d;->f:Ljava/io/File;

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/util/upload/d;->a(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v0

    .line 348
    iget-object v1, p0, Lcom/viber/voip/util/upload/d;->h:Lcom/viber/voip/util/upload/i;

    if-eqz v1, :cond_0

    .line 349
    iget-object v1, p0, Lcom/viber/voip/util/upload/d;->h:Lcom/viber/voip/util/upload/i;

    iget-object v2, p0, Lcom/viber/voip/util/upload/d;->f:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/viber/voip/util/upload/i;->a(Ljava/lang/String;)V

    .line 351
    :cond_0
    iget-object v1, p0, Lcom/viber/voip/util/upload/d;->d:Ljava/io/InputStream;

    invoke-direct {p0, v1, v0}, Lcom/viber/voip/util/upload/d;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 352
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/viber/voip/util/upload/d;->d:Ljava/io/InputStream;

    .line 353
    iget-object v0, p0, Lcom/viber/voip/util/upload/d;->f:Ljava/io/File;

    invoke-virtual {p0, v0}, Lcom/viber/voip/util/upload/d;->b(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 355
    sget-boolean v0, Lcom/viber/voip/util/upload/d;->a:Z

    if-nez v0, :cond_1

    .line 356
    iget-object v0, p0, Lcom/viber/voip/util/upload/d;->f:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 360
    :cond_1
    return-void

    .line 355
    :catchall_0
    move-exception v0

    sget-boolean v1, Lcom/viber/voip/util/upload/d;->a:Z

    if-nez v1, :cond_2

    .line 356
    iget-object v1, p0, Lcom/viber/voip/util/upload/d;->f:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_2
    throw v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/viber/voip/util/upload/d;->n:Ljava/lang/String;

    return-object v0
.end method

.method public d()V
    .locals 4

    .prologue
    .line 122
    iget-object v0, p0, Lcom/viber/voip/util/upload/d;->k:Ljava/lang/String;

    move-object v1, v0

    .line 125
    :cond_0
    :goto_0
    :try_start_0
    iget v0, p0, Lcom/viber/voip/util/upload/d;->o:I

    const/4 v2, 0x2

    if-gt v0, v2, :cond_3

    iget-boolean v0, p0, Lcom/viber/voip/util/upload/d;->s:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_3

    .line 127
    :try_start_1
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 128
    iput-object v1, p0, Lcom/viber/voip/util/upload/d;->l:Ljava/lang/String;

    .line 129
    invoke-virtual {p0, v0}, Lcom/viber/voip/util/upload/d;->b(Ljava/net/URL;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/viber/voip/util/upload/g; {:try_start_1 .. :try_end_1} :catch_2

    .line 150
    iget-object v0, p0, Lcom/viber/voip/util/upload/d;->h:Lcom/viber/voip/util/upload/i;

    if-eqz v0, :cond_1

    .line 151
    iget-object v0, p0, Lcom/viber/voip/util/upload/d;->h:Lcom/viber/voip/util/upload/i;

    iget-boolean v1, p0, Lcom/viber/voip/util/upload/d;->t:Z

    invoke-virtual {v0, v1}, Lcom/viber/voip/util/upload/i;->a(Z)V

    :cond_1
    return-void

    .line 131
    :catch_0
    move-exception v0

    .line 132
    :try_start_2
    new-instance v1, Lcom/viber/voip/util/upload/e;

    invoke-direct {v1, v0}, Lcom/viber/voip/util/upload/e;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 150
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/viber/voip/util/upload/d;->h:Lcom/viber/voip/util/upload/i;

    if-eqz v1, :cond_2

    .line 151
    iget-object v1, p0, Lcom/viber/voip/util/upload/d;->h:Lcom/viber/voip/util/upload/i;

    iget-boolean v2, p0, Lcom/viber/voip/util/upload/d;->t:Z

    invoke-virtual {v1, v2}, Lcom/viber/voip/util/upload/i;->a(Z)V

    :cond_2
    throw v0

    .line 133
    :catch_1
    move-exception v0

    .line 134
    :try_start_3
    iget v2, p0, Lcom/viber/voip/util/upload/d;->p:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/viber/voip/util/upload/d;->p:I

    .line 135
    iget v2, p0, Lcom/viber/voip/util/upload/d;->p:I

    const/4 v3, 0x3

    if-le v2, v3, :cond_0

    .line 136
    new-instance v1, Lcom/viber/voip/util/upload/e;

    invoke-direct {v1, v0}, Lcom/viber/voip/util/upload/e;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 138
    :catch_2
    move-exception v0

    .line 139
    invoke-virtual {v0}, Lcom/viber/voip/util/upload/g;->b()Ljava/lang/String;

    move-result-object v0

    .line 140
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Redirected to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/viber/voip/util/upload/d;->a(Ljava/lang/String;)V

    .line 141
    const/4 v1, 0x1

    iput v1, p0, Lcom/viber/voip/util/upload/d;->p:I

    move-object v1, v0

    .line 142
    goto :goto_0

    .line 144
    :cond_3
    iget-boolean v0, p0, Lcom/viber/voip/util/upload/d;->s:Z

    if-eqz v0, :cond_4

    .line 145
    new-instance v0, Lcom/viber/voip/util/upload/e;

    sget-object v1, Lcom/viber/voip/util/upload/f;->c:Lcom/viber/voip/util/upload/f;

    invoke-direct {v0, v1}, Lcom/viber/voip/util/upload/e;-><init>(Lcom/viber/voip/util/upload/f;)V

    throw v0

    .line 147
    :cond_4
    new-instance v0, Lcom/viber/voip/util/upload/e;

    sget-object v1, Lcom/viber/voip/util/upload/f;->b:Lcom/viber/voip/util/upload/f;

    invoke-direct {v0, v1}, Lcom/viber/voip/util/upload/e;-><init>(Lcom/viber/voip/util/upload/f;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 161
    iget v0, p0, Lcom/viber/voip/util/upload/d;->o:I

    return v0
.end method

.method public f()V
    .locals 1

    .prologue
    .line 169
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/viber/voip/util/upload/d;->s:Z

    .line 170
    iget-object v0, p0, Lcom/viber/voip/util/upload/d;->d:Ljava/io/InputStream;

    if-eqz v0, :cond_1

    .line 172
    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/util/upload/d;->d:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 174
    iget-object v0, p0, Lcom/viber/voip/util/upload/d;->h:Lcom/viber/voip/util/upload/i;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/viber/voip/util/upload/d;->h:Lcom/viber/voip/util/upload/i;

    invoke-virtual {v0}, Lcom/viber/voip/util/upload/i;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/viber/voip/util/upload/d;->d:Ljava/io/InputStream;

    .line 182
    :cond_1
    return-void

    .line 177
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public g()I
    .locals 1

    .prologue
    .line 185
    iget v0, p0, Lcom/viber/voip/util/upload/d;->q:I

    return v0
.end method

.method public h()I
    .locals 1

    .prologue
    .line 189
    iget v0, p0, Lcom/viber/voip/util/upload/d;->v:I

    return v0
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 200
    iget-boolean v0, p0, Lcom/viber/voip/util/upload/d;->t:Z

    return v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 493
    iget-object v0, p0, Lcom/viber/voip/util/upload/d;->m:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized l()Lcom/viber/voip/util/upload/i;
    .locals 1

    .prologue
    .line 503
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/util/upload/d;->h:Lcom/viber/voip/util/upload/i;

    if-nez v0, :cond_0

    .line 504
    new-instance v0, Lcom/viber/voip/util/upload/i;

    invoke-direct {v0}, Lcom/viber/voip/util/upload/i;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/util/upload/d;->h:Lcom/viber/voip/util/upload/i;

    .line 506
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/util/upload/d;->h:Lcom/viber/voip/util/upload/i;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 503
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
