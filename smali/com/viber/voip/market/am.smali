.class Lcom/viber/voip/market/am;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/viber/voip/market/ak;


# direct methods
.method private constructor <init>(Lcom/viber/voip/market/ak;)V
    .locals 0
    .parameter

    .prologue
    .line 160
    iput-object p1, p0, Lcom/viber/voip/market/am;->a:Lcom/viber/voip/market/ak;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/viber/voip/market/ak;Lcom/viber/voip/market/al;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 160
    invoke-direct {p0, p1}, Lcom/viber/voip/market/am;-><init>(Lcom/viber/voip/market/ak;)V

    return-void
.end method


# virtual methods
.method public downloadProduct(Ljava/lang/String;)V
    .locals 1
    .parameter
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 180
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/viber/voip/market/am;->downloadProduct(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    return-void
.end method

.method public downloadProduct(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 185
    iget-object v0, p0, Lcom/viber/voip/market/am;->a:Lcom/viber/voip/market/ak;

    new-instance v1, Lcom/viber/voip/market/av;

    invoke-direct {v1, p0, p1, p2}, Lcom/viber/voip/market/av;-><init>(Lcom/viber/voip/market/am;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/viber/voip/market/ak;->a(Lcom/viber/voip/market/ak;Ljava/lang/Runnable;)V

    .line 193
    return-void
.end method

.method public followPublicGroup(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 353
    iget-object v0, p0, Lcom/viber/voip/market/am;->a:Lcom/viber/voip/market/ak;

    new-instance v1, Lcom/viber/voip/market/ap;

    invoke-direct {v1, p0, p1, p2}, Lcom/viber/voip/market/ap;-><init>(Lcom/viber/voip/market/am;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/viber/voip/market/ak;->a(Lcom/viber/voip/market/ak;Ljava/lang/Runnable;)V

    .line 378
    return-void
.end method

.method public getClientInfo()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 298
    iget-object v0, p0, Lcom/viber/voip/market/am;->a:Lcom/viber/voip/market/ak;

    new-instance v1, Lcom/viber/voip/market/bb;

    invoke-direct {v1, p0}, Lcom/viber/voip/market/bb;-><init>(Lcom/viber/voip/market/am;)V

    invoke-static {v0, v1}, Lcom/viber/voip/market/ak;->a(Lcom/viber/voip/market/ak;Ljava/lang/Runnable;)V

    .line 310
    return-void
.end method

.method public getProductStatus(Ljava/lang/String;)V
    .locals 2
    .parameter
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 163
    iget-object v0, p0, Lcom/viber/voip/market/am;->a:Lcom/viber/voip/market/ak;

    new-instance v1, Lcom/viber/voip/market/an;

    invoke-direct {v1, p0, p1}, Lcom/viber/voip/market/an;-><init>(Lcom/viber/voip/market/am;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/viber/voip/market/ak;->a(Lcom/viber/voip/market/ak;Ljava/lang/Runnable;)V

    .line 176
    return-void
.end method

.method public getProductsInfo(Ljava/lang/String;)V
    .locals 2
    .parameter
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 233
    iget-object v0, p0, Lcom/viber/voip/market/am;->a:Lcom/viber/voip/market/ak;

    new-instance v1, Lcom/viber/voip/market/ax;

    invoke-direct {v1, p0, p1}, Lcom/viber/voip/market/ax;-><init>(Lcom/viber/voip/market/am;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/viber/voip/market/ak;->a(Lcom/viber/voip/market/ak;Ljava/lang/Runnable;)V

    .line 272
    return-void
.end method

.method public getUserPublicGroups()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 321
    iget-object v0, p0, Lcom/viber/voip/market/am;->a:Lcom/viber/voip/market/ak;

    new-instance v1, Lcom/viber/voip/market/bd;

    invoke-direct {v1, p0}, Lcom/viber/voip/market/bd;-><init>(Lcom/viber/voip/market/am;)V

    invoke-static {v0, v1}, Lcom/viber/voip/market/ak;->a(Lcom/viber/voip/market/ak;Ljava/lang/Runnable;)V

    .line 333
    return-void
.end method

.method public log(Ljava/lang/String;)V
    .locals 2
    .parameter
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 410
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "WEBLOG: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/market/ak;->a(Ljava/lang/String;)V

    .line 411
    return-void
.end method

.method public openBrowser(Ljava/lang/String;)V
    .locals 3
    .parameter
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 314
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "openGrowser "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/market/am;->log(Ljava/lang/String;)V

    .line 315
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 316
    iget-object v1, p0, Lcom/viber/voip/market/am;->a:Lcom/viber/voip/market/ak;

    invoke-static {v1}, Lcom/viber/voip/market/ak;->c(Lcom/viber/voip/market/ak;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 317
    return-void
.end method

.method public purchaseProduct(Ljava/lang/String;)V
    .locals 1
    .parameter
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 197
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/viber/voip/market/am;->purchaseProduct(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    return-void
.end method

.method public purchaseProduct(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 203
    iget-object v0, p0, Lcom/viber/voip/market/am;->a:Lcom/viber/voip/market/ak;

    new-instance v1, Lcom/viber/voip/market/aw;

    invoke-direct {v1, p0, p1, p2}, Lcom/viber/voip/market/aw;-><init>(Lcom/viber/voip/market/am;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/viber/voip/market/ak;->a(Lcom/viber/voip/market/ak;Ljava/lang/Runnable;)V

    .line 229
    return-void
.end method

.method public setBarTitle(Ljava/lang/String;)V
    .locals 2
    .parameter
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 276
    iget-object v0, p0, Lcom/viber/voip/market/am;->a:Lcom/viber/voip/market/ak;

    new-instance v1, Lcom/viber/voip/market/az;

    invoke-direct {v1, p0, p1}, Lcom/viber/voip/market/az;-><init>(Lcom/viber/voip/market/am;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/viber/voip/market/ak;->a(Lcom/viber/voip/market/ak;Ljava/lang/Runnable;)V

    .line 283
    return-void
.end method

.method public setLoadingPageStatus(I)V
    .locals 2
    .parameter
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 287
    iget-object v0, p0, Lcom/viber/voip/market/am;->a:Lcom/viber/voip/market/ak;

    new-instance v1, Lcom/viber/voip/market/ba;

    invoke-direct {v1, p0, p1}, Lcom/viber/voip/market/ba;-><init>(Lcom/viber/voip/market/am;I)V

    invoke-static {v0, v1}, Lcom/viber/voip/market/ak;->a(Lcom/viber/voip/market/ak;Ljava/lang/Runnable;)V

    .line 294
    return-void
.end method

.method public unfollowPublicGroup(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 382
    iget-object v0, p0, Lcom/viber/voip/market/am;->a:Lcom/viber/voip/market/ak;

    new-instance v1, Lcom/viber/voip/market/as;

    invoke-direct {v1, p0, p1, p2}, Lcom/viber/voip/market/as;-><init>(Lcom/viber/voip/market/am;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/viber/voip/market/ak;->a(Lcom/viber/voip/market/ak;Ljava/lang/Runnable;)V

    .line 406
    return-void
.end method

.method public viewPublicGroup(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 337
    iget-object v0, p0, Lcom/viber/voip/market/am;->a:Lcom/viber/voip/market/ak;

    new-instance v1, Lcom/viber/voip/market/bf;

    invoke-direct {v1, p0, p1, p2}, Lcom/viber/voip/market/bf;-><init>(Lcom/viber/voip/market/am;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/viber/voip/market/ak;->a(Lcom/viber/voip/market/ak;Ljava/lang/Runnable;)V

    .line 349
    return-void
.end method
