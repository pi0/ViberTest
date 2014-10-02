.class public Lcom/viber/voip/pixie/PixieControllerImpl$PixieProxySelector;
.super Ljava/net/ProxySelector;
.source "SourceFile"


# instance fields
.field private mShouldRedirect:Z

.field private noProxy:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/net/Proxy;",
            ">;"
        }
    .end annotation
.end field

.field private pixieProxy:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/net/Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 5
    .parameter

    .prologue
    .line 371
    invoke-direct {p0}, Ljava/net/ProxySelector;-><init>()V

    .line 363
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/viber/voip/pixie/PixieControllerImpl$PixieProxySelector;->mShouldRedirect:Z

    .line 372
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/pixie/PixieControllerImpl$PixieProxySelector;->pixieProxy:Ljava/util/List;

    .line 373
    iget-object v0, p0, Lcom/viber/voip/pixie/PixieControllerImpl$PixieProxySelector;->pixieProxy:Ljava/util/List;

    new-instance v1, Ljava/net/Proxy;

    sget-object v2, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v3, Ljava/net/InetSocketAddress;

    const-string/jumbo v4, "127.0.0.1"

    invoke-direct {v3, v4, p1}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {v1, v2, v3}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 376
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/pixie/PixieControllerImpl$PixieProxySelector;->noProxy:Ljava/util/List;

    .line 377
    iget-object v0, p0, Lcom/viber/voip/pixie/PixieControllerImpl$PixieProxySelector;->noProxy:Ljava/util/List;

    sget-object v1, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 379
    return-void
.end method


# virtual methods
.method public connectFailed(Ljava/net/URI;Ljava/net/SocketAddress;Ljava/io/IOException;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 382
    const/4 v0, 0x6

    invoke-static {}, Lcom/viber/voip/pixie/PixieControllerImpl;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Pixie: Unable to connect to proxy at: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " reason: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 384
    return-void
.end method

.method public redirect(Z)V
    .locals 0
    .parameter

    .prologue
    .line 367
    iput-boolean p1, p0, Lcom/viber/voip/pixie/PixieControllerImpl$PixieProxySelector;->mShouldRedirect:Z

    .line 368
    return-void
.end method

.method public select(Ljava/net/URI;)Ljava/util/List;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/net/Proxy;",
            ">;"
        }
    .end annotation

    .prologue
    .line 388
    invoke-virtual {p1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 389
    iget-boolean v1, p0, Lcom/viber/voip/pixie/PixieControllerImpl$PixieProxySelector;->mShouldRedirect:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "http"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "https"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 390
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/pixie/PixieControllerImpl$PixieProxySelector;->pixieProxy:Ljava/util/List;

    .line 393
    :goto_0
    return-object v0

    .line 392
    :cond_1
    const/4 v0, 0x5

    invoke-static {}, Lcom/viber/voip/pixie/PixieControllerImpl;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Pixie: returning no proxy for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 393
    iget-object v0, p0, Lcom/viber/voip/pixie/PixieControllerImpl$PixieProxySelector;->noProxy:Ljava/util/List;

    goto :goto_0
.end method
