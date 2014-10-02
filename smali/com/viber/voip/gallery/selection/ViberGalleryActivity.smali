.class public abstract Lcom/viber/voip/gallery/selection/ViberGalleryActivity;
.super Lcom/viber/voip/app/ViberFragmentActivity;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/gallery/animation/b;
.implements Lcom/viber/voip/gallery/selection/i;


# instance fields
.field a:Landroid/os/Handler;

.field private b:Lcom/viber/voip/util/b/ad;

.field private c:Lcom/viber/voip/util/b/x;

.field private d:Z

.field private e:Lcom/viber/voip/gallery/animation/SwipeableHorizontalScrollView;

.field private f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/viber/voip/gallery/GalleryItem;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/viber/voip/gallery/selection/h;

.field private h:Lcom/viber/voip/gallery/selection/q;

.field private i:I

.field private j:I

.field private k:I

.field private l:Lcom/viber/voip/gallery/selection/a;

.field private m:Landroid/view/animation/Animation;

.field private n:Landroid/view/animation/Animation;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/viber/voip/app/ViberFragmentActivity;-><init>()V

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/gallery/selection/ViberGalleryActivity;->f:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic a(Lcom/viber/voip/gallery/selection/ViberGalleryActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/viber/voip/gallery/selection/ViberGalleryActivity;->f:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/viber/voip/messages/conversation/ui/ConversationData;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 408
    invoke-static {}, Lcom/viber/voip/messages/extras/image/h;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 409
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.viber.voip.action.SELECTION_GALLERY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 410
    const-string/jumbo v1, "extra_conversation_data"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 411
    instance-of v1, p0, Landroid/app/Activity;

    if-nez v1, :cond_0

    .line 412
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 414
    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 416
    :cond_1
    return-void
.end method

.method private a(Landroid/content/Intent;)V
    .locals 2
    .parameter

    .prologue
    .line 128
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 130
    if-eqz v0, :cond_0

    const-string/jumbo v1, "extra_selected_images"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 133
    :cond_0
    :goto_0
    return-void

    .line 132
    :cond_1
    invoke-virtual {p0, v0}, Lcom/viber/voip/gallery/selection/ViberGalleryActivity;->a(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private varargs a([Lcom/viber/voip/gallery/GalleryItem;)V
    .locals 11
    .parameter

    .prologue
    const/4 v8, 0x0

    .line 329
    array-length v10, p1

    move v9, v8

    :goto_0
    if-ge v9, v10, :cond_0

    aget-object v2, p1, v9

    .line 330
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 331
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 332
    iget-object v0, p0, Lcom/viber/voip/gallery/selection/ViberGalleryActivity;->b:Lcom/viber/voip/util/b/ad;

    invoke-virtual {v2}, Lcom/viber/voip/gallery/GalleryItem;->b()Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/viber/voip/gallery/selection/ViberGalleryActivity;->c:Lcom/viber/voip/util/b/x;

    invoke-virtual {v0, v3, v1, v4}, Lcom/viber/voip/util/b/ad;->a(Landroid/net/Uri;Landroid/widget/ImageView;Lcom/viber/voip/util/b/x;)V

    .line 334
    iget-object v0, p0, Lcom/viber/voip/gallery/selection/ViberGalleryActivity;->e:Lcom/viber/voip/gallery/animation/SwipeableHorizontalScrollView;

    iget v3, p0, Lcom/viber/voip/gallery/selection/ViberGalleryActivity;->i:I

    iget v4, p0, Lcom/viber/voip/gallery/selection/ViberGalleryActivity;->i:I

    iget v5, p0, Lcom/viber/voip/gallery/selection/ViberGalleryActivity;->j:I

    iget v6, p0, Lcom/viber/voip/gallery/selection/ViberGalleryActivity;->k:I

    iget v7, p0, Lcom/viber/voip/gallery/selection/ViberGalleryActivity;->j:I

    invoke-virtual/range {v0 .. v8}, Lcom/viber/voip/gallery/animation/SwipeableHorizontalScrollView;->a(Landroid/view/View;Ljava/lang/Object;IIIIII)V

    .line 329
    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto :goto_0

    .line 337
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/viber/voip/gallery/selection/ViberGalleryActivity;)Lcom/viber/voip/gallery/animation/SwipeableHorizontalScrollView;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/viber/voip/gallery/selection/ViberGalleryActivity;->e:Lcom/viber/voip/gallery/animation/SwipeableHorizontalScrollView;

    return-object v0
.end method

.method private b(Z)V
    .locals 2
    .parameter

    .prologue
    .line 203
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/viber/voip/gallery/selection/ViberGalleryActivity;->d:Z

    .line 204
    iget-object v0, p0, Lcom/viber/voip/gallery/selection/ViberGalleryActivity;->l:Lcom/viber/voip/gallery/selection/a;

    invoke-virtual {v0}, Lcom/viber/voip/gallery/selection/a;->b()V

    .line 206
    iget-object v0, p0, Lcom/viber/voip/gallery/selection/ViberGalleryActivity;->g:Lcom/viber/voip/gallery/selection/h;

    invoke-virtual {v0}, Lcom/viber/voip/gallery/selection/h;->a()V

    .line 207
    iget-object v0, p0, Lcom/viber/voip/gallery/selection/ViberGalleryActivity;->h:Lcom/viber/voip/gallery/selection/q;

    invoke-virtual {v0}, Lcom/viber/voip/gallery/selection/q;->b()V

    .line 209
    iget-object v0, p0, Lcom/viber/voip/gallery/selection/ViberGalleryActivity;->e:Lcom/viber/voip/gallery/animation/SwipeableHorizontalScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/viber/voip/gallery/animation/SwipeableHorizontalScrollView;->setVisibility(I)V

    .line 210
    if-eqz p1, :cond_0

    .line 211
    iget-object v0, p0, Lcom/viber/voip/gallery/selection/ViberGalleryActivity;->e:Lcom/viber/voip/gallery/animation/SwipeableHorizontalScrollView;

    iget-object v1, p0, Lcom/viber/voip/gallery/selection/ViberGalleryActivity;->m:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/viber/voip/gallery/animation/SwipeableHorizontalScrollView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 213
    :cond_0
    return-void
.end method

.method private c()V
    .locals 2

    .prologue
    .line 175
    invoke-virtual {p0}, Lcom/viber/voip/gallery/selection/ViberGalleryActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string/jumbo v1, "gallery_tag"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/gallery/selection/h;

    iput-object v0, p0, Lcom/viber/voip/gallery/selection/ViberGalleryActivity;->g:Lcom/viber/voip/gallery/selection/h;

    .line 176
    iget-object v0, p0, Lcom/viber/voip/gallery/selection/ViberGalleryActivity;->g:Lcom/viber/voip/gallery/selection/h;

    if-nez v0, :cond_0

    .line 177
    new-instance v0, Lcom/viber/voip/gallery/selection/h;

    invoke-direct {v0}, Lcom/viber/voip/gallery/selection/h;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/gallery/selection/ViberGalleryActivity;->g:Lcom/viber/voip/gallery/selection/h;

    .line 180
    :cond_0
    invoke-virtual {p0}, Lcom/viber/voip/gallery/selection/ViberGalleryActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string/jumbo v1, "images_tag"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/gallery/selection/q;

    iput-object v0, p0, Lcom/viber/voip/gallery/selection/ViberGalleryActivity;->h:Lcom/viber/voip/gallery/selection/q;

    .line 181
    iget-object v0, p0, Lcom/viber/voip/gallery/selection/ViberGalleryActivity;->h:Lcom/viber/voip/gallery/selection/q;

    if-nez v0, :cond_1

    .line 182
    new-instance v0, Lcom/viber/voip/gallery/selection/q;

    invoke-direct {v0}, Lcom/viber/voip/gallery/selection/q;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/gallery/selection/ViberGalleryActivity;->h:Lcom/viber/voip/gallery/selection/q;

    .line 184
    :cond_1
    return-void
.end method

.method private c(Z)V
    .locals 2
    .parameter

    .prologue
    .line 216
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/viber/voip/gallery/selection/ViberGalleryActivity;->d:Z

    .line 217
    iget-object v0, p0, Lcom/viber/voip/gallery/selection/ViberGalleryActivity;->l:Lcom/viber/voip/gallery/selection/a;

    invoke-virtual {v0}, Lcom/viber/voip/gallery/selection/a;->c()V

    .line 219
    iget-object v0, p0, Lcom/viber/voip/gallery/selection/ViberGalleryActivity;->g:Lcom/viber/voip/gallery/selection/h;

    invoke-virtual {v0}, Lcom/viber/voip/gallery/selection/h;->b()V

    .line 220
    iget-object v0, p0, Lcom/viber/voip/gallery/selection/ViberGalleryActivity;->h:Lcom/viber/voip/gallery/selection/q;

    invoke-virtual {v0}, Lcom/viber/voip/gallery/selection/q;->c()V

    .line 222
    if-eqz p1, :cond_0

    .line 223
    iget-object v0, p0, Lcom/viber/voip/gallery/selection/ViberGalleryActivity;->n:Landroid/view/animation/Animation;

    new-instance v1, Lcom/viber/voip/gallery/selection/u;

    invoke-direct {v1, p0}, Lcom/viber/voip/gallery/selection/u;-><init>(Lcom/viber/voip/gallery/selection/ViberGalleryActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 231
    iget-object v0, p0, Lcom/viber/voip/gallery/selection/ViberGalleryActivity;->e:Lcom/viber/voip/gallery/animation/SwipeableHorizontalScrollView;

    iget-object v1, p0, Lcom/viber/voip/gallery/selection/ViberGalleryActivity;->n:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/viber/voip/gallery/animation/SwipeableHorizontalScrollView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 235
    :goto_0
    return-void

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/gallery/selection/ViberGalleryActivity;->e:Lcom/viber/voip/gallery/animation/SwipeableHorizontalScrollView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/viber/voip/gallery/animation/SwipeableHorizontalScrollView;->setVisibility(I)V

    goto :goto_0
.end method

.method private d()V
    .locals 2

    .prologue
    .line 404
    iget-object v0, p0, Lcom/viber/voip/gallery/selection/ViberGalleryActivity;->l:Lcom/viber/voip/gallery/selection/a;

    iget-object v1, p0, Lcom/viber/voip/gallery/selection/ViberGalleryActivity;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/gallery/selection/a;->b(I)V

    .line 405
    return-void
.end method


# virtual methods
.method a(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 156
    const-string/jumbo v0, "extra_multiple_selection"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/viber/voip/gallery/selection/ViberGalleryActivity;->d:Z

    .line 157
    const-string/jumbo v0, "extra_selected_images"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/gallery/selection/ViberGalleryActivity;->f:Ljava/util/ArrayList;

    .line 158
    iget-object v0, p0, Lcom/viber/voip/gallery/selection/ViberGalleryActivity;->f:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 159
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/gallery/selection/ViberGalleryActivity;->f:Ljava/util/ArrayList;

    .line 162
    :cond_0
    invoke-direct {p0}, Lcom/viber/voip/gallery/selection/ViberGalleryActivity;->d()V

    .line 164
    iget-boolean v0, p0, Lcom/viber/voip/gallery/selection/ViberGalleryActivity;->d:Z

    if-eqz v0, :cond_1

    .line 165
    invoke-direct {p0, v1}, Lcom/viber/voip/gallery/selection/ViberGalleryActivity;->b(Z)V

    .line 166
    iget-object v0, p0, Lcom/viber/voip/gallery/selection/ViberGalleryActivity;->f:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/viber/voip/gallery/selection/ViberGalleryActivity;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/viber/voip/gallery/GalleryItem;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/viber/voip/gallery/GalleryItem;

    invoke-direct {p0, v0}, Lcom/viber/voip/gallery/selection/ViberGalleryActivity;->a([Lcom/viber/voip/gallery/GalleryItem;)V

    .line 169
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/gallery/selection/ViberGalleryActivity;->h:Lcom/viber/voip/gallery/selection/q;

    invoke-virtual {v0}, Lcom/viber/voip/gallery/selection/q;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 170
    iget-object v0, p0, Lcom/viber/voip/gallery/selection/ViberGalleryActivity;->h:Lcom/viber/voip/gallery/selection/q;

    invoke-virtual {v0}, Lcom/viber/voip/gallery/selection/q;->a()V

    .line 172
    :cond_2
    return-void
.end method

.method public a(Landroid/view/View;Ljava/lang/Object;I)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 346
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/viber/voip/gallery/selection/ViberGalleryActivity;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 347
    iget-object v0, p0, Lcom/viber/voip/gallery/selection/ViberGalleryActivity;->h:Lcom/viber/voip/gallery/selection/q;

    invoke-virtual {v0}, Lcom/viber/voip/gallery/selection/q;->a()V

    .line 348
    check-cast p2, Lcom/viber/voip/gallery/GalleryItem;

    .line 349
    iget-object v0, p0, Lcom/viber/voip/gallery/selection/ViberGalleryActivity;->a:Landroid/os/Handler;

    new-instance v1, Lcom/viber/voip/gallery/preview/a;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {p2}, Lcom/viber/voip/gallery/GalleryItem;->b()Landroid/net/Uri;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {v1, v2}, Lcom/viber/voip/gallery/preview/a;-><init>([Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 350
    invoke-direct {p0}, Lcom/viber/voip/gallery/selection/ViberGalleryActivity;->d()V

    .line 351
    invoke-virtual {p0}, Lcom/viber/voip/gallery/selection/ViberGalleryActivity;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/gallery/selection/ViberGalleryActivity;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 353
    invoke-virtual {p0}, Lcom/viber/voip/gallery/selection/ViberGalleryActivity;->supportInvalidateOptionsMenu()V

    .line 356
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const v3, 0x7f04000c

    const v2, 0x7f04000b

    .line 240
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 241
    const-string/jumbo v1, "extra_bucket_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    const-string/jumbo v1, "extra_bucket_name"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    iget-object v1, p0, Lcom/viber/voip/gallery/selection/ViberGalleryActivity;->h:Lcom/viber/voip/gallery/selection/q;

    invoke-virtual {v1, v0}, Lcom/viber/voip/gallery/selection/q;->setArguments(Landroid/os/Bundle;)V

    .line 245
    iget-boolean v0, p0, Lcom/viber/voip/gallery/selection/ViberGalleryActivity;->d:Z

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/viber/voip/gallery/selection/ViberGalleryActivity;->h:Lcom/viber/voip/gallery/selection/q;

    invoke-virtual {v0}, Lcom/viber/voip/gallery/selection/q;->b()V

    .line 249
    :cond_0
    invoke-virtual {p0}, Lcom/viber/voip/gallery/selection/ViberGalleryActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, v2, v3, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f070094

    iget-object v2, p0, Lcom/viber/voip/gallery/selection/ViberGalleryActivity;->h:Lcom/viber/voip/gallery/selection/q;

    const-string/jumbo v3, "images_tag"

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 254
    return-void
.end method

.method protected abstract a(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/viber/voip/gallery/GalleryItem;",
            ">;)V"
        }
    .end annotation
.end method

.method protected a(Ljava/util/List;)V
    .locals 0
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
    .line 391
    return-void
.end method

.method a(Z)V
    .locals 1
    .parameter

    .prologue
    .line 143
    iget-object v0, p0, Lcom/viber/voip/gallery/selection/ViberGalleryActivity;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 144
    iget-object v0, p0, Lcom/viber/voip/gallery/selection/ViberGalleryActivity;->e:Lcom/viber/voip/gallery/animation/SwipeableHorizontalScrollView;

    invoke-virtual {v0}, Lcom/viber/voip/gallery/animation/SwipeableHorizontalScrollView;->a()V

    .line 147
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/viber/voip/gallery/selection/ViberGalleryActivity;->c(Z)V

    .line 148
    invoke-direct {p0}, Lcom/viber/voip/gallery/selection/ViberGalleryActivity;->d()V

    .line 150
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/viber/voip/gallery/selection/ViberGalleryActivity;->h:Lcom/viber/voip/gallery/selection/q;

    invoke-virtual {v0}, Lcom/viber/voip/gallery/selection/q;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/viber/voip/gallery/selection/ViberGalleryActivity;->h:Lcom/viber/voip/gallery/selection/q;

    invoke-virtual {v0}, Lcom/viber/voip/gallery/selection/q;->a()V

    .line 153
    :cond_0
    return-void
.end method

.method protected a()Z
    .locals 1

    .prologue
    .line 310
    const/4 v0, 0x0

    return v0
.end method

.method public a(Lcom/viber/voip/gallery/GalleryItem;)Z
    .locals 1
    .parameter

    .prologue
    .line 315
    iget-object v0, p0, Lcom/viber/voip/gallery/selection/ViberGalleryActivity;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public a(Lcom/viber/voip/gallery/GalleryItem;Z)Z
    .locals 7
    .parameter
    .parameter

    .prologue
    const/16 v5, 0xa

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 258
    iget-object v0, p0, Lcom/viber/voip/gallery/selection/ViberGalleryActivity;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 260
    :goto_0
    new-instance v3, Ljava/io/File;

    invoke-virtual {p1}, Lcom/viber/voip/gallery/GalleryItem;->b()Landroid/net/Uri;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/viber/voip/messages/extras/image/h;->a(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 261
    const v0, 0x7f0c0441

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 294
    :goto_1
    return v2

    :cond_0
    move v0, v2

    .line 258
    goto :goto_0

    .line 265
    :cond_1
    iget-boolean v3, p0, Lcom/viber/voip/gallery/selection/ViberGalleryActivity;->d:Z

    if-nez v3, :cond_2

    if-nez p2, :cond_2

    .line 266
    invoke-virtual {p0, p1}, Lcom/viber/voip/gallery/selection/ViberGalleryActivity;->b(Lcom/viber/voip/gallery/GalleryItem;)V

    goto :goto_1

    .line 271
    :cond_2
    if-eqz v0, :cond_3

    iget-object v3, p0, Lcom/viber/voip/gallery/selection/ViberGalleryActivity;->f:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v3, v5, :cond_3

    .line 272
    const v0, 0x7f0c061c

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/viber/voip/gallery/selection/ViberGalleryActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 276
    :cond_3
    if-eqz v0, :cond_5

    .line 277
    iget-object v3, p0, Lcom/viber/voip/gallery/selection/ViberGalleryActivity;->f:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 278
    new-array v3, v1, [Lcom/viber/voip/gallery/GalleryItem;

    aput-object p1, v3, v2

    invoke-direct {p0, v3}, Lcom/viber/voip/gallery/selection/ViberGalleryActivity;->a([Lcom/viber/voip/gallery/GalleryItem;)V

    .line 285
    :goto_2
    invoke-direct {p0}, Lcom/viber/voip/gallery/selection/ViberGalleryActivity;->d()V

    .line 287
    iget-boolean v2, p0, Lcom/viber/voip/gallery/selection/ViberGalleryActivity;->d:Z

    if-nez v2, :cond_6

    .line 288
    invoke-direct {p0, v1}, Lcom/viber/voip/gallery/selection/ViberGalleryActivity;->b(Z)V

    :cond_4
    :goto_3
    move v2, v1

    .line 294
    goto :goto_1

    .line 280
    :cond_5
    iget-object v3, p0, Lcom/viber/voip/gallery/selection/ViberGalleryActivity;->f:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 281
    iget-object v3, p0, Lcom/viber/voip/gallery/selection/ViberGalleryActivity;->e:Lcom/viber/voip/gallery/animation/SwipeableHorizontalScrollView;

    invoke-virtual {v3, p1}, Lcom/viber/voip/gallery/animation/SwipeableHorizontalScrollView;->a(Ljava/lang/Object;)Z

    .line 282
    iget-object v3, p0, Lcom/viber/voip/gallery/selection/ViberGalleryActivity;->a:Landroid/os/Handler;

    new-instance v4, Lcom/viber/voip/gallery/preview/a;

    new-array v5, v1, [Landroid/net/Uri;

    invoke-virtual {p1}, Lcom/viber/voip/gallery/GalleryItem;->b()Landroid/net/Uri;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-direct {v4, v5}, Lcom/viber/voip/gallery/preview/a;-><init>([Landroid/net/Uri;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    .line 289
    :cond_6
    invoke-virtual {p0}, Lcom/viber/voip/gallery/selection/ViberGalleryActivity;->a()Z

    move-result v2

    if-nez v2, :cond_4

    if-nez v0, :cond_7

    iget-object v2, p0, Lcom/viber/voip/gallery/selection/ViberGalleryActivity;->f:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    :cond_7
    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/viber/voip/gallery/selection/ViberGalleryActivity;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v1, :cond_4

    .line 291
    :cond_8
    invoke-virtual {p0}, Lcom/viber/voip/gallery/selection/ViberGalleryActivity;->supportInvalidateOptionsMenu()V

    goto :goto_3
.end method

.method public b()V
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lcom/viber/voip/gallery/selection/ViberGalleryActivity;->l:Lcom/viber/voip/gallery/selection/a;

    invoke-virtual {v0}, Lcom/viber/voip/gallery/selection/a;->a()V

    .line 321
    return-void
.end method

.method public b(Landroid/view/View;Ljava/lang/Object;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 342
    return-void
.end method

.method protected b(Lcom/viber/voip/gallery/GalleryItem;)V
    .locals 0
    .parameter

    .prologue
    .line 307
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 325
    iget-object v0, p0, Lcom/viber/voip/gallery/selection/ViberGalleryActivity;->l:Lcom/viber/voip/gallery/selection/a;

    invoke-virtual {v0, p2}, Lcom/viber/voip/gallery/selection/a;->a(Ljava/lang/String;)V

    .line 326
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 377
    invoke-virtual {p0}, Lcom/viber/voip/gallery/selection/ViberGalleryActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStackImmediate()Z

    move-result v0

    if-nez v0, :cond_0

    .line 378
    iget-object v0, p0, Lcom/viber/voip/gallery/selection/ViberGalleryActivity;->f:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/viber/voip/gallery/selection/ViberGalleryActivity;->a(Ljava/util/List;)V

    .line 379
    invoke-super {p0}, Lcom/viber/voip/app/ViberFragmentActivity;->onBackPressed()V

    .line 381
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    .line 78
    invoke-super {p0, p1}, Lcom/viber/voip/app/ViberFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 79
    const v0, 0x7f030007

    invoke-virtual {p0, v0}, Lcom/viber/voip/gallery/selection/ViberGalleryActivity;->setContentView(I)V

    .line 81
    const v0, 0x7f040010

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/gallery/selection/ViberGalleryActivity;->m:Landroid/view/animation/Animation;

    .line 82
    const v0, 0x7f040012

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/gallery/selection/ViberGalleryActivity;->n:Landroid/view/animation/Animation;

    .line 84
    sget-object v0, Lcom/viber/voip/dk;->h:Lcom/viber/voip/dk;

    invoke-static {v0}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/gallery/selection/ViberGalleryActivity;->a:Landroid/os/Handler;

    .line 86
    new-instance v0, Lcom/viber/voip/gallery/selection/a;

    new-instance v1, Lcom/viber/voip/gallery/selection/s;

    invoke-direct {v1, p0}, Lcom/viber/voip/gallery/selection/s;-><init>(Lcom/viber/voip/gallery/selection/ViberGalleryActivity;)V

    new-instance v2, Lcom/viber/voip/gallery/selection/t;

    invoke-direct {v2, p0}, Lcom/viber/voip/gallery/selection/t;-><init>(Lcom/viber/voip/gallery/selection/ViberGalleryActivity;)V

    invoke-direct {v0, p0, v1, v2}, Lcom/viber/voip/gallery/selection/a;-><init>(Lcom/viber/voip/app/ViberFragmentActivity;Landroid/view/View$OnClickListener;Lcom/viber/voip/gallery/selection/b;)V

    iput-object v0, p0, Lcom/viber/voip/gallery/selection/ViberGalleryActivity;->l:Lcom/viber/voip/gallery/selection/a;

    .line 101
    iget-object v0, p0, Lcom/viber/voip/gallery/selection/ViberGalleryActivity;->l:Lcom/viber/voip/gallery/selection/a;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/viber/voip/gallery/selection/a;->a(I)V

    .line 102
    iget-object v0, p0, Lcom/viber/voip/gallery/selection/ViberGalleryActivity;->l:Lcom/viber/voip/gallery/selection/a;

    invoke-virtual {p0}, Lcom/viber/voip/gallery/selection/ViberGalleryActivity;->a()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/gallery/selection/a;->a(Z)V

    .line 104
    invoke-direct {p0}, Lcom/viber/voip/gallery/selection/ViberGalleryActivity;->c()V

    .line 106
    invoke-virtual {p0}, Lcom/viber/voip/gallery/selection/ViberGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a01a5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/gallery/selection/ViberGalleryActivity;->i:I

    .line 107
    invoke-virtual {p0}, Lcom/viber/voip/gallery/selection/ViberGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a01a6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/gallery/selection/ViberGalleryActivity;->j:I

    .line 108
    invoke-virtual {p0}, Lcom/viber/voip/gallery/selection/ViberGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a01a4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget v1, p0, Lcom/viber/voip/gallery/selection/ViberGalleryActivity;->i:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/viber/voip/gallery/selection/ViberGalleryActivity;->k:I

    .line 110
    invoke-virtual {p0}, Lcom/viber/voip/gallery/selection/ViberGalleryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/viber/voip/gallery/selection/ViberGalleryActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/util/b/ab;->a(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;)Lcom/viber/voip/util/b/ab;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/gallery/selection/ViberGalleryActivity;->b:Lcom/viber/voip/util/b/ad;

    .line 111
    new-instance v0, Lcom/viber/voip/util/b/z;

    invoke-direct {v0}, Lcom/viber/voip/util/b/z;-><init>()V

    iget v1, p0, Lcom/viber/voip/gallery/selection/ViberGalleryActivity;->i:I

    iget v2, p0, Lcom/viber/voip/gallery/selection/ViberGalleryActivity;->i:I

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/util/b/z;->a(II)Lcom/viber/voip/util/b/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/util/b/z;->b()Lcom/viber/voip/util/b/x;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/gallery/selection/ViberGalleryActivity;->c:Lcom/viber/voip/util/b/x;

    .line 115
    const v0, 0x7f070095

    invoke-virtual {p0, v0}, Lcom/viber/voip/gallery/selection/ViberGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/gallery/animation/SwipeableHorizontalScrollView;

    iput-object v0, p0, Lcom/viber/voip/gallery/selection/ViberGalleryActivity;->e:Lcom/viber/voip/gallery/animation/SwipeableHorizontalScrollView;

    .line 116
    iget-object v0, p0, Lcom/viber/voip/gallery/selection/ViberGalleryActivity;->e:Lcom/viber/voip/gallery/animation/SwipeableHorizontalScrollView;

    invoke-virtual {v0, p0}, Lcom/viber/voip/gallery/animation/SwipeableHorizontalScrollView;->setViewRemoveListener(Lcom/viber/voip/gallery/animation/b;)V

    .line 118
    if-nez p1, :cond_0

    .line 119
    invoke-virtual {p0}, Lcom/viber/voip/gallery/selection/ViberGalleryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/gallery/selection/ViberGalleryActivity;->a(Landroid/content/Intent;)V

    .line 120
    invoke-virtual {p0}, Lcom/viber/voip/gallery/selection/ViberGalleryActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f070094

    iget-object v2, p0, Lcom/viber/voip/gallery/selection/ViberGalleryActivity;->g:Lcom/viber/voip/gallery/selection/h;

    const-string/jumbo v3, "gallery_tag"

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 125
    :goto_0
    return-void

    .line 122
    :cond_0
    invoke-virtual {p0, p1}, Lcom/viber/voip/gallery/selection/ViberGalleryActivity;->a(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z
    .locals 1
    .parameter

    .prologue
    .line 367
    iget-object v0, p0, Lcom/viber/voip/gallery/selection/ViberGalleryActivity;->l:Lcom/viber/voip/gallery/selection/a;

    invoke-virtual {v0, p1}, Lcom/viber/voip/gallery/selection/a;->a(Lcom/actionbarsherlock/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 196
    invoke-super {p0}, Lcom/viber/voip/app/ViberFragmentActivity;->onDestroy()V

    .line 198
    iget-object v0, p0, Lcom/viber/voip/gallery/selection/ViberGalleryActivity;->g:Lcom/viber/voip/gallery/selection/h;

    invoke-virtual {v0}, Lcom/viber/voip/gallery/selection/h;->d()V

    .line 199
    iget-object v0, p0, Lcom/viber/voip/gallery/selection/ViberGalleryActivity;->h:Lcom/viber/voip/gallery/selection/q;

    invoke-virtual {v0}, Lcom/viber/voip/gallery/selection/q;->e()V

    .line 200
    return-void
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 1
    .parameter

    .prologue
    .line 395
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 400
    invoke-super {p0, p1}, Lcom/viber/voip/app/ViberFragmentActivity;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 397
    :pswitch_0
    invoke-virtual {p0}, Lcom/viber/voip/gallery/selection/ViberGalleryActivity;->onBackPressed()V

    .line 398
    const/4 v0, 0x1

    goto :goto_0

    .line 395
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 188
    invoke-super {p0}, Lcom/viber/voip/app/ViberFragmentActivity;->onPause()V

    .line 190
    iget-object v0, p0, Lcom/viber/voip/gallery/selection/ViberGalleryActivity;->g:Lcom/viber/voip/gallery/selection/h;

    invoke-virtual {v0}, Lcom/viber/voip/gallery/selection/h;->c()V

    .line 191
    iget-object v0, p0, Lcom/viber/voip/gallery/selection/ViberGalleryActivity;->h:Lcom/viber/voip/gallery/selection/q;

    invoke-virtual {v0}, Lcom/viber/voip/gallery/selection/q;->d()V

    .line 192
    return-void
.end method

.method public onPrepareOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z
    .locals 1
    .parameter

    .prologue
    .line 372
    iget-object v0, p0, Lcom/viber/voip/gallery/selection/ViberGalleryActivity;->l:Lcom/viber/voip/gallery/selection/a;

    invoke-virtual {v0, p1}, Lcom/viber/voip/gallery/selection/a;->b(Lcom/actionbarsherlock/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 360
    const-string/jumbo v0, "extra_multiple_selection"

    iget-boolean v1, p0, Lcom/viber/voip/gallery/selection/ViberGalleryActivity;->d:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 361
    const-string/jumbo v0, "extra_selected_images"

    iget-object v1, p0, Lcom/viber/voip/gallery/selection/ViberGalleryActivity;->f:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 362
    invoke-super {p0, p1}, Lcom/viber/voip/app/ViberFragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 363
    return-void
.end method
