.class public Lcom/viber/voip/gallery/selection/SelectionGallery;
.super Lcom/viber/voip/gallery/selection/ViberGalleryActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/viber/voip/gallery/selection/ViberGalleryActivity;-><init>()V

    return-void
.end method

.method private b(Ljava/util/ArrayList;)V
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
    .line 68
    invoke-virtual {p0}, Lcom/viber/voip/gallery/selection/SelectionGallery;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra_conversation_data"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/conversation/ui/ConversationData;

    .line 69
    invoke-static {v0, p1}, Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;->a(Lcom/viber/voip/messages/conversation/ui/ConversationData;Ljava/util/ArrayList;)Landroid/content/Intent;

    move-result-object v0

    .line 70
    const/16 v1, 0xa

    invoke-virtual {p0, v0, v1}, Lcom/viber/voip/gallery/selection/SelectionGallery;->startActivityForResult(Landroid/content/Intent;I)V

    .line 71
    return-void
.end method

.method private c(Lcom/viber/voip/gallery/GalleryItem;)V
    .locals 1
    .parameter

    .prologue
    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 63
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    invoke-direct {p0, v0}, Lcom/viber/voip/gallery/selection/SelectionGallery;->b(Ljava/util/ArrayList;)V

    .line 65
    return-void
.end method


# virtual methods
.method protected a(Ljava/util/ArrayList;)V
    .locals 0
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
    .line 22
    invoke-direct {p0, p1}, Lcom/viber/voip/gallery/selection/SelectionGallery;->b(Ljava/util/ArrayList;)V

    .line 23
    return-void
.end method

.method protected a(Ljava/util/List;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/viber/voip/gallery/GalleryItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 51
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 52
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/gallery/GalleryItem;

    .line 53
    invoke-virtual {v0}, Lcom/viber/voip/gallery/GalleryItem;->d()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/viber/voip/gallery/GalleryItem;->b()Landroid/net/Uri;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 56
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 57
    iget-object v0, p0, Lcom/viber/voip/gallery/selection/SelectionGallery;->a:Landroid/os/Handler;

    new-instance v2, Lcom/viber/voip/gallery/preview/a;

    invoke-direct {v2, v1}, Lcom/viber/voip/gallery/preview/a;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 59
    :cond_2
    return-void
.end method

.method protected b(Lcom/viber/voip/gallery/GalleryItem;)V
    .locals 0
    .parameter

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/viber/voip/gallery/selection/SelectionGallery;->c(Lcom/viber/voip/gallery/GalleryItem;)V

    .line 28
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 32
    const/4 v0, -0x1

    if-ne v0, p2, :cond_1

    if-eqz p3, :cond_1

    .line 33
    const/16 v0, 0xa

    if-ne v0, p1, :cond_1

    .line 34
    const-string/jumbo v0, "image_list"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 35
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 36
    const-string/jumbo v3, "extra_selected_images"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 37
    const-string/jumbo v3, "extra_multiple_selection"

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 39
    invoke-virtual {p0, v1}, Lcom/viber/voip/gallery/selection/SelectionGallery;->a(Z)V

    .line 41
    invoke-virtual {p0, v2}, Lcom/viber/voip/gallery/selection/SelectionGallery;->a(Landroid/os/Bundle;)V

    .line 46
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 37
    goto :goto_0

    .line 45
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/viber/voip/gallery/selection/ViberGalleryActivity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_1
.end method
