.class public Lcom/viber/voip/util/upload/aa;
.super Lcom/viber/voip/util/upload/d;
.source "SourceFile"


# instance fields
.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field protected k:Lcom/viber/voip/util/upload/z;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 374
    invoke-direct {p0, p1, p2, p3}, Lcom/viber/voip/util/upload/d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    iput-object p4, p0, Lcom/viber/voip/util/upload/aa;->i:Ljava/lang/String;

    .line 376
    new-instance v0, Lcom/viber/voip/util/upload/z;

    invoke-direct {v0}, Lcom/viber/voip/util/upload/z;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/util/upload/aa;->k:Lcom/viber/voip/util/upload/z;

    .line 377
    iget-object v0, p0, Lcom/viber/voip/util/upload/aa;->k:Lcom/viber/voip/util/upload/z;

    invoke-virtual {p0}, Lcom/viber/voip/util/upload/aa;->l()Lcom/viber/voip/util/upload/i;

    move-result-object v1

    iput-object v1, v0, Lcom/viber/voip/util/upload/z;->a:Ljava/io/InputStream;

    .line 378
    iget-object v0, p0, Lcom/viber/voip/util/upload/aa;->k:Lcom/viber/voip/util/upload/z;

    invoke-virtual {p0}, Lcom/viber/voip/util/upload/aa;->k()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/viber/voip/util/upload/z;->d:Ljava/lang/String;

    .line 379
    iget-object v0, p0, Lcom/viber/voip/util/upload/aa;->k:Lcom/viber/voip/util/upload/z;

    iput-object p1, v0, Lcom/viber/voip/util/upload/z;->c:Ljava/lang/String;

    .line 380
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 383
    invoke-direct {p0, p1, p2, p3}, Lcom/viber/voip/util/upload/d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    iput-object p5, p0, Lcom/viber/voip/util/upload/aa;->j:Ljava/lang/String;

    .line 385
    iput-object p4, p0, Lcom/viber/voip/util/upload/aa;->i:Ljava/lang/String;

    .line 386
    new-instance v0, Lcom/viber/voip/util/upload/z;

    invoke-direct {v0}, Lcom/viber/voip/util/upload/z;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/util/upload/aa;->k:Lcom/viber/voip/util/upload/z;

    .line 387
    iget-object v0, p0, Lcom/viber/voip/util/upload/aa;->k:Lcom/viber/voip/util/upload/z;

    invoke-virtual {p0}, Lcom/viber/voip/util/upload/aa;->l()Lcom/viber/voip/util/upload/i;

    move-result-object v1

    iput-object v1, v0, Lcom/viber/voip/util/upload/z;->a:Ljava/io/InputStream;

    .line 388
    iget-object v0, p0, Lcom/viber/voip/util/upload/aa;->k:Lcom/viber/voip/util/upload/z;

    invoke-virtual {p0}, Lcom/viber/voip/util/upload/aa;->k()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/viber/voip/util/upload/z;->d:Ljava/lang/String;

    .line 389
    iget-object v0, p0, Lcom/viber/voip/util/upload/aa;->k:Lcom/viber/voip/util/upload/z;

    iput-object p1, v0, Lcom/viber/voip/util/upload/z;->c:Ljava/lang/String;

    .line 390
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/util/upload/aa;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 367
    iget-object v0, p0, Lcom/viber/voip/util/upload/aa;->i:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected a(I)V
    .locals 1
    .parameter

    .prologue
    .line 398
    iget-object v0, p0, Lcom/viber/voip/util/upload/aa;->k:Lcom/viber/voip/util/upload/z;

    iput p1, v0, Lcom/viber/voip/util/upload/z;->b:I

    .line 399
    return-void
.end method

.method protected a(Lcom/viber/voip/util/http/HttpRequest;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 412
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/viber/voip/util/http/HttpRequest;->setFollowRedirects(Z)V

    .line 413
    invoke-virtual {p0}, Lcom/viber/voip/util/upload/aa;->e()I

    move-result v0

    if-nez v0, :cond_1

    .line 414
    invoke-interface {p1, v1}, Lcom/viber/voip/util/http/HttpRequest;->setPost(Z)V

    .line 415
    const-string/jumbo v0, "ID"

    iget-object v1, p0, Lcom/viber/voip/util/upload/aa;->i:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/viber/voip/util/http/HttpRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/util/upload/aa;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/util/upload/s;->f(Ljava/lang/String;)V

    .line 417
    const-string/jumbo v0, "Filetype"

    iget-object v1, p0, Lcom/viber/voip/util/upload/aa;->j:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/viber/voip/util/http/HttpRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Filetype="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/util/upload/aa;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/util/upload/s;->f(Ljava/lang/String;)V

    .line 423
    :cond_0
    :goto_0
    return-void

    .line 419
    :cond_1
    invoke-virtual {p0}, Lcom/viber/voip/util/upload/aa;->e()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 420
    invoke-virtual {p0}, Lcom/viber/voip/util/upload/aa;->b()Ljava/lang/String;

    move-result-object v0

    .line 421
    iget-object v1, p0, Lcom/viber/voip/util/upload/aa;->k:Lcom/viber/voip/util/upload/z;

    iput-object v0, v1, Lcom/viber/voip/util/upload/z;->c:Ljava/lang/String;

    goto :goto_0
.end method

.method protected a(Ljava/io/File;)Z
    .locals 2
    .parameter

    .prologue
    .line 403
    iget-object v0, p0, Lcom/viber/voip/util/upload/aa;->i:Ljava/lang/String;

    invoke-static {v0}, Lcom/viber/voip/util/upload/s;->d(Ljava/lang/String;)Z

    move-result v0

    .line 404
    if-eqz v0, :cond_0

    .line 405
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/viber/voip/util/upload/s;->e(Ljava/lang/String;)V

    .line 407
    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Landroid/net/Uri;)V
    .locals 0
    .parameter

    .prologue
    .line 426
    return-void
.end method

.method public m()Lcom/viber/voip/util/upload/z;
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Lcom/viber/voip/util/upload/aa;->k:Lcom/viber/voip/util/upload/z;

    return-object v0
.end method
