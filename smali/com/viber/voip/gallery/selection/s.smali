.class Lcom/viber/voip/gallery/selection/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/viber/voip/gallery/selection/ViberGalleryActivity;


# direct methods
.method constructor <init>(Lcom/viber/voip/gallery/selection/ViberGalleryActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lcom/viber/voip/gallery/selection/s;->a:Lcom/viber/voip/gallery/selection/ViberGalleryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 89
    iget-object v0, p0, Lcom/viber/voip/gallery/selection/s;->a:Lcom/viber/voip/gallery/selection/ViberGalleryActivity;

    invoke-virtual {v0}, Lcom/viber/voip/gallery/selection/ViberGalleryActivity;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/gallery/selection/s;->a:Lcom/viber/voip/gallery/selection/ViberGalleryActivity;

    invoke-static {v0}, Lcom/viber/voip/gallery/selection/ViberGalleryActivity;->a(Lcom/viber/voip/gallery/selection/ViberGalleryActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/viber/voip/gallery/selection/s;->a:Lcom/viber/voip/gallery/selection/ViberGalleryActivity;

    invoke-virtual {v0}, Lcom/viber/voip/gallery/selection/ViberGalleryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c061b

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 94
    :goto_0
    return-void

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/gallery/selection/s;->a:Lcom/viber/voip/gallery/selection/ViberGalleryActivity;

    iget-object v1, p0, Lcom/viber/voip/gallery/selection/s;->a:Lcom/viber/voip/gallery/selection/ViberGalleryActivity;

    invoke-static {v1}, Lcom/viber/voip/gallery/selection/ViberGalleryActivity;->a(Lcom/viber/voip/gallery/selection/ViberGalleryActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/gallery/selection/ViberGalleryActivity;->a(Ljava/util/ArrayList;)V

    goto :goto_0
.end method
