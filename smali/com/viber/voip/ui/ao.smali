.class public Lcom/viber/voip/ui/ao;
.super Landroid/widget/ImageView;
.source "SourceFile"


# instance fields
.field private a:Landroid/graphics/drawable/Drawable;

.field private b:Landroid/graphics/drawable/Drawable;

.field private c:Z

.field private d:I


# direct methods
.method private a(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 81
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    if-nez v0, :cond_1

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 85
    :cond_1
    invoke-virtual {p2, p3, p4, p5, p6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 87
    invoke-virtual {p0}, Lcom/viber/voip/ui/ao;->getPaddingTop()I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/viber/voip/ui/ao;->getPaddingLeft()I

    move-result v0

    if-nez v0, :cond_2

    .line 88
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 90
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v0

    .line 91
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 92
    invoke-virtual {p0}, Lcom/viber/voip/ui/ao;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/viber/voip/ui/ao;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 93
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 94
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_0
.end method

.method private a(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .parameter

    .prologue
    .line 65
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {p0}, Lcom/viber/voip/ui/ao;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 67
    const/4 v0, 0x1

    .line 69
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 1

    .prologue
    .line 53
    invoke-super {p0}, Landroid/widget/ImageView;->drawableStateChanged()V

    .line 56
    iget-object v0, p0, Lcom/viber/voip/ui/ao;->a:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Lcom/viber/voip/ui/ao;->a(Landroid/graphics/drawable/Drawable;)Z

    .line 57
    iget-object v0, p0, Lcom/viber/voip/ui/ao;->b:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Lcom/viber/voip/ui/ao;->a(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    .line 59
    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {p0}, Lcom/viber/voip/ui/ao;->invalidate()V

    .line 62
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 74
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 76
    iget-object v2, p0, Lcom/viber/voip/ui/ao;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/viber/voip/ui/ao;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/viber/voip/ui/ao;->getHeight()I

    move-result v6

    move-object v0, p0

    move-object v1, p1

    move v4, v3

    invoke-direct/range {v0 .. v6}, Lcom/viber/voip/ui/ao;->a(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V

    .line 77
    iget-boolean v0, p0, Lcom/viber/voip/ui/ao;->c:Z

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/viber/voip/ui/ao;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/viber/voip/ui/ao;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/viber/voip/ui/ao;->d:I

    sub-int v3, v0, v1

    invoke-virtual {p0}, Lcom/viber/voip/ui/ao;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/viber/voip/ui/ao;->d:I

    sub-int v4, v0, v1

    invoke-virtual {p0}, Lcom/viber/voip/ui/ao;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/viber/voip/ui/ao;->getHeight()I

    move-result v6

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/viber/voip/ui/ao;->a(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V

    .line 78
    :cond_0
    return-void
.end method

.method public setOverlayResource(I)V
    .locals 1
    .parameter

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/viber/voip/ui/ao;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/ui/ao;->a:Landroid/graphics/drawable/Drawable;

    .line 107
    return-void
.end method

.method public setShowTriangle(Z)V
    .locals 0
    .parameter

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/viber/voip/ui/ao;->c:Z

    .line 49
    return-void
.end method

.method public setTriangleSize(F)V
    .locals 1
    .parameter

    .prologue
    .line 40
    invoke-static {p1}, Lcom/viber/voip/messages/extras/image/h;->a(F)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/ui/ao;->d:I

    .line 41
    return-void
.end method

.method public setTriangleSize(I)V
    .locals 0
    .parameter

    .prologue
    .line 44
    iput p1, p0, Lcom/viber/voip/ui/ao;->d:I

    .line 45
    return-void
.end method
