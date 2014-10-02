.class public Lcom/viber/voip/util/upload/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/viber/voip/util/upload/aa;

.field private c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/viber/voip/util/upload/b;",
            ">;"
        }
    .end annotation
.end field

.field private d:Z


# direct methods
.method public constructor <init>(Lcom/viber/voip/util/upload/aa;Lcom/viber/voip/util/upload/b;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 473
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 471
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/viber/voip/util/upload/y;->d:Z

    .line 474
    invoke-static {p1}, Lcom/viber/voip/util/upload/aa;->a(Lcom/viber/voip/util/upload/aa;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/util/upload/y;->a:Ljava/lang/String;

    .line 475
    iput-object p1, p0, Lcom/viber/voip/util/upload/y;->b:Lcom/viber/voip/util/upload/aa;

    .line 476
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/util/upload/y;->c:Ljava/util/Set;

    .line 477
    if-eqz p2, :cond_0

    .line 478
    iget-object v0, p0, Lcom/viber/voip/util/upload/y;->c:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 480
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/util/upload/y;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 466
    iget-object v0, p0, Lcom/viber/voip/util/upload/y;->a:Ljava/lang/String;

    return-object v0
.end method

.method private a(I)V
    .locals 4
    .parameter

    .prologue
    .line 559
    iget-object v1, p0, Lcom/viber/voip/util/upload/y;->c:Ljava/util/Set;

    monitor-enter v1

    .line 560
    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/util/upload/y;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/util/upload/b;

    .line 561
    const/4 v3, 0x0

    invoke-interface {v0, v3, p1}, Lcom/viber/voip/util/upload/b;->a(Landroid/net/Uri;I)V

    goto :goto_0

    .line 563
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 564
    return-void
.end method

.method private a(Landroid/net/Uri;)V
    .locals 3
    .parameter

    .prologue
    .line 551
    iget-object v1, p0, Lcom/viber/voip/util/upload/y;->c:Ljava/util/Set;

    monitor-enter v1

    .line 552
    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/util/upload/y;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/util/upload/b;

    .line 553
    invoke-interface {v0, p1}, Lcom/viber/voip/util/upload/b;->a(Landroid/net/Uri;)V

    goto :goto_0

    .line 555
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 556
    return-void
.end method

.method static synthetic b(Lcom/viber/voip/util/upload/y;)Ljava/util/Set;
    .locals 1
    .parameter

    .prologue
    .line 466
    iget-object v0, p0, Lcom/viber/voip/util/upload/y;->c:Ljava/util/Set;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/viber/voip/util/upload/z;
    .locals 1

    .prologue
    .line 483
    iget-object v0, p0, Lcom/viber/voip/util/upload/y;->b:Lcom/viber/voip/util/upload/aa;

    invoke-virtual {v0}, Lcom/viber/voip/util/upload/aa;->m()Lcom/viber/voip/util/upload/z;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/viber/voip/util/upload/b;)V
    .locals 2
    .parameter

    .prologue
    .line 543
    if-eqz p1, :cond_0

    .line 544
    iget-object v1, p0, Lcom/viber/voip/util/upload/y;->c:Ljava/util/Set;

    monitor-enter v1

    .line 545
    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/util/upload/y;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 546
    monitor-exit v1

    .line 548
    :cond_0
    return-void

    .line 546
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected b()V
    .locals 4

    .prologue
    .line 488
    const/4 v0, 0x0

    .line 489
    iget-object v1, p0, Lcom/viber/voip/util/upload/y;->b:Lcom/viber/voip/util/upload/aa;

    invoke-virtual {v1}, Lcom/viber/voip/util/upload/aa;->c()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 490
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/viber/voip/util/upload/y;->b:Lcom/viber/voip/util/upload/aa;

    invoke-virtual {v1}, Lcom/viber/voip/util/upload/aa;->c()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 493
    :cond_0
    iget-object v1, p0, Lcom/viber/voip/util/upload/y;->b:Lcom/viber/voip/util/upload/aa;

    invoke-virtual {v1, v0}, Lcom/viber/voip/util/upload/aa;->b(Landroid/net/Uri;)V

    .line 494
    invoke-direct {p0, v0}, Lcom/viber/voip/util/upload/y;->a(Landroid/net/Uri;)V

    .line 496
    new-instance v0, Lcom/viber/logger/QaLogger$QaPhotoDownloadFinishEvent;

    iget-object v1, p0, Lcom/viber/voip/util/upload/y;->a:Ljava/lang/String;

    const-string/jumbo v2, ""

    iget-object v3, p0, Lcom/viber/voip/util/upload/y;->b:Lcom/viber/voip/util/upload/aa;

    invoke-virtual {v3}, Lcom/viber/voip/util/upload/aa;->g()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/viber/logger/QaLogger$QaPhotoDownloadFinishEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/viber/logger/QaLogger;->a(Lcom/viber/logger/QaLogger$QaEvent;)V

    .line 497
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 567
    iget-boolean v0, p0, Lcom/viber/voip/util/upload/y;->d:Z

    return v0
.end method

.method public run()V
    .locals 3

    .prologue
    .line 501
    invoke-static {}, Lcom/viber/voip/util/upload/s;->b()Ljava/util/Map;

    move-result-object v1

    monitor-enter v1

    .line 502
    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/util/upload/y;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/viber/voip/util/upload/s;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 503
    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/viber/voip/util/upload/y;->a:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 504
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "execute, id:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/viber/voip/util/upload/y;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ", is cancelled/done"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/util/upload/s;->f(Ljava/lang/String;)V

    .line 505
    invoke-static {p0}, Lcom/viber/voip/util/upload/s;->a(Lcom/viber/voip/util/upload/y;)V

    .line 506
    monitor-exit v1

    .line 540
    :goto_1
    return-void

    .line 502
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 508
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 510
    new-instance v0, Lcom/viber/logger/QaLogger$QaPhotoDownloadStartEvent;

    iget-object v1, p0, Lcom/viber/voip/util/upload/y;->a:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-direct {v0, v1, v2}, Lcom/viber/logger/QaLogger$QaPhotoDownloadStartEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/viber/logger/QaLogger;->a(Lcom/viber/logger/QaLogger$QaEvent;)V

    .line 513
    :try_start_1
    iget-boolean v0, p0, Lcom/viber/voip/util/upload/y;->d:Z

    if-nez v0, :cond_2

    .line 514
    iget-object v0, p0, Lcom/viber/voip/util/upload/y;->b:Lcom/viber/voip/util/upload/aa;

    invoke-virtual {v0}, Lcom/viber/voip/util/upload/aa;->d()V

    .line 515
    invoke-virtual {p0}, Lcom/viber/voip/util/upload/y;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Lcom/viber/voip/util/upload/e; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    .line 538
    :goto_2
    invoke-static {p0}, Lcom/viber/voip/util/upload/s;->a(Lcom/viber/voip/util/upload/y;)V

    goto :goto_1

    .line 508
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 517
    :cond_2
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Download interrupted: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/util/upload/y;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/util/upload/s;->f(Ljava/lang/String;)V

    .line 518
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/viber/voip/util/upload/y;->a(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Lcom/viber/voip/util/upload/e; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    .line 521
    :catch_0
    move-exception v0

    .line 522
    :try_start_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/viber/voip/util/upload/e;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/viber/voip/util/upload/s;->f(Ljava/lang/String;)V

    .line 525
    iget-boolean v1, p0, Lcom/viber/voip/util/upload/y;->d:Z

    if-eqz v1, :cond_3

    .line 526
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/viber/voip/util/upload/y;->a(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 538
    :goto_3
    invoke-static {p0}, Lcom/viber/voip/util/upload/s;->a(Lcom/viber/voip/util/upload/y;)V

    goto :goto_1

    .line 528
    :cond_3
    :try_start_5
    invoke-virtual {v0}, Lcom/viber/voip/util/upload/e;->a()Lcom/viber/voip/util/upload/f;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/util/upload/f;->e:Lcom/viber/voip/util/upload/f;

    invoke-virtual {v0, v1}, Lcom/viber/voip/util/upload/f;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 529
    const/16 v0, 0xf

    invoke-direct {p0, v0}, Lcom/viber/voip/util/upload/y;->a(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_3

    .line 538
    :catchall_1
    move-exception v0

    invoke-static {p0}, Lcom/viber/voip/util/upload/s;->a(Lcom/viber/voip/util/upload/y;)V

    throw v0

    .line 531
    :cond_4
    const/4 v0, 0x2

    :try_start_6
    invoke-direct {p0, v0}, Lcom/viber/voip/util/upload/y;->a(I)V

    goto :goto_3

    .line 534
    :catch_1
    move-exception v0

    .line 535
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ViberUploader:OutOfMemmoryError:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/util/upload/s;->f(Ljava/lang/String;)V

    .line 536
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/viber/voip/util/upload/y;->a(I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 538
    invoke-static {p0}, Lcom/viber/voip/util/upload/s;->a(Lcom/viber/voip/util/upload/y;)V

    goto/16 :goto_1
.end method
