.class final Lcom/viber/voip/util/upload/t;
.super Lcom/viber/voip/util/upload/aa;
.source "SourceFile"


# instance fields
.field final synthetic i:Ljava/lang/String;

.field final synthetic j:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 95
    iput-object p6, p0, Lcom/viber/voip/util/upload/t;->i:Ljava/lang/String;

    iput-object p7, p0, Lcom/viber/voip/util/upload/t;->j:Ljava/lang/String;

    invoke-direct/range {p0 .. p5}, Lcom/viber/voip/util/upload/aa;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/viber/voip/util/http/HttpRequest;)V
    .locals 2
    .parameter

    .prologue
    .line 99
    invoke-super {p0, p1}, Lcom/viber/voip/util/upload/aa;->a(Lcom/viber/voip/util/http/HttpRequest;)V

    .line 100
    invoke-virtual {p0}, Lcom/viber/voip/util/upload/t;->e()I

    move-result v0

    if-nez v0, :cond_0

    .line 101
    const-string/jumbo v0, "Bucket"

    iget-object v1, p0, Lcom/viber/voip/util/upload/t;->i:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/viber/voip/util/http/HttpRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Bucket="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/util/upload/t;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/util/upload/s;->f(Ljava/lang/String;)V

    .line 104
    :cond_0
    return-void
.end method

.method public b(Landroid/net/Uri;)V
    .locals 1
    .parameter

    .prologue
    .line 108
    iget-object v0, p0, Lcom/viber/voip/util/upload/t;->j:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/viber/voip/util/upload/s;->a(Ljava/lang/String;Landroid/net/Uri;)V

    .line 109
    return-void
.end method
