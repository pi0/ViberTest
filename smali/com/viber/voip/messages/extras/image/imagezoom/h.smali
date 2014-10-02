.class Lcom/viber/voip/messages/extras/image/imagezoom/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:F

.field final synthetic b:J

.field final synthetic c:F

.field final synthetic d:F

.field final synthetic e:F

.field final synthetic f:F

.field final synthetic g:Lcom/viber/voip/messages/extras/image/imagezoom/e;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/extras/image/imagezoom/e;FJFFFF)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 379
    iput-object p1, p0, Lcom/viber/voip/messages/extras/image/imagezoom/h;->g:Lcom/viber/voip/messages/extras/image/imagezoom/e;

    iput p2, p0, Lcom/viber/voip/messages/extras/image/imagezoom/h;->a:F

    iput-wide p3, p0, Lcom/viber/voip/messages/extras/image/imagezoom/h;->b:J

    iput p5, p0, Lcom/viber/voip/messages/extras/image/imagezoom/h;->c:F

    iput p6, p0, Lcom/viber/voip/messages/extras/image/imagezoom/h;->d:F

    iput p7, p0, Lcom/viber/voip/messages/extras/image/imagezoom/h;->e:F

    iput p8, p0, Lcom/viber/voip/messages/extras/image/imagezoom/h;->f:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 383
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 384
    iget v2, p0, Lcom/viber/voip/messages/extras/image/imagezoom/h;->a:F

    iget-wide v3, p0, Lcom/viber/voip/messages/extras/image/imagezoom/h;->b:J

    sub-long/2addr v0, v3

    long-to-float v0, v0

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 385
    iget v1, p0, Lcom/viber/voip/messages/extras/image/imagezoom/h;->c:F

    iget v2, p0, Lcom/viber/voip/messages/extras/image/imagezoom/h;->d:F

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    .line 386
    iget-object v2, p0, Lcom/viber/voip/messages/extras/image/imagezoom/h;->g:Lcom/viber/voip/messages/extras/image/imagezoom/e;

    iget v3, p0, Lcom/viber/voip/messages/extras/image/imagezoom/h;->e:F

    iget v4, p0, Lcom/viber/voip/messages/extras/image/imagezoom/h;->f:F

    invoke-virtual {v2, v1, v3, v4}, Lcom/viber/voip/messages/extras/image/imagezoom/e;->b(FFF)V

    .line 387
    iget v1, p0, Lcom/viber/voip/messages/extras/image/imagezoom/h;->a:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 388
    iget-object v0, p0, Lcom/viber/voip/messages/extras/image/imagezoom/h;->g:Lcom/viber/voip/messages/extras/image/imagezoom/e;

    iget-object v0, v0, Lcom/viber/voip/messages/extras/image/imagezoom/e;->o:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 392
    :cond_0
    return-void
.end method
