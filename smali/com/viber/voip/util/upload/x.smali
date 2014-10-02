.class final Lcom/viber/voip/util/upload/x;
.super Lcom/viber/voip/util/upload/aa;
.source "SourceFile"


# instance fields
.field final synthetic i:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 224
    iput-boolean p6, p0, Lcom/viber/voip/util/upload/x;->i:Z

    invoke-direct/range {p0 .. p5}, Lcom/viber/voip/util/upload/aa;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/viber/voip/util/http/HttpRequest;)V
    .locals 2
    .parameter

    .prologue
    .line 228
    invoke-super {p0, p1}, Lcom/viber/voip/util/upload/aa;->a(Lcom/viber/voip/util/http/HttpRequest;)V

    .line 229
    invoke-virtual {p0}, Lcom/viber/voip/util/upload/x;->e()I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/viber/voip/util/upload/x;->i:Z

    if-eqz v0, :cond_0

    .line 230
    const-string/jumbo v0, "Imagesize"

    const-string/jumbo v1, "720"

    invoke-interface {p1, v0, v1}, Lcom/viber/voip/util/http/HttpRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    const-string/jumbo v0, "Imagesize=720"

    invoke-static {v0}, Lcom/viber/voip/util/upload/s;->f(Ljava/lang/String;)V

    .line 233
    :cond_0
    return-void
.end method
