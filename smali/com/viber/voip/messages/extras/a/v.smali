.class Lcom/viber/voip/messages/extras/a/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/messages/extras/a/c;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Landroid/location/Location;

.field final synthetic c:Lcom/viber/voip/messages/extras/a/b;

.field final synthetic d:Lcom/viber/voip/messages/extras/a/e;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/extras/a/e;ZLandroid/location/Location;Lcom/viber/voip/messages/extras/a/b;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 364
    iput-object p1, p0, Lcom/viber/voip/messages/extras/a/v;->d:Lcom/viber/voip/messages/extras/a/e;

    iput-boolean p2, p0, Lcom/viber/voip/messages/extras/a/v;->a:Z

    iput-object p3, p0, Lcom/viber/voip/messages/extras/a/v;->b:Landroid/location/Location;

    iput-object p4, p0, Lcom/viber/voip/messages/extras/a/v;->c:Lcom/viber/voip/messages/extras/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/location/Address;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 367
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setCachedPublicLocation reversed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",addressString:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/messages/extras/a/e;->a(Ljava/lang/String;)V

    .line 368
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 369
    iget-boolean v0, p0, Lcom/viber/voip/messages/extras/a/v;->a:Z

    if-eqz v0, :cond_2

    .line 370
    iget-object v0, p0, Lcom/viber/voip/messages/extras/a/v;->d:Lcom/viber/voip/messages/extras/a/e;

    new-instance v1, Landroid/location/Location;

    iget-object v2, p0, Lcom/viber/voip/messages/extras/a/v;->b:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/viber/voip/messages/extras/a/e;->c(Lcom/viber/voip/messages/extras/a/e;Landroid/location/Location;)Landroid/location/Location;

    .line 371
    iget-object v0, p0, Lcom/viber/voip/messages/extras/a/v;->d:Lcom/viber/voip/messages/extras/a/e;

    invoke-static {v0}, Lcom/viber/voip/messages/extras/a/e;->c(Lcom/viber/voip/messages/extras/a/e;)Landroid/location/Location;

    move-result-object v0

    invoke-virtual {p1}, Landroid/location/Address;->getLatitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setLatitude(D)V

    .line 372
    iget-object v0, p0, Lcom/viber/voip/messages/extras/a/v;->d:Lcom/viber/voip/messages/extras/a/e;

    invoke-static {v0}, Lcom/viber/voip/messages/extras/a/e;->c(Lcom/viber/voip/messages/extras/a/e;)Landroid/location/Location;

    move-result-object v0

    invoke-virtual {p1}, Landroid/location/Address;->getLongitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setLongitude(D)V

    .line 379
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/viber/voip/messages/extras/a/v;->c:Lcom/viber/voip/messages/extras/a/b;

    if-eqz v0, :cond_1

    .line 380
    iget-object v1, p0, Lcom/viber/voip/messages/extras/a/v;->c:Lcom/viber/voip/messages/extras/a/b;

    iget-boolean v0, p0, Lcom/viber/voip/messages/extras/a/v;->a:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/viber/voip/messages/extras/a/v;->d:Lcom/viber/voip/messages/extras/a/e;

    invoke-static {v0}, Lcom/viber/voip/messages/extras/a/e;->c(Lcom/viber/voip/messages/extras/a/e;)Landroid/location/Location;

    move-result-object v0

    :goto_1
    invoke-interface {v1, v0}, Lcom/viber/voip/messages/extras/a/b;->a(Landroid/location/Location;)V

    .line 382
    :cond_1
    return-void

    .line 374
    :cond_2
    iget-object v0, p0, Lcom/viber/voip/messages/extras/a/v;->d:Lcom/viber/voip/messages/extras/a/e;

    new-instance v1, Landroid/location/Location;

    iget-object v2, p0, Lcom/viber/voip/messages/extras/a/v;->b:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/viber/voip/messages/extras/a/e;->d(Lcom/viber/voip/messages/extras/a/e;Landroid/location/Location;)Landroid/location/Location;

    .line 375
    iget-object v0, p0, Lcom/viber/voip/messages/extras/a/v;->d:Lcom/viber/voip/messages/extras/a/e;

    invoke-static {v0}, Lcom/viber/voip/messages/extras/a/e;->d(Lcom/viber/voip/messages/extras/a/e;)Landroid/location/Location;

    move-result-object v0

    invoke-virtual {p1}, Landroid/location/Address;->getLatitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setLatitude(D)V

    .line 376
    iget-object v0, p0, Lcom/viber/voip/messages/extras/a/v;->d:Lcom/viber/voip/messages/extras/a/e;

    invoke-static {v0}, Lcom/viber/voip/messages/extras/a/e;->d(Lcom/viber/voip/messages/extras/a/e;)Landroid/location/Location;

    move-result-object v0

    invoke-virtual {p1}, Landroid/location/Address;->getLongitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setLongitude(D)V

    goto :goto_0

    .line 380
    :cond_3
    iget-object v0, p0, Lcom/viber/voip/messages/extras/a/v;->d:Lcom/viber/voip/messages/extras/a/e;

    invoke-static {v0}, Lcom/viber/voip/messages/extras/a/e;->d(Lcom/viber/voip/messages/extras/a/e;)Landroid/location/Location;

    move-result-object v0

    goto :goto_1
.end method
