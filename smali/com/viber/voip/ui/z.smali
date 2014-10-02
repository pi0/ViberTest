.class public Lcom/viber/voip/ui/z;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field private a:Landroid/graphics/Paint;

.field private b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 31
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 32
    invoke-direct {p0}, Lcom/viber/voip/ui/z;->a()V

    .line 33
    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 41
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/viber/voip/ui/z;->a:Landroid/graphics/Paint;

    .line 42
    iget-object v0, p0, Lcom/viber/voip/ui/z;->a:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 43
    invoke-virtual {p0}, Lcom/viber/voip/ui/z;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x4140

    invoke-static {v0, v1}, Lcom/viber/voip/messages/extras/image/h;->a(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/ui/z;->b:I

    .line 45
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/viber/voip/ui/z;->setWillNotDraw(Z)V

    .line 46
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 50
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 52
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/viber/voip/ui/z;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/viber/voip/ui/z;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 53
    iget v1, p0, Lcom/viber/voip/ui/z;->b:I

    int-to-float v1, v1

    iget v2, p0, Lcom/viber/voip/ui/z;->b:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/viber/voip/ui/z;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 54
    return-void
.end method
