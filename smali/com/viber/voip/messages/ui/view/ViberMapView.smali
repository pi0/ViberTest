.class public Lcom/viber/voip/messages/ui/view/ViberMapView;
.super Lcom/google/android/maps/MapView;
.source "SourceFile"


# static fields
.field private static c:Lcom/google/android/maps/GeoPoint;

.field private static d:Lcom/google/android/maps/GeoPoint;


# instance fields
.field protected a:Z

.field private b:J

.field private e:Lcom/viber/voip/messages/ui/view/h;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 19
    new-instance v0, Lcom/google/android/maps/GeoPoint;

    invoke-direct {v0, v1, v1}, Lcom/google/android/maps/GeoPoint;-><init>(II)V

    sput-object v0, Lcom/viber/voip/messages/ui/view/ViberMapView;->c:Lcom/google/android/maps/GeoPoint;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/google/android/maps/MapView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/viber/voip/messages/ui/view/ViberMapView;->b:J

    .line 21
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/viber/voip/messages/ui/view/ViberMapView;->a:Z

    .line 26
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 54
    invoke-super {p0, p1}, Lcom/google/android/maps/MapView;->draw(Landroid/graphics/Canvas;)V

    .line 55
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/view/ViberMapView;->getZoomLevel()I

    move-result v0

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/view/ViberMapView;->getController()Lcom/google/android/maps/MapController;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/maps/MapController;->setZoom(I)I

    .line 57
    :cond_0
    iget-boolean v0, p0, Lcom/viber/voip/messages/ui/view/ViberMapView;->a:Z

    if-eqz v0, :cond_1

    .line 58
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/view/ViberMapView;->getProjection()Lcom/google/android/maps/Projection;

    move-result-object v0

    invoke-interface {v0, v2, v2}, Lcom/google/android/maps/Projection;->fromPixels(II)Lcom/google/android/maps/GeoPoint;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/messages/ui/view/ViberMapView;->d:Lcom/google/android/maps/GeoPoint;

    .line 59
    sget-object v0, Lcom/viber/voip/messages/ui/view/ViberMapView;->d:Lcom/google/android/maps/GeoPoint;

    sget-object v1, Lcom/viber/voip/messages/ui/view/ViberMapView;->c:Lcom/google/android/maps/GeoPoint;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/GeoPoint;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 60
    iput-boolean v2, p0, Lcom/viber/voip/messages/ui/view/ViberMapView;->a:Z

    .line 61
    iget-object v0, p0, Lcom/viber/voip/messages/ui/view/ViberMapView;->e:Lcom/viber/voip/messages/ui/view/h;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/viber/voip/messages/ui/view/ViberMapView;->e:Lcom/viber/voip/messages/ui/view/h;

    invoke-interface {v0}, Lcom/viber/voip/messages/ui/view/h;->a()V

    .line 66
    :cond_1
    :goto_0
    return-void

    .line 63
    :cond_2
    sget-object v0, Lcom/viber/voip/messages/ui/view/ViberMapView;->d:Lcom/google/android/maps/GeoPoint;

    sput-object v0, Lcom/viber/voip/messages/ui/view/ViberMapView;->c:Lcom/google/android/maps/GeoPoint;

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter

    .prologue
    .line 38
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 39
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 40
    iget-wide v2, p0, Lcom/viber/voip/messages/ui/view/ViberMapView;->b:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0xfa

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    .line 42
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/view/ViberMapView;->getController()Lcom/google/android/maps/MapController;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/MapController;->zoomInFixing(II)Z

    .line 43
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/viber/voip/messages/ui/view/ViberMapView;->b:J

    .line 49
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/google/android/maps/MapView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 46
    :cond_1
    iput-wide v0, p0, Lcom/viber/voip/messages/ui/view/ViberMapView;->b:J

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter

    .prologue
    .line 69
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 76
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/google/android/maps/MapView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 72
    :pswitch_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/viber/voip/messages/ui/view/ViberMapView;->a:Z

    .line 73
    iget-object v0, p0, Lcom/viber/voip/messages/ui/view/ViberMapView;->e:Lcom/viber/voip/messages/ui/view/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/ui/view/ViberMapView;->e:Lcom/viber/voip/messages/ui/view/h;

    invoke-interface {v0}, Lcom/viber/voip/messages/ui/view/h;->b()V

    goto :goto_0

    .line 69
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setMapMoveListener(Lcom/viber/voip/messages/ui/view/h;)V
    .locals 0
    .parameter

    .prologue
    .line 29
    iput-object p1, p0, Lcom/viber/voip/messages/ui/view/ViberMapView;->e:Lcom/viber/voip/messages/ui/view/h;

    .line 30
    return-void
.end method

.method public setMapMoving(Z)V
    .locals 0
    .parameter

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/viber/voip/messages/ui/view/ViberMapView;->a:Z

    .line 34
    return-void
.end method
