.class Lcom/viber/voip/messages/ui/media/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/dexshared/GMaps$GoogleMap$OnCameraChangeListener;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;)V
    .locals 0
    .parameter

    .prologue
    .line 153
    iput-object p1, p0, Lcom/viber/voip/messages/ui/media/u;->a:Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCameraChange(Lcom/viber/dexshared/GMaps$CameraPosition;)V
    .locals 4
    .parameter

    .prologue
    .line 157
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/u;->a:Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;

    invoke-interface {p1}, Lcom/viber/dexshared/GMaps$CameraPosition;->getTarget()Lcom/viber/dexshared/GMaps$LatLng;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;->a(Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;Lcom/viber/dexshared/GMaps$LatLng;)V

    .line 158
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/u;->a:Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;->c(Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/u;->a:Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;

    invoke-static {v1}, Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;->b(Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;)Lcom/viber/voip/messages/ui/media/aa;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 159
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/u;->a:Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;->c(Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/u;->a:Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;

    invoke-static {v1}, Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;->b(Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;)Lcom/viber/voip/messages/ui/media/aa;

    move-result-object v1

    const-wide/16 v2, 0x2bc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 160
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/u;->a:Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;->a(Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;Z)Z

    .line 161
    return-void
.end method
