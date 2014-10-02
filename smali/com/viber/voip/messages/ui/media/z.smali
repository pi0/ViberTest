.class Lcom/viber/voip/messages/ui/media/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;)V
    .locals 0
    .parameter

    .prologue
    .line 339
    iput-object p1, p0, Lcom/viber/voip/messages/ui/media/z;->a:Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter

    .prologue
    const-wide v5, 0x412e848000000000L

    .line 343
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/z;->a:Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;->e(Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;)Lcom/viber/voip/messages/extras/map/k;

    move-result-object v1

    monitor-enter v1

    .line 345
    :try_start_0
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    iget-object v2, p0, Lcom/viber/voip/messages/ui/media/z;->a:Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;

    invoke-static {v2}, Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;->m(Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;)Lcom/viber/voip/a/m;

    move-result-object v2

    invoke-virtual {v2}, Lcom/viber/voip/a/m;->e()Lcom/viber/voip/a/x;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 347
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/z;->a:Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;->e(Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;)Lcom/viber/voip/messages/extras/map/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/messages/extras/map/k;->b()Lcom/viber/voip/messages/extras/map/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 348
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 349
    const-string/jumbo v2, "extra_location_lat"

    iget-object v3, p0, Lcom/viber/voip/messages/ui/media/z;->a:Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;

    invoke-static {v3}, Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;->e(Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;)Lcom/viber/voip/messages/extras/map/k;

    move-result-object v3

    invoke-virtual {v3}, Lcom/viber/voip/messages/extras/map/k;->b()Lcom/viber/voip/messages/extras/map/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/viber/voip/messages/extras/map/b;->a()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 350
    const-string/jumbo v2, "extra_location_lon"

    iget-object v3, p0, Lcom/viber/voip/messages/ui/media/z;->a:Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;

    invoke-static {v3}, Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;->e(Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;)Lcom/viber/voip/messages/extras/map/k;

    move-result-object v3

    invoke-virtual {v3}, Lcom/viber/voip/messages/extras/map/k;->b()Lcom/viber/voip/messages/extras/map/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/viber/voip/messages/extras/map/b;->b()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 351
    const-string/jumbo v2, "extra_location_text"

    iget-object v3, p0, Lcom/viber/voip/messages/ui/media/z;->a:Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;

    invoke-static {v3}, Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;->e(Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;)Lcom/viber/voip/messages/extras/map/k;

    move-result-object v3

    invoke-virtual {v3}, Lcom/viber/voip/messages/extras/map/k;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 352
    iget-object v2, p0, Lcom/viber/voip/messages/ui/media/z;->a:Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;

    const/4 v3, -0x1

    invoke-virtual {v2, v3, v0}, Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;->setResult(ILandroid/content/Intent;)V

    .line 353
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/z;->a:Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;->finish()V

    .line 363
    :goto_0
    monitor-exit v1

    .line 364
    return-void

    .line 356
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 357
    const-string/jumbo v2, "extra_location_lat"

    iget-object v3, p0, Lcom/viber/voip/messages/ui/media/z;->a:Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;

    invoke-static {v3}, Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;->i(Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;)Lcom/viber/dexshared/GMaps$GoogleMap;

    move-result-object v3

    invoke-interface {v3}, Lcom/viber/dexshared/GMaps$GoogleMap;->getCameraPosition()Lcom/viber/dexshared/GMaps$CameraPosition;

    move-result-object v3

    invoke-interface {v3}, Lcom/viber/dexshared/GMaps$CameraPosition;->getTarget()Lcom/viber/dexshared/GMaps$LatLng;

    move-result-object v3

    invoke-interface {v3}, Lcom/viber/dexshared/GMaps$LatLng;->getLatitude()D

    move-result-wide v3

    mul-double/2addr v3, v5

    double-to-int v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 358
    const-string/jumbo v2, "extra_location_lon"

    iget-object v3, p0, Lcom/viber/voip/messages/ui/media/z;->a:Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;

    invoke-static {v3}, Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;->i(Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;)Lcom/viber/dexshared/GMaps$GoogleMap;

    move-result-object v3

    invoke-interface {v3}, Lcom/viber/dexshared/GMaps$GoogleMap;->getCameraPosition()Lcom/viber/dexshared/GMaps$CameraPosition;

    move-result-object v3

    invoke-interface {v3}, Lcom/viber/dexshared/GMaps$CameraPosition;->getTarget()Lcom/viber/dexshared/GMaps$LatLng;

    move-result-object v3

    invoke-interface {v3}, Lcom/viber/dexshared/GMaps$LatLng;->getLongitude()D

    move-result-wide v3

    mul-double/2addr v3, v5

    double-to-int v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 359
    const-string/jumbo v2, "extra_location_text"

    const-string/jumbo v3, ""

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 360
    iget-object v2, p0, Lcom/viber/voip/messages/ui/media/z;->a:Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;

    const/4 v3, -0x1

    invoke-virtual {v2, v3, v0}, Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;->setResult(ILandroid/content/Intent;)V

    .line 361
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/z;->a:Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;->finish()V

    goto :goto_0

    .line 363
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
