.class Lcom/viber/voip/util/upload/ai;
.super Lcom/viber/voip/util/upload/ah;
.source "SourceFile"


# instance fields
.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Lcom/viber/voip/util/upload/ak;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/viber/voip/util/upload/p;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 466
    invoke-direct {p0, p1, p2, p6}, Lcom/viber/voip/util/upload/ah;-><init>(Landroid/net/Uri;Lcom/viber/voip/util/upload/ak;Lcom/viber/voip/util/upload/p;)V

    .line 467
    iput-object p3, p0, Lcom/viber/voip/util/upload/ai;->d:Ljava/lang/String;

    .line 468
    iput-object p4, p0, Lcom/viber/voip/util/upload/ai;->e:Ljava/lang/String;

    .line 469
    iput-object p5, p0, Lcom/viber/voip/util/upload/ai;->f:Ljava/lang/String;

    .line 470
    return-void
.end method


# virtual methods
.method protected a()Lcom/viber/voip/util/http/HttpRequest;
    .locals 9

    .prologue
    const/4 v3, 0x0

    const v8, 0x1d4c0

    const/4 v1, 0x1

    .line 474
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    iget-object v2, p0, Lcom/viber/voip/util/upload/ai;->a:Landroid/net/Uri;

    invoke-static {v0, v2}, Lcom/viber/voip/util/bj;->a(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v4

    .line 475
    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "File size is 0. Nothing to upload"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 477
    :cond_0
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/util/upload/ai;->h:Ljava/lang/String;

    .line 478
    iget-object v0, p0, Lcom/viber/voip/util/upload/ai;->a:Landroid/net/Uri;

    invoke-static {v0}, Lcom/viber/voip/util/upload/ac;->b(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    .line 479
    invoke-static {}, Lcom/viber/voip/util/upload/ac;->e()Ljava/lang/String;

    move-result-object v5

    .line 480
    iget-object v0, p0, Lcom/viber/voip/util/upload/ai;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/viber/voip/util/upload/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/util/upload/ai;->g:Ljava/lang/String;

    .line 482
    new-instance v0, Lcom/viber/logger/QaLogger$QaPhotoUploadStartEvent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/viber/voip/util/upload/ai;->a:Landroid/net/Uri;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, ""

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v6, p0, Lcom/viber/voip/util/upload/ai;->g:Ljava/lang/String;

    invoke-direct {v0, v2, v6}, Lcom/viber/logger/QaLogger$QaPhotoUploadStartEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/viber/logger/QaLogger;->a(Lcom/viber/logger/QaLogger$QaEvent;)V

    .line 485
    iget-object v0, p0, Lcom/viber/voip/util/upload/ai;->c:Lcom/viber/voip/util/upload/ak;

    sget-object v2, Lcom/viber/voip/util/upload/ak;->a:Lcom/viber/voip/util/upload/ak;

    if-ne v0, v2, :cond_4

    move v0, v1

    .line 487
    :goto_0
    sget-object v2, Lcom/viber/voip/util/upload/ag;->a:[I

    iget-object v6, p0, Lcom/viber/voip/util/upload/ai;->c:Lcom/viber/voip/util/upload/ak;

    invoke-virtual {v6}, Lcom/viber/voip/util/upload/ak;->ordinal()I

    move-result v6

    aget v2, v2, v6

    packed-switch v2, :pswitch_data_0

    move-object v2, v3

    .line 500
    :goto_1
    invoke-static {v2}, Lcom/viber/voip/ViberEnv;->newHttpRequest(Ljava/lang/String;)Lcom/viber/voip/util/http/HttpRequest;

    move-result-object v2

    .line 502
    invoke-interface {v2, v1, v1}, Lcom/viber/voip/util/http/HttpRequest;->setPost(ZZ)V

    .line 503
    const-string/jumbo v1, "X-Filesize"

    iget-object v6, p0, Lcom/viber/voip/util/upload/ai;->h:Ljava/lang/String;

    invoke-interface {v2, v1, v6}, Lcom/viber/voip/util/http/HttpRequest;->setRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    const-string/jumbo v1, "X-Checksum"

    invoke-interface {v2, v1, v4}, Lcom/viber/voip/util/http/HttpRequest;->setRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    invoke-interface {v2, v8}, Lcom/viber/voip/util/http/HttpRequest;->setConnectTimeout(I)V

    .line 507
    invoke-interface {v2, v8}, Lcom/viber/voip/util/http/HttpRequest;->setReadTimeout(I)V

    .line 509
    if-eqz v0, :cond_1

    const-string/jumbo v1, "X-Offset"

    const-string/jumbo v4, ""

    invoke-interface {v2, v1, v4}, Lcom/viber/voip/util/http/HttpRequest;->setRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    :cond_1
    const-string/jumbo v1, "UDID"

    invoke-interface {v2, v1, v5}, Lcom/viber/voip/util/http/HttpRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    if-eqz v0, :cond_2

    const-string/jumbo v0, "Seq"

    iget-object v1, p0, Lcom/viber/voip/util/upload/ai;->d:Ljava/lang/String;

    invoke-interface {v2, v0, v1}, Lcom/viber/voip/util/http/HttpRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    :cond_2
    iget-object v0, p0, Lcom/viber/voip/util/upload/ai;->c:Lcom/viber/voip/util/upload/ak;

    sget-object v1, Lcom/viber/voip/util/upload/ak;->c:Lcom/viber/voip/util/upload/ak;

    if-ne v0, v1, :cond_3

    .line 515
    const-string/jumbo v0, "Imagesize"

    const-string/jumbo v1, "720"

    invoke-interface {v2, v0, v1}, Lcom/viber/voip/util/http/HttpRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    const-string/jumbo v0, "ObjectID"

    iget-object v1, p0, Lcom/viber/voip/util/upload/ai;->f:Ljava/lang/String;

    invoke-interface {v2, v0, v1}, Lcom/viber/voip/util/http/HttpRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    :cond_3
    const-string/jumbo v0, "Filetype"

    iget-object v1, p0, Lcom/viber/voip/util/upload/ai;->g:Ljava/lang/String;

    invoke-interface {v2, v0, v1}, Lcom/viber/voip/util/http/HttpRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    invoke-static {}, Lcom/viber/voip/util/upload/ac;->f()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/util/upload/ai;->a:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    .line 521
    const-string/jumbo v1, "File"

    const-string/jumbo v4, "file"

    invoke-interface {v2, v1, v0, v3, v4}, Lcom/viber/voip/util/http/HttpRequest;->addParam(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    const-string/jumbo v0, "FileUploadTask start EXECUTE"

    invoke-static {v0}, Lcom/viber/voip/util/upload/ac;->a(Ljava/lang/String;)V

    .line 524
    return-object v2

    .line 485
    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    .line 489
    :pswitch_0
    invoke-static {}, Lcom/viber/voip/bc;->b()Lcom/viber/voip/bd;

    move-result-object v2

    iget-object v2, v2, Lcom/viber/voip/bd;->o:Ljava/lang/String;

    goto :goto_1

    .line 493
    :pswitch_1
    invoke-static {}, Lcom/viber/voip/bc;->b()Lcom/viber/voip/bd;

    move-result-object v2

    iget-object v2, v2, Lcom/viber/voip/bd;->p:Ljava/lang/String;

    goto :goto_1

    .line 487
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method protected a(Lcom/viber/voip/util/upload/r;)V
    .locals 4
    .parameter

    .prologue
    .line 529
    iget v0, p1, Lcom/viber/voip/util/upload/r;->a:I

    packed-switch v0, :pswitch_data_0

    .line 533
    :goto_0
    return-void

    .line 531
    :pswitch_0
    new-instance v0, Lcom/viber/logger/QaLogger$QaPhotoUploadFinishEvent;

    iget-object v1, p0, Lcom/viber/voip/util/upload/ai;->a:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/util/upload/ai;->g:Ljava/lang/String;

    iget-object v3, p0, Lcom/viber/voip/util/upload/ai;->h:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/viber/logger/QaLogger$QaPhotoUploadFinishEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/viber/logger/QaLogger;->a(Lcom/viber/logger/QaLogger$QaEvent;)V

    goto :goto_0

    .line 529
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method protected b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 537
    iget-object v0, p0, Lcom/viber/voip/util/upload/ai;->f:Ljava/lang/String;

    return-object v0
.end method
