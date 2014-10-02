.class Lcom/android/camera/u;
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

.field final synthetic g:Lcom/android/camera/s;


# direct methods
.method constructor <init>(Lcom/android/camera/s;FJFFFF)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 326
    iput-object p1, p0, Lcom/android/camera/u;->g:Lcom/android/camera/s;

    iput p2, p0, Lcom/android/camera/u;->a:F

    iput-wide p3, p0, Lcom/android/camera/u;->b:J

    iput p5, p0, Lcom/android/camera/u;->c:F

    iput p6, p0, Lcom/android/camera/u;->d:F

    iput p7, p0, Lcom/android/camera/u;->e:F

    iput p8, p0, Lcom/android/camera/u;->f:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 328
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 329
    iget v2, p0, Lcom/android/camera/u;->a:F

    iget-wide v3, p0, Lcom/android/camera/u;->b:J

    sub-long/2addr v0, v3

    long-to-float v0, v0

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 330
    iget v1, p0, Lcom/android/camera/u;->c:F

    iget v2, p0, Lcom/android/camera/u;->d:F

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    .line 331
    iget-object v2, p0, Lcom/android/camera/u;->g:Lcom/android/camera/s;

    iget v3, p0, Lcom/android/camera/u;->e:F

    iget v4, p0, Lcom/android/camera/u;->f:F

    invoke-virtual {v2, v1, v3, v4}, Lcom/android/camera/s;->a(FFF)V

    .line 333
    iget v1, p0, Lcom/android/camera/u;->a:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 334
    iget-object v0, p0, Lcom/android/camera/u;->g:Lcom/android/camera/s;

    iget-object v0, v0, Lcom/android/camera/s;->l:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 336
    :cond_0
    return-void
.end method
