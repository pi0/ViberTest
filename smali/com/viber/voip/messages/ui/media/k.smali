.class Lcom/viber/voip/messages/ui/media/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/ui/media/GoogleApiMapPreviewActivityV2;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/ui/media/GoogleApiMapPreviewActivityV2;)V
    .locals 0
    .parameter

    .prologue
    .line 101
    iput-object p1, p0, Lcom/viber/voip/messages/ui/media/k;->a:Lcom/viber/voip/messages/ui/media/GoogleApiMapPreviewActivityV2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter

    .prologue
    .line 104
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/k;->a:Lcom/viber/voip/messages/ui/media/GoogleApiMapPreviewActivityV2;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/media/GoogleApiMapPreviewActivityV2;->c(Lcom/viber/voip/messages/ui/media/GoogleApiMapPreviewActivityV2;)Lcom/viber/dexshared/GMaps$Marker;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/k;->a:Lcom/viber/voip/messages/ui/media/GoogleApiMapPreviewActivityV2;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/media/GoogleApiMapPreviewActivityV2;->c(Lcom/viber/voip/messages/ui/media/GoogleApiMapPreviewActivityV2;)Lcom/viber/dexshared/GMaps$Marker;

    move-result-object v0

    invoke-interface {v0}, Lcom/viber/dexshared/GMaps$Marker;->getPosition()Lcom/viber/dexshared/GMaps$LatLng;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/k;->a:Lcom/viber/voip/messages/ui/media/GoogleApiMapPreviewActivityV2;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/media/GoogleApiMapPreviewActivityV2;->c(Lcom/viber/voip/messages/ui/media/GoogleApiMapPreviewActivityV2;)Lcom/viber/dexshared/GMaps$Marker;

    move-result-object v0

    invoke-interface {v0}, Lcom/viber/dexshared/GMaps$Marker;->getPosition()Lcom/viber/dexshared/GMaps$LatLng;

    move-result-object v0

    invoke-interface {v0}, Lcom/viber/dexshared/GMaps$LatLng;->getLatitude()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/k;->a:Lcom/viber/voip/messages/ui/media/GoogleApiMapPreviewActivityV2;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/media/GoogleApiMapPreviewActivityV2;->e(Lcom/viber/voip/messages/ui/media/GoogleApiMapPreviewActivityV2;)Lcom/viber/dexshared/GMaps$Factory;

    move-result-object v0

    invoke-interface {v0}, Lcom/viber/dexshared/GMaps$Factory;->newCameraPositionBuilder()Lcom/viber/dexshared/GMaps$CameraPosition$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/k;->a:Lcom/viber/voip/messages/ui/media/GoogleApiMapPreviewActivityV2;

    invoke-static {v1}, Lcom/viber/voip/messages/ui/media/GoogleApiMapPreviewActivityV2;->e(Lcom/viber/voip/messages/ui/media/GoogleApiMapPreviewActivityV2;)Lcom/viber/dexshared/GMaps$Factory;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/messages/ui/media/k;->a:Lcom/viber/voip/messages/ui/media/GoogleApiMapPreviewActivityV2;

    invoke-static {v2}, Lcom/viber/voip/messages/ui/media/GoogleApiMapPreviewActivityV2;->c(Lcom/viber/voip/messages/ui/media/GoogleApiMapPreviewActivityV2;)Lcom/viber/dexshared/GMaps$Marker;

    move-result-object v2

    invoke-interface {v2}, Lcom/viber/dexshared/GMaps$Marker;->getPosition()Lcom/viber/dexshared/GMaps$LatLng;

    move-result-object v2

    invoke-interface {v2}, Lcom/viber/dexshared/GMaps$LatLng;->getLatitude()D

    move-result-wide v2

    iget-object v4, p0, Lcom/viber/voip/messages/ui/media/k;->a:Lcom/viber/voip/messages/ui/media/GoogleApiMapPreviewActivityV2;

    invoke-static {v4}, Lcom/viber/voip/messages/ui/media/GoogleApiMapPreviewActivityV2;->c(Lcom/viber/voip/messages/ui/media/GoogleApiMapPreviewActivityV2;)Lcom/viber/dexshared/GMaps$Marker;

    move-result-object v4

    invoke-interface {v4}, Lcom/viber/dexshared/GMaps$Marker;->getPosition()Lcom/viber/dexshared/GMaps$LatLng;

    move-result-object v4

    invoke-interface {v4}, Lcom/viber/dexshared/GMaps$LatLng;->getLongitude()D

    move-result-wide v4

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/viber/dexshared/GMaps$Factory;->newLatLng(DD)Lcom/viber/dexshared/GMaps$LatLng;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/viber/dexshared/GMaps$CameraPosition$Builder;->target(Lcom/viber/dexshared/GMaps$LatLng;)Lcom/viber/dexshared/GMaps$CameraPosition$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/k;->a:Lcom/viber/voip/messages/ui/media/GoogleApiMapPreviewActivityV2;

    invoke-static {v1}, Lcom/viber/voip/messages/ui/media/GoogleApiMapPreviewActivityV2;->d(Lcom/viber/voip/messages/ui/media/GoogleApiMapPreviewActivityV2;)Lcom/viber/dexshared/GMaps$GoogleMap;

    move-result-object v1

    invoke-interface {v1}, Lcom/viber/dexshared/GMaps$GoogleMap;->getCameraPosition()Lcom/viber/dexshared/GMaps$CameraPosition;

    move-result-object v1

    invoke-interface {v1}, Lcom/viber/dexshared/GMaps$CameraPosition;->getZoom()F

    move-result v1

    invoke-interface {v0, v1}, Lcom/viber/dexshared/GMaps$CameraPosition$Builder;->zoom(F)Lcom/viber/dexshared/GMaps$CameraPosition$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/k;->a:Lcom/viber/voip/messages/ui/media/GoogleApiMapPreviewActivityV2;

    invoke-static {v1}, Lcom/viber/voip/messages/ui/media/GoogleApiMapPreviewActivityV2;->d(Lcom/viber/voip/messages/ui/media/GoogleApiMapPreviewActivityV2;)Lcom/viber/dexshared/GMaps$GoogleMap;

    move-result-object v1

    invoke-interface {v1}, Lcom/viber/dexshared/GMaps$GoogleMap;->getCameraPosition()Lcom/viber/dexshared/GMaps$CameraPosition;

    move-result-object v1

    invoke-interface {v1}, Lcom/viber/dexshared/GMaps$CameraPosition;->getBearing()F

    move-result v1

    invoke-interface {v0, v1}, Lcom/viber/dexshared/GMaps$CameraPosition$Builder;->bearing(F)Lcom/viber/dexshared/GMaps$CameraPosition$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/k;->a:Lcom/viber/voip/messages/ui/media/GoogleApiMapPreviewActivityV2;

    invoke-static {v1}, Lcom/viber/voip/messages/ui/media/GoogleApiMapPreviewActivityV2;->d(Lcom/viber/voip/messages/ui/media/GoogleApiMapPreviewActivityV2;)Lcom/viber/dexshared/GMaps$GoogleMap;

    move-result-object v1

    invoke-interface {v1}, Lcom/viber/dexshared/GMaps$GoogleMap;->getCameraPosition()Lcom/viber/dexshared/GMaps$CameraPosition;

    move-result-object v1

    invoke-interface {v1}, Lcom/viber/dexshared/GMaps$CameraPosition;->getTilt()F

    move-result v1

    invoke-interface {v0, v1}, Lcom/viber/dexshared/GMaps$CameraPosition$Builder;->tilt(F)Lcom/viber/dexshared/GMaps$CameraPosition$Builder;

    move-result-object v0

    invoke-interface {v0}, Lcom/viber/dexshared/GMaps$CameraPosition$Builder;->build()Lcom/viber/dexshared/GMaps$CameraPosition;

    move-result-object v0

    .line 111
    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/k;->a:Lcom/viber/voip/messages/ui/media/GoogleApiMapPreviewActivityV2;

    invoke-static {v1}, Lcom/viber/voip/messages/ui/media/GoogleApiMapPreviewActivityV2;->d(Lcom/viber/voip/messages/ui/media/GoogleApiMapPreviewActivityV2;)Lcom/viber/dexshared/GMaps$GoogleMap;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/messages/ui/media/k;->a:Lcom/viber/voip/messages/ui/media/GoogleApiMapPreviewActivityV2;

    invoke-static {v2}, Lcom/viber/voip/messages/ui/media/GoogleApiMapPreviewActivityV2;->e(Lcom/viber/voip/messages/ui/media/GoogleApiMapPreviewActivityV2;)Lcom/viber/dexshared/GMaps$Factory;

    move-result-object v2

    invoke-interface {v2}, Lcom/viber/dexshared/GMaps$Factory;->getCameraUpdateFactory()Lcom/viber/dexshared/GMaps$CameraUpdateFactory;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/viber/dexshared/GMaps$CameraUpdateFactory;->newCameraPosition(Lcom/viber/dexshared/GMaps$CameraPosition;)Lcom/viber/dexshared/GMaps$CameraUpdate;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/viber/dexshared/GMaps$GoogleMap;->animateCamera(Lcom/viber/dexshared/GMaps$CameraUpdate;)V

    .line 113
    :cond_0
    return-void
.end method
