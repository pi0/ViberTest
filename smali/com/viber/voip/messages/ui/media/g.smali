.class Lcom/viber/voip/messages/ui/media/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/ui/media/GoogleApiMapPreViewActivity;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/ui/media/GoogleApiMapPreViewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lcom/viber/voip/messages/ui/media/g;->a:Lcom/viber/voip/messages/ui/media/GoogleApiMapPreViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/g;->a:Lcom/viber/voip/messages/ui/media/GoogleApiMapPreViewActivity;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/media/GoogleApiMapPreViewActivity;->a(Lcom/viber/voip/messages/ui/media/GoogleApiMapPreViewActivity;)Lcom/google/android/maps/GeoPoint;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/g;->a:Lcom/viber/voip/messages/ui/media/GoogleApiMapPreViewActivity;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/media/GoogleApiMapPreViewActivity;->b(Lcom/viber/voip/messages/ui/media/GoogleApiMapPreViewActivity;)Lcom/google/android/maps/MapView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/MapView;->getController()Lcom/google/android/maps/MapController;

    move-result-object v0

    .line 74
    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/g;->a:Lcom/viber/voip/messages/ui/media/GoogleApiMapPreViewActivity;

    invoke-static {v1}, Lcom/viber/voip/messages/ui/media/GoogleApiMapPreViewActivity;->b(Lcom/viber/voip/messages/ui/media/GoogleApiMapPreViewActivity;)Lcom/google/android/maps/MapView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/maps/MapView;->getZoomLevel()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/MapController;->setZoom(I)I

    .line 75
    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/g;->a:Lcom/viber/voip/messages/ui/media/GoogleApiMapPreViewActivity;

    invoke-static {v1}, Lcom/viber/voip/messages/ui/media/GoogleApiMapPreViewActivity;->a(Lcom/viber/voip/messages/ui/media/GoogleApiMapPreViewActivity;)Lcom/google/android/maps/GeoPoint;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/MapController;->animateTo(Lcom/google/android/maps/GeoPoint;)V

    .line 77
    :cond_0
    return-void
.end method
