.class public Lcom/viber/voip/messages/ui/media/GoogleApiMapPreViewActivity;
.super Lcom/viber/voip/app/ViberMapActivity;
.source "SourceFile"

# interfaces
.implements Lcom/actionbarsherlock/ActionBarSherlock$OnCreateOptionsMenuListener;
.implements Lcom/actionbarsherlock/ActionBarSherlock$OnOptionsItemSelectedListener;
.implements Lcom/viber/voip/messages/ui/media/ac;


# static fields
.field public static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/google/android/maps/MapView;

.field private c:Landroid/view/View;

.field private d:Lcom/google/android/maps/GeoPoint;

.field private e:Lcom/viber/voip/messages/ui/media/ab;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/viber/voip/messages/ui/media/GoogleApiMapPreViewActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/messages/ui/media/GoogleApiMapPreViewActivity;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/viber/voip/app/ViberMapActivity;-><init>()V

    .line 46
    new-instance v0, Lcom/viber/voip/messages/ui/media/ab;

    invoke-direct {v0}, Lcom/viber/voip/messages/ui/media/ab;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/messages/ui/media/GoogleApiMapPreViewActivity;->e:Lcom/viber/voip/messages/ui/media/ab;

    return-void
.end method

.method static synthetic a(Lcom/viber/voip/messages/ui/media/GoogleApiMapPreViewActivity;)Lcom/google/android/maps/GeoPoint;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/GoogleApiMapPreViewActivity;->d:Lcom/google/android/maps/GeoPoint;

    return-object v0
.end method

.method private a(Landroid/location/Address;Ljava/lang/String;IIJLjava/lang/String;FJLjava/lang/String;Z)V
    .locals 5
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
    .line 102
    .line 103
    new-instance v0, Lcom/viber/voip/messages/extras/map/k;

    invoke-direct {v0}, Lcom/viber/voip/messages/extras/map/k;-><init>()V

    .line 104
    new-instance v1, Lcom/google/android/maps/GeoPoint;

    invoke-direct {v1, p3, p4}, Lcom/google/android/maps/GeoPoint;-><init>(II)V

    iput-object v1, p0, Lcom/viber/voip/messages/ui/media/GoogleApiMapPreViewActivity;->d:Lcom/google/android/maps/GeoPoint;

    .line 107
    const v1, 0x7f0200d7

    .line 112
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 114
    :goto_0
    const/16 v2, 0x155

    invoke-static {p0, p5, p6, v2}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v2

    .line 116
    invoke-virtual {v0, v2}, Lcom/viber/voip/messages/extras/map/k;->c(Ljava/lang/String;)V

    .line 119
    new-instance v2, Lcom/viber/voip/messages/extras/map/b;

    iget-object v3, p0, Lcom/viber/voip/messages/ui/media/GoogleApiMapPreViewActivity;->d:Lcom/google/android/maps/GeoPoint;

    invoke-virtual {v3}, Lcom/google/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v3

    iget-object v4, p0, Lcom/viber/voip/messages/ui/media/GoogleApiMapPreViewActivity;->d:Lcom/google/android/maps/GeoPoint;

    invoke-virtual {v4}, Lcom/google/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v4

    invoke-direct {v2, v3, v4}, Lcom/viber/voip/messages/extras/map/b;-><init>(II)V

    invoke-virtual {v0, v2}, Lcom/viber/voip/messages/extras/map/k;->a(Lcom/viber/voip/messages/extras/map/b;)V

    .line 120
    invoke-virtual {v0, p7}, Lcom/viber/voip/messages/extras/map/k;->e(Ljava/lang/String;)V

    .line 122
    if-eqz p12, :cond_0

    .line 123
    new-instance v2, Lcom/viber/voip/messages/extras/map/a;

    iget-object v3, p0, Lcom/viber/voip/messages/ui/media/GoogleApiMapPreViewActivity;->b:Lcom/google/android/maps/MapView;

    const v4, 0x7f0200d7

    invoke-direct {v2, p0, v3, v4}, Lcom/viber/voip/messages/extras/map/a;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;I)V

    .line 124
    invoke-virtual {v2, v0}, Lcom/viber/voip/messages/extras/map/a;->a(Lcom/viber/voip/messages/extras/map/k;)Lcom/viber/voip/messages/extras/map/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/messages/extras/map/a;->a()V

    .line 126
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/GoogleApiMapPreViewActivity;->b:Lcom/google/android/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/maps/MapView;->getOverlays()Ljava/util/List;

    move-result-object v0

    .line 127
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    new-instance v2, Lcom/viber/voip/messages/extras/map/c;

    iget-object v3, p0, Lcom/viber/voip/messages/ui/media/GoogleApiMapPreViewActivity;->d:Lcom/google/android/maps/GeoPoint;

    const/high16 v4, -0x4080

    invoke-direct {v2, v3, p0, v4, v1}, Lcom/viber/voip/messages/extras/map/c;-><init>(Lcom/google/android/maps/GeoPoint;Landroid/content/Context;FI)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/GoogleApiMapPreViewActivity;->b:Lcom/google/android/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/maps/MapView;->getController()Lcom/google/android/maps/MapController;

    move-result-object v1

    .line 132
    if-eqz p12, :cond_3

    const/16 v0, 0x10

    :goto_1
    invoke-virtual {v1, v0}, Lcom/google/android/maps/MapController;->setZoom(I)I

    .line 133
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/GoogleApiMapPreViewActivity;->d:Lcom/google/android/maps/GeoPoint;

    invoke-virtual {v1, v0}, Lcom/google/android/maps/MapController;->animateTo(Lcom/google/android/maps/GeoPoint;)V

    .line 134
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/GoogleApiMapPreViewActivity;->b:Lcom/google/android/maps/MapView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/maps/MapView;->setBuiltInZoomControls(Z)V

    .line 136
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/GoogleApiMapPreViewActivity;->e:Lcom/viber/voip/messages/ui/media/ab;

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/media/ab;->a()Lcom/actionbarsherlock/ActionBarSherlock;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/ActionBarSherlock;->setProgressBarIndeterminateVisibility(Z)V

    .line 137
    const-wide/16 v0, 0x0

    cmp-long v0, p9, v0

    if-lez v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static/range {p11 .. p11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 138
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getMessagesManager()Lcom/viber/voip/messages/i;

    move-result-object v0

    invoke-interface {v0}, Lcom/viber/voip/messages/i;->c()Lcom/viber/voip/messages/controller/x;

    move-result-object v0

    invoke-interface {v0, p9, p10, p2}, Lcom/viber/voip/messages/controller/x;->c(JLjava/lang/String;)V

    .line 140
    :cond_1
    return-void

    :cond_2
    move-object p7, p2

    .line 112
    goto/16 :goto_0

    .line 132
    :cond_3
    const/16 v0, 0xa

    goto :goto_1
.end method

.method static synthetic a(Lcom/viber/voip/messages/ui/media/GoogleApiMapPreViewActivity;Landroid/location/Address;Ljava/lang/String;IIJLjava/lang/String;FJLjava/lang/String;Z)V
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
    .line 38
    invoke-direct/range {p0 .. p12}, Lcom/viber/voip/messages/ui/media/GoogleApiMapPreViewActivity;->a(Landroid/location/Address;Ljava/lang/String;IIJLjava/lang/String;FJLjava/lang/String;Z)V

    return-void
.end method

.method static synthetic b(Lcom/viber/voip/messages/ui/media/GoogleApiMapPreViewActivity;)Lcom/google/android/maps/MapView;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/GoogleApiMapPreViewActivity;->b:Lcom/google/android/maps/MapView;

    return-object v0
.end method


# virtual methods
.method public a()Landroid/app/Activity;
    .locals 0

    .prologue
    .line 56
    return-object p0
.end method

.method public a(IIJLjava/lang/String;FJLjava/lang/String;Z)V
    .locals 17
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 86
    invoke-static/range {p9 .. p9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getLocationManager()Lcom/viber/voip/messages/extras/a/a;

    move-result-object v12

    invoke-static/range {p1 .. p1}, Lcom/viber/voip/messages/extras/map/d;->a(I)D

    move-result-wide v13

    invoke-static/range {p2 .. p2}, Lcom/viber/voip/messages/extras/map/d;->a(I)D

    move-result-wide v15

    new-instance v0, Lcom/viber/voip/messages/ui/media/h;

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move-wide/from16 v4, p3

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-wide/from16 v8, p7

    move-object/from16 v10, p9

    move/from16 v11, p10

    invoke-direct/range {v0 .. v11}, Lcom/viber/voip/messages/ui/media/h;-><init>(Lcom/viber/voip/messages/ui/media/GoogleApiMapPreViewActivity;IIJLjava/lang/String;FJLjava/lang/String;Z)V

    move-object v1, v12

    move-wide v2, v13

    move-wide v4, v15

    move-object v6, v0

    invoke-interface/range {v1 .. v6}, Lcom/viber/voip/messages/extras/a/a;->a(DDLcom/viber/voip/messages/extras/a/c;)V

    .line 97
    :goto_0
    return-void

    .line 95
    :cond_0
    const/4 v1, 0x0

    move-object/from16 v0, p0

    move-object/from16 v2, p9

    move/from16 v3, p1

    move/from16 v4, p2

    move-wide/from16 v5, p3

    move-object/from16 v7, p5

    move/from16 v8, p6

    move-wide/from16 v9, p7

    move-object/from16 v11, p9

    move/from16 v12, p10

    invoke-direct/range {v0 .. v12}, Lcom/viber/voip/messages/ui/media/GoogleApiMapPreViewActivity;->a(Landroid/location/Address;Ljava/lang/String;IIJLjava/lang/String;FJLjava/lang/String;Z)V

    goto :goto_0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 61
    const v0, 0x7f0300c5

    return v0
.end method

.method public c()Landroid/view/View;
    .locals 2

    .prologue
    .line 67
    const v0, 0x7f0702bc

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/ui/media/GoogleApiMapPreViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/MapView;

    iput-object v0, p0, Lcom/viber/voip/messages/ui/media/GoogleApiMapPreViewActivity;->b:Lcom/google/android/maps/MapView;

    .line 68
    const v0, 0x7f0702bd

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/ui/media/GoogleApiMapPreViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/ui/media/GoogleApiMapPreViewActivity;->c:Landroid/view/View;

    .line 69
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/GoogleApiMapPreViewActivity;->c:Landroid/view/View;

    new-instance v1, Lcom/viber/voip/messages/ui/media/g;

    invoke-direct {v1, p0}, Lcom/viber/voip/messages/ui/media/g;-><init>(Lcom/viber/voip/messages/ui/media/GoogleApiMapPreViewActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/GoogleApiMapPreViewActivity;->b:Lcom/google/android/maps/MapView;

    return-object v0
.end method

.method protected isRouteDisplayed()Z
    .locals 1

    .prologue
    .line 144
    const/4 v0, 0x0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter

    .prologue
    .line 149
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/GoogleApiMapPreViewActivity;->e:Lcom/viber/voip/messages/ui/media/ab;

    invoke-virtual {v0, p1}, Lcom/viber/voip/messages/ui/media/ab;->a(Landroid/content/res/Configuration;)V

    .line 150
    invoke-super {p0, p1}, Lcom/viber/voip/app/ViberMapActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 151
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter

    .prologue
    .line 180
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/GoogleApiMapPreViewActivity;->e:Lcom/viber/voip/messages/ui/media/ab;

    invoke-virtual {v0, p1}, Lcom/viber/voip/messages/ui/media/ab;->a(Landroid/view/MenuItem;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 181
    invoke-super {p0, p1}, Lcom/viber/voip/app/ViberMapActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 183
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
    .line 50
    invoke-super {p0, p1}, Lcom/viber/voip/app/ViberMapActivity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/GoogleApiMapPreViewActivity;->e:Lcom/viber/voip/messages/ui/media/ab;

    invoke-virtual {v0, p0}, Lcom/viber/voip/messages/ui/media/ab;->a(Lcom/viber/voip/messages/ui/media/ac;)V

    .line 52
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 174
    invoke-super {p0, p1, p2, p3}, Lcom/viber/voip/app/ViberMapActivity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 175
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/GoogleApiMapPreViewActivity;->e:Lcom/viber/voip/messages/ui/media/ab;

    invoke-virtual {v0, p1, p2, p3}, Lcom/viber/voip/messages/ui/media/ab;->a(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 176
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter

    .prologue
    .line 188
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/GoogleApiMapPreViewActivity;->e:Lcom/viber/voip/messages/ui/media/ab;

    invoke-virtual {v0, p1}, Lcom/viber/voip/messages/ui/media/ab;->a(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z
    .locals 1
    .parameter

    .prologue
    .line 198
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/GoogleApiMapPreViewActivity;->e:Lcom/viber/voip/messages/ui/media/ab;

    invoke-virtual {v0, p1}, Lcom/viber/voip/messages/ui/media/ab;->a(Lcom/actionbarsherlock/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .parameter

    .prologue
    .line 167
    invoke-super {p0, p1}, Lcom/viber/voip/app/ViberMapActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 168
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/GoogleApiMapPreViewActivity;->e:Lcom/viber/voip/messages/ui/media/ab;

    invoke-virtual {v0, p1}, Lcom/viber/voip/messages/ui/media/ab;->a(Landroid/content/Intent;)V

    .line 169
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter

    .prologue
    .line 203
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/GoogleApiMapPreViewActivity;->e:Lcom/viber/voip/messages/ui/media/ab;

    invoke-virtual {v0, p1}, Lcom/viber/voip/messages/ui/media/ab;->b(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 1
    .parameter

    .prologue
    .line 193
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/GoogleApiMapPreViewActivity;->e:Lcom/viber/voip/messages/ui/media/ab;

    invoke-virtual {v0, p1}, Lcom/viber/voip/messages/ui/media/ab;->a(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/GoogleApiMapPreViewActivity;->e:Lcom/viber/voip/messages/ui/media/ab;

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/media/ab;->c()V

    .line 156
    invoke-super {p0}, Lcom/viber/voip/app/ViberMapActivity;->onStart()V

    .line 157
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/GoogleApiMapPreViewActivity;->e:Lcom/viber/voip/messages/ui/media/ab;

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/media/ab;->d()V

    .line 162
    invoke-super {p0}, Lcom/viber/voip/app/ViberMapActivity;->onStop()V

    .line 163
    return-void
.end method
