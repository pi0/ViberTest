.class Lcom/viber/voip/messages/extras/image/imagezoom/b;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/extras/image/imagezoom/ImageViewTouch;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/extras/image/imagezoom/ImageViewTouch;)V
    .locals 0
    .parameter

    .prologue
    .line 123
    iput-object p1, p0, Lcom/viber/voip/messages/extras/image/imagezoom/b;->a:Lcom/viber/voip/messages/extras/image/imagezoom/ImageViewTouch;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter

    .prologue
    .line 136
    iget-object v0, p0, Lcom/viber/voip/messages/extras/image/imagezoom/b;->a:Lcom/viber/voip/messages/extras/image/imagezoom/ImageViewTouch;

    invoke-virtual {v0}, Lcom/viber/voip/messages/extras/image/imagezoom/ImageViewTouch;->getScale()F

    move-result v0

    .line 138
    iget-object v1, p0, Lcom/viber/voip/messages/extras/image/imagezoom/b;->a:Lcom/viber/voip/messages/extras/image/imagezoom/ImageViewTouch;

    iget-object v2, p0, Lcom/viber/voip/messages/extras/image/imagezoom/b;->a:Lcom/viber/voip/messages/extras/image/imagezoom/ImageViewTouch;

    invoke-virtual {v2}, Lcom/viber/voip/messages/extras/image/imagezoom/ImageViewTouch;->getMaxZoom()F

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/viber/voip/messages/extras/image/imagezoom/ImageViewTouch;->a(FF)F

    move-result v0

    .line 139
    iget-object v1, p0, Lcom/viber/voip/messages/extras/image/imagezoom/b;->a:Lcom/viber/voip/messages/extras/image/imagezoom/ImageViewTouch;

    invoke-virtual {v1}, Lcom/viber/voip/messages/extras/image/imagezoom/ImageViewTouch;->getMaxZoom()F

    move-result v1

    const v2, 0x3f666666

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 140
    iget-object v1, p0, Lcom/viber/voip/messages/extras/image/imagezoom/b;->a:Lcom/viber/voip/messages/extras/image/imagezoom/ImageViewTouch;

    iput v0, v1, Lcom/viber/voip/messages/extras/image/imagezoom/ImageViewTouch;->d:F

    .line 141
    iget-object v1, p0, Lcom/viber/voip/messages/extras/image/imagezoom/b;->a:Lcom/viber/voip/messages/extras/image/imagezoom/ImageViewTouch;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    const/high16 v4, 0x4348

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/viber/voip/messages/extras/image/imagezoom/ImageViewTouch;->b(FFFF)V

    .line 142
    iget-object v1, p0, Lcom/viber/voip/messages/extras/image/imagezoom/b;->a:Lcom/viber/voip/messages/extras/image/imagezoom/ImageViewTouch;

    invoke-virtual {v1}, Lcom/viber/voip/messages/extras/image/imagezoom/ImageViewTouch;->invalidate()V

    .line 144
    iget-object v1, p0, Lcom/viber/voip/messages/extras/image/imagezoom/b;->a:Lcom/viber/voip/messages/extras/image/imagezoom/ImageViewTouch;

    iget-object v1, v1, Lcom/viber/voip/messages/extras/image/imagezoom/ImageViewTouch;->i:Lcom/viber/voip/messages/extras/image/imagezoom/c;

    if-eqz v1, :cond_0

    const/high16 v1, 0x3f80

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/viber/voip/messages/extras/image/imagezoom/b;->a:Lcom/viber/voip/messages/extras/image/imagezoom/ImageViewTouch;

    iget-object v0, v0, Lcom/viber/voip/messages/extras/image/imagezoom/ImageViewTouch;->i:Lcom/viber/voip/messages/extras/image/imagezoom/c;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/viber/voip/messages/extras/image/imagezoom/c;->a(Z)V

    .line 147
    :cond_0
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDoubleTap(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    const/high16 v4, 0x4448

    const/high16 v3, 0x4000

    .line 182
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-gt v1, v2, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-le v1, v2, :cond_1

    .line 192
    :cond_0
    :goto_0
    return v0

    .line 183
    :cond_1
    iget-object v1, p0, Lcom/viber/voip/messages/extras/image/imagezoom/b;->a:Lcom/viber/voip/messages/extras/image/imagezoom/ImageViewTouch;

    iget-object v1, v1, Lcom/viber/voip/messages/extras/image/imagezoom/ImageViewTouch;->a:Lcom/viber/voip/messages/extras/image/imagezoom/l;

    invoke-virtual {v1}, Lcom/viber/voip/messages/extras/image/imagezoom/l;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 185
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    .line 186
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float/2addr v1, v2

    .line 188
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v4

    if-gtz v2, :cond_2

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v4

    if-lez v2, :cond_3

    .line 189
    :cond_2
    iget-object v2, p0, Lcom/viber/voip/messages/extras/image/imagezoom/b;->a:Lcom/viber/voip/messages/extras/image/imagezoom/ImageViewTouch;

    div-float/2addr v0, v3

    div-float/2addr v1, v3

    const/high16 v3, 0x4396

    invoke-virtual {v2, v0, v1, v3}, Lcom/viber/voip/messages/extras/image/imagezoom/ImageViewTouch;->c(FFF)V

    .line 190
    iget-object v0, p0, Lcom/viber/voip/messages/extras/image/imagezoom/b;->a:Lcom/viber/voip/messages/extras/image/imagezoom/ImageViewTouch;

    invoke-virtual {v0}, Lcom/viber/voip/messages/extras/image/imagezoom/ImageViewTouch;->invalidate()V

    .line 192
    :cond_3
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    goto :goto_0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 153
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 177
    :cond_0
    :goto_0
    return v1

    .line 154
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    if-gt v2, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    if-gt v2, v0, :cond_0

    .line 155
    iget-object v2, p0, Lcom/viber/voip/messages/extras/image/imagezoom/b;->a:Lcom/viber/voip/messages/extras/image/imagezoom/ImageViewTouch;

    iget-object v2, v2, Lcom/viber/voip/messages/extras/image/imagezoom/ImageViewTouch;->a:Lcom/viber/voip/messages/extras/image/imagezoom/l;

    invoke-virtual {v2}, Lcom/viber/voip/messages/extras/image/imagezoom/l;->a()Z

    move-result v2

    if-nez v2, :cond_0

    .line 156
    iget-object v2, p0, Lcom/viber/voip/messages/extras/image/imagezoom/b;->a:Lcom/viber/voip/messages/extras/image/imagezoom/ImageViewTouch;

    neg-float v3, p3

    neg-float v4, p4

    invoke-virtual {v2, v3, v4}, Lcom/viber/voip/messages/extras/image/imagezoom/ImageViewTouch;->d(FF)V

    .line 157
    iget-object v2, p0, Lcom/viber/voip/messages/extras/image/imagezoom/b;->a:Lcom/viber/voip/messages/extras/image/imagezoom/ImageViewTouch;

    invoke-virtual {v2}, Lcom/viber/voip/messages/extras/image/imagezoom/ImageViewTouch;->invalidate()V

    .line 159
    iget-object v2, p0, Lcom/viber/voip/messages/extras/image/imagezoom/b;->a:Lcom/viber/voip/messages/extras/image/imagezoom/ImageViewTouch;

    iget-object v2, v2, Lcom/viber/voip/messages/extras/image/imagezoom/ImageViewTouch;->i:Lcom/viber/voip/messages/extras/image/imagezoom/c;

    if-eqz v2, :cond_5

    .line 160
    iget-object v2, p0, Lcom/viber/voip/messages/extras/image/imagezoom/b;->a:Lcom/viber/voip/messages/extras/image/imagezoom/ImageViewTouch;

    invoke-virtual {v2}, Lcom/viber/voip/messages/extras/image/imagezoom/ImageViewTouch;->getScale()F

    move-result v2

    const/high16 v3, 0x3f80

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/viber/voip/messages/extras/image/imagezoom/b;->a:Lcom/viber/voip/messages/extras/image/imagezoom/ImageViewTouch;

    iget-object v2, v2, Lcom/viber/voip/messages/extras/image/imagezoom/ImageViewTouch;->i:Lcom/viber/voip/messages/extras/image/imagezoom/c;

    if-eqz v2, :cond_2

    .line 161
    iget-object v2, p0, Lcom/viber/voip/messages/extras/image/imagezoom/b;->a:Lcom/viber/voip/messages/extras/image/imagezoom/ImageViewTouch;

    iget-object v2, v2, Lcom/viber/voip/messages/extras/image/imagezoom/ImageViewTouch;->i:Lcom/viber/voip/messages/extras/image/imagezoom/c;

    invoke-interface {v2, v0}, Lcom/viber/voip/messages/extras/image/imagezoom/c;->a(Z)V

    goto :goto_0

    .line 164
    :cond_2
    iget-object v2, p0, Lcom/viber/voip/messages/extras/image/imagezoom/b;->a:Lcom/viber/voip/messages/extras/image/imagezoom/ImageViewTouch;

    invoke-virtual {v2}, Lcom/viber/voip/messages/extras/image/imagezoom/ImageViewTouch;->getBitmapRect()Landroid/graphics/RectF;

    move-result-object v2

    .line 165
    if-eqz v2, :cond_5

    .line 166
    iget-object v3, p0, Lcom/viber/voip/messages/extras/image/imagezoom/b;->a:Lcom/viber/voip/messages/extras/image/imagezoom/ImageViewTouch;

    invoke-virtual {v3}, Lcom/viber/voip/messages/extras/image/imagezoom/ImageViewTouch;->getWidth()I

    move-result v3

    int-to-float v3, v3

    .line 167
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/viber/voip/messages/extras/image/imagezoom/b;->a:Lcom/viber/voip/messages/extras/image/imagezoom/ImageViewTouch;

    iget v5, v5, Lcom/viber/voip/messages/extras/image/imagezoom/ImageViewTouch;->l:I

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_3

    iget v4, v2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v4, v3

    float-to-int v4, v4

    if-lez v4, :cond_4

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/viber/voip/messages/extras/image/imagezoom/b;->a:Lcom/viber/voip/messages/extras/image/imagezoom/ImageViewTouch;

    iget v5, v5, Lcom/viber/voip/messages/extras/image/imagezoom/ImageViewTouch;->l:I

    neg-int v5, v5

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_6

    iget v4, v2, Landroid/graphics/RectF;->left:F

    float-to-int v4, v4

    if-ltz v4, :cond_6

    .line 170
    :cond_4
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "AAAA minScrollToNavigate="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/viber/voip/messages/extras/image/imagezoom/b;->a:Lcom/viber/voip/messages/extras/image/imagezoom/ImageViewTouch;

    iget v5, v5, Lcom/viber/voip/messages/extras/image/imagezoom/ImageViewTouch;->l:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " e1-e2="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    sub-float/2addr v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " distanceX = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", canScrollView = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " width "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " bitmapRect.right = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Landroid/graphics/RectF;->right:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " bitmapRect.left = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v2, v2, Landroid/graphics/RectF;->left:F

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/viber/voip/ViberApplication;->log(Ljava/lang/String;)V

    .line 173
    iget-object v2, p0, Lcom/viber/voip/messages/extras/image/imagezoom/b;->a:Lcom/viber/voip/messages/extras/image/imagezoom/ImageViewTouch;

    iget-object v2, v2, Lcom/viber/voip/messages/extras/image/imagezoom/ImageViewTouch;->i:Lcom/viber/voip/messages/extras/image/imagezoom/c;

    invoke-interface {v2, v0}, Lcom/viber/voip/messages/extras/image/imagezoom/c;->a(Z)V

    .line 174
    if-nez v0, :cond_0

    .line 177
    :cond_5
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v1

    goto/16 :goto_0

    :cond_6
    move v0, v1

    .line 167
    goto :goto_1
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter

    .prologue
    .line 127
    iget-object v0, p0, Lcom/viber/voip/messages/extras/image/imagezoom/b;->a:Lcom/viber/voip/messages/extras/image/imagezoom/ImageViewTouch;

    iget-object v0, v0, Lcom/viber/voip/messages/extras/image/imagezoom/ImageViewTouch;->j:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/viber/voip/messages/extras/image/imagezoom/b;->a:Lcom/viber/voip/messages/extras/image/imagezoom/ImageViewTouch;

    iget-object v0, v0, Lcom/viber/voip/messages/extras/image/imagezoom/ImageViewTouch;->j:Landroid/view/View$OnClickListener;

    iget-object v1, p0, Lcom/viber/voip/messages/extras/image/imagezoom/b;->a:Lcom/viber/voip/messages/extras/image/imagezoom/ImageViewTouch;

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 129
    const/4 v0, 0x1

    .line 131
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method
