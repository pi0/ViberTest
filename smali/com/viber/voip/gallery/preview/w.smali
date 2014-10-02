.class Lcom/viber/voip/gallery/preview/w;
.super Lcom/viber/voip/messages/ui/du;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;


# direct methods
.method constructor <init>(Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 170
    iput-object p1, p0, Lcom/viber/voip/gallery/preview/w;->a:Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;

    invoke-direct {p0}, Lcom/viber/voip/messages/ui/du;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;IIII)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 173
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/w;->a:Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;

    invoke-virtual {v0}, Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 174
    const v1, 0x7f0a019b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    mul-int/lit8 v1, v1, 0x2

    sub-int v1, p2, v1

    .line 175
    const v2, 0x7f0a019d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    const v3, 0x7f0a019c

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    add-int/2addr v0, v2

    sub-int v0, p3, v0

    .line 176
    iget-object v2, p0, Lcom/viber/voip/gallery/preview/w;->a:Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;

    invoke-static {v2}, Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;->e(Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;)Lcom/viber/voip/as;

    move-result-object v2

    int-to-float v1, v1

    int-to-float v0, v0

    invoke-virtual {v2, v1, v0}, Lcom/viber/voip/as;->a(FF)V

    .line 177
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/w;->a:Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;

    iget-object v0, v0, Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;->a:Lcom/viber/voip/messages/ui/PositioningAwareFrameLayout;

    new-instance v1, Lcom/viber/voip/gallery/preview/x;

    invoke-direct {v1, p0}, Lcom/viber/voip/gallery/preview/x;-><init>(Lcom/viber/voip/gallery/preview/w;)V

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/ui/PositioningAwareFrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 183
    return-void
.end method
