.class Lcom/viber/voip/messages/ui/media/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/ui/media/LocationMessageActivity;


# direct methods
.method private constructor <init>(Lcom/viber/voip/messages/ui/media/LocationMessageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lcom/viber/voip/messages/ui/media/r;->a:Lcom/viber/voip/messages/ui/media/LocationMessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/viber/voip/messages/ui/media/LocationMessageActivity;Lcom/viber/voip/messages/ui/media/o;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/ui/media/r;-><init>(Lcom/viber/voip/messages/ui/media/LocationMessageActivity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 71
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/r;->a:Lcom/viber/voip/messages/ui/media/LocationMessageActivity;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/media/LocationMessageActivity;->a(Lcom/viber/voip/messages/ui/media/LocationMessageActivity;)Lcom/viber/voip/messages/extras/map/k;

    move-result-object v1

    monitor-enter v1

    .line 72
    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/r;->a:Lcom/viber/voip/messages/ui/media/LocationMessageActivity;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/media/LocationMessageActivity;->b(Lcom/viber/voip/messages/ui/media/LocationMessageActivity;)Lcom/viber/voip/messages/ui/view/ViberMapView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/view/ViberMapView;->getMapCenter()Lcom/google/android/maps/GeoPoint;

    move-result-object v0

    .line 73
    iget-object v2, p0, Lcom/viber/voip/messages/ui/media/r;->a:Lcom/viber/voip/messages/ui/media/LocationMessageActivity;

    invoke-static {v2, v0}, Lcom/viber/voip/messages/ui/media/LocationMessageActivity;->a(Lcom/viber/voip/messages/ui/media/LocationMessageActivity;Lcom/google/android/maps/GeoPoint;)V

    .line 74
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/r;->a:Lcom/viber/voip/messages/ui/media/LocationMessageActivity;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/media/LocationMessageActivity;->a(Lcom/viber/voip/messages/ui/media/LocationMessageActivity;)Lcom/viber/voip/messages/extras/map/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/messages/extras/map/k;->b()Lcom/viber/voip/messages/extras/map/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/messages/extras/map/b;->a()I

    move-result v0

    invoke-static {v0}, Lcom/viber/voip/messages/extras/map/d;->a(I)D

    move-result-wide v2

    .line 75
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/r;->a:Lcom/viber/voip/messages/ui/media/LocationMessageActivity;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/media/LocationMessageActivity;->a(Lcom/viber/voip/messages/ui/media/LocationMessageActivity;)Lcom/viber/voip/messages/extras/map/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/messages/extras/map/k;->b()Lcom/viber/voip/messages/extras/map/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/messages/extras/map/b;->b()I

    move-result v0

    invoke-static {v0}, Lcom/viber/voip/messages/extras/map/d;->a(I)D

    move-result-wide v4

    .line 76
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/r;->a:Lcom/viber/voip/messages/ui/media/LocationMessageActivity;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/media/LocationMessageActivity;->c(Lcom/viber/voip/messages/ui/media/LocationMessageActivity;)Lcom/viber/voip/messages/extras/map/a;

    move-result-object v0

    iget-object v6, p0, Lcom/viber/voip/messages/ui/media/r;->a:Lcom/viber/voip/messages/ui/media/LocationMessageActivity;

    invoke-static {v6}, Lcom/viber/voip/messages/ui/media/LocationMessageActivity;->a(Lcom/viber/voip/messages/ui/media/LocationMessageActivity;)Lcom/viber/voip/messages/extras/map/k;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/viber/voip/messages/extras/map/a;->a(Lcom/viber/voip/messages/extras/map/k;)Lcom/viber/voip/messages/extras/map/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/messages/extras/map/a;->a()V

    .line 77
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/r;->a:Lcom/viber/voip/messages/ui/media/LocationMessageActivity;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/media/LocationMessageActivity;->d(Lcom/viber/voip/messages/ui/media/LocationMessageActivity;)Lcom/viber/voip/messages/extras/map/d;

    move-result-object v0

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/viber/voip/messages/extras/map/d;->a(DD)V

    .line 78
    monitor-exit v1

    .line 79
    return-void

    .line 78
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
