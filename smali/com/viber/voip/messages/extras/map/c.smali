.class public Lcom/viber/voip/messages/extras/map/c;
.super Lcom/google/android/maps/Overlay;
.source "SourceFile"


# instance fields
.field private a:Lcom/google/android/maps/GeoPoint;

.field private b:Landroid/content/Context;

.field private c:F

.field private d:I


# direct methods
.method public constructor <init>(Lcom/google/android/maps/GeoPoint;Landroid/content/Context;FI)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/google/android/maps/Overlay;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/viber/voip/messages/extras/map/c;->a:Lcom/google/android/maps/GeoPoint;

    .line 27
    iput-object p2, p0, Lcom/viber/voip/messages/extras/map/c;->b:Landroid/content/Context;

    .line 28
    iput p3, p0, Lcom/viber/voip/messages/extras/map/c;->c:F

    .line 29
    iput p4, p0, Lcom/viber/voip/messages/extras/map/c;->d:I

    .line 30
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Lcom/google/android/maps/MapView;Z)V
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const v8, 0x7f090061

    .line 34
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/maps/Overlay;->draw(Landroid/graphics/Canvas;Lcom/google/android/maps/MapView;Z)V

    .line 35
    invoke-virtual {p2}, Lcom/google/android/maps/MapView;->getProjection()Lcom/google/android/maps/Projection;

    move-result-object v0

    .line 36
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 37
    iget-object v2, p0, Lcom/viber/voip/messages/extras/map/c;->a:Lcom/google/android/maps/GeoPoint;

    invoke-interface {v0, v2, v1}, Lcom/google/android/maps/Projection;->toPixels(Lcom/google/android/maps/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    .line 40
    iget-object v0, p0, Lcom/viber/voip/messages/extras/map/c;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v2, p0, Lcom/viber/voip/messages/extras/map/c;->d:I

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 43
    iget v0, v1, Landroid/graphics/Point;->x:I

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int v3, v0, v3

    .line 44
    iget v0, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sub-int/2addr v0, v4

    .line 46
    iget v4, p0, Lcom/viber/voip/messages/extras/map/c;->c:F

    const/high16 v5, -0x4080

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_0

    .line 48
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 49
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 50
    const/high16 v4, 0x4000

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 51
    iget-object v4, p0, Lcom/viber/voip/messages/extras/map/c;->b:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 52
    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 54
    invoke-virtual {p2}, Lcom/google/android/maps/MapView;->getProjection()Lcom/google/android/maps/Projection;

    move-result-object v4

    iget v5, p0, Lcom/viber/voip/messages/extras/map/c;->c:F

    invoke-interface {v4, v5}, Lcom/google/android/maps/Projection;->metersToEquatorPixels(F)F

    move-result v4

    float-to-int v4, v4

    .line 55
    iget v5, v1, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    iget v6, v1, Landroid/graphics/Point;->y:I

    int-to-float v6, v6

    int-to-float v7, v4

    invoke-virtual {p1, v5, v6, v7, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 57
    iget-object v5, p0, Lcom/viber/voip/messages/extras/map/c;->b:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 58
    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 59
    iget v5, v1, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    iget v6, v1, Landroid/graphics/Point;->y:I

    int-to-float v6, v6

    int-to-float v4, v4

    invoke-virtual {p1, v5, v6, v4, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 60
    iget v0, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    .line 63
    :cond_0
    int-to-float v1, v3

    int-to-float v0, v0

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v1, v0, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 64
    return-void
.end method
