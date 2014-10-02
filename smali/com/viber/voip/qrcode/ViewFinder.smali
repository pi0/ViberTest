.class public Lcom/viber/voip/qrcode/ViewFinder;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field private a:Lcom/viber/voip/qrcode/e;

.field private b:Landroid/graphics/Paint;

.field private c:I

.field private d:I

.field private e:I

.field private f:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 45
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/viber/voip/qrcode/ViewFinder;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/viber/voip/qrcode/ViewFinder;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/viber/voip/qrcode/ViewFinder;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 60
    invoke-virtual {p0}, Lcom/viber/voip/qrcode/ViewFinder;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 61
    sget-object v1, Lcom/viber/voip/bb;->ViewFinder:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 63
    const/4 v2, 0x0

    const v3, 0x7f0900ae

    :try_start_0
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/viber/voip/qrcode/ViewFinder;->c:I

    .line 64
    const/4 v2, 0x1

    const v3, 0x7f0900cd

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/viber/voip/qrcode/ViewFinder;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 69
    const v1, 0x7f0a0253

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/viber/voip/qrcode/ViewFinder;->e:I

    .line 70
    const v1, 0x7f0a0254

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/qrcode/ViewFinder;->f:I

    .line 71
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/viber/voip/qrcode/ViewFinder;->b:Landroid/graphics/Paint;

    .line 72
    return-void

    .line 66
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12
    .parameter

    .prologue
    const/high16 v11, 0x4000

    const/4 v1, 0x0

    .line 77
    iget-object v0, p0, Lcom/viber/voip/qrcode/ViewFinder;->a:Lcom/viber/voip/qrcode/e;

    if-nez v0, :cond_1

    .line 105
    :cond_0
    :goto_0
    return-void

    .line 79
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/qrcode/ViewFinder;->a:Lcom/viber/voip/qrcode/e;

    invoke-virtual {v0}, Lcom/viber/voip/qrcode/e;->e()Landroid/graphics/Rect;

    move-result-object v8

    .line 80
    iget-object v0, p0, Lcom/viber/voip/qrcode/ViewFinder;->a:Lcom/viber/voip/qrcode/e;

    invoke-virtual {v0}, Lcom/viber/voip/qrcode/e;->f()Landroid/graphics/Rect;

    move-result-object v0

    .line 81
    if-eqz v8, :cond_0

    if-eqz v0, :cond_0

    .line 83
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v9

    .line 84
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v10

    .line 87
    iget-object v0, p0, Lcom/viber/voip/qrcode/ViewFinder;->b:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 88
    iget-object v0, p0, Lcom/viber/voip/qrcode/ViewFinder;->b:Landroid/graphics/Paint;

    iget v2, p0, Lcom/viber/voip/qrcode/ViewFinder;->c:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 89
    int-to-float v3, v9

    iget v0, v8, Landroid/graphics/Rect;->top:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/viber/voip/qrcode/ViewFinder;->b:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 90
    iget v0, v8, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget v0, v8, Landroid/graphics/Rect;->left:I

    int-to-float v3, v0

    iget v0, v8, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v4, v0

    iget-object v5, p0, Lcom/viber/voip/qrcode/ViewFinder;->b:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 91
    iget v0, v8, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v3, v0

    iget v0, v8, Landroid/graphics/Rect;->top:I

    int-to-float v4, v0

    int-to-float v5, v9

    iget v0, v8, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v6, v0

    iget-object v7, p0, Lcom/viber/voip/qrcode/ViewFinder;->b:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 92
    iget v0, v8, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v2, v0

    int-to-float v3, v9

    int-to-float v4, v10

    iget-object v5, p0, Lcom/viber/voip/qrcode/ViewFinder;->b:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 94
    iget-object v0, p0, Lcom/viber/voip/qrcode/ViewFinder;->b:Landroid/graphics/Paint;

    iget v1, p0, Lcom/viber/voip/qrcode/ViewFinder;->d:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 95
    iget-object v0, p0, Lcom/viber/voip/qrcode/ViewFinder;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 96
    iget-object v0, p0, Lcom/viber/voip/qrcode/ViewFinder;->b:Landroid/graphics/Paint;

    iget v1, p0, Lcom/viber/voip/qrcode/ViewFinder;->f:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 97
    iget v0, v8, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget v1, p0, Lcom/viber/voip/qrcode/ViewFinder;->f:I

    int-to-float v1, v1

    div-float/2addr v1, v11

    sub-float v1, v0, v1

    iget v0, v8, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget v0, v8, Landroid/graphics/Rect;->left:I

    iget v3, p0, Lcom/viber/voip/qrcode/ViewFinder;->e:I

    add-int/2addr v0, v3

    int-to-float v3, v0

    iget v0, v8, Landroid/graphics/Rect;->top:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/viber/voip/qrcode/ViewFinder;->b:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 98
    iget v0, v8, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget v0, v8, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget v0, v8, Landroid/graphics/Rect;->left:I

    int-to-float v3, v0

    iget v0, v8, Landroid/graphics/Rect;->top:I

    iget v4, p0, Lcom/viber/voip/qrcode/ViewFinder;->e:I

    add-int/2addr v0, v4

    int-to-float v4, v0

    iget-object v5, p0, Lcom/viber/voip/qrcode/ViewFinder;->b:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 99
    iget v0, v8, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/viber/voip/qrcode/ViewFinder;->e:I

    sub-int/2addr v0, v1

    int-to-float v1, v0

    iget v0, v8, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget v0, v8, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    iget v3, p0, Lcom/viber/voip/qrcode/ViewFinder;->f:I

    int-to-float v3, v3

    div-float/2addr v3, v11

    add-float/2addr v3, v0

    iget v0, v8, Landroid/graphics/Rect;->top:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/viber/voip/qrcode/ViewFinder;->b:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 100
    iget v0, v8, Landroid/graphics/Rect;->right:I

    int-to-float v1, v0

    iget v0, v8, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget v0, v8, Landroid/graphics/Rect;->right:I

    int-to-float v3, v0

    iget v0, v8, Landroid/graphics/Rect;->top:I

    iget v4, p0, Lcom/viber/voip/qrcode/ViewFinder;->e:I

    add-int/2addr v0, v4

    int-to-float v4, v0

    iget-object v5, p0, Lcom/viber/voip/qrcode/ViewFinder;->b:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 101
    iget v0, v8, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget v1, p0, Lcom/viber/voip/qrcode/ViewFinder;->f:I

    int-to-float v1, v1

    div-float/2addr v1, v11

    sub-float v1, v0, v1

    iget v0, v8, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v0

    iget v0, v8, Landroid/graphics/Rect;->left:I

    iget v3, p0, Lcom/viber/voip/qrcode/ViewFinder;->e:I

    add-int/2addr v0, v3

    int-to-float v3, v0

    iget v0, v8, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/viber/voip/qrcode/ViewFinder;->b:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 102
    iget v0, v8, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget v0, v8, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v0

    iget v0, v8, Landroid/graphics/Rect;->left:I

    int-to-float v3, v0

    iget v0, v8, Landroid/graphics/Rect;->bottom:I

    iget v4, p0, Lcom/viber/voip/qrcode/ViewFinder;->e:I

    sub-int/2addr v0, v4

    int-to-float v4, v0

    iget-object v5, p0, Lcom/viber/voip/qrcode/ViewFinder;->b:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 103
    iget v0, v8, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/viber/voip/qrcode/ViewFinder;->e:I

    sub-int/2addr v0, v1

    int-to-float v1, v0

    iget v0, v8, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v0

    iget v0, v8, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    iget v3, p0, Lcom/viber/voip/qrcode/ViewFinder;->f:I

    int-to-float v3, v3

    div-float/2addr v3, v11

    add-float/2addr v3, v0

    iget v0, v8, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/viber/voip/qrcode/ViewFinder;->b:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 104
    iget v0, v8, Landroid/graphics/Rect;->right:I

    int-to-float v1, v0

    iget v0, v8, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v0

    iget v0, v8, Landroid/graphics/Rect;->right:I

    int-to-float v3, v0

    iget v0, v8, Landroid/graphics/Rect;->bottom:I

    iget v4, p0, Lcom/viber/voip/qrcode/ViewFinder;->e:I

    sub-int/2addr v0, v4

    int-to-float v4, v0

    iget-object v5, p0, Lcom/viber/voip/qrcode/ViewFinder;->b:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_0
.end method

.method public setCameraManager(Lcom/viber/voip/qrcode/e;)V
    .locals 0
    .parameter

    .prologue
    .line 108
    iput-object p1, p0, Lcom/viber/voip/qrcode/ViewFinder;->a:Lcom/viber/voip/qrcode/e;

    .line 109
    return-void
.end method
