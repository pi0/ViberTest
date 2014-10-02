.class Lcom/viber/voip/util/upload/aj;
.super Lcom/viber/voip/util/upload/ah;
.source "SourceFile"


# instance fields
.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:I

.field private g:J


# direct methods
.method public constructor <init>(Landroid/net/Uri;Lcom/viber/voip/util/upload/ak;Ljava/lang/String;Ljava/lang/String;ILcom/viber/voip/util/upload/p;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 555
    invoke-direct {p0, p1, p2, p6}, Lcom/viber/voip/util/upload/ah;-><init>(Landroid/net/Uri;Lcom/viber/voip/util/upload/ak;Lcom/viber/voip/util/upload/p;)V

    .line 556
    iput-object p3, p0, Lcom/viber/voip/util/upload/aj;->d:Ljava/lang/String;

    .line 557
    iput-object p4, p0, Lcom/viber/voip/util/upload/aj;->e:Ljava/lang/String;

    .line 558
    iput p5, p0, Lcom/viber/voip/util/upload/aj;->f:I

    .line 559
    return-void
.end method


# virtual methods
.method protected a()Lcom/viber/voip/util/http/HttpRequest;
    .locals 7

    .prologue
    const v6, 0x1d4c0

    const/4 v5, 0x1

    .line 563
    invoke-static {}, Lcom/viber/voip/bc;->b()Lcom/viber/voip/bd;

    move-result-object v0

    iget-object v0, v0, Lcom/viber/voip/bd;->q:Ljava/lang/String;

    .line 565
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/util/upload/aj;->a:Landroid/net/Uri;

    invoke-static {v1, v2}, Lcom/viber/voip/util/bj;->a(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/viber/voip/util/upload/aj;->g:J

    .line 566
    iget-wide v1, p0, Lcom/viber/voip/util/upload/aj;->g:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "File size is 0. Nothing to upload"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 567
    :cond_0
    iget-object v1, p0, Lcom/viber/voip/util/upload/aj;->a:Landroid/net/Uri;

    invoke-static {v1}, Lcom/viber/voip/util/upload/ac;->b(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 568
    invoke-static {}, Lcom/viber/voip/util/upload/ac;->e()Ljava/lang/String;

    move-result-object v2

    .line 575
    new-instance v3, Lcom/viber/voip/util/an;

    invoke-direct {v3, v0}, Lcom/viber/voip/util/an;-><init>(Ljava/lang/String;)V

    .line 577
    invoke-static {}, Lcom/viber/voip/util/upload/ac;->d()Ljava/util/Map;

    move-result-object v0

    iget-object v4, p0, Lcom/viber/voip/util/upload/aj;->a:Landroid/net/Uri;

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 578
    invoke-interface {v3, v5, v5}, Lcom/viber/voip/util/http/HttpRequest;->setPost(ZZ)V

    .line 579
    invoke-interface {v3, v6}, Lcom/viber/voip/util/http/HttpRequest;->setConnectTimeout(I)V

    .line 580
    invoke-interface {v3, v6}, Lcom/viber/voip/util/http/HttpRequest;->setReadTimeout(I)V

    .line 582
    const-string/jumbo v0, "udid"

    invoke-interface {v3, v0, v2}, Lcom/viber/voip/util/http/HttpRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    const-string/jumbo v0, "type"

    iget-object v2, p0, Lcom/viber/voip/util/upload/aj;->c:Lcom/viber/voip/util/upload/ak;

    invoke-virtual {v2}, Lcom/viber/voip/util/upload/ak;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v0, v2}, Lcom/viber/voip/util/http/HttpRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    const-string/jumbo v0, "filesize"

    iget-wide v4, p0, Lcom/viber/voip/util/upload/aj;->g:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v0, v2}, Lcom/viber/voip/util/http/HttpRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    const-string/jumbo v0, "filetype"

    iget-object v2, p0, Lcom/viber/voip/util/upload/aj;->d:Ljava/lang/String;

    invoke-interface {v3, v0, v2}, Lcom/viber/voip/util/http/HttpRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    const-string/jumbo v0, "checksum"

    invoke-interface {v3, v0, v1}, Lcom/viber/voip/util/http/HttpRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    iget-object v0, p0, Lcom/viber/voip/util/upload/aj;->e:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 588
    const-string/jumbo v0, "object_id"

    iget-object v1, p0, Lcom/viber/voip/util/upload/aj;->e:Ljava/lang/String;

    invoke-interface {v3, v0, v1}, Lcom/viber/voip/util/http/HttpRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    :cond_1
    iget v0, p0, Lcom/viber/voip/util/upload/aj;->f:I

    if-lez v0, :cond_2

    .line 591
    const-string/jumbo v0, "imagesize"

    iget v1, p0, Lcom/viber/voip/util/upload/aj;->f:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Lcom/viber/voip/util/http/HttpRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    :cond_2
    invoke-static {}, Lcom/viber/voip/util/upload/ac;->f()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/util/upload/aj;->a:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    .line 595
    const-string/jumbo v1, "file"

    const/4 v2, 0x0

    const-string/jumbo v4, "file"

    invoke-interface {v3, v1, v0, v2, v4}, Lcom/viber/voip/util/http/HttpRequest;->addParam(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    return-object v3
.end method
