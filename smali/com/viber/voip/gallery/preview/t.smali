.class Lcom/viber/voip/gallery/preview/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final a:Landroid/net/Uri;

.field final b:Landroid/content/Context;

.field final synthetic c:Lcom/viber/voip/gallery/preview/o;


# direct methods
.method constructor <init>(Lcom/viber/voip/gallery/preview/o;Landroid/net/Uri;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 381
    iput-object p1, p0, Lcom/viber/voip/gallery/preview/t;->c:Lcom/viber/voip/gallery/preview/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 382
    iput-object p2, p0, Lcom/viber/voip/gallery/preview/t;->a:Landroid/net/Uri;

    .line 383
    iput-object p3, p0, Lcom/viber/voip/gallery/preview/t;->b:Landroid/content/Context;

    .line 384
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 388
    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/t;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/viber/voip/gallery/preview/t;->a:Landroid/net/Uri;

    invoke-static {v1}, Lcom/viber/voip/gallery/b/a;->b(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {}, Lcom/viber/voip/gallery/preview/o;->f()I

    move-result v2

    invoke-static {}, Lcom/viber/voip/gallery/preview/o;->f()I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/viber/voip/messages/extras/image/h;->a(Landroid/content/Context;Landroid/net/Uri;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 389
    iget-object v1, p0, Lcom/viber/voip/gallery/preview/t;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/viber/voip/gallery/preview/t;->a:Landroid/net/Uri;

    invoke-static {}, Lcom/viber/voip/gallery/preview/o;->f()I

    move-result v3

    invoke-static {}, Lcom/viber/voip/gallery/preview/o;->f()I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Lcom/viber/voip/messages/extras/image/h;->a(Landroid/content/Context;Landroid/net/Uri;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 390
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 391
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 393
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/t;->c:Lcom/viber/voip/gallery/preview/o;

    invoke-virtual {v0, v2, v1}, Lcom/viber/voip/gallery/preview/o;->a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 402
    :goto_0
    return-void

    .line 398
    :catch_0
    move-exception v0

    .line 400
    invoke-static {}, Ljava/lang/System;->gc()V

    goto :goto_0

    .line 396
    :catch_1
    move-exception v0

    goto :goto_0

    .line 394
    :catch_2
    move-exception v0

    goto :goto_0
.end method
