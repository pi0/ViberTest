.class Lcom/viber/voip/messages/ui/media/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/messages/ui/view/h;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/ui/media/LocationMessageActivity;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/ui/media/LocationMessageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 144
    iput-object p1, p0, Lcom/viber/voip/messages/ui/media/p;->a:Lcom/viber/voip/messages/ui/media/LocationMessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 147
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/p;->a:Lcom/viber/voip/messages/ui/media/LocationMessageActivity;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/media/LocationMessageActivity;->b(Lcom/viber/voip/messages/ui/media/LocationMessageActivity;)Lcom/viber/voip/messages/ui/view/ViberMapView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/view/ViberMapView;->getMapCenter()Lcom/google/android/maps/GeoPoint;

    move-result-object v0

    .line 148
    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/p;->a:Lcom/viber/voip/messages/ui/media/LocationMessageActivity;

    invoke-static {v1, v0}, Lcom/viber/voip/messages/ui/media/LocationMessageActivity;->a(Lcom/viber/voip/messages/ui/media/LocationMessageActivity;Lcom/google/android/maps/GeoPoint;)V

    .line 149
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/p;->a:Lcom/viber/voip/messages/ui/media/LocationMessageActivity;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/media/LocationMessageActivity;->f(Lcom/viber/voip/messages/ui/media/LocationMessageActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/p;->a:Lcom/viber/voip/messages/ui/media/LocationMessageActivity;

    invoke-static {v1}, Lcom/viber/voip/messages/ui/media/LocationMessageActivity;->e(Lcom/viber/voip/messages/ui/media/LocationMessageActivity;)Lcom/viber/voip/messages/ui/media/r;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 150
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/p;->a:Lcom/viber/voip/messages/ui/media/LocationMessageActivity;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/media/LocationMessageActivity;->f(Lcom/viber/voip/messages/ui/media/LocationMessageActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/p;->a:Lcom/viber/voip/messages/ui/media/LocationMessageActivity;

    invoke-static {v1}, Lcom/viber/voip/messages/ui/media/LocationMessageActivity;->e(Lcom/viber/voip/messages/ui/media/LocationMessageActivity;)Lcom/viber/voip/messages/ui/media/r;

    move-result-object v1

    const-wide/16 v2, 0x2bc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 151
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 155
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/p;->a:Lcom/viber/voip/messages/ui/media/LocationMessageActivity;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/media/LocationMessageActivity;->f(Lcom/viber/voip/messages/ui/media/LocationMessageActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/p;->a:Lcom/viber/voip/messages/ui/media/LocationMessageActivity;

    invoke-static {v1}, Lcom/viber/voip/messages/ui/media/LocationMessageActivity;->e(Lcom/viber/voip/messages/ui/media/LocationMessageActivity;)Lcom/viber/voip/messages/ui/media/r;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 156
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/p;->a:Lcom/viber/voip/messages/ui/media/LocationMessageActivity;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/media/LocationMessageActivity;->c(Lcom/viber/voip/messages/ui/media/LocationMessageActivity;)Lcom/viber/voip/messages/extras/map/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/messages/extras/map/a;->b()V

    .line 157
    return-void
.end method
