.class Lcom/viber/voip/messages/ui/media/aa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;


# direct methods
.method private constructor <init>(Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;)V
    .locals 0
    .parameter

    .prologue
    .line 268
    iput-object p1, p0, Lcom/viber/voip/messages/ui/media/aa;->a:Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;Lcom/viber/voip/messages/ui/media/s;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 268
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/ui/media/aa;-><init>(Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 272
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/aa;->a:Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;->e(Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;)Lcom/viber/voip/messages/extras/map/k;

    move-result-object v1

    monitor-enter v1

    .line 273
    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/aa;->a:Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;->i(Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;)Lcom/viber/dexshared/GMaps$GoogleMap;

    move-result-object v0

    invoke-interface {v0}, Lcom/viber/dexshared/GMaps$GoogleMap;->getCameraPosition()Lcom/viber/dexshared/GMaps$CameraPosition;

    move-result-object v0

    invoke-interface {v0}, Lcom/viber/dexshared/GMaps$CameraPosition;->getTarget()Lcom/viber/dexshared/GMaps$LatLng;

    move-result-object v0

    .line 274
    iget-object v2, p0, Lcom/viber/voip/messages/ui/media/aa;->a:Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;

    invoke-static {v2, v0}, Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;->a(Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;Lcom/viber/dexshared/GMaps$LatLng;)V

    .line 275
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/aa;->a:Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;->e(Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;)Lcom/viber/voip/messages/extras/map/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/messages/extras/map/k;->c()Lcom/viber/dexshared/GMaps$LatLng;

    move-result-object v0

    invoke-interface {v0}, Lcom/viber/dexshared/GMaps$LatLng;->getLatitude()D

    move-result-wide v2

    .line 276
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/aa;->a:Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;->e(Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;)Lcom/viber/voip/messages/extras/map/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/messages/extras/map/k;->c()Lcom/viber/dexshared/GMaps$LatLng;

    move-result-object v0

    invoke-interface {v0}, Lcom/viber/dexshared/GMaps$LatLng;->getLongitude()D

    move-result-wide v4

    .line 277
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/aa;->a:Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;->l(Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;)Lcom/viber/voip/messages/extras/map/d;

    move-result-object v0

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/viber/voip/messages/extras/map/d;->a(DD)V

    .line 278
    monitor-exit v1

    .line 279
    return-void

    .line 278
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
