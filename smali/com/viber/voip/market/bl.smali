.class Lcom/viber/voip/market/bl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/process/i;


# instance fields
.field final synthetic a:Lcom/viber/voip/market/bk;


# direct methods
.method constructor <init>(Lcom/viber/voip/market/bk;)V
    .locals 0
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, Lcom/viber/voip/market/bl;->a:Lcom/viber/voip/market/bk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private d(Lcom/viber/voip/process/j;)Lcom/viber/voip/billing/bt;
    .locals 1
    .parameter

    .prologue
    .line 79
    iget v0, p1, Lcom/viber/voip/process/j;->a:I

    invoke-static {v0}, Lcom/viber/voip/billing/bt;->a(I)Lcom/viber/voip/billing/bt;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Lcom/viber/voip/process/j;)V
    .locals 3
    .parameter

    .prologue
    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onStickerPackageDownloadStarted: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/viber/voip/process/j;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/market/bk;->a(Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcom/viber/voip/market/bl;->a:Lcom/viber/voip/market/bk;

    invoke-static {v0}, Lcom/viber/voip/market/bk;->a(Lcom/viber/voip/market/bk;)Lcom/viber/voip/market/bm;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/viber/voip/market/bl;->d(Lcom/viber/voip/process/j;)Lcom/viber/voip/billing/bt;

    move-result-object v1

    sget-object v2, Lcom/viber/voip/market/v;->d:Lcom/viber/voip/market/v;

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/market/bm;->a(Lcom/viber/voip/billing/bt;Lcom/viber/voip/market/v;)V

    .line 66
    return-void
.end method

.method public a(Lcom/viber/voip/process/j;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 76
    return-void
.end method

.method public a(ZLcom/viber/voip/process/j;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onDownloadError: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p2, Lcom/viber/voip/process/j;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/market/bk;->a(Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/viber/voip/market/bl;->a:Lcom/viber/voip/market/bk;

    invoke-static {v0}, Lcom/viber/voip/market/bk;->a(Lcom/viber/voip/market/bk;)Lcom/viber/voip/market/bm;

    move-result-object v1

    invoke-direct {p0, p2}, Lcom/viber/voip/market/bl;->d(Lcom/viber/voip/process/j;)Lcom/viber/voip/billing/bt;

    move-result-object v2

    if-eqz p1, :cond_0

    sget-object v0, Lcom/viber/voip/market/v;->b:Lcom/viber/voip/market/v;

    :goto_0
    invoke-interface {v1, v2, v0}, Lcom/viber/voip/market/bm;->a(Lcom/viber/voip/billing/bt;Lcom/viber/voip/market/v;)V

    .line 72
    return-void

    .line 71
    :cond_0
    sget-object v0, Lcom/viber/voip/market/v;->c:Lcom/viber/voip/market/v;

    goto :goto_0
.end method

.method public b(Lcom/viber/voip/process/j;)V
    .locals 3
    .parameter

    .prologue
    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onStickerPackageDeployed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/viber/voip/process/j;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/market/bk;->a(Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lcom/viber/voip/market/bl;->a:Lcom/viber/voip/market/bk;

    invoke-static {v0}, Lcom/viber/voip/market/bk;->a(Lcom/viber/voip/market/bk;)Lcom/viber/voip/market/bm;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/viber/voip/market/bl;->d(Lcom/viber/voip/process/j;)Lcom/viber/voip/billing/bt;

    move-result-object v1

    sget-object v2, Lcom/viber/voip/market/v;->e:Lcom/viber/voip/market/v;

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/market/bm;->a(Lcom/viber/voip/billing/bt;Lcom/viber/voip/market/v;)V

    .line 54
    return-void
.end method

.method public c(Lcom/viber/voip/process/j;)V
    .locals 3
    .parameter

    .prologue
    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onStickerPackageDownloadScheduled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/viber/voip/process/j;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/market/bk;->a(Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/viber/voip/market/bl;->a:Lcom/viber/voip/market/bk;

    invoke-static {v0}, Lcom/viber/voip/market/bk;->a(Lcom/viber/voip/market/bk;)Lcom/viber/voip/market/bm;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/viber/voip/market/bl;->d(Lcom/viber/voip/process/j;)Lcom/viber/voip/billing/bt;

    move-result-object v1

    sget-object v2, Lcom/viber/voip/market/v;->c:Lcom/viber/voip/market/v;

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/market/bm;->a(Lcom/viber/voip/billing/bt;Lcom/viber/voip/market/v;)V

    .line 60
    return-void
.end method
