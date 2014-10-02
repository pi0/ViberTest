.class public Lcom/viber/voip/messages/ui/bc;
.super Landroid/text/style/ImageSpan;
.source "SourceFile"


# static fields
.field private static a:I

.field private static b:I


# instance fields
.field private c:Z


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;IZ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    .line 59
    iput-boolean p3, p0, Lcom/viber/voip/messages/ui/bc;->c:Z

    .line 60
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 8
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
    .line 78
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 79
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/bc;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 80
    iget v2, v3, Landroid/graphics/Rect;->right:I

    iget v4, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v4

    .line 81
    float-to-int v4, p5

    .line 82
    add-int/2addr v2, v4

    .line 83
    iget v5, v1, Landroid/graphics/Rect;->right:I

    if-gt v2, v5, :cond_1

    iget v5, v1, Landroid/graphics/Rect;->left:I

    if-lt v4, v5, :cond_1

    .line 84
    sput v2, Lcom/viber/voip/messages/ui/bc;->a:I

    .line 85
    sput v4, Lcom/viber/voip/messages/ui/bc;->b:I

    .line 86
    invoke-super/range {p0 .. p9}, Landroid/text/style/ImageSpan;->draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 89
    :cond_1
    const-string/jumbo v7, "..."

    .line 90
    move-object/from16 v0, p9

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    float-to-int v5, v5

    .line 92
    iget v6, v1, Landroid/graphics/Rect;->right:I

    invoke-static {v2, v6}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 93
    iget v1, v1, Landroid/graphics/Rect;->left:I

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 94
    sub-int/2addr v2, v1

    .line 96
    if-lt v2, v5, :cond_2

    .line 97
    sub-int/2addr v2, v5

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    .line 98
    int-to-float v1, v1

    int-to-float v2, p7

    move-object/from16 v0, p9

    invoke-virtual {p1, v7, v1, v2, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 100
    :cond_2
    sget v1, Lcom/viber/voip/messages/ui/bc;->a:I

    if-ne v1, v4, :cond_0

    .line 101
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    .line 102
    iget-boolean v1, p0, Lcom/viber/voip/messages/ui/bc;->c:Z

    if-eqz v1, :cond_3

    .line 103
    const-string/jumbo v1, "#8155A4"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 104
    sget v1, Lcom/viber/voip/messages/ui/bc;->b:I

    int-to-float v2, v1

    iget v1, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v1

    sget v1, Lcom/viber/voip/messages/ui/bc;->a:I

    int-to-float v4, v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    int-to-float v5, v1

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 109
    :goto_1
    sget v1, Lcom/viber/voip/messages/ui/bc;->b:I

    int-to-float v1, v1

    int-to-float v2, p7

    move-object/from16 v0, p9

    invoke-virtual {p1, v7, v1, v2, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 106
    :cond_3
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 107
    sget v1, Lcom/viber/voip/messages/ui/bc;->b:I

    int-to-float v2, v1

    iget v1, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v1

    sget v1, Lcom/viber/voip/messages/ui/bc;->a:I

    int-to-float v4, v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    int-to-float v5, v1

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_1
.end method
