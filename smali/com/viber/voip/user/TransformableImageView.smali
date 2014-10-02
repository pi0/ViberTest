.class public Lcom/viber/voip/user/TransformableImageView;
.super Landroid/widget/ImageView;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 15
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11
    .parameter

    .prologue
    const/4 v0, 0x0

    const/high16 v9, 0x3f00

    .line 28
    invoke-virtual {p0}, Lcom/viber/voip/user/TransformableImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 29
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v3

    .line 30
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 31
    invoke-virtual {p0}, Lcom/viber/voip/user/TransformableImageView;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/viber/voip/user/TransformableImageView;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 32
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    .line 33
    invoke-virtual {p0}, Lcom/viber/voip/user/TransformableImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 34
    invoke-virtual {p0}, Lcom/viber/voip/user/TransformableImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    .line 36
    invoke-virtual {p0}, Lcom/viber/voip/user/TransformableImageView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/viber/voip/user/TransformableImageView;->getPaddingLeft()I

    move-result v6

    sub-int/2addr v2, v6

    invoke-virtual {p0}, Lcom/viber/voip/user/TransformableImageView;->getPaddingRight()I

    move-result v6

    sub-int v6, v2, v6

    .line 37
    invoke-virtual {p0}, Lcom/viber/voip/user/TransformableImageView;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/viber/voip/user/TransformableImageView;->getPaddingTop()I

    move-result v7

    sub-int/2addr v2, v7

    invoke-virtual {p0}, Lcom/viber/voip/user/TransformableImageView;->getPaddingBottom()I

    move-result v7

    sub-int v7, v2, v7

    .line 41
    mul-int v2, v1, v7

    mul-int v8, v6, v5

    if-le v2, v8, :cond_1

    .line 42
    int-to-float v2, v7

    int-to-float v5, v5

    div-float/2addr v2, v5

    .line 43
    int-to-float v5, v6

    int-to-float v1, v1

    mul-float/2addr v1, v2

    sub-float v1, v5, v1

    mul-float/2addr v1, v9

    .line 49
    :goto_0
    invoke-virtual {v4, v2, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 50
    add-float/2addr v1, v9

    float-to-int v1, v1

    int-to-float v1, v1

    add-float/2addr v0, v9

    float-to-int v0, v0

    int-to-float v0, v0

    invoke-virtual {v4, v1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 51
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 52
    invoke-virtual {p0}, Lcom/viber/voip/user/TransformableImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 53
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 55
    :cond_0
    return-void

    .line 45
    :cond_1
    int-to-float v2, v6

    int-to-float v1, v1

    div-float/2addr v2, v1

    .line 46
    int-to-float v1, v7

    int-to-float v5, v5

    mul-float/2addr v5, v2

    sub-float/2addr v1, v5

    mul-float/2addr v1, v9

    move v10, v1

    move v1, v0

    move v0, v10

    goto :goto_0
.end method
