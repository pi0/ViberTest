.class public Lcom/viber/voip/widget/VerticalTextView;
.super Lcom/viber/voip/ui/ViberTextView;
.source "SourceFile"


# instance fields
.field private a:I

.field private final b:Landroid/graphics/Rect;


# direct methods
.method private a(Landroid/graphics/Canvas;)V
    .locals 9
    .parameter

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 158
    invoke-virtual {p0}, Lcom/viber/voip/widget/VerticalTextView;->getWidth()I

    move-result v0

    .line 159
    invoke-virtual {p0}, Lcom/viber/voip/widget/VerticalTextView;->getHeight()I

    move-result v1

    .line 160
    invoke-virtual {p0}, Lcom/viber/voip/widget/VerticalTextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 161
    if-eqz v2, :cond_3

    .line 163
    aget-object v3, v2, v5

    if-eqz v3, :cond_0

    .line 164
    aget-object v3, v2, v5

    iget-object v4, p0, Lcom/viber/voip/widget/VerticalTextView;->b:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 165
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 167
    invoke-virtual {p0}, Lcom/viber/voip/widget/VerticalTextView;->getPaddingLeft()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/viber/voip/widget/VerticalTextView;->b:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    sub-int v4, v0, v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 168
    aget-object v3, v2, v5

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 169
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 172
    :cond_0
    aget-object v3, v2, v6

    if-eqz v3, :cond_1

    .line 173
    aget-object v3, v2, v6

    iget-object v4, p0, Lcom/viber/voip/widget/VerticalTextView;->b:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 174
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 176
    iget-object v3, p0, Lcom/viber/voip/widget/VerticalTextView;->b:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int v3, v1, v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/viber/voip/widget/VerticalTextView;->getPaddingTop()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 177
    aget-object v3, v2, v6

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 178
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 181
    :cond_1
    aget-object v3, v2, v7

    if-eqz v3, :cond_2

    .line 182
    aget-object v3, v2, v7

    iget-object v4, p0, Lcom/viber/voip/widget/VerticalTextView;->b:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 183
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 185
    iget-object v3, p0, Lcom/viber/voip/widget/VerticalTextView;->b:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int v3, v1, v3

    invoke-virtual {p0}, Lcom/viber/voip/widget/VerticalTextView;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget-object v4, p0, Lcom/viber/voip/widget/VerticalTextView;->b:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    sub-int v4, v0, v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 186
    aget-object v3, v2, v7

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 187
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 190
    :cond_2
    aget-object v3, v2, v8

    if-eqz v3, :cond_3

    .line 191
    aget-object v3, v2, v8

    iget-object v4, p0, Lcom/viber/voip/widget/VerticalTextView;->b:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 192
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 194
    iget-object v3, p0, Lcom/viber/voip/widget/VerticalTextView;->b:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget-object v3, p0, Lcom/viber/voip/widget/VerticalTextView;->b:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    sub-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/viber/voip/widget/VerticalTextView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v0, v3

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 195
    aget-object v0, v2, v8

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 196
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 199
    :cond_3
    return-void
.end method


# virtual methods
.method public getTextOrientation()I
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Lcom/viber/voip/widget/VerticalTextView;->a:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 117
    invoke-virtual {p0}, Lcom/viber/voip/widget/VerticalTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    .line 118
    invoke-virtual {p0}, Lcom/viber/voip/widget/VerticalTextView;->getCurrentTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 119
    invoke-virtual {p0}, Lcom/viber/voip/widget/VerticalTextView;->getDrawableState()[I

    move-result-object v1

    iput-object v1, v0, Landroid/text/TextPaint;->drawableState:[I

    .line 121
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 123
    invoke-virtual {p0}, Lcom/viber/voip/widget/VerticalTextView;->getHeight()I

    move-result v0

    .line 124
    invoke-virtual {p0}, Lcom/viber/voip/widget/VerticalTextView;->getWidth()I

    move-result v2

    .line 126
    iget v3, p0, Lcom/viber/voip/widget/VerticalTextView;->a:I

    if-nez v3, :cond_0

    .line 127
    int-to-float v0, v0

    invoke-virtual {p1, v4, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 128
    const/high16 v0, -0x3d4c

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 135
    :goto_0
    invoke-direct {p0, p1}, Lcom/viber/voip/widget/VerticalTextView;->a(Landroid/graphics/Canvas;)V

    .line 138
    invoke-virtual {p0}, Lcom/viber/voip/widget/VerticalTextView;->getGravity()I

    move-result v0

    and-int/lit8 v0, v0, 0x70

    .line 140
    sparse-switch v0, :sswitch_data_0

    .line 148
    invoke-virtual {p0}, Lcom/viber/voip/widget/VerticalTextView;->getLineCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/viber/voip/widget/VerticalTextView;->getLineHeight()I

    move-result v3

    mul-int/2addr v0, v3

    sub-int v0, v2, v0

    div-int/lit8 v0, v0, 0x2

    .line 151
    :goto_1
    invoke-virtual {p0}, Lcom/viber/voip/widget/VerticalTextView;->getCompoundPaddingLeft()I

    move-result v2

    int-to-float v2, v2

    int-to-float v0, v0

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 152
    invoke-virtual {p0}, Lcom/viber/voip/widget/VerticalTextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 154
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 155
    return-void

    .line 130
    :cond_0
    int-to-float v0, v2

    invoke-virtual {p1, v0, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 131
    const/high16 v0, 0x42b4

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    goto :goto_0

    .line 142
    :sswitch_0
    invoke-virtual {p0}, Lcom/viber/voip/widget/VerticalTextView;->getCompoundPaddingTop()I

    move-result v0

    goto :goto_1

    .line 145
    :sswitch_1
    invoke-virtual {p0}, Lcom/viber/voip/widget/VerticalTextView;->getLineCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/viber/voip/widget/VerticalTextView;->getLineHeight()I

    move-result v3

    mul-int/2addr v0, v3

    sub-int v0, v2, v0

    invoke-virtual {p0}, Lcom/viber/voip/widget/VerticalTextView;->getCompoundPaddingBottom()I

    move-result v2

    sub-int/2addr v0, v2

    .line 146
    goto :goto_1

    .line 140
    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_0
        0x50 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 111
    invoke-super {p0, p2, p1}, Lcom/viber/voip/ui/ViberTextView;->onMeasure(II)V

    .line 112
    invoke-virtual {p0}, Lcom/viber/voip/widget/VerticalTextView;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/viber/voip/widget/VerticalTextView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/viber/voip/widget/VerticalTextView;->setMeasuredDimension(II)V

    .line 113
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1
    .parameter

    .prologue
    .line 74
    instance-of v0, p1, Lcom/viber/voip/widget/VerticalTextView$SavedState;

    if-nez v0, :cond_0

    .line 75
    invoke-super {p0, p1}, Lcom/viber/voip/ui/ViberTextView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 83
    :goto_0
    return-void

    .line 79
    :cond_0
    check-cast p1, Lcom/viber/voip/widget/VerticalTextView$SavedState;

    .line 80
    invoke-virtual {p1}, Lcom/viber/voip/widget/VerticalTextView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/viber/voip/ui/ViberTextView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 82
    iget v0, p1, Lcom/viber/voip/widget/VerticalTextView$SavedState;->a:I

    iput v0, p0, Lcom/viber/voip/widget/VerticalTextView;->a:I

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 67
    new-instance v0, Lcom/viber/voip/widget/VerticalTextView$SavedState;

    invoke-super {p0}, Lcom/viber/voip/ui/ViberTextView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/viber/voip/widget/VerticalTextView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 68
    iget v1, p0, Lcom/viber/voip/widget/VerticalTextView;->a:I

    iput v1, v0, Lcom/viber/voip/widget/VerticalTextView$SavedState;->a:I

    .line 69
    return-object v0
.end method

.method public setTextOrientation(I)V
    .locals 1
    .parameter

    .prologue
    .line 94
    iget v0, p0, Lcom/viber/voip/widget/VerticalTextView;->a:I

    if-eq v0, p1, :cond_0

    .line 95
    iput p1, p0, Lcom/viber/voip/widget/VerticalTextView;->a:I

    .line 96
    invoke-virtual {p0}, Lcom/viber/voip/widget/VerticalTextView;->invalidate()V

    .line 98
    :cond_0
    return-void
.end method
