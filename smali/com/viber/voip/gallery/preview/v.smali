.class Lcom/viber/voip/gallery/preview/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/ax;


# instance fields
.field final synthetic a:Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;


# direct methods
.method constructor <init>(Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 80
    iput-object p1, p0, Lcom/viber/voip/gallery/preview/v;->a:Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/viber/voip/aw;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 96
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/v;->a:Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;

    invoke-static {v0}, Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;->a(Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/v;->a:Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;

    invoke-static {v0}, Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;->c(Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/gallery/GalleryItem;

    invoke-virtual {v0}, Lcom/viber/voip/gallery/GalleryItem;->b()Landroid/net/Uri;

    move-result-object v0

    .line 98
    iget-object v1, p0, Lcom/viber/voip/gallery/preview/v;->a:Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;

    invoke-static {v1}, Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;->d(Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;)Lcom/viber/voip/gallery/preview/o;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Lcom/viber/voip/gallery/preview/o;->a(Landroid/net/Uri;Lcom/viber/voip/aw;)V

    .line 100
    :cond_0
    return-void
.end method

.method public b(ILcom/viber/voip/aw;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 83
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/v;->a:Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;

    invoke-static {v0}, Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;->a(Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/viber/voip/gallery/preview/v;->a:Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;

    invoke-static {v0}, Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;->b(Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;)Lcom/viber/voip/gallery/preview/ae;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/gallery/preview/ae;->b()I

    move-result v0

    if-ne v0, p1, :cond_1

    .line 84
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/v;->a:Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;

    invoke-static {v0}, Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;->c(Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/gallery/GalleryItem;

    invoke-virtual {v0}, Lcom/viber/voip/gallery/GalleryItem;->b()Landroid/net/Uri;

    move-result-object v0

    .line 85
    iget-object v1, p0, Lcom/viber/voip/gallery/preview/v;->a:Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;

    invoke-static {v1}, Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;->d(Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;)Lcom/viber/voip/gallery/preview/o;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Lcom/viber/voip/gallery/preview/o;->a(Landroid/net/Uri;Lcom/viber/voip/aw;)V

    .line 86
    iget-object v1, p0, Lcom/viber/voip/gallery/preview/v;->a:Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;

    invoke-static {v1}, Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;->e(Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;)Lcom/viber/voip/as;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/viber/voip/as;->d(ILandroid/net/Uri;)V

    .line 87
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/v;->a:Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;

    invoke-virtual {v0}, Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;->b()V

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 88
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/v;->a:Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;

    invoke-static {v0}, Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;->f(Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/v;->a:Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;

    invoke-static {v0}, Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;->g(Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;)V

    .line 90
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/v;->a:Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;

    invoke-virtual {v0}, Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;->b()V

    goto :goto_0
.end method
