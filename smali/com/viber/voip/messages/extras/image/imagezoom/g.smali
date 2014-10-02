.class Lcom/viber/voip/messages/extras/image/imagezoom/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field a:F

.field b:F

.field final synthetic c:F

.field final synthetic d:J

.field final synthetic e:F

.field final synthetic f:F

.field final synthetic g:Lcom/viber/voip/messages/extras/image/imagezoom/e;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/extras/image/imagezoom/e;FJFF)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 350
    iput-object p1, p0, Lcom/viber/voip/messages/extras/image/imagezoom/g;->g:Lcom/viber/voip/messages/extras/image/imagezoom/e;

    iput p2, p0, Lcom/viber/voip/messages/extras/image/imagezoom/g;->c:F

    iput-wide p3, p0, Lcom/viber/voip/messages/extras/image/imagezoom/g;->d:J

    iput p5, p0, Lcom/viber/voip/messages/extras/image/imagezoom/g;->e:F

    iput p6, p0, Lcom/viber/voip/messages/extras/image/imagezoom/g;->f:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 352
    iput v0, p0, Lcom/viber/voip/messages/extras/image/imagezoom/g;->a:F

    .line 353
    iput v0, p0, Lcom/viber/voip/messages/extras/image/imagezoom/g;->b:F

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 357
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 358
    iget v2, p0, Lcom/viber/voip/messages/extras/image/imagezoom/g;->c:F

    iget-wide v3, p0, Lcom/viber/voip/messages/extras/image/imagezoom/g;->d:J

    sub-long/2addr v0, v3

    long-to-float v0, v0

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 359
    iget v1, p0, Lcom/viber/voip/messages/extras/image/imagezoom/g;->e:F

    iget v2, p0, Lcom/viber/voip/messages/extras/image/imagezoom/g;->c:F

    invoke-static {v0, v6, v1, v2}, Lcom/viber/voip/messages/extras/image/imagezoom/a;->a(FFFF)F

    move-result v1

    .line 360
    iget v2, p0, Lcom/viber/voip/messages/extras/image/imagezoom/g;->f:F

    iget v3, p0, Lcom/viber/voip/messages/extras/image/imagezoom/g;->c:F

    invoke-static {v0, v6, v2, v3}, Lcom/viber/voip/messages/extras/image/imagezoom/a;->a(FFFF)F

    move-result v2

    .line 361
    iget-object v3, p0, Lcom/viber/voip/messages/extras/image/imagezoom/g;->g:Lcom/viber/voip/messages/extras/image/imagezoom/e;

    iget v4, p0, Lcom/viber/voip/messages/extras/image/imagezoom/g;->a:F

    sub-float v4, v1, v4

    iget v5, p0, Lcom/viber/voip/messages/extras/image/imagezoom/g;->b:F

    sub-float v5, v2, v5

    invoke-virtual {v3, v4, v5}, Lcom/viber/voip/messages/extras/image/imagezoom/e;->e(FF)V

    .line 362
    iput v1, p0, Lcom/viber/voip/messages/extras/image/imagezoom/g;->a:F

    .line 363
    iput v2, p0, Lcom/viber/voip/messages/extras/image/imagezoom/g;->b:F

    .line 364
    iget v1, p0, Lcom/viber/voip/messages/extras/image/imagezoom/g;->c:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 365
    iget-object v0, p0, Lcom/viber/voip/messages/extras/image/imagezoom/g;->g:Lcom/viber/voip/messages/extras/image/imagezoom/e;

    iget-object v0, v0, Lcom/viber/voip/messages/extras/image/imagezoom/e;->o:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 370
    :cond_0
    :goto_0
    return-void

    .line 367
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/messages/extras/image/imagezoom/g;->g:Lcom/viber/voip/messages/extras/image/imagezoom/e;

    invoke-virtual {v0, v7, v7}, Lcom/viber/voip/messages/extras/image/imagezoom/e;->b(ZZ)Landroid/graphics/RectF;

    move-result-object v0

    .line 368
    iget v1, v0, Landroid/graphics/RectF;->left:F

    cmpl-float v1, v1, v6

    if-nez v1, :cond_2

    iget v1, v0, Landroid/graphics/RectF;->top:F

    cmpl-float v1, v1, v6

    if-eqz v1, :cond_0

    :cond_2
    iget-object v1, p0, Lcom/viber/voip/messages/extras/image/imagezoom/g;->g:Lcom/viber/voip/messages/extras/image/imagezoom/e;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    iget v0, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {v1, v2, v0}, Lcom/viber/voip/messages/extras/image/imagezoom/e;->d(FF)V

    goto :goto_0
.end method
