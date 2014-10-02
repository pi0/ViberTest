.class Lcom/viber/voip/messages/ui/media/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/ui/media/LocationMessageActivity;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/ui/media/LocationMessageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 130
    iput-object p1, p0, Lcom/viber/voip/messages/ui/media/o;->a:Lcom/viber/voip/messages/ui/media/LocationMessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 133
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/o;->a:Lcom/viber/voip/messages/ui/media/LocationMessageActivity;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/media/LocationMessageActivity;->f(Lcom/viber/voip/messages/ui/media/LocationMessageActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/o;->a:Lcom/viber/voip/messages/ui/media/LocationMessageActivity;

    invoke-static {v1}, Lcom/viber/voip/messages/ui/media/LocationMessageActivity;->e(Lcom/viber/voip/messages/ui/media/LocationMessageActivity;)Lcom/viber/voip/messages/ui/media/r;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 134
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/o;->a:Lcom/viber/voip/messages/ui/media/LocationMessageActivity;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/o;->a:Lcom/viber/voip/messages/ui/media/LocationMessageActivity;

    invoke-static {v1}, Lcom/viber/voip/messages/ui/media/LocationMessageActivity;->g(Lcom/viber/voip/messages/ui/media/LocationMessageActivity;)Lcom/google/android/maps/GeoPoint;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/media/LocationMessageActivity;->a(Lcom/viber/voip/messages/ui/media/LocationMessageActivity;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/o;->a:Lcom/viber/voip/messages/ui/media/LocationMessageActivity;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/media/LocationMessageActivity;->c(Lcom/viber/voip/messages/ui/media/LocationMessageActivity;)Lcom/viber/voip/messages/extras/map/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/messages/extras/map/a;->b()V

    .line 136
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/o;->a:Lcom/viber/voip/messages/ui/media/LocationMessageActivity;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/o;->a:Lcom/viber/voip/messages/ui/media/LocationMessageActivity;

    invoke-static {v1}, Lcom/viber/voip/messages/ui/media/LocationMessageActivity;->g(Lcom/viber/voip/messages/ui/media/LocationMessageActivity;)Lcom/google/android/maps/GeoPoint;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/media/LocationMessageActivity;->b(Lcom/viber/voip/messages/ui/media/LocationMessageActivity;Lcom/google/android/maps/GeoPoint;)V

    .line 137
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/o;->a:Lcom/viber/voip/messages/ui/media/LocationMessageActivity;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/media/LocationMessageActivity;->b(Lcom/viber/voip/messages/ui/media/LocationMessageActivity;)Lcom/viber/voip/messages/ui/view/ViberMapView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/ui/view/ViberMapView;->setMapMoving(Z)V

    .line 139
    :cond_0
    return-void
.end method
