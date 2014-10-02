.class public Lcom/viber/voip/gallery/preview/z;
.super Lcom/viber/voip/gallery/animation/c;
.source "SourceFile"


# instance fields
.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/viber/voip/gallery/GalleryItem;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/viber/voip/messages/ui/view/ViewPagerWithPagingEnable;

.field private e:Lcom/viber/voip/as;

.field private f:Z

.field private g:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/viber/voip/gallery/GalleryItem;",
            ">;"
        }
    .end annotation
.end field

.field private h:I

.field private i:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/viber/voip/messages/ui/view/ViewPagerWithPagingEnable;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/viber/voip/gallery/GalleryItem;",
            ">;",
            "Lcom/viber/voip/messages/ui/view/ViewPagerWithPagingEnable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/viber/voip/gallery/animation/c;-><init>(Landroid/content/Context;)V

    .line 48
    iput-object p3, p0, Lcom/viber/voip/gallery/preview/z;->d:Lcom/viber/voip/messages/ui/view/ViewPagerWithPagingEnable;

    .line 49
    iput-object p2, p0, Lcom/viber/voip/gallery/preview/z;->b:Ljava/util/List;

    .line 50
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/gallery/preview/z;->c:Ljava/util/Set;

    .line 51
    sget-object v0, Lcom/viber/voip/dk;->h:Lcom/viber/voip/dk;

    invoke-static {v0}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/gallery/preview/z;->i:Landroid/os/Handler;

    .line 52
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/gallery/preview/z;)Lcom/viber/voip/messages/ui/view/ViewPagerWithPagingEnable;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/z;->d:Lcom/viber/voip/messages/ui/view/ViewPagerWithPagingEnable;

    return-object v0
.end method

.method private static a(Lcom/viber/voip/gallery/preview/ac;Lcom/viber/voip/aw;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x8

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 241
    iget-boolean v0, p1, Lcom/viber/voip/aw;->b:Z

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/ac;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 243
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/ac;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 245
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/ac;->c:Lcom/viber/voip/messages/extras/image/imagezoom/ImageViewTouch;

    invoke-virtual {v0, v2}, Lcom/viber/voip/messages/extras/image/imagezoom/ImageViewTouch;->setVisibility(I)V

    .line 246
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/ac;->c:Lcom/viber/voip/messages/extras/image/imagezoom/ImageViewTouch;

    iget-object v1, p1, Lcom/viber/voip/aw;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v3}, Lcom/viber/voip/messages/extras/image/imagezoom/ImageViewTouch;->a(Landroid/graphics/Bitmap;Z)V

    .line 256
    :goto_0
    return-void

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/ac;->d:Landroid/widget/ImageView;

    iget-object v1, p1, Lcom/viber/voip/aw;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 249
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/ac;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 250
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/ac;->d:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p1, Lcom/viber/voip/aw;->d:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 251
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/ac;->d:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p1, Lcom/viber/voip/aw;->c:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 253
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/ac;->c:Lcom/viber/voip/messages/extras/image/imagezoom/ImageViewTouch;

    invoke-virtual {v0, v4}, Lcom/viber/voip/messages/extras/image/imagezoom/ImageViewTouch;->setVisibility(I)V

    .line 254
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/ac;->c:Lcom/viber/voip/messages/extras/image/imagezoom/ImageViewTouch;

    invoke-virtual {v0, v5, v3}, Lcom/viber/voip/messages/extras/image/imagezoom/ImageViewTouch;->a(Landroid/graphics/Bitmap;Z)V

    goto :goto_0
.end method

.method private b(I)Lcom/viber/voip/gallery/preview/ac;
    .locals 9
    .parameter

    .prologue
    const v4, 0x7f0a019b

    const/16 v8, 0x11

    const/4 v7, -0x1

    .line 211
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/z;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 212
    new-instance v1, Lcom/viber/voip/gallery/preview/ab;

    iget-object v2, p0, Lcom/viber/voip/gallery/preview/z;->a:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/viber/voip/gallery/preview/ab;-><init>(Landroid/content/Context;Lcom/viber/voip/gallery/preview/aa;)V

    .line 213
    const v2, 0x7f070072

    invoke-virtual {v1, v2}, Lcom/viber/voip/gallery/preview/ab;->setId(I)V

    .line 214
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/viber/voip/gallery/preview/ab;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 216
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    .line 217
    const v3, 0x7f0a019c

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    .line 218
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    .line 219
    const v5, 0x7f0a019d

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 221
    new-instance v5, Lcom/viber/voip/messages/extras/image/imagezoom/ImageViewTouch;

    iget-object v6, p0, Lcom/viber/voip/gallery/preview/z;->a:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/viber/voip/messages/extras/image/imagezoom/ImageViewTouch;-><init>(Landroid/content/Context;)V

    .line 222
    const v6, 0x7f070070

    invoke-virtual {v5, v6}, Lcom/viber/voip/messages/extras/image/imagezoom/ImageViewTouch;->setId(I)V

    .line 223
    invoke-virtual {v5, v2, v3, v4, v0}, Lcom/viber/voip/messages/extras/image/imagezoom/ImageViewTouch;->a(FFFF)V

    .line 224
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v7, v7, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v5, v0}, Lcom/viber/voip/messages/extras/image/imagezoom/ImageViewTouch;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 225
    new-instance v0, Lcom/viber/voip/gallery/preview/aa;

    invoke-direct {v0, p0}, Lcom/viber/voip/gallery/preview/aa;-><init>(Lcom/viber/voip/gallery/preview/z;)V

    invoke-virtual {v5, v0}, Lcom/viber/voip/messages/extras/image/imagezoom/ImageViewTouch;->setExternalScrollListener(Lcom/viber/voip/messages/extras/image/imagezoom/c;)V

    .line 231
    invoke-virtual {v1, v5}, Lcom/viber/voip/gallery/preview/ab;->addView(Landroid/view/View;)V

    .line 233
    new-instance v0, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/viber/voip/gallery/preview/z;->a:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 234
    const v2, 0x7f070071

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setId(I)V

    .line 235
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v7, v7, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 236
    invoke-virtual {v1, v0}, Lcom/viber/voip/gallery/preview/ab;->addView(Landroid/view/View;)V

    .line 237
    new-instance v2, Lcom/viber/voip/gallery/preview/ac;

    invoke-direct {v2, p1, v1, v5, v0}, Lcom/viber/voip/gallery/preview/ac;-><init>(ILandroid/view/View;Lcom/viber/voip/messages/extras/image/imagezoom/ImageViewTouch;Landroid/widget/ImageView;)V

    return-object v2
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 187
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/viber/voip/gallery/preview/z;->f:Z

    .line 188
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/z;->e:Lcom/viber/voip/as;

    invoke-virtual {v0}, Lcom/viber/voip/as;->c()V

    .line 189
    return-void
.end method

.method public a(I)V
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 193
    iput-boolean v0, p0, Lcom/viber/voip/gallery/preview/z;->f:Z

    move v1, v0

    .line 195
    :goto_0
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/z;->d:Lcom/viber/voip/messages/ui/view/ViewPagerWithPagingEnable;

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/view/ViewPagerWithPagingEnable;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 196
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/z;->d:Lcom/viber/voip/messages/ui/view/ViewPagerWithPagingEnable;

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/ui/view/ViewPagerWithPagingEnable;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f070072

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 197
    if-eqz v0, :cond_0

    .line 198
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/gallery/preview/ac;

    .line 199
    iget v2, v0, Lcom/viber/voip/gallery/preview/ac;->a:I

    if-eq p1, v2, :cond_0

    .line 200
    iget-object v0, v0, Lcom/viber/voip/gallery/preview/ac;->c:Lcom/viber/voip/messages/extras/image/imagezoom/ImageViewTouch;

    const/high16 v2, 0x3f80

    invoke-virtual {v0, v2}, Lcom/viber/voip/messages/extras/image/imagezoom/ImageViewTouch;->b(F)V

    .line 195
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 204
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/z;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_2

    iget-object v0, p0, Lcom/viber/voip/gallery/preview/z;->c:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 205
    iput p1, p0, Lcom/viber/voip/gallery/preview/z;->h:I

    .line 206
    iget-object v1, p0, Lcom/viber/voip/gallery/preview/z;->e:Lcom/viber/voip/as;

    iget-object v0, p0, Lcom/viber/voip/gallery/preview/z;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/gallery/GalleryItem;

    invoke-virtual {v0}, Lcom/viber/voip/gallery/GalleryItem;->a()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Lcom/viber/voip/as;->d(ILandroid/net/Uri;)V

    .line 208
    :cond_2
    return-void
.end method

.method public a(ILandroid/view/View;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 97
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/z;->g:Landroid/util/Pair;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/z;->b:Ljava/util/List;

    iget-object v1, p0, Lcom/viber/voip/gallery/preview/z;->g:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 99
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/viber/voip/gallery/preview/z;->g:Landroid/util/Pair;

    .line 101
    :cond_0
    return-void
.end method

.method public a(ILcom/viber/voip/aw;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 59
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/viber/voip/gallery/preview/z;->d:Lcom/viber/voip/messages/ui/view/ViewPagerWithPagingEnable;

    invoke-virtual {v1}, Lcom/viber/voip/messages/ui/view/ViewPagerWithPagingEnable;->getChildCount()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 60
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/z;->d:Lcom/viber/voip/messages/ui/view/ViewPagerWithPagingEnable;

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/ui/view/ViewPagerWithPagingEnable;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const v3, 0x7f070072

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 61
    if-eqz v0, :cond_1

    .line 62
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/gallery/preview/ac;

    .line 63
    iget v3, v0, Lcom/viber/voip/gallery/preview/ac;->a:I

    if-ne v3, p1, :cond_1

    .line 64
    invoke-static {v0, p2}, Lcom/viber/voip/gallery/preview/z;->a(Lcom/viber/voip/gallery/preview/ac;Lcom/viber/voip/aw;)V

    .line 69
    :cond_0
    return-void

    .line 59
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public a(Landroid/view/View;IZZ)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 131
    if-eqz p4, :cond_0

    .line 132
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/z;->c:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 134
    :cond_0
    if-eqz p3, :cond_2

    .line 135
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/z;->e:Lcom/viber/voip/as;

    invoke-virtual {v0}, Lcom/viber/voip/as;->c()V

    .line 139
    :cond_1
    :goto_0
    return-void

    .line 136
    :cond_2
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/z;->g:Landroid/util/Pair;

    if-nez v0, :cond_1

    if-nez p4, :cond_1

    .line 137
    iget-object v1, p0, Lcom/viber/voip/gallery/preview/z;->e:Lcom/viber/voip/as;

    iget-object v0, p0, Lcom/viber/voip/gallery/preview/z;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/gallery/GalleryItem;

    invoke-virtual {v0}, Lcom/viber/voip/gallery/GalleryItem;->a()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, p2, v0}, Lcom/viber/voip/as;->d(ILandroid/net/Uri;)V

    goto :goto_0
.end method

.method public a(Lcom/viber/voip/as;)V
    .locals 0
    .parameter

    .prologue
    .line 55
    iput-object p1, p0, Lcom/viber/voip/gallery/preview/z;->e:Lcom/viber/voip/as;

    .line 56
    return-void
.end method

.method public b(ILandroid/view/View;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 107
    new-instance v0, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/gallery/preview/z;->b:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/viber/voip/gallery/preview/z;->g:Landroid/util/Pair;

    .line 108
    return-void
.end method

.method public c(ILandroid/view/View;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 113
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/z;->e:Lcom/viber/voip/as;

    invoke-virtual {v0}, Lcom/viber/voip/as;->a()V

    .line 114
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/z;->c:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 116
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/z;->g:Landroid/util/Pair;

    if-eqz v0, :cond_1

    .line 117
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/z;->g:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/viber/voip/gallery/GalleryItem;

    .line 119
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/viber/voip/gallery/preview/z;->g:Landroid/util/Pair;

    .line 125
    :goto_0
    invoke-virtual {v0}, Lcom/viber/voip/gallery/GalleryItem;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/viber/voip/gallery/preview/z;->i:Landroid/os/Handler;

    new-instance v2, Lcom/viber/voip/gallery/preview/a;

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual {v0}, Lcom/viber/voip/gallery/GalleryItem;->b()Landroid/net/Uri;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-direct {v2, v3}, Lcom/viber/voip/gallery/preview/a;-><init>([Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 126
    :cond_0
    return-void

    .line 122
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/z;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/gallery/GalleryItem;

    goto :goto_0
.end method

.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 171
    if-nez p3, :cond_1

    .line 178
    :cond_0
    :goto_0
    return-void

    .line 172
    :cond_1
    check-cast p3, Landroid/view/View;

    .line 173
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/gallery/preview/ac;

    .line 174
    if-eqz v0, :cond_0

    .line 175
    iget-object v1, v0, Lcom/viber/voip/gallery/preview/ac;->c:Lcom/viber/voip/messages/extras/image/imagezoom/ImageViewTouch;

    invoke-virtual {v1, v2}, Lcom/viber/voip/messages/extras/image/imagezoom/ImageViewTouch;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 176
    iget-object v0, v0, Lcom/viber/voip/gallery/preview/ac;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/z;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 81
    iget-object v1, p0, Lcom/viber/voip/gallery/preview/z;->g:Landroid/util/Pair;

    if-eqz v1, :cond_0

    .line 82
    add-int/lit8 v0, v0, 0x1

    .line 85
    :cond_0
    return v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 1
    .parameter

    .prologue
    .line 182
    const/4 v0, -0x2

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 143
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/z;->e:Lcom/viber/voip/as;

    if-nez v0, :cond_0

    .line 144
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "mImageFetcher is not set to adapter. Use setImageFetcher() to assing image fetcher."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 147
    :cond_0
    invoke-direct {p0, p2}, Lcom/viber/voip/gallery/preview/z;->b(I)Lcom/viber/voip/gallery/preview/ac;

    move-result-object v1

    .line 148
    iget-object v0, v1, Lcom/viber/voip/gallery/preview/ac;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 151
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/z;->g:Landroid/util/Pair;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/viber/voip/gallery/preview/z;->g:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne p2, v0, :cond_1

    .line 152
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/z;->g:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/viber/voip/gallery/GalleryItem;

    .line 159
    :goto_0
    invoke-virtual {v0}, Lcom/viber/voip/gallery/GalleryItem;->a()Landroid/net/Uri;

    move-result-object v0

    .line 160
    iget v2, p0, Lcom/viber/voip/gallery/preview/z;->h:I

    if-ne p2, v2, :cond_3

    .line 161
    iget-object v2, p0, Lcom/viber/voip/gallery/preview/z;->e:Lcom/viber/voip/as;

    invoke-virtual {v2, p2, v0}, Lcom/viber/voip/as;->c(ILandroid/net/Uri;)Lcom/viber/voip/aw;

    move-result-object v0

    .line 162
    invoke-static {v1, v0}, Lcom/viber/voip/gallery/preview/z;->a(Lcom/viber/voip/gallery/preview/ac;Lcom/viber/voip/aw;)V

    .line 166
    :goto_1
    iget-object v0, v1, Lcom/viber/voip/gallery/preview/ac;->b:Landroid/view/View;

    return-object v0

    .line 153
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/z;->g:Landroid/util/Pair;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/viber/voip/gallery/preview/z;->g:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le p2, v0, :cond_2

    .line 154
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/z;->b:Ljava/util/List;

    add-int/lit8 v2, p2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/gallery/GalleryItem;

    goto :goto_0

    .line 156
    :cond_2
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/z;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/gallery/GalleryItem;

    goto :goto_0

    .line 164
    :cond_3
    iget-object v2, p0, Lcom/viber/voip/gallery/preview/z;->e:Lcom/viber/voip/as;

    invoke-virtual {v2, p2, v0}, Lcom/viber/voip/as;->b(ILandroid/net/Uri;)V

    goto :goto_1
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 90
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/viber/voip/gallery/preview/z;->f:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/viber/voip/gallery/animation/c;->notifyDataSetChanged()V

    .line 75
    :cond_0
    return-void
.end method
