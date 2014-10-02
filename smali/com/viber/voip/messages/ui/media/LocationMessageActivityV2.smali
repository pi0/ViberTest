.class public Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;
.super Landroid/support/v4/app/FragmentActivity;
.source "SourceFile"

# interfaces
.implements Lcom/actionbarsherlock/ActionBarSherlock$OnCreateOptionsMenuListener;
.implements Lcom/actionbarsherlock/ActionBarSherlock$OnOptionsItemSelectedListener;
.implements Lcom/viber/voip/messages/extras/a/b;
.implements Lcom/viber/voip/messages/extras/map/i;


# instance fields
.field a:Lcom/viber/dexshared/GMaps$GroundOverlay;

.field private b:Lcom/viber/dexshared/GMaps$Factory;

.field private c:Lcom/viber/voip/a/m;

.field private d:Lcom/viber/voip/messages/extras/map/l;

.field private e:Lcom/viber/dexshared/GMaps$MarkerOptions;

.field private f:Lcom/viber/dexshared/GMaps$MarkerOptions;

.field private g:Lcom/viber/dexshared/GMaps$Marker;

.field private h:Lcom/viber/dexshared/GMaps$GoogleMap;

.field private i:Lcom/viber/voip/messages/extras/map/k;

.field private j:Lcom/viber/voip/messages/extras/map/d;

.field private k:Landroid/os/Handler;

.field private l:Lcom/viber/voip/messages/ui/media/aa;

.field private m:Lcom/viber/voip/messages/extras/map/BalloonView;

.field private n:Landroid/widget/ImageView;

.field private o:Lcom/viber/voip/messages/extras/map/n;

.field private p:Landroid/view/View;

.field private q:Z

.field private r:Lcom/actionbarsherlock/internal/view/menu/ActionMenuItemView;

.field private s:Lcom/actionbarsherlock/ActionBarSherlock;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 61
    invoke-static {}, Lcom/viber/voip/ViberEnv;->getGMapsFactory()Lcom/viber/dexshared/GMaps$Factory;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;->b:Lcom/viber/dexshared/GMaps$Factory;

    .line 62
    sget-object v0, Lcom/viber/voip/a/a;->n:Lcom/viber/voip/a/m;

    iput-object v0, p0, Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;->c:Lcom/viber/voip/a/m;

    .line 85
    invoke-static {p0}, Lcom/actionbarsherlock/ActionBarSherlock;->wrap(Landroid/app/Activity;)Lcom/actionbarsherlock/ActionBarSherlock;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;->s:Lcom/actionbarsherlock/ActionBarSherlock;

    .line 268
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;Lcom/viber/dexshared/GMaps$Marker;)Lcom/viber/dexshared/GMaps$Marker;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;->g:Lcom/viber/dexshared/GMaps$Marker;

    return-object p1
.end method

.method private a()V
    .locals 3

    .prologue
    const/high16 v1, 0x3f00

    .line 136
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;->d:Lcom/viber/voip/messages/extras/map/l;

    invoke-virtual {v0}, Lcom/viber/voip/messages/extras/map/l;->getMap()Lcom/viber/dexshared/GMaps$GoogleMap;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;->h:Lcom/viber/dexshared/GMaps$GoogleMap;

    .line 138
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;->b:Lcom/viber/dexshared/GMaps$Factory;

    invoke-interface {v0}, Lcom/viber/dexshared/GMaps$Factory;->newMarkerOptions()Lcom/viber/dexshared/GMaps$MarkerOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;->e:Lcom/viber/dexshared/GMaps$MarkerOptions;

    .line 139
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;->e:Lcom/viber/dexshared/GMaps$MarkerOptions;

    invoke-interface {v0, v1, v1}, Lcom/viber/dexshared/GMaps$MarkerOptions;->anchor(FF)Lcom/viber/dexshared/GMaps$MarkerOptions;

    .line 140
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;->e:Lcom/viber/dexshared/GMaps$MarkerOptions;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;->b:Lcom/viber/dexshared/GMaps$Factory;

    invoke-interface {v1}, Lcom/viber/dexshared/GMaps$Factory;->getBitmapDescriptorFactory()Lcom/viber/dexshared/GMaps$BitmapDescriptorFactory;

    move-result-object v1

    const v2, 0x7f020360

    invoke-interface {v1, v2}, Lcom/viber/dexshared/GMaps$BitmapDescriptorFactory;->fromResource(I)Lcom/viber/dexshared/GMaps$BitmapDescriptor;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/viber/dexshared/GMaps$MarkerOptions;->icon(Lcom/viber/dexshared/GMaps$BitmapDescriptor;)Lcom/viber/dexshared/GMaps$MarkerOptions;

    .line 142
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;->b:Lcom/viber/dexshared/GMaps$Factory;

    invoke-interface {v0}, Lcom/viber/dexshared/GMaps$Factory;->newMarkerOptions()Lcom/viber/dexshared/GMaps$MarkerOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;->f:Lcom/viber/dexshared/GMaps$MarkerOptions;

    .line 143
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;->f:Lcom/viber/dexshared/GMaps$MarkerOptions;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;->b:Lcom/viber/dexshared/GMaps$Factory;

    invoke-interface {v1}, Lcom/viber/dexshared/GMaps$Factory;->getBitmapDescriptorFactory()Lcom/viber/dexshared/GMaps$BitmapDescriptorFactory;

    move-result-object v1

    const v2, 0x7f0200d7

    invoke-interface {v1, v2}, Lcom/viber/dexshared/GMaps$BitmapDescriptorFactory;->fromResource(I)Lcom/viber/dexshared/GMaps$BitmapDescriptor;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/viber/dexshared/GMaps$MarkerOptions;->icon(Lcom/viber/dexshared/GMaps$BitmapDescriptor;)Lcom/viber/dexshared/GMaps$MarkerOptions;

    .line 145
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;->h:Lcom/viber/dexshared/GMaps$GoogleMap;

    invoke-interface {v0}, Lcom/viber/dexshared/GMaps$GoogleMap;->getUiSettings()Lcom/viber/dexshared/GMaps$UiSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/viber/dexshared/GMaps$UiSettings;->setZoomControlsEnabled(Z)V

    .line 146
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;->h:Lcom/viber/dexshared/GMaps$GoogleMap;

    invoke-interface {v0}, Lcom/viber/dexshared/GMaps$GoogleMap;->getUiSettings()Lcom/viber/dexshared/GMaps$UiSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/viber/dexshared/GMaps$UiSettings;->setMyLocationButtonEnabled(Z)V

    .line 148
    const v0, 0x7f0702c0

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/extras/map/BalloonView;

    iput-object v0, p0, Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;->m:Lcom/viber/voip/messages/extras/map/BalloonView;

    .line 150
    const v0, 0x7f0702c1

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;->n:Landroid/widget/ImageView;

    .line 153
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;->h:Lcom/viber/dexshared/GMaps$GoogleMap;

    new-instance v1, Lcom/viber/voip/messages/ui/media/u;

    invoke-direct {v1, p0}, Lcom/viber/voip/messages/ui/media/u;-><init>(Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;)V

    invoke-interface {v0, v1}, Lcom/viber/dexshared/GMaps$GoogleMap;->setOnCameraChangeListener(Lcom/viber/dexshared/GMaps$GoogleMap$OnCameraChangeListener;)V

    .line 165
    new-instance v0, Lcom/viber/voip/messages/ui/media/v;

    invoke-direct {v0, p0}, Lcom/viber/voip/messages/ui/media/v;-><init>(Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;)V

    iput-object v0, p0, Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;->o:Lcom/viber/voip/messages/extras/map/n;

    .line 185
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;->d:Lcom/viber/voip/messages/extras/map/l;

    invoke-virtual {v0}, Lcom/viber/voip/messages/extras/map/l;->a()Lcom/viber/voip/messages/extras/map/m;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;->o:Lcom/viber/voip/messages/extras/map/n;

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/extras/map/m;->setMapTouchCallback(Lcom/viber/voip/messages/extras/map/n;)V

    .line 187
    const v0, 0x7f0702bd

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;->p:Landroid/view/View;

    .line 188
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;->p:Landroid/view/View;

    new-instance v1, Lcom/viber/voip/messages/ui/media/w;

    invoke-direct {v1, p0}, Lcom/viber/voip/messages/ui/media/w;-><init>(Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    return-void
.end method

.method private a(Lcom/viber/dexshared/GMaps$LatLng;)V
    .locals 3
    .parameter

    .prologue
    .line 319
    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;->i:Lcom/viber/voip/messages/extras/map/k;

    monitor-enter v1

    .line 320
    :try_start_0
    new-instance v0, Lcom/viber/voip/messages/extras/map/k;

    invoke-direct {v0}, Lcom/viber/voip/messages/extras/map/k;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;->i:Lcom/viber/voip/messages/extras/map/k;

    .line 321
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;->i:Lcom/viber/voip/messages/extras/map/k;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/viber/voip/messages/extras/map/k;->a(Ljava/lang/String;)V

    .line 322
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;->i:Lcom/viber/voip/messages/extras/map/k;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/viber/voip/messages/extras/map/k;->b(Ljava/lang/String;)V

    .line 323
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;->i:Lcom/viber/voip/messages/extras/map/k;

    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Lcom/viber/voip/messages/extras/map/k;->e(Ljava/lang/String;)V

    .line 324
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;->i:Lcom/viber/voip/messages/extras/map/k;

    invoke-virtual {v0, p1}, Lcom/viber/voip/messages/extras/map/k;->a(Lcom/viber/dexshared/GMaps$LatLng;)V

    .line 325
    monitor-exit v1

    .line 326
    return-void

    .line 325
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;)V
    .locals 0
    .parameter

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;->a()V

    return-void
.end method

.method static synthetic a(Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;Landroid/location/Location;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;->c(Landroid/location/Location;)V

    return-void
.end method

.method static synthetic a(Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;Lcom/viber/dexshared/GMaps$LatLng;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;->a(Lcom/viber/dexshared/GMaps$LatLng;)V

    return-void
.end method

.method private a(Ljava/lang/Runnable;)V
    .locals 3
    .parameter

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 124
    new-instance v1, Lcom/viber/voip/messages/ui/media/t;

    invoke-direct {v1, p0, p1}, Lcom/viber/voip/messages/ui/media/t;-><init>(Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;->d:Lcom/viber/voip/messages/extras/map/l;

    .line 131
    const v1, 0x7f0702bf

    iget-object v2, p0, Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;->d:Lcom/viber/voip/messages/extras/map/l;

    invoke-virtual {v2}, Lcom/viber/voip/messages/extras/map/l;->getFragment()Landroid/support/v4/app/Fragment;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 132
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 133
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 420
    return-void
.end method

.method private a(Z)V
    .locals 3
    .parameter

    .prologue
    const/16 v2, 0x400

    .line 409
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onOrientationChanged isPortrait:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;->a(Ljava/lang/String;)V

    .line 410
    if-nez p1, :cond_0

    .line 411
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 416
    :goto_0
    return-void

    .line 414
    :cond_0
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;->q:Z

    return p1
.end method

.method private a(Ljava/lang/Object;)Z
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 378
    if-nez p1, :cond_0

    .line 379
    const-string/jumbo v1, "The system could not identify your location"

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 380
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;->finish()V

    .line 381
    const/4 v0, 0x1

    .line 383
    :cond_0
    return v0
.end method

.method static synthetic b(Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;)Lcom/viber/voip/messages/ui/media/aa;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;->l:Lcom/viber/voip/messages/ui/media/aa;

    return-object v0
.end method

.method private b(Landroid/location/Location;)V
    .locals 1
    .parameter

    .prologue
    .line 220
    new-instance v0, Lcom/viber/voip/messages/ui/media/x;

    invoke-direct {v0, p0, p1}, Lcom/viber/voip/messages/ui/media/x;-><init>(Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;Landroid/location/Location;)V

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 232
    return-void
.end method

.method static synthetic b(Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;Landroid/location/Location;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;->b(Landroid/location/Location;)V

    return-void
.end method

.method static synthetic b(Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;->b(Z)V

    return-void
.end method

.method private b(Z)V
    .locals 5
    .parameter

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 441
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;->r:Lcom/actionbarsherlock/internal/view/menu/ActionMenuItemView;

    if-eqz v0, :cond_2

    .line 442
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;->r:Lcom/actionbarsherlock/internal/view/menu/ActionMenuItemView;

    const v1, 0x7f070138

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 443
    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;->r:Lcom/actionbarsherlock/internal/view/menu/ActionMenuItemView;

    const v2, 0x7f070139

    invoke-virtual {v1, v2}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/actionbarsherlock/internal/widget/CapitalizingButton;

    .line 444
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 445
    if-eqz p1, :cond_3

    move v2, v3

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 446
    if-eqz p1, :cond_0

    move v4, v3

    :cond_0
    invoke-virtual {v1, v4}, Lcom/actionbarsherlock/internal/widget/CapitalizingButton;->setVisibility(I)V

    .line 447
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;->r:Lcom/actionbarsherlock/internal/view/menu/ActionMenuItemView;

    if-eqz p1, :cond_1

    const v3, 0x7f020020

    :cond_1
    invoke-virtual {v0, v3}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItemView;->setBackgroundResource(I)V

    .line 450
    :cond_2
    return-void

    :cond_3
    move v2, v4

    .line 445
    goto :goto_0
.end method

.method private b()Z
    .locals 8

    .prologue
    const-wide v6, 0x3f4d7dbf487fcb92L

    .line 453
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;->g:Lcom/viber/dexshared/GMaps$Marker;

    invoke-interface {v0}, Lcom/viber/dexshared/GMaps$Marker;->getPosition()Lcom/viber/dexshared/GMaps$LatLng;

    move-result-object v0

    invoke-interface {v0}, Lcom/viber/dexshared/GMaps$LatLng;->getLatitude()D

    move-result-wide v0

    iget-object v2, p0, Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;->h:Lcom/viber/dexshared/GMaps$GoogleMap;

    invoke-interface {v2}, Lcom/viber/dexshared/GMaps$GoogleMap;->getCameraPosition()Lcom/viber/dexshared/GMaps$CameraPosition;

    move-result-object v2

    invoke-interface {v2}, Lcom/viber/dexshared/GMaps$CameraPosition;->getTarget()Lcom/viber/dexshared/GMaps$LatLng;

    move-result-object v2

    invoke-interface {v2}, Lcom/viber/dexshared/GMaps$LatLng;->getLatitude()D

    move-result-wide v2

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    .line 454
    iget-object v2, p0, Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;->g:Lcom/viber/dexshared/GMaps$Marker;

    invoke-interface {v2}, Lcom/viber/dexshared/GMaps$Marker;->getPosition()Lcom/viber/dexshared/GMaps$LatLng;

    move-result-object v2

    invoke-interface {v2}, Lcom/viber/dexshared/GMaps$LatLng;->getLongitude()D

    move-result-wide v2

    iget-object v4, p0, Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;->h:Lcom/viber/dexshared/GMaps$GoogleMap;

    invoke-interface {v4}, Lcom/viber/dexshared/GMaps$GoogleMap;->getCameraPosition()Lcom/viber/dexshared/GMaps$CameraPosition;

    move-result-object v4

    invoke-interface {v4}, Lcom/viber/dexshared/GMaps$CameraPosition;->getTarget()Lcom/viber/dexshared/GMaps$LatLng;

    move-result-object v4

    invoke-interface {v4}, Lcom/viber/dexshared/GMaps$LatLng;->getLongitude()D

    move-result-wide v4

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    .line 455
    cmpg-double v0, v0, v6

    if-gez v0, :cond_0

    cmpg-double v0, v2, v6

    if-gez v0, :cond_0

    .line 456
    const/4 v0, 0x0

    .line 458
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic c(Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;->k:Landroid/os/Handler;

    return-object v0
.end method

.method private c(Landroid/location/Location;)V
    .locals 8
    .parameter

    .prologue
    const/high16 v7, 0x4000

    .line 237
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;->a:Lcom/viber/dexshared/GMaps$GroundOverlay;

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;->a:Lcom/viber/dexshared/GMaps$GroundOverlay;

    invoke-interface {v0}, Lcom/viber/dexshared/GMaps$GroundOverlay;->remove()V

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;->b:Lcom/viber/dexshared/GMaps$Factory;

    invoke-interface {v0}, Lcom/viber/dexshared/GMaps$Factory;->getBitmapDescriptorFactory()Lcom/viber/dexshared/GMaps$BitmapDescriptorFactory;

    move-result-object v0

    const v1, 0x7f020357

    invoke-interface {v0, v1}, Lcom/viber/dexshared/GMaps$BitmapDescriptorFactory;->fromResource(I)Lcom/viber/dexshared/GMaps$BitmapDescriptor;

    move-result-object v0

    .line 243
    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;->h:Lcom/viber/dexshared/GMaps$GoogleMap;

    iget-object v2, p0, Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;->b:Lcom/viber/dexshared/GMaps$Factory;

    invoke-interface {v2}, Lcom/viber/dexshared/GMaps$Factory;->newGroundOverlayOptions()Lcom/viber/dexshared/GMaps$GroundOverlayOptions;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/viber/dexshared/GMaps$GroundOverlayOptions;->image(Lcom/viber/dexshared/GMaps$BitmapDescriptor;)Lcom/viber/dexshared/GMaps$GroundOverlayOptions;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/viber/dexshared/GMaps$GroundOverlayOptions;->transparency(F)Lcom/viber/dexshared/GMaps$GroundOverlayOptions;

    move-result-object v0

    iget-object v2, p0, Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;->b:Lcom/viber/dexshared/GMaps$Factory;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v5

    invoke-interface {v2, v3, v4, v5, v6}, Lcom/viber/dexshared/GMaps$Factory;->newLatLng(DD)Lcom/viber/dexshared/GMaps$LatLng;

    move-result-object v2

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v3

    mul-float/2addr v3, v7

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v4

    mul-float/2addr v4, v7

    invoke-interface {v0, v2, v3, v4}, Lcom/viber/dexshared/GMaps$GroundOverlayOptions;->position(Lcom/viber/dexshared/GMaps$LatLng;FF)Lcom/viber/dexshared/GMaps$GroundOverlayOptions;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/viber/dexshared/GMaps$GoogleMap;->addGroundOverlay(Lcom/viber/dexshared/GMaps$GroundOverlayOptions;)Lcom/viber/dexshared/GMaps$GroundOverlay;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;->a:Lcom/viber/dexshared/GMaps$GroundOverlay;

    .line 253
    return-void
.end method

.method static synthetic d(Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;)Z
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;->q:Z

    return v0
.end method

.method static synthetic e(Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;)Lcom/viber/voip/messages/extras/map/k;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;->i:Lcom/viber/voip/messages/extras/map/k;

    return-object v0
.end method

.method static synthetic f(Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;)Lcom/viber/voip/messages/extras/map/BalloonView;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;->m:Lcom/viber/voip/messages/extras/map/BalloonView;

    return-object v0
.end method

.method static synthetic g(Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;)Lcom/viber/dexshared/GMaps$Marker;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;->g:Lcom/viber/dexshared/GMaps$Marker;

    return-object v0
.end method

.method static synthetic h(Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;)Z
    .locals 1
    .parameter

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;->b()Z

    move-result v0

    return v0
.end method

.method static synthetic i(Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;)Lcom/viber/dexshared/GMaps$GoogleMap;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;->h:Lcom/viber/dexshared/GMaps$GoogleMap;

    return-object v0
.end method

.method static synthetic j(Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;)Lcom/viber/dexshared/GMaps$Factory;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;->b:Lcom/viber/dexshared/GMaps$Factory;

    return-object v0
.end method

.method static synthetic k(Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;)Lcom/viber/dexshared/GMaps$MarkerOptions;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;->e:Lcom/viber/dexshared/GMaps$MarkerOptions;

    return-object v0
.end method

.method static synthetic l(Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;)Lcom/viber/voip/messages/extras/map/d;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;->j:Lcom/viber/voip/messages/extras/map/d;

    return-object v0
.end method

.method static synthetic m(Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;)Lcom/viber/voip/a/m;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;->c:Lcom/viber/voip/a/m;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/location/Location;)V
    .locals 2
    .parameter

    .prologue
    .line 284
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onLocationReady oun location = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;->a(Ljava/lang/String;)V

    .line 285
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 316
    :goto_0
    return-void

    .line 287
    :cond_0
    new-instance v0, Lcom/viber/voip/messages/ui/media/y;

    invoke-direct {v0, p0, p1}, Lcom/viber/voip/messages/ui/media/y;-><init>(Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;Landroid/location/Location;)V

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public a(Lcom/viber/voip/messages/extras/map/k;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 257
    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;->i:Lcom/viber/voip/messages/extras/map/k;

    monitor-enter v1

    .line 258
    :try_start_0
    iput-object p1, p0, Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;->i:Lcom/viber/voip/messages/extras/map/k;

    .line 259
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 260
    invoke-virtual {p1}, Lcom/viber/voip/messages/extras/map/k;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0c0420

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p1, v0}, Lcom/viber/voip/messages/extras/map/k;->e(Ljava/lang/String;)V

    .line 261
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;->m:Lcom/viber/voip/messages/extras/map/BalloonView;

    invoke-virtual {v0, p1}, Lcom/viber/voip/messages/extras/map/BalloonView;->a(Lcom/viber/voip/messages/extras/map/k;)Lcom/viber/voip/messages/extras/map/BalloonView;

    .line 263
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;->m:Lcom/viber/voip/messages/extras/map/BalloonView;

    invoke-virtual {v0, v2}, Lcom/viber/voip/messages/extras/map/BalloonView;->setVisibility(I)V

    .line 264
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;->n:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 266
    return-void

    .line 259
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 260
    :cond_0
    invoke-virtual {p1}, Lcom/viber/voip/messages/extras/map/k;->f()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 404
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v0, :cond_0

    :goto_0
    invoke-direct {p0, v0}, Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;->a(Z)V

    .line 405
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 406
    return-void

    .line 404
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 90
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 92
    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;->b:Lcom/viber/dexshared/GMaps$Factory;

    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/viber/dexshared/GMaps$Factory;->initialize(Landroid/content/Context;)V

    .line 93
    const v0, 0x7f0300c7

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;->setContentView(I)V

    .line 95
    new-instance v0, Lcom/viber/voip/messages/extras/map/d;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/viber/voip/messages/extras/map/d;-><init>(Lcom/viber/voip/messages/extras/map/j;Lcom/viber/voip/messages/extras/map/i;)V

    iput-object v0, p0, Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;->j:Lcom/viber/voip/messages/extras/map/d;

    .line 96
    new-instance v0, Lcom/viber/voip/messages/ui/media/aa;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/viber/voip/messages/ui/media/aa;-><init>(Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;Lcom/viber/voip/messages/ui/media/s;)V

    iput-object v0, p0, Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;->l:Lcom/viber/voip/messages/ui/media/aa;

    .line 97
    new-instance v0, Lcom/viber/voip/messages/extras/map/k;

    invoke-direct {v0}, Lcom/viber/voip/messages/extras/map/k;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;->i:Lcom/viber/voip/messages/extras/map/k;

    .line 99
    new-instance v0, Lcom/viber/voip/messages/ui/media/s;

    invoke-direct {v0, p0}, Lcom/viber/voip/messages/ui/media/s;-><init>(Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;)V

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;->a(Ljava/lang/Runnable;)V

    .line 107
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "fromConversation"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 108
    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;->s:Lcom/actionbarsherlock/ActionBarSherlock;

    invoke-virtual {v1}, Lcom/actionbarsherlock/ActionBarSherlock;->getActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v1

    if-eqz v0, :cond_0

    const v0, 0x7f0c0507

    :goto_0
    invoke-virtual {v1, v0}, Lcom/actionbarsherlock/app/ActionBar;->setTitle(I)V

    .line 109
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;->s:Lcom/actionbarsherlock/ActionBarSherlock;

    invoke-virtual {v0}, Lcom/actionbarsherlock/ActionBarSherlock;->getActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 110
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;->s:Lcom/actionbarsherlock/ActionBarSherlock;

    invoke-virtual {v0}, Lcom/actionbarsherlock/ActionBarSherlock;->getActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 112
    invoke-static {p0}, Lcom/viber/voip/util/ao;->b(Landroid/content/Context;)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;->a(Z)V

    .line 114
    sget-object v0, Lcom/viber/voip/dk;->a:Lcom/viber/voip/dk;

    invoke-static {v0}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;->k:Landroid/os/Handler;
    :try_end_0
    .catch Lcom/viber/dexshared/GMaps$NotAvailableException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    :goto_1
    return-void

    .line 108
    :cond_0
    const v0, 0x7f0c068d

    goto :goto_0

    .line 115
    :catch_0
    move-exception v0

    .line 116
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    const v1, 0x7f0c03d7

    invoke-virtual {v0, v1}, Lcom/viber/voip/ViberApplication;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 117
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/viber/voip/ViberApplication;->showToast(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;->finish()V

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter

    .prologue
    .line 331
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;->s:Lcom/actionbarsherlock/ActionBarSherlock;

    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/ActionBarSherlock;->dispatchCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 336
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;->s:Lcom/actionbarsherlock/ActionBarSherlock;

    invoke-virtual {v0}, Lcom/actionbarsherlock/ActionBarSherlock;->getMenuInflater()Lcom/actionbarsherlock/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f100015

    invoke-virtual {v0, v1, p1}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    .line 337
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "fromConversation"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 338
    const v1, 0x7f070476

    invoke-interface {p1, v1}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v1

    const v2, 0x7f02006c

    if-eqz v0, :cond_0

    const v0, 0x7f0c034b

    :goto_0
    new-instance v3, Lcom/viber/voip/messages/ui/media/z;

    invoke-direct {v3, p0}, Lcom/viber/voip/messages/ui/media/z;-><init>(Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;)V

    invoke-static {v1, v2, v0, v3}, Lcom/viber/voip/util/gl;->a(Lcom/actionbarsherlock/view/MenuItem;IILandroid/view/View$OnClickListener;)Lcom/actionbarsherlock/internal/view/menu/ActionMenuItemView;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;->r:Lcom/actionbarsherlock/internal/view/menu/ActionMenuItemView;

    .line 367
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;->g:Lcom/viber/dexshared/GMaps$Marker;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;->g:Lcom/viber/dexshared/GMaps$Marker;

    invoke-interface {v0}, Lcom/viber/dexshared/GMaps$Marker;->getPosition()Lcom/viber/dexshared/GMaps$LatLng;

    move-result-object v0

    invoke-interface {v0}, Lcom/viber/dexshared/GMaps$LatLng;->getLatitude()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_1

    .line 368
    invoke-direct {p0, v5}, Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;->b(Z)V

    .line 374
    :goto_1
    return v5

    .line 338
    :cond_0
    const v0, 0x7f0c047c

    goto :goto_0

    .line 371
    :cond_1
    invoke-direct {p0, v4}, Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;->b(Z)V

    goto :goto_1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter

    .prologue
    .line 388
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;->s:Lcom/actionbarsherlock/ActionBarSherlock;

    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/ActionBarSherlock;->dispatchOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 2
    .parameter

    .prologue
    .line 393
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;->k:Landroid/os/Handler;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;->l:Lcom/viber/voip/messages/ui/media/aa;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 394
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 399
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 396
    :pswitch_0
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/media/LocationMessageActivityV2;->finish()V

    .line 397
    const/4 v0, 0x1

    goto :goto_0

    .line 394
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 436
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    .line 437
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/ViberApplication;->notifyActivityOnForeground(ZLjava/lang/String;)V

    .line 438
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 430
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 431
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/ViberApplication;->notifyActivityOnForeground(ZLjava/lang/String;)V

    .line 432
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 423
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 425
    return-void
.end method
