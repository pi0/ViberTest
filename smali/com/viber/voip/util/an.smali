.class public Lcom/viber/voip/util/an;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/util/http/HttpRequest;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/viber/voip/util/http/HttpRequest;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/viber/voip/util/an;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/util/an;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ctor "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/util/an;->a(Ljava/lang/String;)V

    .line 22
    invoke-static {p1}, Lcom/viber/voip/ViberEnv;->newHttpRequest(Ljava/lang/String;)Lcom/viber/voip/util/http/HttpRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/util/an;->b:Lcom/viber/voip/util/http/HttpRequest;

    .line 23
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 128
    return-void
.end method


# virtual methods
.method public addParam(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "addParam "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " (mimeType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", filename:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/util/an;->a(Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/viber/voip/util/an;->b:Lcom/viber/voip/util/http/HttpRequest;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/viber/voip/util/http/HttpRequest;->addParam(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    return-void
.end method

.method public addParam(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "addParam "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/util/an;->a(Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/viber/voip/util/an;->b:Lcom/viber/voip/util/http/HttpRequest;

    invoke-interface {v0, p1, p2}, Lcom/viber/voip/util/http/HttpRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    return-void
.end method

.method public disableSSLCheck()V
    .locals 1

    .prologue
    .line 43
    const-string/jumbo v0, "disableSSLCheck"

    invoke-direct {p0, v0}, Lcom/viber/voip/util/an;->a(Ljava/lang/String;)V

    .line 44
    iget-object v0, p0, Lcom/viber/voip/util/an;->b:Lcom/viber/voip/util/http/HttpRequest;

    invoke-interface {v0}, Lcom/viber/voip/util/http/HttpRequest;->disableSSLCheck()V

    .line 45
    return-void
.end method

.method public getContentLength()J
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/viber/voip/util/an;->b:Lcom/viber/voip/util/http/HttpRequest;

    invoke-interface {v0}, Lcom/viber/voip/util/http/HttpRequest;->getContentLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public getErrorStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/viber/voip/util/an;->b:Lcom/viber/voip/util/http/HttpRequest;

    invoke-interface {v0}, Lcom/viber/voip/util/http/HttpRequest;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/viber/voip/util/an;->b:Lcom/viber/voip/util/http/HttpRequest;

    invoke-interface {v0}, Lcom/viber/voip/util/http/HttpRequest;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/viber/voip/util/an;->b:Lcom/viber/voip/util/http/HttpRequest;

    invoke-interface {v0}, Lcom/viber/voip/util/http/HttpRequest;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public getRequestMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/viber/voip/util/an;->b:Lcom/viber/voip/util/http/HttpRequest;

    invoke-interface {v0}, Lcom/viber/voip/util/http/HttpRequest;->getRequestMethod()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResponseCode()I
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/viber/voip/util/an;->b:Lcom/viber/voip/util/http/HttpRequest;

    invoke-interface {v0}, Lcom/viber/voip/util/http/HttpRequest;->getResponseCode()I

    move-result v0

    return v0
.end method

.method public getResponseHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/viber/voip/util/an;->b:Lcom/viber/voip/util/http/HttpRequest;

    invoke-interface {v0, p1}, Lcom/viber/voip/util/http/HttpRequest;->getResponseHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResponseHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 84
    iget-object v0, p0, Lcom/viber/voip/util/an;->b:Lcom/viber/voip/util/http/HttpRequest;

    invoke-interface {v0}, Lcom/viber/voip/util/http/HttpRequest;->getResponseHeaders()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/viber/voip/util/an;->b:Lcom/viber/voip/util/http/HttpRequest;

    invoke-interface {v0}, Lcom/viber/voip/util/http/HttpRequest;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setConnectTimeout(I)V
    .locals 2
    .parameter

    .prologue
    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setConnectTimeout "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/util/an;->a(Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/viber/voip/util/an;->b:Lcom/viber/voip/util/http/HttpRequest;

    invoke-interface {v0, p1}, Lcom/viber/voip/util/http/HttpRequest;->setConnectTimeout(I)V

    .line 63
    return-void
.end method

.method public setFollowRedirects(Z)V
    .locals 2
    .parameter

    .prologue
    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setFollowRedirects "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/util/an;->a(Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lcom/viber/voip/util/an;->b:Lcom/viber/voip/util/http/HttpRequest;

    invoke-interface {v0, p1}, Lcom/viber/voip/util/http/HttpRequest;->setFollowRedirects(Z)V

    .line 39
    return-void
.end method

.method public setPost(Z)V
    .locals 2
    .parameter

    .prologue
    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setPost "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/util/an;->a(Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lcom/viber/voip/util/an;->b:Lcom/viber/voip/util/http/HttpRequest;

    invoke-interface {v0, p1}, Lcom/viber/voip/util/http/HttpRequest;->setPost(Z)V

    .line 51
    return-void
.end method

.method public setPost(ZZ)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setPost "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", multipart:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/util/an;->a(Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcom/viber/voip/util/an;->b:Lcom/viber/voip/util/http/HttpRequest;

    invoke-interface {v0, p1, p2}, Lcom/viber/voip/util/http/HttpRequest;->setPost(ZZ)V

    .line 57
    return-void
.end method

.method public setReadTimeout(I)V
    .locals 2
    .parameter

    .prologue
    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setReadTimeout "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/util/an;->a(Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/viber/voip/util/an;->b:Lcom/viber/voip/util/http/HttpRequest;

    invoke-interface {v0, p1}, Lcom/viber/voip/util/http/HttpRequest;->setReadTimeout(I)V

    .line 69
    return-void
.end method

.method public setRequestHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setRequestHeader "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/util/an;->a(Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/viber/voip/util/an;->b:Lcom/viber/voip/util/http/HttpRequest;

    invoke-interface {v0, p1, p2}, Lcom/viber/voip/util/http/HttpRequest;->setRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    return-void
.end method
