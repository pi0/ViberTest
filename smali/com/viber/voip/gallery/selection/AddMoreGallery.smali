.class public Lcom/viber/voip/gallery/selection/AddMoreGallery;
.super Lcom/viber/voip/gallery/selection/ViberGalleryActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/viber/voip/gallery/selection/ViberGalleryActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Ljava/util/ArrayList;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/viber/voip/gallery/GalleryItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 13
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 14
    const-string/jumbo v1, "extra_selected_images"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 15
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/viber/voip/gallery/selection/AddMoreGallery;->setResult(ILandroid/content/Intent;)V

    .line 16
    invoke-virtual {p0}, Lcom/viber/voip/gallery/selection/AddMoreGallery;->finish()V

    .line 17
    return-void
.end method

.method protected a()Z
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x1

    return v0
.end method
