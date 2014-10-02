.class public Lcom/viber/voip/stickers/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static a:I

.field private static final i:Ljava/lang/String;

.field private static m:Z


# instance fields
.field volatile b:J

.field c:Landroid/os/Handler;

.field d:Landroid/os/Handler;

.field e:Lcom/viber/voip/stickers/r;

.field f:Lcom/viber/voip/stickers/g;

.field g:Lcom/viber/voip/stickers/bf;

.field h:Lcom/viber/voip/stickers/bf;

.field private j:Ljava/util/concurrent/ThreadPoolExecutor;

.field private k:I

.field private l:Lcom/viber/voip/stickers/ar;

.field private n:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private o:Ljava/util/Random;

.field private p:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/viber/voip/stickers/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/stickers/b;->i:Ljava/lang/String;

    .line 67
    const/4 v0, 0x0

    sput v0, Lcom/viber/voip/stickers/b;->a:I

    return-void
.end method

.method constructor <init>(Lcom/viber/voip/stickers/r;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/viber/voip/stickers/b;->b:J

    .line 73
    sget-object v0, Lcom/viber/voip/dk;->a:Lcom/viber/voip/dk;

    invoke-static {v0}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/stickers/b;->c:Landroid/os/Handler;

    .line 74
    sget-object v0, Lcom/viber/voip/dk;->h:Lcom/viber/voip/dk;

    invoke-static {v0}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/stickers/b;->d:Landroid/os/Handler;

    .line 88
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/stickers/b;->o:Ljava/util/Random;

    .line 101
    iput-object p1, p0, Lcom/viber/voip/stickers/b;->e:Lcom/viber/voip/stickers/r;

    .line 102
    invoke-virtual {p1}, Lcom/viber/voip/stickers/r;->p()Lcom/viber/voip/stickers/ar;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/stickers/b;->l:Lcom/viber/voip/stickers/ar;

    .line 103
    new-instance v0, Lcom/viber/voip/stickers/g;

    invoke-direct {v0, p0}, Lcom/viber/voip/stickers/g;-><init>(Lcom/viber/voip/stickers/b;)V

    iput-object v0, p0, Lcom/viber/voip/stickers/b;->f:Lcom/viber/voip/stickers/g;

    .line 105
    new-instance v0, Lcom/viber/voip/stickers/bf;

    iget-object v1, p0, Lcom/viber/voip/stickers/b;->c:Landroid/os/Handler;

    new-instance v2, Lcom/viber/voip/stickers/n;

    invoke-direct {v2, p0, v3}, Lcom/viber/voip/stickers/n;-><init>(Lcom/viber/voip/stickers/b;Lcom/viber/voip/stickers/c;)V

    invoke-direct {v0, p0, v1, v2}, Lcom/viber/voip/stickers/bf;-><init>(Lcom/viber/voip/stickers/b;Landroid/os/Handler;Lcom/viber/voip/stickers/bi;)V

    iput-object v0, p0, Lcom/viber/voip/stickers/b;->g:Lcom/viber/voip/stickers/bf;

    .line 106
    new-instance v0, Lcom/viber/voip/stickers/bf;

    iget-object v1, p0, Lcom/viber/voip/stickers/b;->c:Landroid/os/Handler;

    new-instance v2, Lcom/viber/voip/stickers/e;

    invoke-direct {v2, p0, v3}, Lcom/viber/voip/stickers/e;-><init>(Lcom/viber/voip/stickers/b;Lcom/viber/voip/stickers/c;)V

    invoke-direct {v0, p0, v1, v2}, Lcom/viber/voip/stickers/bf;-><init>(Lcom/viber/voip/stickers/b;Landroid/os/Handler;Lcom/viber/voip/stickers/bi;)V

    iput-object v0, p0, Lcom/viber/voip/stickers/b;->h:Lcom/viber/voip/stickers/bf;

    .line 108
    return-void
.end method

.method private a(Lcom/viber/voip/stickers/c/a;Ljava/lang/String;Ljava/lang/String;IIZZLcom/viber/voip/stickers/ba;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 467
    invoke-virtual {p1}, Lcom/viber/voip/stickers/c/a;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 468
    invoke-direct/range {p0 .. p8}, Lcom/viber/voip/stickers/b;->c(Lcom/viber/voip/stickers/c/a;Ljava/lang/String;Ljava/lang/String;IIZZLcom/viber/voip/stickers/ba;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 470
    :goto_0
    return-object v0

    :cond_0
    invoke-direct/range {p0 .. p8}, Lcom/viber/voip/stickers/b;->b(Lcom/viber/voip/stickers/c/a;Ljava/lang/String;Ljava/lang/String;IIZZLcom/viber/voip/stickers/ba;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/viber/voip/stickers/b;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Lcom/viber/voip/stickers/b;->n:Landroid/os/AsyncTask;

    return-object p1
.end method

.method static synthetic a(Lcom/viber/voip/stickers/b;)Ljava/util/Random;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/viber/voip/stickers/b;->o:Ljava/util/Random;

    return-object v0
.end method

.method private b(Lcom/viber/voip/stickers/c/a;Ljava/lang/String;Ljava/lang/String;IIZZLcom/viber/voip/stickers/ba;)Landroid/graphics/Bitmap;
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 477
    :try_start_0
    invoke-static {p2, p3, p4, p5}, Lcom/viber/voip/messages/extras/image/h;->a(Ljava/lang/String;Ljava/lang/String;II)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 481
    :goto_0
    return-object v0

    .line 478
    :catch_0
    move-exception v5

    .line 479
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 480
    iget-object v0, p0, Lcom/viber/voip/stickers/b;->l:Lcom/viber/voip/stickers/ar;

    move-object v1, p1

    move v2, p6

    move v3, p7

    move-object v4, p8

    invoke-virtual/range {v0 .. v5}, Lcom/viber/voip/stickers/ar;->a(Lcom/viber/voip/stickers/c/a;ZZLcom/viber/voip/stickers/ba;Ljava/io/IOException;)V

    .line 481
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static b(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 717
    const/4 v0, 0x3

    sget-object v1, Lcom/viber/voip/stickers/b;->i:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 718
    return-void
.end method

.method static synthetic b(Lcom/viber/voip/stickers/b;)Z
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/viber/voip/stickers/b;->p:Z

    return v0
.end method

.method static synthetic b(Z)Z
    .locals 0
    .parameter

    .prologue
    .line 38
    sput-boolean p0, Lcom/viber/voip/stickers/b;->m:Z

    return p0
.end method

.method private c(Lcom/viber/voip/stickers/c/a;Ljava/lang/String;Ljava/lang/String;IIZZLcom/viber/voip/stickers/ba;)Landroid/graphics/Bitmap;
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 487
    iget-object v0, p0, Lcom/viber/voip/stickers/b;->e:Lcom/viber/voip/stickers/r;

    invoke-virtual {v0}, Lcom/viber/voip/stickers/r;->e()Lcom/viber/voip/stickers/bb;

    move-result-object v0

    .line 488
    invoke-virtual {v0, p2}, Lcom/viber/voip/stickers/bb;->a(Ljava/lang/String;)Lcom/viber/voip/stickers/f/a;

    move-result-object v2

    .line 496
    if-eqz p7, :cond_0

    iget-object v1, v2, Lcom/viber/voip/stickers/f/a;->b:Landroid/graphics/Picture;

    .line 497
    :goto_0
    iget-wide v3, v2, Lcom/viber/voip/stickers/f/a;->a:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    if-nez v1, :cond_1

    .line 498
    iget-object v0, p0, Lcom/viber/voip/stickers/b;->l:Lcom/viber/voip/stickers/ar;

    new-instance v5, Ljava/io/FileNotFoundException;

    invoke-direct {v5}, Ljava/io/FileNotFoundException;-><init>()V

    move-object v1, p1

    move/from16 v2, p6

    move/from16 v3, p7

    move-object/from16 v4, p8

    invoke-virtual/range {v0 .. v5}, Lcom/viber/voip/stickers/ar;->a(Lcom/viber/voip/stickers/c/a;ZZLcom/viber/voip/stickers/ba;Ljava/io/IOException;)V

    .line 499
    const/4 v0, 0x0

    .line 507
    :goto_1
    return-object v0

    .line 496
    :cond_0
    iget-object v1, v2, Lcom/viber/voip/stickers/f/a;->c:Landroid/graphics/Picture;

    goto :goto_0

    .line 501
    :cond_1
    if-eqz v1, :cond_2

    .line 505
    const/4 v0, 0x0

    goto :goto_1

    .line 507
    :cond_2
    if-eqz p7, :cond_4

    iget-object v1, v2, Lcom/viber/voip/stickers/f/a;->c:Landroid/graphics/Picture;

    if-eqz v1, :cond_3

    const/4 v9, 0x1

    :goto_2
    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p7

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v9}, Lcom/viber/voip/stickers/bb;->a(Lcom/viber/voip/stickers/c/a;Lcom/viber/voip/stickers/f/a;Ljava/lang/String;Ljava/lang/String;IIZLcom/viber/voip/stickers/ba;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1

    :cond_3
    const/4 v9, 0x0

    goto :goto_2

    :cond_4
    iget-object v1, v2, Lcom/viber/voip/stickers/f/a;->b:Landroid/graphics/Picture;

    if-eqz v1, :cond_5

    const/4 v9, 0x1

    goto :goto_2

    :cond_5
    const/4 v9, 0x0

    goto :goto_2
.end method

.method private d(Lcom/viber/voip/stickers/c/a;ZZLcom/viber/voip/stickers/ba;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 654
    invoke-virtual {p1, p2, p3, p4}, Lcom/viber/voip/stickers/c/a;->a(ZZLcom/viber/voip/stickers/ba;)Ljava/lang/String;

    move-result-object v0

    .line 656
    if-eqz v0, :cond_0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 657
    iget-object v0, p0, Lcom/viber/voip/stickers/b;->e:Lcom/viber/voip/stickers/r;

    invoke-virtual {v0}, Lcom/viber/voip/stickers/r;->u()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 658
    invoke-static {}, Lcom/viber/voip/stickers/r;->a()Lcom/viber/voip/stickers/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/stickers/r;->d()Lcom/viber/voip/stickers/b;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/viber/voip/stickers/b;->c(Lcom/viber/voip/stickers/c/a;ZZLcom/viber/voip/stickers/ba;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 659
    if-eqz v0, :cond_0

    .line 660
    invoke-static {v0}, Lcom/viber/voip/messages/extras/image/h;->c(Landroid/graphics/Bitmap;)V

    .line 666
    :cond_0
    return-void

    .line 663
    :cond_1
    new-instance v0, Lcom/viber/voip/stickers/ak;

    invoke-direct {v0}, Lcom/viber/voip/stickers/ak;-><init>()V

    throw v0
.end method

.method private e()Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 7

    .prologue
    const/4 v1, 0x1

    .line 521
    iget-object v0, p0, Lcom/viber/voip/stickers/b;->j:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v0, :cond_0

    .line 522
    new-instance v6, Ljava/util/concurrent/PriorityBlockingQueue;

    const/16 v0, 0x64

    new-instance v2, Lcom/viber/voip/stickers/m;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/viber/voip/stickers/m;-><init>(Lcom/viber/voip/stickers/c;)V

    invoke-direct {v6, v0, v2}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>(ILjava/util/Comparator;)V

    .line 523
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v3, 0x3c

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move v2, v1

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v0, p0, Lcom/viber/voip/stickers/b;->j:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 525
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/stickers/b;->j:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/viber/voip/stickers/c/a;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter

    .prologue
    .line 367
    iget v0, p1, Lcom/viber/voip/stickers/c/a;->t:I

    iget v1, p0, Lcom/viber/voip/stickers/b;->k:I

    if-ne v0, v1, :cond_0

    .line 368
    iget-object v0, p0, Lcom/viber/voip/stickers/b;->g:Lcom/viber/voip/stickers/bf;

    invoke-virtual {v0, p1}, Lcom/viber/voip/stickers/bf;->a(Lcom/viber/voip/stickers/c/a;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 370
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/viber/voip/stickers/b;->h:Lcom/viber/voip/stickers/bf;

    invoke-virtual {v0, p1}, Lcom/viber/voip/stickers/bf;->a(Lcom/viber/voip/stickers/c/a;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Lcom/viber/voip/stickers/c/a;ZZLcom/viber/voip/stickers/ba;)Lcom/viber/voip/stickers/h;
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 352
    iget-object v0, p0, Lcom/viber/voip/stickers/b;->f:Lcom/viber/voip/stickers/g;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/viber/voip/stickers/g;->a(Lcom/viber/voip/stickers/c/a;ZZLcom/viber/voip/stickers/ba;)Lcom/viber/voip/stickers/h;

    move-result-object v5

    .line 353
    if-eqz v5, :cond_0

    .line 362
    :goto_0
    return-object v5

    .line 356
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/viber/voip/stickers/b;->c(Lcom/viber/voip/stickers/c/a;ZZLcom/viber/voip/stickers/ba;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 357
    if-eqz v0, :cond_1

    .line 358
    new-instance v5, Lcom/viber/voip/stickers/h;

    invoke-virtual {p1, p2, p3, p4}, Lcom/viber/voip/stickers/c/a;->a(ZZLcom/viber/voip/stickers/ba;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v0, v1}, Lcom/viber/voip/stickers/h;-><init>(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 359
    iget-object v0, p0, Lcom/viber/voip/stickers/b;->f:Lcom/viber/voip/stickers/g;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/viber/voip/stickers/g;->a(Lcom/viber/voip/stickers/c/a;ZZLcom/viber/voip/stickers/ba;Lcom/viber/voip/stickers/h;)V

    goto :goto_0

    .line 362
    :cond_1
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public a(Lcom/viber/voip/stickers/c/a;ZZZLcom/viber/voip/stickers/ba;Lcom/viber/voip/stickers/o;)Ljava/lang/Object;
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 331
    invoke-virtual {p0, p5}, Lcom/viber/voip/stickers/b;->a(Lcom/viber/voip/stickers/ba;)V

    .line 332
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/viber/voip/stickers/b;->b:J

    .line 334
    new-instance v0, Lcom/viber/voip/stickers/k;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/viber/voip/stickers/k;-><init>(Lcom/viber/voip/stickers/b;Lcom/viber/voip/stickers/c/a;ZZZLcom/viber/voip/stickers/ba;Lcom/viber/voip/stickers/o;)V

    .line 335
    invoke-direct {p0}, Lcom/viber/voip/stickers/b;->e()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 336
    return-object v0
.end method

.method a()V
    .locals 0

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/viber/voip/stickers/b;->e()Ljava/util/concurrent/ThreadPoolExecutor;

    .line 117
    invoke-virtual {p0}, Lcom/viber/voip/stickers/b;->c()V

    .line 119
    return-void
.end method

.method public a(I)V
    .locals 1
    .parameter

    .prologue
    .line 185
    iput p1, p0, Lcom/viber/voip/stickers/b;->k:I

    .line 186
    iget-object v0, p0, Lcom/viber/voip/stickers/b;->g:Lcom/viber/voip/stickers/bf;

    invoke-virtual {v0}, Lcom/viber/voip/stickers/bf;->a()V

    .line 188
    return-void
.end method

.method a(Lcom/viber/voip/stickers/ba;)V
    .locals 2
    .parameter

    .prologue
    .line 179
    sget-object v0, Lcom/viber/voip/stickers/ba;->c:Lcom/viber/voip/stickers/ba;

    if-ne p1, v0, :cond_0

    .line 180
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Thumb requested"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 182
    :cond_0
    return-void
.end method

.method public a(Lcom/viber/voip/stickers/c/a;Lcom/viber/voip/stickers/ba;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 627
    sget-object v0, Lcom/viber/voip/stickers/d;->a:[I

    invoke-virtual {p2}, Lcom/viber/voip/stickers/ba;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 651
    :goto_0
    return-void

    .line 629
    :pswitch_0
    sget-object v0, Lcom/viber/voip/stickers/ba;->a:Lcom/viber/voip/stickers/ba;

    invoke-direct {p0, p1, v2, v2, v0}, Lcom/viber/voip/stickers/b;->d(Lcom/viber/voip/stickers/c/a;ZZLcom/viber/voip/stickers/ba;)V

    .line 630
    sget-object v0, Lcom/viber/voip/stickers/ba;->a:Lcom/viber/voip/stickers/ba;

    invoke-direct {p0, p1, v2, v3, v0}, Lcom/viber/voip/stickers/b;->d(Lcom/viber/voip/stickers/c/a;ZZLcom/viber/voip/stickers/ba;)V

    .line 631
    sget-object v0, Lcom/viber/voip/stickers/ba;->a:Lcom/viber/voip/stickers/ba;

    invoke-direct {p0, p1, v3, v2, v0}, Lcom/viber/voip/stickers/b;->d(Lcom/viber/voip/stickers/c/a;ZZLcom/viber/voip/stickers/ba;)V

    .line 632
    sget-object v0, Lcom/viber/voip/stickers/ba;->a:Lcom/viber/voip/stickers/ba;

    invoke-direct {p0, p1, v3, v3, v0}, Lcom/viber/voip/stickers/b;->d(Lcom/viber/voip/stickers/c/a;ZZLcom/viber/voip/stickers/ba;)V

    goto :goto_0

    .line 637
    :pswitch_1
    sget-object v0, Lcom/viber/voip/stickers/ba;->b:Lcom/viber/voip/stickers/ba;

    invoke-direct {p0, p1, v2, v2, v0}, Lcom/viber/voip/stickers/b;->d(Lcom/viber/voip/stickers/c/a;ZZLcom/viber/voip/stickers/ba;)V

    .line 639
    sget-object v0, Lcom/viber/voip/stickers/ba;->b:Lcom/viber/voip/stickers/ba;

    invoke-direct {p0, p1, v3, v2, v0}, Lcom/viber/voip/stickers/b;->d(Lcom/viber/voip/stickers/c/a;ZZLcom/viber/voip/stickers/ba;)V

    goto :goto_0

    .line 645
    :pswitch_2
    sget-object v0, Lcom/viber/voip/stickers/ba;->c:Lcom/viber/voip/stickers/ba;

    invoke-direct {p0, p1, v2, v2, v0}, Lcom/viber/voip/stickers/b;->d(Lcom/viber/voip/stickers/c/a;ZZLcom/viber/voip/stickers/ba;)V

    .line 647
    sget-object v0, Lcom/viber/voip/stickers/ba;->c:Lcom/viber/voip/stickers/ba;

    invoke-direct {p0, p1, v3, v2, v0}, Lcom/viber/voip/stickers/b;->d(Lcom/viber/voip/stickers/c/a;ZZLcom/viber/voip/stickers/ba;)V

    goto :goto_0

    .line 627
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public a(Ljava/lang/Iterable;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/viber/voip/stickers/c/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 191
    iget-object v0, p0, Lcom/viber/voip/stickers/b;->g:Lcom/viber/voip/stickers/bf;

    invoke-virtual {v0, p1}, Lcom/viber/voip/stickers/bf;->a(Ljava/lang/Iterable;)V

    .line 192
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 383
    invoke-static {p1}, Lcom/viber/voip/util/gj;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 391
    :goto_0
    return-void

    .line 386
    :cond_0
    iget-object v1, p0, Lcom/viber/voip/stickers/b;->f:Lcom/viber/voip/stickers/g;

    monitor-enter v1

    .line 387
    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/stickers/b;->f:Lcom/viber/voip/stickers/g;

    invoke-virtual {v0, p1}, Lcom/viber/voip/stickers/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 388
    iget-object v0, p0, Lcom/viber/voip/stickers/b;->f:Lcom/viber/voip/stickers/g;

    invoke-virtual {v0, p1}, Lcom/viber/voip/stickers/g;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 111
    iput-boolean p1, p0, Lcom/viber/voip/stickers/b;->p:Z

    .line 112
    return-void
.end method

.method public a([ILcom/viber/voip/stickers/bj;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 206
    iget-object v0, p0, Lcom/viber/voip/stickers/b;->h:Lcom/viber/voip/stickers/bf;

    invoke-virtual {v0, p1, p2}, Lcom/viber/voip/stickers/bf;->a([ILcom/viber/voip/stickers/bj;)V

    .line 207
    return-void
.end method

.method public a(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 340
    instance-of v0, p1, Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 341
    invoke-direct {p0}, Lcom/viber/voip/stickers/b;->e()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    check-cast p1, Ljava/lang/Runnable;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->remove(Ljava/lang/Runnable;)Z

    move-result v0

    .line 343
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Lcom/viber/voip/stickers/c/a;ZZLcom/viber/voip/stickers/ba;)Lcom/viber/voip/stickers/h;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 394
    invoke-virtual {p0, p4}, Lcom/viber/voip/stickers/b;->a(Lcom/viber/voip/stickers/ba;)V

    .line 395
    iget-object v0, p0, Lcom/viber/voip/stickers/b;->f:Lcom/viber/voip/stickers/g;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/viber/voip/stickers/g;->a(Lcom/viber/voip/stickers/c/a;ZZLcom/viber/voip/stickers/ba;)Lcom/viber/voip/stickers/h;

    move-result-object v0

    return-object v0
.end method

.method b()V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/viber/voip/stickers/b;->j:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/viber/voip/stickers/b;->j:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    .line 124
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/viber/voip/stickers/b;->j:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 129
    :cond_0
    return-void
.end method

.method public b(Lcom/viber/voip/stickers/c/a;)V
    .locals 2
    .parameter

    .prologue
    .line 375
    iget v0, p1, Lcom/viber/voip/stickers/c/a;->t:I

    iget v1, p0, Lcom/viber/voip/stickers/b;->k:I

    if-ne v0, v1, :cond_0

    .line 376
    iget-object v0, p0, Lcom/viber/voip/stickers/b;->g:Lcom/viber/voip/stickers/bf;

    invoke-virtual {v0, p1}, Lcom/viber/voip/stickers/bf;->b(Lcom/viber/voip/stickers/c/a;)V

    .line 380
    :goto_0
    return-void

    .line 378
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/stickers/b;->h:Lcom/viber/voip/stickers/bf;

    invoke-virtual {v0, p1}, Lcom/viber/voip/stickers/bf;->b(Lcom/viber/voip/stickers/c/a;)V

    goto :goto_0
.end method

.method public b(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 347
    check-cast p1, Lcom/viber/voip/stickers/k;

    .line 348
    invoke-virtual {p1}, Lcom/viber/voip/stickers/k;->c()V

    .line 349
    return-void
.end method

.method c(Lcom/viber/voip/stickers/c/a;ZZLcom/viber/voip/stickers/ba;)Landroid/graphics/Bitmap;
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v0, 0x0

    .line 405
    invoke-virtual {p1, p2, p3, p4}, Lcom/viber/voip/stickers/c/a;->a(ZZLcom/viber/voip/stickers/ba;)Ljava/lang/String;

    move-result-object v3

    .line 406
    const/4 v1, 0x0

    .line 408
    if-nez v3, :cond_1

    .line 457
    if-eqz v0, :cond_0

    .line 459
    :try_start_0
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 460
    :cond_0
    :goto_0
    return-object v0

    .line 427
    :cond_1
    :try_start_1
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 428
    :try_start_2
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 429
    sget-object v0, Lcom/viber/voip/stickers/ba;->c:Lcom/viber/voip/stickers/ba;

    if-ne v0, p4, :cond_2

    invoke-static {}, Lcom/viber/voip/util/gl;->e()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    :goto_1
    iput-object v0, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 430
    const/4 v0, 0x0

    invoke-static {v1, v0, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_5

    move-result-object v0

    .line 457
    if-eqz v1, :cond_0

    .line 459
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 460
    :catch_0
    move-exception v1

    goto :goto_0

    .line 429
    :cond_2
    :try_start_4
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_5

    goto :goto_1

    .line 432
    :catch_1
    move-exception v1

    move-object v9, v0

    .line 436
    :goto_2
    :try_start_5
    sget-object v0, Lcom/viber/voip/stickers/d;->a:[I

    invoke-virtual {p4}, Lcom/viber/voip/stickers/ba;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 450
    invoke-static {p4}, Lcom/viber/voip/stickers/c/a;->a(Lcom/viber/voip/stickers/ba;)V

    move v4, v5

    .line 453
    :goto_3
    if-eqz p2, :cond_5

    iget-object v2, p1, Lcom/viber/voip/stickers/c/a;->v:Ljava/lang/String;

    .line 454
    :goto_4
    invoke-virtual {p1}, Lcom/viber/voip/stickers/c/a;->f()V

    move-object v0, p0

    move-object v1, p1

    move v6, p2

    move v7, p3

    move-object v8, p4

    .line 455
    invoke-direct/range {v0 .. v8}, Lcom/viber/voip/stickers/b;->a(Lcom/viber/voip/stickers/c/a;Ljava/lang/String;Ljava/lang/String;IIZZLcom/viber/voip/stickers/ba;)Landroid/graphics/Bitmap;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-result-object v0

    .line 457
    if-eqz v9, :cond_0

    .line 459
    :try_start_6
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_0

    .line 460
    :catch_2
    move-exception v1

    goto :goto_0

    .line 438
    :pswitch_0
    if-eqz p3, :cond_3

    :try_start_7
    iget v4, p1, Lcom/viber/voip/stickers/c/a;->l:I

    .line 439
    :goto_5
    if-eqz p3, :cond_4

    iget v0, p1, Lcom/viber/voip/stickers/c/a;->m:I

    :goto_6
    move v5, v0

    .line 440
    goto :goto_3

    .line 438
    :cond_3
    iget v4, p1, Lcom/viber/voip/stickers/c/a;->n:I

    goto :goto_5

    .line 439
    :cond_4
    iget v0, p1, Lcom/viber/voip/stickers/c/a;->o:I

    goto :goto_6

    .line 442
    :pswitch_1
    iget v4, p1, Lcom/viber/voip/stickers/c/a;->p:I

    .line 443
    iget v5, p1, Lcom/viber/voip/stickers/c/a;->q:I

    goto :goto_3

    .line 446
    :pswitch_2
    iget v4, p1, Lcom/viber/voip/stickers/c/a;->r:I

    .line 447
    iget v5, p1, Lcom/viber/voip/stickers/c/a;->s:I

    goto :goto_3

    .line 453
    :cond_5
    iget-object v2, p1, Lcom/viber/voip/stickers/c/a;->u:Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_4

    .line 457
    :catchall_0
    move-exception v1

    move-object v9, v0

    move-object v0, v1

    :goto_7
    if-eqz v9, :cond_6

    .line 459
    :try_start_8
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 460
    :cond_6
    :goto_8
    throw v0

    :catch_3
    move-exception v1

    goto :goto_0

    :catch_4
    move-exception v1

    goto :goto_8

    .line 457
    :catchall_1
    move-exception v0

    move-object v9, v1

    goto :goto_7

    :catchall_2
    move-exception v0

    goto :goto_7

    .line 432
    :catch_5
    move-exception v0

    move-object v9, v1

    goto :goto_2

    .line 436
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public c()V
    .locals 2

    .prologue
    .line 570
    sget-boolean v0, Lcom/viber/voip/stickers/b;->m:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/stickers/b;->n:Landroid/os/AsyncTask;

    if-nez v0, :cond_0

    .line 571
    new-instance v0, Lcom/viber/voip/stickers/c;

    invoke-direct {v0, p0}, Lcom/viber/voip/stickers/c;-><init>(Lcom/viber/voip/stickers/b;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/viber/voip/stickers/c;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/stickers/b;->n:Landroid/os/AsyncTask;

    .line 596
    :cond_0
    return-void
.end method

.method public c(Lcom/viber/voip/stickers/c/a;)V
    .locals 1
    .parameter

    .prologue
    .line 618
    sget-object v0, Lcom/viber/voip/stickers/ba;->a:Lcom/viber/voip/stickers/ba;

    invoke-virtual {p0, p1, v0}, Lcom/viber/voip/stickers/b;->a(Lcom/viber/voip/stickers/c/a;Lcom/viber/voip/stickers/ba;)V

    .line 619
    sget-object v0, Lcom/viber/voip/stickers/ba;->b:Lcom/viber/voip/stickers/ba;

    invoke-virtual {p0, p1, v0}, Lcom/viber/voip/stickers/b;->a(Lcom/viber/voip/stickers/c/a;Lcom/viber/voip/stickers/ba;)V

    .line 620
    sget-object v0, Lcom/viber/voip/stickers/ba;->c:Lcom/viber/voip/stickers/ba;

    invoke-virtual {p0, p1, v0}, Lcom/viber/voip/stickers/b;->a(Lcom/viber/voip/stickers/c/a;Lcom/viber/voip/stickers/ba;)V

    .line 621
    return-void
.end method

.method public d()V
    .locals 3

    .prologue
    .line 603
    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/stickers/b;->e:Lcom/viber/voip/stickers/r;

    invoke-virtual {v0}, Lcom/viber/voip/stickers/r;->g()Ljava/util/List;

    move-result-object v0

    .line 604
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/stickers/c/d;

    .line 605
    invoke-interface {v0}, Lcom/viber/voip/stickers/c/d;->h()Z

    move-result v2

    if-nez v2, :cond_0

    .line 606
    iget-object v2, p0, Lcom/viber/voip/stickers/b;->e:Lcom/viber/voip/stickers/r;

    invoke-interface {v0}, Lcom/viber/voip/stickers/c/d;->e()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/viber/voip/stickers/r;->k(I)Ljava/util/List;

    move-result-object v0

    .line 607
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/stickers/c/a;

    .line 608
    invoke-virtual {p0, v0}, Lcom/viber/voip/stickers/b;->c(Lcom/viber/voip/stickers/c/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 613
    :catchall_0
    move-exception v0

    throw v0

    .line 615
    :cond_1
    return-void
.end method
