.class public Lcom/viber/voip/messages/ui/media/GoogleApiMapPreviewActivityV2;
.super Landroid/support/v4/app/FragmentActivity;
.source "SourceFile"

# interfaces
.implements Lcom/actionbarsherlock/ActionBarSherlock$OnCreateOptionsMenuListener;
.implements Lcom/actionbarsherlock/ActionBarSherlock$OnOptionsItemSelectedListener;
.implements Lcom/viber/dexshared/GMaps$GoogleMap$OnMapClickListener;
.implements Lcom/viber/voip/messages/ui/media/ac;


# instance fields
.field private a:Lcom/viber/dexshared/GMaps$Factory;

.field private b:Lcom/viber/voip/messages/extras/map/l;

.field private c:Lcom/viber/dexshared/GMaps$GoogleMap;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;

.field private f:Lcom/viber/dexshared/GMaps$MarkerOptions;

.field private g:Lcom/viber/dexshared/GMaps$Marker;

.field private h:Lcom/viber/voip/messages/ui/media/ab;

.field private i:Lcom/viber/voip/messages/ui/media/n;

.field private j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 41
    invoke-static {}, Lcom/viber/voip/ViberEnv;->getGMapsFactory()Lcom/viber/dexshared/GMaps$Factory;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/ui/media/GoogleApiMapPreviewActivityV2;->a:Lcom/viber/dexshared/GMaps$Factory;

    .line 51
    new-instance v0, Lcom/viber/voip/messages/ui/media/ab;

    invoke-direct {v0}, Lcom/viber/voip/messages/ui/media/ab;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/messages/ui/media/GoogleApiMapPreviewActivityV2;->h:Lcom/viber/voip/messages/ui/media/ab;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/messages/ui/media/GoogleApiMapPreviewActivityV2;->j:Ljava/util/ArrayList;

    .line 272
    return-void
.end method

.method private a(Landroid/location/Address;Ljava/lang/String;IIJLjava/lang/String;FJLjava/lang/String;Z)V
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 160
    .line 161
    new-instance v3, Lcom/viber/voip/messages/extras/map/k;

    invoke-direct {v3}, Lcom/viber/voip/messages/extras/map/k;-><init>()V

    .line 162
    iget-object v2, p0, Lcom/viber/voip/messages/ui/media/GoogleApiMapPreviewActivityV2;->a:Lcom/viber/dexshared/GMaps$Factory;

    int-to-double v4, p3

    const-wide v6, 0x412e848000000000L

    div-double/2addr v4, v6

    int-to-double v6, p4

    const-wide v8, 0x412e848000000000L

    div-double/2addr v6, v8

    invoke-interface {v2, v4, v5, v6, v7}, Lcom/viber/dexshared/GMaps$Factory;->newLatLng(DD)Lcom/viber/dexshared/GMaps$LatLng;

    move-result-object v2

    .line 169
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 171
    :goto_0
    const/16 v4, 0x155

    move-wide/from16 v0, p5

    invoke-static {p0, v0, v1, v4}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v4

    .line 173
    invoke-virtual {v3, v4}, Lcom/viber/voip/messages/extras/map/k;->c(Ljava/lang/String;)V

    .line 176
    invoke-virtual {v3, v2}, Lcom/viber/voip/messages/extras/map/k;->a(Lcom/viber/dexshared/GMaps$LatLng;)V

    .line 177
    move-object/from16 v0, p7

    invoke-virtual {v3, v0}, Lcom/viber/voip/messages/extras/map/k;->e(Ljava/lang/String;)V

    .line 179
    iget-object v4, p0, Lcom/viber/voip/messages/ui/media/GoogleApiMapPreviewActivityV2;->a:Lcom/viber/dexshared/GMaps$Factory;

    iget-object v2, p0, Lcom/viber/voip/messages/ui/media/GoogleApiMapPreviewActivityV2;->a:Lcom/viber/dexshared/GMaps$Factory;

    int-to-double v5, p3

    const-wide v7, 0x412e848000000000L

    div-double/2addr v5, v7

    int-to-double v7, p4

    const-wide v9, 0x412e848000000000L

    div-double/2addr v7, v9

    invoke-interface {v2, v5, v6, v7, v8}, Lcom/viber/dexshared/GMaps$Factory;->newLatLng(DD)Lcom/viber/dexshared/GMaps$LatLng;

    move-result-object v5

    if-eqz p12, :cond_3

    const/high16 v2, 0x4180

    :goto_1
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface {v4, v5, v2, v6, v7}, Lcom/viber/dexshared/GMaps$Factory;->newCameraPosition(Lcom/viber/dexshared/GMaps$LatLng;FFF)Lcom/viber/dexshared/GMaps$CameraPosition;

    move-result-object v2

    .line 180
    if-eqz p12, :cond_0

    .line 181
    iget-object v4, p0, Lcom/viber/voip/messages/ui/media/GoogleApiMapPreviewActivityV2;->a:Lcom/viber/dexshared/GMaps$Factory;

    invoke-interface {v4}, Lcom/viber/dexshared/GMaps$Factory;->newMarkerOptions()Lcom/viber/dexshared/GMaps$MarkerOptions;

    move-result-object v4

    iput-object v4, p0, Lcom/viber/voip/messages/ui/media/GoogleApiMapPreviewActivityV2;->f:Lcom/viber/dexshared/GMaps$MarkerOptions;

    .line 182
    iget-object v4, p0, Lcom/viber/voip/messages/ui/media/GoogleApiMapPreviewActivityV2;->f:Lcom/viber/dexshared/GMaps$MarkerOptions;

    iget-object v5, p0, Lcom/viber/voip/messages/ui/media/GoogleApiMapPreviewActivityV2;->a:Lcom/viber/dexshared/GMaps$Factory;

    invoke-interface {v5}, Lcom/viber/dexshared/GMaps$Factory;->getBitmapDescriptorFactory()Lcom/viber/dexshared/GMaps$BitmapDescriptorFactory;

    move-result-object v5

    const v6, 0x7f0200d7

    invoke-interface {v5, v6}, Lcom/viber/dexshared/GMaps$BitmapDescriptorFactory;->fromResource(I)Lcom/viber/dexshared/GMaps$BitmapDescriptor;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/viber/dexshared/GMaps$MarkerOptions;->icon(Lcom/viber/dexshared/GMaps$BitmapDescriptor;)Lcom/viber/dexshared/GMaps$MarkerOptions;

    .line 184
    iget-object v4, p0, Lcom/viber/voip/messages/ui/media/GoogleApiMapPreviewActivityV2;->f:Lcom/viber/dexshared/GMaps$MarkerOptions;

    invoke-virtual {v3}, Lcom/viber/voip/messages/extras/map/k;->g()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/viber/dexshared/GMaps$MarkerOptions;->title(Ljava/lang/String;)Lcom/viber/dexshared/GMaps$MarkerOptions;

    .line 185
    iget-object v4, p0, Lcom/viber/voip/messages/ui/media/GoogleApiMapPreviewActivityV2;->f:Lcom/viber/dexshared/GMaps$MarkerOptions;

    invoke-virtual {v3}, Lcom/viber/voip/messages/extras/map/k;->e()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Lcom/viber/dexshared/GMaps$MarkerOptions;->snippet(Ljava/lang/String;)Lcom/viber/dexshared/GMaps$MarkerOptions;

    .line 188
    iget-object v3, p0, Lcom/viber/voip/messages/ui/media/GoogleApiMapPreviewActivityV2;->f:Lcom/viber/dexshared/GMaps$MarkerOptions;

    iget-object v4, p0, Lcom/viber/voip/messages/ui/media/GoogleApiMapPreviewActivityV2;->a:Lcom/viber/dexshared/GMaps$Factory;

    invoke-interface {v2}, Lcom/viber/dexshared/GMaps$CameraPosition;->getTarget()Lcom/viber/dexshared/GMaps$LatLng;

    move-result-object v5

    invoke-interface {v5}, Lcom/viber/dexshared/GMaps$LatLng;->getLatitude()D

    move-result-wide v5

    invoke-interface {v2}, Lcom/viber/dexshared/GMaps$CameraPosition;->getTarget()Lcom/viber/dexshared/GMaps$LatLng;

    move-result-object v7

    invoke-interface {v7}, Lcom/viber/dexshared/GMaps$LatLng;->getLongitude()D

    move-result-wide v7

    invoke-interface {v4, v5, v6, v7, v8}, Lcom/viber/dexshared/GMaps$Factory;->newLatLng(DD)Lcom/viber/dexshared/GMaps$LatLng;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/viber/dexshared/GMaps$MarkerOptions;->position(Lcom/viber/dexshared/GMaps$LatLng;)Lcom/viber/dexshared/GMaps$MarkerOptions;

    .line 189
    iget-object v3, p0, Lcom/viber/voip/messages/ui/media/GoogleApiMapPreviewActivityV2;->c:Lcom/viber/dexshared/GMaps$GoogleMap;

    iget-object v4, p0, Lcom/viber/voip/messages/ui/media/GoogleApiMapPreviewActivityV2;->f:Lcom/viber/dexshared/GMaps$MarkerOptions;

    invoke-interface {v3, v4}, Lcom/viber/dexshared/GMaps$GoogleMap;->addMarker(Lcom/viber/dexshared/GMaps$MarkerOptions;)Lcom/viber/dexshared/GMaps$Marker;

    move-result-object v3

    iput-object v3, p0, Lcom/viber/voip/messages/ui/media/GoogleApiMapPreviewActivityV2;->g:Lcom/viber/dexshared/GMaps$Marker;

    .line 190
    iget-object v3, p0, Lcom/viber/voip/messages/ui/media/GoogleApiMapPreviewActivityV2;->g:Lcom/viber/dexshared/GMaps$Marker;

    invoke-interface {v3}, Lcom/viber/dexshared/GMaps$Marker;->showInfoWindow()V

    .line 193
    :cond_0
    iget-object v3, p0, Lcom/viber/voip/messages/ui/media/GoogleApiMapPreviewActivityV2;->c:Lcom/viber/dexshared/GMaps$GoogleMap;

    iget-object v4, p0, Lcom/viber/voip/messages/ui/media/GoogleApiMapPreviewActivityV2;->a:Lcom/viber/dexshared/GMaps$Factory;

    invoke-interface {v4}, Lcom/viber/dexshared/GMaps$Factory;->getCameraUpdateFactory()Lcom/viber/dexshared/GMaps$CameraUpdateFactory;

    move-result-object v4

    invoke-interface {v4, v2}, Lcom/viber/dexshared/GMaps$CameraUpdateFactory;->newCameraPosition(Lcom/viber/dexshared/GMaps$CameraPosition;)Lcom/viber/dexshared/GMaps$CameraUpdate;

    move-result-object v2

    invoke-interface {v3, v2}, Lcom/viber/dexshared/GMaps$GoogleMap;->animateCamera(Lcom/viber/dexshared/GMaps$CameraUpdate;)V

    .line 194
    iget-object v2, p0, Lcom/viber/voip/messages/ui/media/GoogleApiMapPreviewActivityV2;->c:Lcom/viber/dexshared/GMaps$GoogleMap;

    invoke-interface {v2}, Lcom/viber/dexshared/GMaps$GoogleMap;->getUiSettings()Lcom/viber/dexshared/GMaps$UiSettings;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/viber/dexshared/GMaps$UiSettings;->setZoomControlsEnabled(Z)V

    .line 196
    iget-object v2, p0, Lcom/viber/voip/messages/ui/media/GoogleApiMapPreviewActivityV2;->h:Lcom/viber/voip/messages/ui/media/ab;

    invoke-virtual {v2}, Lcom/viber/voip/messages/ui/media/ab;->a()Lcom/actionbarsherlock/ActionBarSherlock;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/actionbarsherlock/ActionBarSherlock;->setProgressBarIndeterminateVisibility(Z)V

    .line 197
    const-wide/16 v2, 0x0

    cmp-long v2, p9, v2

    if-lez v2, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static/range {p11 .. p11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 198
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/viber/voip/ViberApplication;->getMessagesManager()Lcom/viber/voip/messages/i;

    move-result-object v2

    invoke-interface {v2}, Lcom/viber/voip/messages/i;->c()Lcom/viber/voip/messages/controller/x;

    move-result-object v2

    move-wide/from16 v0, p9

    invoke-interface {v2, v0, v1, p2}, Lcom/viber/voip/messages/controller/x;->c(JLjava/lang/String;)V

    .line 200
    :cond_1
    return-void

    :cond_2
    move-object/from16 p7, p2

    .line 169
    goto/16 :goto_0

    .line 179
    :cond_3
    const/high16 v2, 0x4120

    goto/16 :goto_1
.end method

.method static synthetic a(Lcom/viber/voip/messages/ui/media/GoogleApiMapPreviewActivityV2;)V
    .locals 0
    .parameter

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/media/GoogleApiMapPreviewActivityV2;->d()V

    return-void
.end method

.method static synthetic a(Lcom/viber/voip/messages/ui/media/GoogleApiMapPreviewActivityV2;Landroid/location/Address;Ljava/lang/String;IIJLjava/lang/String;FJLjava/lang/String;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 39
    invoke-direct/range {p0 .. p12}, Lcom/viber/voip/messages/ui/media/GoogleApiMapPreviewActivityV2;->a(Landroid/location/Address;Ljava/lang/String;IIJLjava/lang/String;FJLjava/lang/String;Z)V

    return-void
.end method

.method private a(Ljava/lang/Runnable;)V
    .locals 3
    .parameter

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/media/GoogleApiMapPreviewActivityV2;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 83
    new-instance v1, Lcom/viber/voip/messages/ui/media/j;

    invoke-direct {v1, p0, p1}, Lcom/viber/voip/messages/ui/media/j;-><init>(Lcom/viber/voip/messages/ui/media/GoogleApiMapPreviewActivityV2;Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/viber/voip/messages/ui/media/GoogleApiMapPreviewActivityV2;->b:Lcom/viber/voip/messages/extras/map/l;

    .line 90
    const v1, 0x7f0702bf

    iget-object v2, p0, Lcom/viber/voip/messages/ui/media/GoogleApiMapPreviewActivityV2;->b:Lcom/viber/voip/messages/extras/map/l;

    invoke-virtual {v2}, Lcom/viber/voip/messages/extras/map/l;->getFragment()Landroid/support/v4/app/Fragment;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 91
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 93
    return-void
.end method

.method static synthetic b(Lcom/viber/voip/messages/ui/media/GoogleApiMapPreviewActivityV2;)V
    .locals 0
    .parameter

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/media/GoogleApiMapPreviewActivityV2;->e()V

    return-void
.end method

.method private b(Ljava/lang/Runnable;)V
    .locals 1
    .parameter

    .prologue
    .line 143
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/GoogleApiMapPreviewActivityV2;->j:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/GoogleApiMapPreviewActivityV2;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    :goto_0
    return-void

    .line 146
    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method static synthetic c(Lcom/viber/voip/messages/ui/media/GoogleApiMapPreviewActivityV2;)Lcom/viber/dexshared/GMaps$Marker;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/GoogleApiMapPreviewActivityV2;->g:Lcom/viber/dexshared/GMaps$Marker;

    return-object v0
.end method

.method static synthetic d(Lcom/viber/voip/messages/ui/media/GoogleApiMapPreviewActivityV2;)Lcom/viber/dexshared/GMaps$GoogleMap;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/GoogleApiMapPreviewActivityV2;->c:Lcom/viber/dexshared/GMaps$GoogleMap;

    return-object v0
.end method

.method private d()V
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/GoogleApiMapPreviewActivityV2;->b:Lcom/viber/voip/messages/extras/map/l;

    invoke-virtual {v0}, Lcom/viber/voip/messages/extras/map/l;->getMap()Lcom/viber/dexshared/GMaps$GoogleMap;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/ui/media/GoogleApiMapPreviewActivityV2;->c:Lcom/viber/dexshared/GMaps$GoogleMap;

    .line 97
    new-instance v0, Lcom/viber/voip/messages/ui/media/n;

    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/media/GoogleApiMapPreviewActivityV2;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/viber/voip/messages/ui/media/n;-><init>(Lcom/viber/voip/messages/ui/media/GoogleApiMapPreviewActivityV2;Landroid/view/LayoutInflater;)V

    iput-object v0, p0, Lcom/viber/voip/messages/ui/media/GoogleApiMapPreviewActivityV2;->i:Lcom/viber/voip/messages/ui/media/n;

    .line 98
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/GoogleApiMapPreviewActivityV2;->c:Lcom/viber/dexshared/GMaps$GoogleMap;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/GoogleApiMapPreviewActivityV2;->i:Lcom/viber/voip/messages/ui/media/n;

    invoke-interface {v0, v1}, Lcom/viber/dexshared/GMaps$GoogleMap;->setInfoWindowAdapter(Lcom/viber/dexshared/GMaps$GoogleMap$InfoWindowAdapter;)V

    .line 99
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/GoogleApiMapPreviewActivityV2;->c:Lcom/viber/dexshared/GMaps$GoogleMap;

    invoke-interface {v0, p0}, Lcom/viber/dexshared/GMaps$GoogleMap;->setOnMapClickListener(Lcom/viber/dexshared/GMaps$GoogleMap$OnMapClickListener;)V

    .line 100
    const v0, 0x7f0702bd

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/ui/media/GoogleApiMapPreviewActivityV2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/ui/media/GoogleApiMapPreviewActivityV2;->d:Landroid/view/View;

    .line 101
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/GoogleApiMapPreviewActivityV2;->d:Landroid/view/View;

    new-instance v1, Lcom/viber/voip/messages/ui/media/k;

    invoke-direct {v1, p0}, Lcom/viber/voip/messages/ui/media/k;-><init>(Lcom/viber/voip/messages/ui/media/GoogleApiMapPreviewActivityV2;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    return-void
.end method

.method static synthetic e(Lcom/viber/voip/messages/ui/media/GoogleApiMapPreviewActivityV2;)Lcom/viber/dexshared/GMaps$Factory;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/GoogleApiMapPreviewActivityV2;->a:Lcom/viber/dexshared/GMaps$Factory;

    return-object v0
.end method

.method private e()V
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/GoogleApiMapPreviewActivityV2;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 152
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 154
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/viber/voip/messages/ui/media/GoogleApiMapPreviewActivityV2;->j:Ljava/util/ArrayList;

    .line 155
    return-void
.end method


# virtual methods
.method public a()Landroid/app/Activity;
    .locals 0

    .prologue
    .line 64
    return-object p0
.end method

.method public a(IIJLjava/lang/String;FJLjava/lang/String;Z)V
    .locals 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 124
    new-instance v0, Lcom/viber/voip/messages/ui/media/l;

    move-object v1, p0

    move-object/from16 v2, p9

    move v3, p1

    move v4, p2

    move-wide v5, p3

    move-object/from16 v7, p5

    move/from16 v8, p6

    move-wide/from16 v9, p7

    move/from16 v11, p10

    invoke-direct/range {v0 .. v11}, Lcom/viber/voip/messages/ui/media/l;-><init>(Lcom/viber/voip/messages/ui/media/GoogleApiMapPreviewActivityV2;Ljava/lang/String;IIJLjava/lang/String;FJZ)V

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/ui/media/GoogleApiMapPreviewActivityV2;->b(Ljava/lang/Runnable;)V

    .line 140
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 119
    const v0, 0x7f0300c6

    return v0
.end method

.method public c()Landroid/view/View;
    .locals 1

    .prologue
    .line 69
    const v0, 0x7f0702bd

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/ui/media/GoogleApiMapPreviewActivityV2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/ui/media/GoogleApiMapPreviewActivityV2;->d:Landroid/view/View;

    .line 70
    const v0, 0x7f0702be

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/ui/media/GoogleApiMapPreviewActivityV2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/ui/media/GoogleApiMapPreviewActivityV2;->e:Landroid/view/View;

    .line 71
    new-instance v0, Lcom/viber/voip/messages/ui/media/i;

    invoke-direct {v0, p0}, Lcom/viber/voip/messages/ui/media/i;-><init>(Lcom/viber/voip/messages/ui/media/GoogleApiMapPreviewActivityV2;)V

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/ui/media/GoogleApiMapPreviewActivityV2;->a(Ljava/lang/Runnable;)V

    .line 78
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/GoogleApiMapPreviewActivityV2;->e:Landroid/view/View;

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter

    .prologue
    .line 204
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/GoogleApiMapPreviewActivityV2;->h:Lcom/viber/voip/messages/ui/media/ab;

    invoke-virtual {v0, p1}, Lcom/viber/voip/messages/ui/media/ab;->a(Landroid/content/res/Configuration;)V

    .line 205
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 206
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter

    .prologue
    .line 256
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/GoogleApiMapPreviewActivityV2;->h:Lcom/viber/voip/messages/ui/media/ab;

    invoke-virtual {v0, p1}, Lcom/viber/voip/messages/ui/media/ab;->a(Landroid/view/MenuItem;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 257
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 259
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 57
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/GoogleApiMapPreviewActivityV2;->h:Lcom/viber/voip/messages/ui/media/ab;

    invoke-virtual {v0, p0}, Lcom/viber/voip/messages/ui/media/ab;->a(Lcom/viber/voip/messages/ui/media/ac;)V

    .line 60
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 230
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentActivity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 231
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/GoogleApiMapPreviewActivityV2;->h:Lcom/viber/voip/messages/ui/media/ab;

    invoke-virtual {v0, p1, p2, p3}, Lcom/viber/voip/messages/ui/media/ab;->a(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 232
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter

    .prologue
    .line 236
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/GoogleApiMapPreviewActivityV2;->h:Lcom/viber/voip/messages/ui/media/ab;

    invoke-virtual {v0, p1}, Lcom/viber/voip/messages/ui/media/ab;->a(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z
    .locals 1
    .parameter

    .prologue
    .line 246
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/GoogleApiMapPreviewActivityV2;->h:Lcom/viber/voip/messages/ui/media/ab;

    invoke-virtual {v0, p1}, Lcom/viber/voip/messages/ui/media/ab;->a(Lcom/actionbarsherlock/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onMapClick(Lcom/viber/dexshared/GMaps$LatLng;)V
    .locals 1
    .parameter

    .prologue
    .line 266
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/GoogleApiMapPreviewActivityV2;->g:Lcom/viber/dexshared/GMaps$Marker;

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/GoogleApiMapPreviewActivityV2;->g:Lcom/viber/dexshared/GMaps$Marker;

    invoke-interface {v0}, Lcom/viber/dexshared/GMaps$Marker;->showInfoWindow()V

    .line 270
    :cond_0
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .parameter

    .prologue
    .line 222
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 223
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/GoogleApiMapPreviewActivityV2;->h:Lcom/viber/voip/messages/ui/media/ab;

    invoke-virtual {v0, p1}, Lcom/viber/voip/messages/ui/media/ab;->a(Landroid/content/Intent;)V

    .line 224
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter

    .prologue
    .line 251
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/GoogleApiMapPreviewActivityV2;->h:Lcom/viber/voip/messages/ui/media/ab;

    invoke-virtual {v0, p1}, Lcom/viber/voip/messages/ui/media/ab;->b(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 1
    .parameter

    .prologue
    .line 241
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/GoogleApiMapPreviewActivityV2;->h:Lcom/viber/voip/messages/ui/media/ab;

    invoke-virtual {v0, p1}, Lcom/viber/voip/messages/ui/media/ab;->a(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/GoogleApiMapPreviewActivityV2;->h:Lcom/viber/voip/messages/ui/media/ab;

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/media/ab;->c()V

    .line 211
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStart()V

    .line 212
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/GoogleApiMapPreviewActivityV2;->h:Lcom/viber/voip/messages/ui/media/ab;

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/media/ab;->d()V

    .line 217
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStop()V

    .line 218
    return-void
.end method
