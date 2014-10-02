.class Lcom/viber/voip/messages/extras/image/imagezoom/d;
.super Lcom/viber/voip/messages/extras/image/imagezoom/n;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/extras/image/imagezoom/ImageViewTouch;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/extras/image/imagezoom/ImageViewTouch;)V
    .locals 0
    .parameter

    .prologue
    .line 196
    iput-object p1, p0, Lcom/viber/voip/messages/extras/image/imagezoom/d;->a:Lcom/viber/voip/messages/extras/image/imagezoom/ImageViewTouch;

    invoke-direct {p0}, Lcom/viber/voip/messages/extras/image/imagezoom/n;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/viber/voip/messages/extras/image/imagezoom/l;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x1

    const v4, 0x3f666666

    .line 201
    invoke-virtual {p1}, Lcom/viber/voip/messages/extras/image/imagezoom/l;->d()F

    move-result v0

    invoke-virtual {p1}, Lcom/viber/voip/messages/extras/image/imagezoom/l;->e()F

    move-result v1

    sub-float/2addr v0, v1

    .line 202
    iget-object v0, p0, Lcom/viber/voip/messages/extras/image/imagezoom/d;->a:Lcom/viber/voip/messages/extras/image/imagezoom/ImageViewTouch;

    iget v0, v0, Lcom/viber/voip/messages/extras/image/imagezoom/ImageViewTouch;->d:F

    invoke-virtual {p1}, Lcom/viber/voip/messages/extras/image/imagezoom/l;->f()F

    move-result v1

    mul-float/2addr v0, v1

    .line 204
    iget-object v1, p0, Lcom/viber/voip/messages/extras/image/imagezoom/d;->a:Lcom/viber/voip/messages/extras/image/imagezoom/ImageViewTouch;

    invoke-virtual {v1}, Lcom/viber/voip/messages/extras/image/imagezoom/ImageViewTouch;->getMaxZoom()F

    move-result v1

    invoke-static {v0, v4}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 205
    iget-object v1, p0, Lcom/viber/voip/messages/extras/image/imagezoom/d;->a:Lcom/viber/voip/messages/extras/image/imagezoom/ImageViewTouch;

    invoke-virtual {p1}, Lcom/viber/voip/messages/extras/image/imagezoom/l;->b()F

    move-result v2

    invoke-virtual {p1}, Lcom/viber/voip/messages/extras/image/imagezoom/l;->c()F

    move-result v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/viber/voip/messages/extras/image/imagezoom/ImageViewTouch;->b(FFF)V

    .line 206
    iget-object v1, p0, Lcom/viber/voip/messages/extras/image/imagezoom/d;->a:Lcom/viber/voip/messages/extras/image/imagezoom/ImageViewTouch;

    iget-object v2, p0, Lcom/viber/voip/messages/extras/image/imagezoom/d;->a:Lcom/viber/voip/messages/extras/image/imagezoom/ImageViewTouch;

    invoke-virtual {v2}, Lcom/viber/voip/messages/extras/image/imagezoom/ImageViewTouch;->getMaxZoom()F

    move-result v2

    invoke-static {v0, v4}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, v1, Lcom/viber/voip/messages/extras/image/imagezoom/ImageViewTouch;->d:F

    .line 207
    iget-object v0, p0, Lcom/viber/voip/messages/extras/image/imagezoom/d;->a:Lcom/viber/voip/messages/extras/image/imagezoom/ImageViewTouch;

    iput v5, v0, Lcom/viber/voip/messages/extras/image/imagezoom/ImageViewTouch;->f:I

    .line 208
    iget-object v0, p0, Lcom/viber/voip/messages/extras/image/imagezoom/d;->a:Lcom/viber/voip/messages/extras/image/imagezoom/ImageViewTouch;

    invoke-virtual {v0}, Lcom/viber/voip/messages/extras/image/imagezoom/ImageViewTouch;->invalidate()V

    .line 209
    return v5
.end method
