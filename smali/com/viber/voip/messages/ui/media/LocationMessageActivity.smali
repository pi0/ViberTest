.class public Lcom/viber/voip/messages/ui/media/LocationMessageActivity;
.super Lcom/viber/voip/app/ViberMapActivity;
.source "SourceFile"

# interfaces
.implements Lcom/actionbarsherlock/ActionBarSherlock$OnCreateOptionsMenuListener;
.implements Lcom/actionbarsherlock/ActionBarSherlock$OnOptionsItemSelectedListener;
.implements Lcom/viber/voip/messages/extras/a/b;
.implements Lcom/viber/voip/messages/extras/map/i;


# instance fields
.field private a:Lcom/actionbarsherlock/ActionBarSherlock;

.field private b:Lcom/viber/voip/messages/ui/view/ViberMapView;

.field private c:Landroid/view/View;

.field private d:Lcom/google/android/maps/GeoPoint;

.field private e:Lcom/viber/voip/messages/extras/map/a;

.field private f:Lcom/viber/voip/messages/extras/map/c;

.field private g:Lcom/viber/voip/messages/extras/map/d;

.field private h:Lcom/viber/voip/messages/extras/map/k;

.field private i:Landroid/os/Handler;

.field private j:Lcom/viber/voip/messages/ui/media/r;

.field private k:Lcom/viber/voip/a/m;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/viber/voip/app/ViberMapActivity;-><init>()V

    .line 50
    invoke-static {p0}, Lcom/actionbarsherlock/ActionBarSherlock;->wrap(Landroid/app/Activity;)Lcom/actionbarsherlock/ActionBarSherlock;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/ui/media/LocationMessageActivity;->a:Lcom/actionbarsherlock/ActionBarSherlock;

    .line 65
    sget-object v0, Lcom/viber/voip/a/a;->n:Lcom/viber/voip/a/m;

    iput-object v0, p0, Lcom/viber/voip/messages/ui/media/LocationMessageActivity;->k:Lcom/viber/voip/a/m;

    .line 67
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/messages/ui/media/LocationMessageActivity;)Lcom/viber/voip/messages/extras/map/k;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/LocationMessageActivity;->h:Lcom/viber/voip/messages/extras/map/k;

    return-object v0
.end method

.method private a()V
    .locals 2

    .prologue
    .line 129
    const v0, 0x7f0702bd

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/ui/media/LocationMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/ui/media/LocationMessageActivity;->c:Landroid/view/View;

    .line 130
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/LocationMessageActivity;->c:Landroid/view/View;

    new-instance v1, Lcom/viber/voip/messages/ui/media/o;

    invoke-direct {v1, p0}, Lcom/viber/voip/messages/ui/media/o;-><init>(Lcom/viber/voip/messages/ui/media/LocationMessageActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    const v0, 0x7f0702bc

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/ui/media/LocationMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/ui/view/ViberMapView;

    iput-object v0, p0, Lcom/viber/voip/messages/ui/media/LocationMessageActivity;->b:Lcom/viber/voip/messages/ui/view/ViberMapView;

    .line 142
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/LocationMessageActivity;->b:Lcom/viber/voip/messages/ui/view/ViberMapView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/ui/view/ViberMapView;->setWillNotDraw(Z)V

    .line 143
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/LocationMessageActivity;->b:Lcom/viber/voip/messages/ui/view/ViberMapView;

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/view/ViberMapView;->getController()Lcom/google/android/maps/MapController;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/google/android/maps/MapController;->setZoom(I)I

    .line 144
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/LocationMessageActivity;->b:Lcom/viber/voip/messages/ui/view/ViberMapView;

    new-instance v1, Lcom/viber/voip/messages/ui/media/p;

    invoke-direct {v1, p0}, Lcom/viber/voip/messages/ui/media/p;-><init>(Lcom/viber/voip/messages/ui/media/LocationMessageActivity;)V

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/ui/view/ViberMapView;->setMapMoveListener(Lcom/viber/voip/messages/ui/view/h;)V

    .line 160
    return-void
.end method

.method private a(Lcom/google/android/maps/GeoPoint;)V
    .locals 1
    .parameter

    .prologue
    .line 210
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/LocationMessageActivity;->b:Lcom/viber/voip/messages/ui/view/ViberMapView;

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/view/ViberMapView;->getController()Lcom/google/android/maps/MapController;

    move-result-object v0

    .line 211
    invoke-virtual {v0, p1}, Lcom/google/android/maps/MapController;->animateTo(Lcom/google/android/maps/GeoPoint;)V

    .line 212
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/messages/ui/media/LocationMessageActivity;Lcom/google/android/maps/GeoPoint;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/ui/media/LocationMessageActivity;->b(Lcom/google/android/maps/GeoPoint;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 178
    return-void
.end method

.method private a(Z)V
    .locals 3
    .parameter

    .prologue
    const/16 v2, 0x400

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onOrientationChanged isPortrait:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/ui/media/LocationMessageActivity;->a(Ljava/lang/String;)V

    .line 115
    if-nez p1, :cond_0

    .line 116
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/media/LocationMessageActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 121
    :goto_0
    return-void

    .line 119
    :cond_0
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/media/LocationMessageActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/viber/voip/messages/ui/media/LocationMessageActivity;Ljava/lang/Object;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/ui/media/LocationMessageActivity;->a(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private a(Ljava/lang/Object;)Z
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 224
    if-nez p1, :cond_0

    .line 225
    const-string/jumbo v1, "The system could not identify your location"

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 226
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/media/LocationMessageActivity;->finish()V

    .line 227
    const/4 v0, 0x1

    .line 229
    :cond_0
    return v0
.end method

.method static synthetic b(Lcom/viber/voip/messages/ui/media/LocationMessageActivity;)Lcom/viber/voip/messages/ui/view/ViberMapView;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/LocationMessageActivity;->b:Lcom/viber/voip/messages/ui/view/ViberMapView;

    return-object v0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 164
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/media/LocationMessageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 166
    if-eqz v0, :cond_0

    .line 167
    const-string/jumbo v1, "prev_action"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 168
    sget-object v1, Lcom/viber/voip/a/a;->n:Lcom/viber/voip/a/m;

    invoke-virtual {v1}, Lcom/viber/voip/a/m;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 169
    sget-object v0, Lcom/viber/voip/a/a;->n:Lcom/viber/voip/a/m;

    iput-object v0, p0, Lcom/viber/voip/messages/ui/media/LocationMessageActivity;->k:Lcom/viber/voip/a/m;

    .line 174
    :cond_0
    :goto_0
    return-void

    .line 171
    :cond_1
    sget-object v0, Lcom/viber/voip/a/a;->o:Lcom/viber/voip/a/m;

    iput-object v0, p0, Lcom/viber/voip/messages/ui/media/LocationMessageActivity;->k:Lcom/viber/voip/a/m;

    goto :goto_0
.end method

.method private b(Lcom/google/android/maps/GeoPoint;)V
    .locals 5
    .parameter

    .prologue
    .line 215
    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/LocationMessageActivity;->h:Lcom/viber/voip/messages/extras/map/k;

    monitor-enter v1

    .line 216
    :try_start_0
    new-instance v0, Lcom/viber/voip/messages/extras/map/k;

    invoke-direct {v0}, Lcom/viber/voip/messages/extras/map/k;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/messages/ui/media/LocationMessageActivity;->h:Lcom/viber/voip/messages/extras/map/k;

    .line 217
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/LocationMessageActivity;->h:Lcom/viber/voip/messages/extras/map/k;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/viber/voip/messages/extras/map/k;->a(Ljava/lang/String;)V

    .line 218
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/LocationMessageActivity;->h:Lcom/viber/voip/messages/extras/map/k;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/viber/voip/messages/extras/map/k;->b(Ljava/lang/String;)V

    .line 219
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/LocationMessageActivity;->h:Lcom/viber/voip/messages/extras/map/k;

    new-instance v2, Lcom/viber/voip/messages/extras/map/b;

    invoke-virtual {p1}, Lcom/google/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v3

    invoke-virtual {p1}, Lcom/google/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v4

    invoke-direct {v2, v3, v4}, Lcom/viber/voip/messages/extras/map/b;-><init>(II)V

    invoke-virtual {v0, v2}, Lcom/viber/voip/messages/extras/map/k;->a(Lcom/viber/voip/messages/extras/map/b;)V

    .line 220
    monitor-exit v1

    .line 221
    return-void

    .line 220
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic b(Lcom/viber/voip/messages/ui/media/LocationMessageActivity;Lcom/google/android/maps/GeoPoint;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/ui/media/LocationMessageActivity;->a(Lcom/google/android/maps/GeoPoint;)V

    return-void
.end method

.method static synthetic c(Lcom/viber/voip/messages/ui/media/LocationMessageActivity;)Lcom/viber/voip/messages/extras/map/a;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/LocationMessageActivity;->e:Lcom/viber/voip/messages/extras/map/a;

    return-object v0
.end method

.method static synthetic d(Lcom/viber/voip/messages/ui/media/LocationMessageActivity;)Lcom/viber/voip/messages/extras/map/d;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/LocationMessageActivity;->g:Lcom/viber/voip/messages/extras/map/d;

    return-object v0
.end method

.method static synthetic e(Lcom/viber/voip/messages/ui/media/LocationMessageActivity;)Lcom/viber/voip/messages/ui/media/r;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/LocationMessageActivity;->j:Lcom/viber/voip/messages/ui/media/r;

    return-object v0
.end method

.method static synthetic f(Lcom/viber/voip/messages/ui/media/LocationMessageActivity;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/LocationMessageActivity;->i:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic g(Lcom/viber/voip/messages/ui/media/LocationMessageActivity;)Lcom/google/android/maps/GeoPoint;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/LocationMessageActivity;->d:Lcom/google/android/maps/GeoPoint;

    return-object v0
.end method

.method static synthetic h(Lcom/viber/voip/messages/ui/media/LocationMessageActivity;)Lcom/viber/voip/a/m;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/LocationMessageActivity;->k:Lcom/viber/voip/a/m;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/location/Location;)V
    .locals 4
    .parameter

    .prologue
    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onLocationReady oun location = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/ui/media/LocationMessageActivity;->a(Ljava/lang/String;)V

    .line 196
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/ui/media/LocationMessageActivity;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    :goto_0
    return-void

    .line 198
    :cond_0
    new-instance v0, Lcom/google/android/maps/GeoPoint;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/viber/voip/messages/extras/map/d;->a(D)I

    move-result v1

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/viber/voip/messages/extras/map/d;->a(D)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/maps/GeoPoint;-><init>(II)V

    .line 199
    new-instance v1, Lcom/viber/voip/messages/extras/map/c;

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    const v3, 0x7f020360

    invoke-direct {v1, v0, p0, v2, v3}, Lcom/viber/voip/messages/extras/map/c;-><init>(Lcom/google/android/maps/GeoPoint;Landroid/content/Context;FI)V

    iput-object v1, p0, Lcom/viber/voip/messages/ui/media/LocationMessageActivity;->f:Lcom/viber/voip/messages/extras/map/c;

    .line 200
    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/LocationMessageActivity;->b:Lcom/viber/voip/messages/ui/view/ViberMapView;

    invoke-virtual {v1}, Lcom/viber/voip/messages/ui/view/ViberMapView;->getOverlays()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/messages/ui/media/LocationMessageActivity;->f:Lcom/viber/voip/messages/extras/map/c;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    iput-object v0, p0, Lcom/viber/voip/messages/ui/media/LocationMessageActivity;->d:Lcom/google/android/maps/GeoPoint;

    .line 203
    invoke-direct {p0, v0}, Lcom/viber/voip/messages/ui/media/LocationMessageActivity;->b(Lcom/google/android/maps/GeoPoint;)V

    .line 205
    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/LocationMessageActivity;->b:Lcom/viber/voip/messages/ui/view/ViberMapView;

    invoke-virtual {v1}, Lcom/viber/voip/messages/ui/view/ViberMapView;->getOverlays()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/messages/ui/media/LocationMessageActivity;->e:Lcom/viber/voip/messages/extras/map/a;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    invoke-direct {p0, v0}, Lcom/viber/voip/messages/ui/media/LocationMessageActivity;->a(Lcom/google/android/maps/GeoPoint;)V

    goto :goto_0
.end method

.method public a(Lcom/viber/voip/messages/extras/map/k;)V
    .locals 2
    .parameter

    .prologue
    .line 182
    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/LocationMessageActivity;->h:Lcom/viber/voip/messages/extras/map/k;

    monitor-enter v1

    .line 183
    :try_start_0
    iput-object p1, p0, Lcom/viber/voip/messages/ui/media/LocationMessageActivity;->h:Lcom/viber/voip/messages/extras/map/k;

    .line 184
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    invoke-virtual {p1}, Lcom/viber/voip/messages/extras/map/k;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0c0420

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/ui/media/LocationMessageActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p1, v0}, Lcom/viber/voip/messages/extras/map/k;->e(Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/LocationMessageActivity;->e:Lcom/viber/voip/messages/extras/map/a;

    invoke-virtual {v0, p1}, Lcom/viber/voip/messages/extras/map/a;->a(Lcom/viber/voip/messages/extras/map/k;)Lcom/viber/voip/messages/extras/map/a;

    .line 187
    return-void

    .line 184
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 185
    :cond_0
    invoke-virtual {p1}, Lcom/viber/voip/messages/extras/map/k;->f()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected isRouteDisplayed()Z
    .locals 1

    .prologue
    .line 125
    const/4 v0, 0x0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 109
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v0, :cond_0

    :goto_0
    invoke-direct {p0, v0}, Lcom/viber/voip/messages/ui/media/LocationMessageActivity;->a(Z)V

    .line 110
    invoke-super {p0, p1}, Lcom/viber/voip/app/ViberMapActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 111
    return-void

    .line 109
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 84
    invoke-super {p0, p1}, Lcom/viber/voip/app/ViberMapActivity;->onCreate(Landroid/os/Bundle;)V

    .line 86
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/a/a;->l:Lcom/viber/voip/a/al;

    invoke-virtual {v1}, Lcom/viber/voip/a/al;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/LocationMessageActivity;->a:Lcom/actionbarsherlock/ActionBarSherlock;

    const v1, 0x7f03011e

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/ActionBarSherlock;->setContentView(I)V

    .line 89
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/media/LocationMessageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "fromConversation"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 90
    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/LocationMessageActivity;->a:Lcom/actionbarsherlock/ActionBarSherlock;

    invoke-virtual {v1}, Lcom/actionbarsherlock/ActionBarSherlock;->getActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v1

    if-eqz v0, :cond_0

    const v0, 0x7f0c0507

    :goto_0
    invoke-virtual {v1, v0}, Lcom/actionbarsherlock/app/ActionBar;->setTitle(I)V

    .line 91
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/LocationMessageActivity;->a:Lcom/actionbarsherlock/ActionBarSherlock;

    invoke-virtual {v0}, Lcom/actionbarsherlock/ActionBarSherlock;->getActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 92
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/LocationMessageActivity;->a:Lcom/actionbarsherlock/ActionBarSherlock;

    invoke-virtual {v0}, Lcom/actionbarsherlock/ActionBarSherlock;->getActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 94
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/media/LocationMessageActivity;->b()V

    .line 95
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/media/LocationMessageActivity;->a()V

    .line 97
    new-instance v0, Lcom/viber/voip/messages/extras/map/d;

    invoke-direct {v0, v3, p0}, Lcom/viber/voip/messages/extras/map/d;-><init>(Lcom/viber/voip/messages/extras/map/j;Lcom/viber/voip/messages/extras/map/i;)V

    iput-object v0, p0, Lcom/viber/voip/messages/ui/media/LocationMessageActivity;->g:Lcom/viber/voip/messages/extras/map/d;

    .line 98
    new-instance v0, Lcom/viber/voip/messages/extras/map/a;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/LocationMessageActivity;->b:Lcom/viber/voip/messages/ui/view/ViberMapView;

    const v2, 0x7f0200d7

    invoke-direct {v0, p0, v1, v2}, Lcom/viber/voip/messages/extras/map/a;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;I)V

    iput-object v0, p0, Lcom/viber/voip/messages/ui/media/LocationMessageActivity;->e:Lcom/viber/voip/messages/extras/map/a;

    .line 99
    new-instance v0, Lcom/viber/voip/messages/extras/map/k;

    invoke-direct {v0}, Lcom/viber/voip/messages/extras/map/k;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/messages/ui/media/LocationMessageActivity;->h:Lcom/viber/voip/messages/extras/map/k;

    .line 100
    sget-object v0, Lcom/viber/voip/dk;->a:Lcom/viber/voip/dk;

    invoke-static {v0}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/ui/media/LocationMessageActivity;->i:Landroid/os/Handler;

    .line 101
    new-instance v0, Lcom/viber/voip/messages/ui/media/r;

    invoke-direct {v0, p0, v3}, Lcom/viber/voip/messages/ui/media/r;-><init>(Lcom/viber/voip/messages/ui/media/LocationMessageActivity;Lcom/viber/voip/messages/ui/media/o;)V

    iput-object v0, p0, Lcom/viber/voip/messages/ui/media/LocationMessageActivity;->j:Lcom/viber/voip/messages/ui/media/r;

    .line 102
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getLocationManager()Lcom/viber/voip/messages/extras/a/a;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/viber/voip/messages/extras/a/a;->a(Lcom/viber/voip/messages/extras/a/b;)V

    .line 103
    invoke-static {p0}, Lcom/viber/voip/util/ao;->b(Landroid/content/Context;)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/ui/media/LocationMessageActivity;->a(Z)V

    .line 105
    return-void

    .line 90
    :cond_0
    const v0, 0x7f0c068d

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter

    .prologue
    .line 234
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/LocationMessageActivity;->a:Lcom/actionbarsherlock/ActionBarSherlock;

    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/ActionBarSherlock;->dispatchCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z
    .locals 4
    .parameter

    .prologue
    .line 239
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/LocationMessageActivity;->a:Lcom/actionbarsherlock/ActionBarSherlock;

    invoke-virtual {v0}, Lcom/actionbarsherlock/ActionBarSherlock;->getMenuInflater()Lcom/actionbarsherlock/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f100015

    invoke-virtual {v0, v1, p1}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    .line 240
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/media/LocationMessageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "fromConversation"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 241
    const v1, 0x7f070476

    invoke-interface {p1, v1}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v1

    const v2, 0x7f02006c

    if-eqz v0, :cond_0

    const v0, 0x7f0c034b

    :goto_0
    new-instance v3, Lcom/viber/voip/messages/ui/media/q;

    invoke-direct {v3, p0}, Lcom/viber/voip/messages/ui/media/q;-><init>(Lcom/viber/voip/messages/ui/media/LocationMessageActivity;)V

    invoke-static {v1, v2, v0, v3}, Lcom/viber/voip/util/gl;->a(Lcom/actionbarsherlock/view/MenuItem;IILandroid/view/View$OnClickListener;)Lcom/actionbarsherlock/internal/view/menu/ActionMenuItemView;

    .line 261
    const/4 v0, 0x1

    return v0

    .line 241
    :cond_0
    const v0, 0x7f0c047c

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter

    .prologue
    .line 266
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/LocationMessageActivity;->a:Lcom/actionbarsherlock/ActionBarSherlock;

    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/ActionBarSherlock;->dispatchOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 2
    .parameter

    .prologue
    .line 271
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/LocationMessageActivity;->i:Landroid/os/Handler;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/LocationMessageActivity;->j:Lcom/viber/voip/messages/ui/media/r;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 272
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 277
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 274
    :pswitch_0
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/media/LocationMessageActivity;->finish()V

    .line 275
    const/4 v0, 0x1

    goto :goto_0

    .line 272
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
