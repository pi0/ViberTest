.class Lcom/viber/voip/messages/ui/media/x;
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
    .line 220
    iput-object p1, p0, Lcom/viber/voip/messages/ui/media/x;->b:Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;

    iput-object p2, p0, Lcom/viber/voip/messages/ui/media/x;->a:Landroid/location/Location;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 224
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/x;->b:Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;->g(Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;)Lcom/viber/dexshared/GMaps$Marker;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/x;->b:Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;->g(Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;)Lcom/viber/dexshared/GMaps$Marker;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/x;->b:Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;

    invoke-static {v1}, Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;->j(Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;)Lcom/viber/dexshared/GMaps$Factory;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/messages/ui/media/x;->a:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    iget-object v4, p0, Lcom/viber/voip/messages/ui/media/x;->a:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/viber/dexshared/GMaps$Factory;->newLatLng(DD)Lcom/viber/dexshared/GMaps$LatLng;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/viber/dexshared/GMaps$Marker;->setPosition(Lcom/viber/dexshared/GMaps$LatLng;)V

    .line 229
    :goto_0
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/x;->b:Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/x;->a:Landroid/location/Location;

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;->a(Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;Landroid/location/Location;)V

    .line 230
    return-void

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/x;->b:Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/x;->b:Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;

    invoke-static {v1}, Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;->i(Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;)Lcom/viber/dexshared/GMaps$GoogleMap;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/messages/ui/media/x;->b:Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;

    invoke-static {v2}, Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;->k(Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;)Lcom/viber/dexshared/GMaps$MarkerOptions;

    move-result-object v2

    iget-object v3, p0, Lcom/viber/voip/messages/ui/media/x;->b:Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;

    invoke-static {v3}, Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;->j(Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;)Lcom/viber/dexshared/GMaps$Factory;

    move-result-object v3

    iget-object v4, p0, Lcom/viber/voip/messages/ui/media/x;->a:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    iget-object v6, p0, Lcom/viber/voip/messages/ui/media/x;->a:Landroid/location/Location;

    invoke-virtual {v6}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    invoke-interface {v3, v4, v5, v6, v7}, Lcom/viber/dexshared/GMaps$Factory;->newLatLng(DD)Lcom/viber/dexshared/GMaps$LatLng;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/viber/dexshared/GMaps$MarkerOptions;->position(Lcom/viber/dexshared/GMaps$LatLng;)Lcom/viber/dexshared/GMaps$MarkerOptions;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/viber/dexshared/GMaps$GoogleMap;->addMarker(Lcom/viber/dexshared/GMaps$MarkerOptions;)Lcom/viber/dexshared/GMaps$Marker;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;->a(Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;Lcom/viber/dexshared/GMaps$Marker;)Lcom/viber/dexshared/GMaps$Marker;

    goto :goto_0
.end method
