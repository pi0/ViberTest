.class Lcom/viber/voip/messages/ui/media/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/location/Location;

.field final synthetic b:Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;Landroid/location/Location;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 287
    iput-object p1, p0, Lcom/viber/voip/messages/ui/media/y;->b:Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;

    iput-object p2, p0, Lcom/viber/voip/messages/ui/media/y;->a:Landroid/location/Location;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 290
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/y;->b:Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;->b(Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;Z)V

    .line 292
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/y;->b:Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;->j(Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;)Lcom/viber/dexshared/GMaps$Factory;

    move-result-object v0

    invoke-interface {v0}, Lcom/viber/dexshared/GMaps$Factory;->newCameraPositionBuilder()Lcom/viber/dexshared/GMaps$CameraPosition$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/y;->b:Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;

    invoke-static {v1}, Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;->j(Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;)Lcom/viber/dexshared/GMaps$Factory;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/messages/ui/media/y;->a:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    iget-object v4, p0, Lcom/viber/voip/messages/ui/media/y;->a:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/viber/dexshared/GMaps$Factory;->newLatLng(DD)Lcom/viber/dexshared/GMaps$LatLng;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/viber/dexshared/GMaps$CameraPosition$Builder;->target(Lcom/viber/dexshared/GMaps$LatLng;)Lcom/viber/dexshared/GMaps$CameraPosition$Builder;

    move-result-object v1

    const-string/jumbo v0, "passive"

    iget-object v2, p0, Lcom/viber/voip/messages/ui/media/y;->a:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x40c0

    :goto_0
    invoke-interface {v1, v0}, Lcom/viber/dexshared/GMaps$CameraPosition$Builder;->zoom(F)Lcom/viber/dexshared/GMaps$CameraPosition$Builder;

    move-result-object v0

    invoke-interface {v0, v6}, Lcom/viber/dexshared/GMaps$CameraPosition$Builder;->bearing(F)Lcom/viber/dexshared/GMaps$CameraPosition$Builder;

    move-result-object v0

    invoke-interface {v0, v6}, Lcom/viber/dexshared/GMaps$CameraPosition$Builder;->tilt(F)Lcom/viber/dexshared/GMaps$CameraPosition$Builder;

    move-result-object v0

    invoke-interface {v0}, Lcom/viber/dexshared/GMaps$CameraPosition$Builder;->build()Lcom/viber/dexshared/GMaps$CameraPosition;

    move-result-object v0

    .line 299
    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/y;->b:Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;

    iget-object v2, p0, Lcom/viber/voip/messages/ui/media/y;->a:Landroid/location/Location;

    invoke-static {v1, v2}, Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;->a(Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;Landroid/location/Location;)V

    .line 302
    if-eqz v0, :cond_1

    .line 303
    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/y;->b:Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;

    iget-object v2, p0, Lcom/viber/voip/messages/ui/media/y;->a:Landroid/location/Location;

    invoke-static {v1, v2}, Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;->b(Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;Landroid/location/Location;)V

    .line 304
    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/y;->b:Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;

    invoke-static {v1}, Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;->i(Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;)Lcom/viber/dexshared/GMaps$GoogleMap;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/messages/ui/media/y;->b:Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;

    invoke-static {v2}, Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;->j(Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;)Lcom/viber/dexshared/GMaps$Factory;

    move-result-object v2

    invoke-interface {v2}, Lcom/viber/dexshared/GMaps$Factory;->getCameraUpdateFactory()Lcom/viber/dexshared/GMaps$CameraUpdateFactory;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/viber/dexshared/GMaps$CameraUpdateFactory;->newCameraPosition(Lcom/viber/dexshared/GMaps$CameraPosition;)Lcom/viber/dexshared/GMaps$CameraUpdate;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/viber/dexshared/GMaps$GoogleMap;->animateCamera(Lcom/viber/dexshared/GMaps$CameraUpdate;)V

    .line 310
    :goto_1
    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/y;->b:Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;

    invoke-interface {v0}, Lcom/viber/dexshared/GMaps$CameraPosition;->getTarget()Lcom/viber/dexshared/GMaps$LatLng;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;->a(Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;Lcom/viber/dexshared/GMaps$LatLng;)V

    .line 313
    return-void

    .line 292
    :cond_0
    const/high16 v0, 0x4180

    goto :goto_0

    .line 307
    :cond_1
    const-string/jumbo v1, "ACRA"

    const-string/jumbo v2, "Error getting location position!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
