.class Lcom/viber/voip/gallery/preview/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final a:Landroid/net/Uri;

.field b:Landroid/graphics/Bitmap;

.field c:Landroid/graphics/Bitmap;

.field final synthetic d:Lcom/viber/voip/gallery/preview/o;


# direct methods
.method constructor <init>(Lcom/viber/voip/gallery/preview/o;Landroid/net/Uri;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 337
    iput-object p1, p0, Lcom/viber/voip/gallery/preview/u;->d:Lcom/viber/voip/gallery/preview/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 338
    iput-object p2, p0, Lcom/viber/voip/gallery/preview/u;->a:Landroid/net/Uri;

    .line 339
    iput-object p3, p0, Lcom/viber/voip/gallery/preview/u;->b:Landroid/graphics/Bitmap;

    .line 340
    iput-object p4, p0, Lcom/viber/voip/gallery/preview/u;->c:Landroid/graphics/Bitmap;

    .line 341
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 345
    .line 347
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/u;->b:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/viber/voip/gallery/preview/u;->c:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_5

    .line 349
    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/u;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v2, p0, Lcom/viber/voip/gallery/preview/u;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 350
    :try_start_1
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 351
    new-instance v3, Landroid/graphics/Paint;

    const/4 v4, 0x6

    invoke-direct {v3, v4}, Landroid/graphics/Paint;-><init>(I)V

    .line 352
    iget-object v4, p0, Lcom/viber/voip/gallery/preview/u;->c:Landroid/graphics/Bitmap;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v4, v5, v6, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 353
    iget-object v4, p0, Lcom/viber/voip/gallery/preview/u;->b:Landroid/graphics/Bitmap;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v4, v5, v6, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 354
    iget-object v2, p0, Lcom/viber/voip/gallery/preview/u;->a:Landroid/net/Uri;

    invoke-static {v0, v2}, Lcom/viber/voip/gallery/b/a;->a(Landroid/graphics/Bitmap;Landroid/net/Uri;)Landroid/net/Uri;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 355
    if-eqz v2, :cond_0

    .line 356
    :try_start_2
    iget-object v3, p0, Lcom/viber/voip/gallery/preview/u;->b:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/viber/voip/gallery/preview/u;->a:Landroid/net/Uri;

    invoke-static {v3, v4}, Lcom/viber/voip/gallery/b/a;->b(Landroid/graphics/Bitmap;Landroid/net/Uri;)Landroid/net/Uri;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_2

    .line 367
    :cond_0
    iget-object v3, p0, Lcom/viber/voip/gallery/preview/u;->b:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/viber/voip/gallery/preview/u;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 368
    :cond_1
    iput-object v1, p0, Lcom/viber/voip/gallery/preview/u;->b:Landroid/graphics/Bitmap;

    .line 369
    iput-object v1, p0, Lcom/viber/voip/gallery/preview/u;->c:Landroid/graphics/Bitmap;

    move-object v1, v2

    .line 372
    :goto_0
    iget-object v2, p0, Lcom/viber/voip/gallery/preview/u;->d:Lcom/viber/voip/gallery/preview/o;

    invoke-virtual {v2, v1, v0}, Lcom/viber/voip/gallery/preview/o;->a(Landroid/net/Uri;Landroid/graphics/Bitmap;)V

    .line 373
    return-void

    .line 358
    :catch_0
    move-exception v0

    move-object v0, v1

    move-object v2, v1

    .line 360
    :goto_1
    if-eqz v0, :cond_2

    .line 362
    :try_start_3
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    move-object v0, v1

    .line 365
    :cond_2
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 367
    iget-object v3, p0, Lcom/viber/voip/gallery/preview/u;->b:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/viber/voip/gallery/preview/u;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 368
    :cond_3
    iput-object v1, p0, Lcom/viber/voip/gallery/preview/u;->b:Landroid/graphics/Bitmap;

    .line 369
    iput-object v1, p0, Lcom/viber/voip/gallery/preview/u;->c:Landroid/graphics/Bitmap;

    move-object v1, v2

    .line 370
    goto :goto_0

    .line 367
    :catchall_0
    move-exception v0

    iget-object v2, p0, Lcom/viber/voip/gallery/preview/u;->b:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/viber/voip/gallery/preview/u;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 368
    :cond_4
    iput-object v1, p0, Lcom/viber/voip/gallery/preview/u;->b:Landroid/graphics/Bitmap;

    .line 369
    iput-object v1, p0, Lcom/viber/voip/gallery/preview/u;->c:Landroid/graphics/Bitmap;

    throw v0

    .line 358
    :catch_1
    move-exception v2

    move-object v2, v1

    goto :goto_1

    :catch_2
    move-exception v3

    goto :goto_1

    :cond_5
    move-object v0, v1

    goto :goto_0
.end method
