.class public Lcom/viber/voip/ui/TransparentRectangleView;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field private a:Landroid/graphics/Paint;

.field private b:Landroid/graphics/Paint;

.field private c:Landroid/graphics/Rect;

.field private d:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 28
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 29
    invoke-direct {p0}, Lcom/viber/voip/ui/TransparentRectangleView;->a()V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    invoke-direct {p0}, Lcom/viber/voip/ui/TransparentRectangleView;->a()V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    invoke-direct {p0}, Lcom/viber/voip/ui/TransparentRectangleView;->a()V

    .line 40
    return-void
.end method

.method private a()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 56
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/ui/TransparentRectangleView;->a:Landroid/graphics/Paint;

    .line 57
    iget-object v0, p0, Lcom/viber/voip/ui/TransparentRectangleView;->a:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 59
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/viber/voip/ui/TransparentRectangleView;->b:Landroid/graphics/Paint;

    .line 60
    iget-object v0, p0, Lcom/viber/voip/ui/TransparentRectangleView;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 61
    iget-object v0, p0, Lcom/viber/voip/ui/TransparentRectangleView;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 62
    iget-object v0, p0, Lcom/viber/voip/ui/TransparentRectangleView;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 63
    iget-object v0, p0, Lcom/viber/voip/ui/TransparentRectangleView;->b:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 65
    iget-object v0, p0, Lcom/viber/voip/ui/TransparentRectangleView;->b:Landroid/graphics/Paint;

    const/high16 v1, 0x4120

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 67
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 68
    const/4 v0, 0x0

    invoke-virtual {p0, v3, v0}, Lcom/viber/voip/ui/TransparentRectangleView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 72
    :goto_0
    return-void

    .line 70
    :cond_0
    invoke-virtual {p0, v3}, Lcom/viber/voip/ui/TransparentRectangleView;->setDrawingCacheEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/graphics/Rect;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Lcom/viber/voip/ui/TransparentRectangleView;->c:Landroid/graphics/Rect;

    .line 76
    iput-boolean p2, p0, Lcom/viber/voip/ui/TransparentRectangleView;->d:Z

    .line 77
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter

    .prologue
    .line 45
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 46
    iget-object v0, p0, Lcom/viber/voip/ui/TransparentRectangleView;->c:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/viber/voip/ui/TransparentRectangleView;->c:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/viber/voip/ui/TransparentRectangleView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 49
    iget-boolean v0, p0, Lcom/viber/voip/ui/TransparentRectangleView;->d:Z

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/viber/voip/ui/TransparentRectangleView;->c:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/viber/voip/ui/TransparentRectangleView;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 53
    :cond_0
    return-void
.end method
