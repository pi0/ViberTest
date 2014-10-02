.class Lcom/viber/voip/messages/extras/a/ad;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/location/LocationListener;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/extras/a/e;

.field private b:Lcom/viber/voip/messages/extras/a/b;

.field private final c:Ljava/lang/Runnable;


# direct methods
.method private constructor <init>(Lcom/viber/voip/messages/extras/a/e;Lcom/viber/voip/messages/extras/a/b;I)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 484
    iput-object p1, p0, Lcom/viber/voip/messages/extras/a/ad;->a:Lcom/viber/voip/messages/extras/a/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 452
    new-instance v0, Lcom/viber/voip/messages/extras/a/ae;

    invoke-direct {v0, p0}, Lcom/viber/voip/messages/extras/a/ae;-><init>(Lcom/viber/voip/messages/extras/a/ad;)V

    iput-object v0, p0, Lcom/viber/voip/messages/extras/a/ad;->c:Ljava/lang/Runnable;

    .line 485
    iput-object p2, p0, Lcom/viber/voip/messages/extras/a/ad;->b:Lcom/viber/voip/messages/extras/a/b;

    .line 486
    invoke-static {p1}, Lcom/viber/voip/messages/extras/a/e;->f(Lcom/viber/voip/messages/extras/a/e;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/extras/a/ad;->c:Ljava/lang/Runnable;

    int-to-long v2, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 487
    return-void
.end method

.method synthetic constructor <init>(Lcom/viber/voip/messages/extras/a/e;Lcom/viber/voip/messages/extras/a/b;ILcom/viber/voip/messages/extras/a/f;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 446
    invoke-direct {p0, p1, p2, p3}, Lcom/viber/voip/messages/extras/a/ad;-><init>(Lcom/viber/voip/messages/extras/a/e;Lcom/viber/voip/messages/extras/a/b;I)V

    return-void
.end method

.method static synthetic a(Lcom/viber/voip/messages/extras/a/ad;)Lcom/viber/voip/messages/extras/a/b;
    .locals 1
    .parameter

    .prologue
    .line 446
    iget-object v0, p0, Lcom/viber/voip/messages/extras/a/ad;->b:Lcom/viber/voip/messages/extras/a/b;

    return-object v0
.end method


# virtual methods
.method protected a()V
    .locals 0

    .prologue
    .line 450
    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 1
    .parameter

    .prologue
    .line 492
    iget-object v0, p0, Lcom/viber/voip/messages/extras/a/ad;->a:Lcom/viber/voip/messages/extras/a/e;

    invoke-static {v0}, Lcom/viber/voip/messages/extras/a/e;->e(Lcom/viber/voip/messages/extras/a/e;)Landroid/location/LocationManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 493
    iget-object v0, p0, Lcom/viber/voip/messages/extras/a/ad;->b:Lcom/viber/voip/messages/extras/a/b;

    if-eqz v0, :cond_0

    .line 494
    iget-object v0, p0, Lcom/viber/voip/messages/extras/a/ad;->b:Lcom/viber/voip/messages/extras/a/b;

    invoke-interface {v0, p1}, Lcom/viber/voip/messages/extras/a/b;->a(Landroid/location/Location;)V

    .line 495
    :cond_0
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 499
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ViberLocationManager LocationListener onProviderDisabled provider:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/ViberApplication;->log(Ljava/lang/String;)V

    .line 500
    iget-object v0, p0, Lcom/viber/voip/messages/extras/a/ad;->a:Lcom/viber/voip/messages/extras/a/e;

    invoke-static {v0}, Lcom/viber/voip/messages/extras/a/e;->f(Lcom/viber/voip/messages/extras/a/e;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/extras/a/ad;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 501
    iget-object v0, p0, Lcom/viber/voip/messages/extras/a/ad;->a:Lcom/viber/voip/messages/extras/a/e;

    invoke-static {v0}, Lcom/viber/voip/messages/extras/a/e;->e(Lcom/viber/voip/messages/extras/a/e;)Landroid/location/LocationManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 502
    iget-object v0, p0, Lcom/viber/voip/messages/extras/a/ad;->b:Lcom/viber/voip/messages/extras/a/b;

    if-eqz v0, :cond_0

    .line 503
    iget-object v0, p0, Lcom/viber/voip/messages/extras/a/ad;->b:Lcom/viber/voip/messages/extras/a/b;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/viber/voip/messages/extras/a/b;->a(Landroid/location/Location;)V

    .line 504
    :cond_0
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 508
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ViberLocationManager LocationListener onProviderEnabled provider:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/ViberApplication;->log(Ljava/lang/String;)V

    .line 509
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 513
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ViberLocationManager LocationListener onStatusChanged provider:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",status:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",extras:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/ViberApplication;->log(Ljava/lang/String;)V

    .line 514
    return-void
.end method
