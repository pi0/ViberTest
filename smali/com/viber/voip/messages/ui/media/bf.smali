.class public Lcom/viber/voip/messages/ui/media/bf;
.super Lcom/viber/voip/messages/ui/media/be;
.source "SourceFile"


# static fields
.field private static final b:Ljava/lang/String;


# instance fields
.field a:Lcom/viber/voip/messages/extras/image/imagezoom/c;

.field private c:Lcom/viber/voip/messages/ui/media/bi;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/viber/voip/messages/ui/media/bf;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/messages/ui/media/bf;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/media/be;-><init>()V

    .line 103
    new-instance v0, Lcom/viber/voip/messages/ui/media/bh;

    invoke-direct {v0, p0}, Lcom/viber/voip/messages/ui/media/bh;-><init>(Lcom/viber/voip/messages/ui/media/bf;)V

    iput-object v0, p0, Lcom/viber/voip/messages/ui/media/bf;->a:Lcom/viber/voip/messages/extras/image/imagezoom/c;

    .line 33
    return-void
.end method

.method public static a(Landroid/graphics/Bitmap;I)Lcom/viber/voip/messages/ui/media/bf;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 36
    new-instance v0, Lcom/viber/voip/messages/ui/media/bf;

    invoke-direct {v0}, Lcom/viber/voip/messages/ui/media/bf;-><init>()V

    .line 37
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 38
    const-string/jumbo v2, "media_uri"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 39
    const-string/jumbo v2, "is_scrolled_view"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 40
    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/ui/media/bf;->setArguments(Landroid/os/Bundle;)V

    .line 41
    invoke-virtual {v0, p1}, Lcom/viber/voip/messages/ui/media/bf;->a(I)V

    .line 42
    return-object v0
.end method

.method public static a(Landroid/graphics/Bitmap;III)Lcom/viber/voip/messages/ui/media/bf;
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 46
    new-instance v0, Lcom/viber/voip/messages/ui/media/bf;

    invoke-direct {v0}, Lcom/viber/voip/messages/ui/media/bf;-><init>()V

    .line 47
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 48
    const-string/jumbo v2, "media_uri"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 49
    const-string/jumbo v2, "is_scrolled_view"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 50
    const-string/jumbo v2, "max_view_width"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 51
    const-string/jumbo v2, "max_view_height"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 52
    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/ui/media/bf;->setArguments(Landroid/os/Bundle;)V

    .line 53
    invoke-virtual {v0, p1}, Lcom/viber/voip/messages/ui/media/bf;->a(I)V

    .line 54
    return-object v0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v5, 0x8

    .line 59
    const v0, 0x7f03013f

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 61
    new-instance v0, Lcom/viber/voip/messages/ui/media/bi;

    invoke-direct {v0, v1}, Lcom/viber/voip/messages/ui/media/bi;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/viber/voip/messages/ui/media/bf;->c:Lcom/viber/voip/messages/ui/media/bi;

    .line 63
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/media/bf;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    .line 64
    const-string/jumbo v0, "media_uri"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 65
    const-string/jumbo v3, "is_scrolled_view"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 67
    if-eqz v0, :cond_2

    .line 68
    iget-object v4, p0, Lcom/viber/voip/messages/ui/media/bf;->c:Lcom/viber/voip/messages/ui/media/bi;

    invoke-virtual {v4}, Lcom/viber/voip/messages/ui/media/bi;->b()V

    .line 70
    if-nez v3, :cond_0

    .line 71
    iget-object v2, p0, Lcom/viber/voip/messages/ui/media/bf;->c:Lcom/viber/voip/messages/ui/media/bi;

    iget-object v2, v2, Lcom/viber/voip/messages/ui/media/bi;->a:Lcom/viber/voip/messages/extras/image/imagezoom/ImageViewTouch;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Lcom/viber/voip/messages/extras/image/imagezoom/ImageViewTouch;->a(Landroid/graphics/Bitmap;Z)V

    .line 72
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/bf;->c:Lcom/viber/voip/messages/ui/media/bi;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/media/bi;->a:Lcom/viber/voip/messages/extras/image/imagezoom/ImageViewTouch;

    new-instance v2, Lcom/viber/voip/messages/ui/media/bg;

    invoke-direct {v2, p0}, Lcom/viber/voip/messages/ui/media/bg;-><init>(Lcom/viber/voip/messages/ui/media/bf;)V

    invoke-virtual {v0, v2}, Lcom/viber/voip/messages/extras/image/imagezoom/ImageViewTouch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/bf;->c:Lcom/viber/voip/messages/ui/media/bi;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/media/bi;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 79
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/bf;->c:Lcom/viber/voip/messages/ui/media/bi;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/media/bi;->a:Lcom/viber/voip/messages/extras/image/imagezoom/ImageViewTouch;

    iget-object v2, p0, Lcom/viber/voip/messages/ui/media/bf;->a:Lcom/viber/voip/messages/extras/image/imagezoom/c;

    invoke-virtual {v0, v2}, Lcom/viber/voip/messages/extras/image/imagezoom/ImageViewTouch;->setExternalScrollListener(Lcom/viber/voip/messages/extras/image/imagezoom/c;)V

    .line 100
    :goto_0
    return-object v1

    .line 82
    :cond_0
    const-string/jumbo v3, "max_view_width"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 83
    const-string/jumbo v4, "max_view_height"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 85
    if-lez v3, :cond_1

    if-lez v2, :cond_1

    .line 86
    iget-object v4, p0, Lcom/viber/voip/messages/ui/media/bf;->c:Lcom/viber/voip/messages/ui/media/bi;

    iget-object v4, v4, Lcom/viber/voip/messages/ui/media/bi;->b:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iput v2, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 87
    iget-object v2, p0, Lcom/viber/voip/messages/ui/media/bf;->c:Lcom/viber/voip/messages/ui/media/bi;

    iget-object v2, v2, Lcom/viber/voip/messages/ui/media/bi;->b:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 90
    :cond_1
    iget-object v2, p0, Lcom/viber/voip/messages/ui/media/bf;->c:Lcom/viber/voip/messages/ui/media/bi;

    iget-object v2, v2, Lcom/viber/voip/messages/ui/media/bi;->b:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 91
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/bf;->c:Lcom/viber/voip/messages/ui/media/bi;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/media/bi;->a:Lcom/viber/voip/messages/extras/image/imagezoom/ImageViewTouch;

    invoke-virtual {v0, v5}, Lcom/viber/voip/messages/extras/image/imagezoom/ImageViewTouch;->setVisibility(I)V

    .line 92
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/bf;->c:Lcom/viber/voip/messages/ui/media/bi;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/media/bi;->a:Lcom/viber/voip/messages/extras/image/imagezoom/ImageViewTouch;

    iget-object v2, p0, Lcom/viber/voip/messages/ui/media/bf;->a:Lcom/viber/voip/messages/extras/image/imagezoom/c;

    invoke-virtual {v0, v2}, Lcom/viber/voip/messages/extras/image/imagezoom/ImageViewTouch;->setExternalScrollListener(Lcom/viber/voip/messages/extras/image/imagezoom/c;)V

    goto :goto_0

    .line 94
    :cond_2
    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/media/bf;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 95
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/bf;->c:Lcom/viber/voip/messages/ui/media/bi;

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/media/bi;->a()V

    goto :goto_0

    .line 97
    :cond_3
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/bf;->c:Lcom/viber/voip/messages/ui/media/bi;

    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/media/bf;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/viber/voip/messages/ui/media/bi;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setMenuVisibility(Z)V
    .locals 3
    .parameter

    .prologue
    const/high16 v2, 0x3f80

    .line 112
    invoke-super {p0, p1}, Lcom/viber/voip/messages/ui/media/be;->setMenuVisibility(Z)V

    .line 113
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/bf;->c:Lcom/viber/voip/messages/ui/media/bi;

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/bf;->c:Lcom/viber/voip/messages/ui/media/bi;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/media/bi;->a:Lcom/viber/voip/messages/extras/image/imagezoom/ImageViewTouch;

    invoke-virtual {v0}, Lcom/viber/voip/messages/extras/image/imagezoom/ImageViewTouch;->getScale()F

    move-result v0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/bf;->c:Lcom/viber/voip/messages/ui/media/bi;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/media/bi;->a:Lcom/viber/voip/messages/extras/image/imagezoom/ImageViewTouch;

    const/high16 v1, 0x4248

    invoke-virtual {v0, v2, v1}, Lcom/viber/voip/messages/extras/image/imagezoom/ImageViewTouch;->c(FF)V

    .line 116
    :cond_0
    return-void
.end method
