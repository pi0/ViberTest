.class Lcom/viber/voip/messages/extras/a/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/messages/extras/map/j;


# instance fields
.field final synthetic a:Lcom/viber/voip/registration/CountryCode;

.field final synthetic b:Lcom/viber/voip/messages/extras/a/t;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/extras/a/t;Lcom/viber/voip/registration/CountryCode;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 312
    iput-object p1, p0, Lcom/viber/voip/messages/extras/a/u;->b:Lcom/viber/voip/messages/extras/a/t;

    iput-object p2, p0, Lcom/viber/voip/messages/extras/a/u;->a:Lcom/viber/voip/registration/CountryCode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a([Lcom/viber/voip/messages/extras/map/k;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 315
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onPlacesReady places:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/messages/extras/a/e;->a(Ljava/lang/String;)V

    .line 316
    const/4 v0, 0x0

    .line 317
    array-length v1, p1

    if-lez v1, :cond_0

    aget-object v1, p1, v3

    if-eqz v1, :cond_0

    .line 318
    new-instance v0, Landroid/location/Location;

    const-string/jumbo v1, "passive"

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 319
    aget-object v1, p1, v3

    invoke-virtual {v1}, Lcom/viber/voip/messages/extras/map/k;->b()Lcom/viber/voip/messages/extras/map/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/messages/extras/map/b;->b()I

    move-result v1

    invoke-static {v1}, Lcom/viber/voip/messages/extras/map/d;->a(I)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setLongitude(D)V

    .line 320
    aget-object v1, p1, v3

    invoke-virtual {v1}, Lcom/viber/voip/messages/extras/map/k;->b()Lcom/viber/voip/messages/extras/map/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/messages/extras/map/b;->a()I

    move-result v1

    invoke-static {v1}, Lcom/viber/voip/messages/extras/map/d;->a(I)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setLatitude(D)V

    .line 321
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setTime(J)V

    .line 322
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 323
    iget-object v2, p0, Lcom/viber/voip/messages/extras/a/u;->a:Lcom/viber/voip/registration/CountryCode;

    invoke-virtual {v2}, Lcom/viber/voip/registration/CountryCode;->c()Ljava/lang/String;

    move-result-object v2

    .line 324
    const-string/jumbo v3, "countryName"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    invoke-virtual {v0, v1}, Landroid/location/Location;->setExtras(Landroid/os/Bundle;)V

    .line 327
    :cond_0
    iget-object v1, p0, Lcom/viber/voip/messages/extras/a/u;->b:Lcom/viber/voip/messages/extras/a/t;

    iget-object v1, v1, Lcom/viber/voip/messages/extras/a/t;->b:Lcom/viber/voip/messages/extras/a/e;

    invoke-virtual {v1}, Lcom/viber/voip/messages/extras/a/e;->c()Landroid/location/Location;

    move-result-object v1

    if-nez v1, :cond_1

    .line 328
    iget-object v1, p0, Lcom/viber/voip/messages/extras/a/u;->b:Lcom/viber/voip/messages/extras/a/t;

    iget-object v1, v1, Lcom/viber/voip/messages/extras/a/t;->b:Lcom/viber/voip/messages/extras/a/e;

    invoke-static {v1, v0}, Lcom/viber/voip/messages/extras/a/e;->b(Lcom/viber/voip/messages/extras/a/e;Landroid/location/Location;)V

    .line 330
    :cond_1
    iget-object v1, p0, Lcom/viber/voip/messages/extras/a/u;->b:Lcom/viber/voip/messages/extras/a/t;

    iget-object v1, v1, Lcom/viber/voip/messages/extras/a/t;->a:Lcom/viber/voip/messages/extras/a/b;

    if-eqz v1, :cond_2

    .line 331
    iget-object v1, p0, Lcom/viber/voip/messages/extras/a/u;->b:Lcom/viber/voip/messages/extras/a/t;

    iget-object v1, v1, Lcom/viber/voip/messages/extras/a/t;->a:Lcom/viber/voip/messages/extras/a/b;

    invoke-interface {v1, v0}, Lcom/viber/voip/messages/extras/a/b;->a(Landroid/location/Location;)V

    .line 334
    :cond_2
    return-void
.end method
