.class Lcom/viber/voip/messages/extras/a/ae;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/extras/a/ad;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/extras/a/ad;)V
    .locals 0
    .parameter

    .prologue
    .line 452
    iput-object p1, p0, Lcom/viber/voip/messages/extras/a/ae;->a:Lcom/viber/voip/messages/extras/a/ad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 455
    const-string/jumbo v0, "getLocation.onTimeOut.remove updates."

    invoke-static {v0}, Lcom/viber/voip/messages/extras/a/e;->a(Ljava/lang/String;)V

    .line 456
    iget-object v0, p0, Lcom/viber/voip/messages/extras/a/ae;->a:Lcom/viber/voip/messages/extras/a/ad;

    iget-object v0, v0, Lcom/viber/voip/messages/extras/a/ad;->a:Lcom/viber/voip/messages/extras/a/e;

    invoke-static {v0}, Lcom/viber/voip/messages/extras/a/e;->e(Lcom/viber/voip/messages/extras/a/e;)Landroid/location/LocationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/extras/a/ae;->a:Lcom/viber/voip/messages/extras/a/ad;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 458
    iget-object v0, p0, Lcom/viber/voip/messages/extras/a/ae;->a:Lcom/viber/voip/messages/extras/a/ad;

    iget-object v0, v0, Lcom/viber/voip/messages/extras/a/ad;->a:Lcom/viber/voip/messages/extras/a/e;

    invoke-static {v0}, Lcom/viber/voip/messages/extras/a/e;->e(Lcom/viber/voip/messages/extras/a/e;)Landroid/location/LocationManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v0

    .line 459
    if-eqz v0, :cond_1

    .line 460
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 461
    iget-object v2, p0, Lcom/viber/voip/messages/extras/a/ae;->a:Lcom/viber/voip/messages/extras/a/ad;

    iget-object v2, v2, Lcom/viber/voip/messages/extras/a/ad;->a:Lcom/viber/voip/messages/extras/a/e;

    invoke-static {v2}, Lcom/viber/voip/messages/extras/a/e;->e(Lcom/viber/voip/messages/extras/a/e;)Landroid/location/LocationManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    .line 462
    if-eqz v0, :cond_0

    .line 463
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "use lastKnown location "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/viber/voip/messages/extras/a/e;->a(Ljava/lang/String;)V

    .line 464
    iget-object v1, p0, Lcom/viber/voip/messages/extras/a/ae;->a:Lcom/viber/voip/messages/extras/a/ad;

    iget-object v1, v1, Lcom/viber/voip/messages/extras/a/ad;->a:Lcom/viber/voip/messages/extras/a/e;

    invoke-static {v1, v0}, Lcom/viber/voip/messages/extras/a/e;->b(Lcom/viber/voip/messages/extras/a/e;Landroid/location/Location;)V

    .line 469
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/messages/extras/a/ae;->a:Lcom/viber/voip/messages/extras/a/ad;

    iget-object v0, v0, Lcom/viber/voip/messages/extras/a/ad;->a:Lcom/viber/voip/messages/extras/a/e;

    invoke-virtual {v0}, Lcom/viber/voip/messages/extras/a/e;->c()Landroid/location/Location;

    move-result-object v0

    if-nez v0, :cond_3

    .line 470
    iget-object v0, p0, Lcom/viber/voip/messages/extras/a/ae;->a:Lcom/viber/voip/messages/extras/a/ad;

    invoke-virtual {v0}, Lcom/viber/voip/messages/extras/a/ad;->a()V

    .line 477
    :cond_2
    :goto_0
    return-void

    .line 472
    :cond_3
    iget-object v0, p0, Lcom/viber/voip/messages/extras/a/ae;->a:Lcom/viber/voip/messages/extras/a/ad;

    invoke-static {v0}, Lcom/viber/voip/messages/extras/a/ad;->a(Lcom/viber/voip/messages/extras/a/ad;)Lcom/viber/voip/messages/extras/a/b;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 473
    const-string/jumbo v0, "getLocation. can\'t retrieve user location. return last known"

    invoke-static {v0}, Lcom/viber/voip/messages/extras/a/e;->a(Ljava/lang/String;)V

    .line 474
    iget-object v0, p0, Lcom/viber/voip/messages/extras/a/ae;->a:Lcom/viber/voip/messages/extras/a/ad;

    invoke-static {v0}, Lcom/viber/voip/messages/extras/a/ad;->a(Lcom/viber/voip/messages/extras/a/ad;)Lcom/viber/voip/messages/extras/a/b;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/extras/a/ae;->a:Lcom/viber/voip/messages/extras/a/ad;

    iget-object v1, v1, Lcom/viber/voip/messages/extras/a/ad;->a:Lcom/viber/voip/messages/extras/a/e;

    invoke-virtual {v1}, Lcom/viber/voip/messages/extras/a/e;->c()Landroid/location/Location;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/viber/voip/messages/extras/a/b;->a(Landroid/location/Location;)V

    goto :goto_0
.end method
