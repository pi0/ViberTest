.class Lcom/viber/voip/gallery/preview/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/graphics/Bitmap;

.field final synthetic b:Landroid/graphics/Bitmap;

.field final synthetic c:Lcom/viber/voip/gallery/preview/o;


# direct methods
.method constructor <init>(Lcom/viber/voip/gallery/preview/o;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 312
    iput-object p1, p0, Lcom/viber/voip/gallery/preview/s;->c:Lcom/viber/voip/gallery/preview/o;

    iput-object p2, p0, Lcom/viber/voip/gallery/preview/s;->a:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/viber/voip/gallery/preview/s;->b:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 315
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/s;->c:Lcom/viber/voip/gallery/preview/o;

    invoke-static {v0, v3}, Lcom/viber/voip/gallery/preview/o;->a(Lcom/viber/voip/gallery/preview/o;Lcom/viber/voip/gallery/preview/t;)Lcom/viber/voip/gallery/preview/t;

    .line 316
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/s;->c:Lcom/viber/voip/gallery/preview/o;

    invoke-static {v0}, Lcom/viber/voip/gallery/preview/o;->c(Lcom/viber/voip/gallery/preview/o;)Lcom/viber/voip/widget/PhotoDoodleView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/s;->c:Lcom/viber/voip/gallery/preview/o;

    invoke-static {v0}, Lcom/viber/voip/gallery/preview/o;->d(Lcom/viber/voip/gallery/preview/o;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 318
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/s;->c:Lcom/viber/voip/gallery/preview/o;

    invoke-static {v0}, Lcom/viber/voip/gallery/preview/o;->c(Lcom/viber/voip/gallery/preview/o;)Lcom/viber/voip/widget/PhotoDoodleView;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/gallery/preview/s;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v3, v1}, Lcom/viber/voip/widget/PhotoDoodleView;->a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 319
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/s;->c:Lcom/viber/voip/gallery/preview/o;

    invoke-static {v0}, Lcom/viber/voip/gallery/preview/o;->c(Lcom/viber/voip/gallery/preview/o;)Lcom/viber/voip/widget/PhotoDoodleView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/viber/voip/widget/PhotoDoodleView;->setCanvasDirty(Z)V

    .line 320
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/s;->c:Lcom/viber/voip/gallery/preview/o;

    invoke-static {v0, v2}, Lcom/viber/voip/gallery/preview/o;->a(Lcom/viber/voip/gallery/preview/o;Z)Z

    .line 326
    :goto_0
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/s;->c:Lcom/viber/voip/gallery/preview/o;

    invoke-static {v0}, Lcom/viber/voip/gallery/preview/o;->c(Lcom/viber/voip/gallery/preview/o;)Lcom/viber/voip/widget/PhotoDoodleView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/widget/PhotoDoodleView;->invalidate()V

    .line 328
    :cond_0
    return-void

    .line 323
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/s;->c:Lcom/viber/voip/gallery/preview/o;

    invoke-static {v0}, Lcom/viber/voip/gallery/preview/o;->c(Lcom/viber/voip/gallery/preview/o;)Lcom/viber/voip/widget/PhotoDoodleView;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/gallery/preview/s;->b:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/viber/voip/gallery/preview/s;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/widget/PhotoDoodleView;->a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method
