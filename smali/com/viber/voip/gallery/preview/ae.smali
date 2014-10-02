.class public Lcom/viber/voip/gallery/preview/ae;
.super Lcom/viber/voip/ui/al;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;
.implements Lcom/viber/voip/gallery/animation/a;
.implements Lcom/viber/voip/gallery/animation/b;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/viber/voip/gallery/preview/z;

.field private c:Lcom/actionbarsherlock/view/MenuItem;

.field private d:Lcom/viber/voip/messages/ui/view/ViewPagerWithPagingEnable;

.field private e:I

.field private f:Lcom/viber/voip/messages/conversation/ui/ConversationData;

.field private g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/viber/voip/gallery/GalleryItem;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/net/Uri;",
            "Lcom/viber/voip/messages/ui/media/SendMediaDataContainer;",
            ">;"
        }
    .end annotation
.end field

.field private i:I

.field private j:Lcom/viber/voip/gallery/preview/ad;

.field private k:Lcom/viber/voip/as;

.field private l:Lcom/viber/voip/ax;

.field private m:Landroid/view/View$OnClickListener;

.field private n:Landroid/view/View$OnClickListener;

.field private o:I

.field private p:Lcom/viber/voip/messages/extras/image/e;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/viber/voip/ui/al;-><init>()V

    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/gallery/preview/ae;->h:Ljava/util/Map;

    .line 77
    const/4 v0, -0x1

    iput v0, p0, Lcom/viber/voip/gallery/preview/ae;->i:I

    .line 83
    new-instance v0, Lcom/viber/voip/gallery/preview/af;

    invoke-direct {v0, p0}, Lcom/viber/voip/gallery/preview/af;-><init>(Lcom/viber/voip/gallery/preview/ae;)V

    iput-object v0, p0, Lcom/viber/voip/gallery/preview/ae;->l:Lcom/viber/voip/ax;

    .line 95
    new-instance v0, Lcom/viber/voip/gallery/preview/ag;

    invoke-direct {v0, p0}, Lcom/viber/voip/gallery/preview/ag;-><init>(Lcom/viber/voip/gallery/preview/ae;)V

    iput-object v0, p0, Lcom/viber/voip/gallery/preview/ae;->m:Landroid/view/View$OnClickListener;

    .line 102
    new-instance v0, Lcom/viber/voip/gallery/preview/ah;

    invoke-direct {v0, p0}, Lcom/viber/voip/gallery/preview/ah;-><init>(Lcom/viber/voip/gallery/preview/ae;)V

    iput-object v0, p0, Lcom/viber/voip/gallery/preview/ae;->n:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public static a(Lcom/viber/voip/messages/conversation/ui/ConversationData;)Lcom/viber/voip/gallery/preview/ae;
    .locals 3
    .parameter

    .prologue
    .line 119
    new-instance v0, Lcom/viber/voip/gallery/preview/ae;

    invoke-direct {v0}, Lcom/viber/voip/gallery/preview/ae;-><init>()V

    .line 120
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 121
    const-string/jumbo v2, "extra_conversation_data"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 122
    invoke-virtual {v0, v1}, Lcom/viber/voip/gallery/preview/ae;->setArguments(Landroid/os/Bundle;)V

    .line 123
    return-object v0
.end method

.method static synthetic a(Lcom/viber/voip/gallery/preview/ae;)Lcom/viber/voip/gallery/preview/z;
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/ae;->b:Lcom/viber/voip/gallery/preview/z;

    return-object v0
.end method

.method private a(I)V
    .locals 1
    .parameter

    .prologue
    .line 460
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/ae;->j:Lcom/viber/voip/gallery/preview/ad;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/gallery/preview/ae;->j:Lcom/viber/voip/gallery/preview/ad;

    invoke-interface {v0, p1}, Lcom/viber/voip/gallery/preview/ad;->b(I)V

    .line 461
    :cond_0
    return-void
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 170
    if-nez p1, :cond_0

    .line 173
    :goto_0
    return-void

    .line 172
    :cond_0
    const-string/jumbo v0, "current_position"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/gallery/preview/ae;->e:I

    goto :goto_0
.end method

.method static synthetic a(Lcom/viber/voip/gallery/preview/ae;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/viber/voip/gallery/preview/ae;->a(I)V

    return-void
.end method

.method private b(I)V
    .locals 1
    .parameter

    .prologue
    .line 464
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/ae;->j:Lcom/viber/voip/gallery/preview/ad;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/gallery/preview/ae;->j:Lcom/viber/voip/gallery/preview/ad;

    invoke-interface {v0, p1}, Lcom/viber/voip/gallery/preview/ad;->c(I)V

    .line 465
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/viber/voip/gallery/preview/ae;)V
    .locals 0
    .parameter

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/viber/voip/gallery/preview/ae;->h()V

    return-void
.end method

.method private b(Ljava/util/ArrayList;)V
    .locals 4
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
    .line 200
    if-nez p1, :cond_0

    .line 201
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 204
    :cond_0
    iput-object p1, p0, Lcom/viber/voip/gallery/preview/ae;->g:Ljava/util/ArrayList;

    .line 205
    new-instance v0, Lcom/viber/voip/gallery/preview/z;

    iget-object v1, p0, Lcom/viber/voip/gallery/preview/ae;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/viber/voip/gallery/preview/ae;->g:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/viber/voip/gallery/preview/ae;->d:Lcom/viber/voip/messages/ui/view/ViewPagerWithPagingEnable;

    invoke-direct {v0, v1, v2, v3}, Lcom/viber/voip/gallery/preview/z;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/viber/voip/messages/ui/view/ViewPagerWithPagingEnable;)V

    iput-object v0, p0, Lcom/viber/voip/gallery/preview/ae;->b:Lcom/viber/voip/gallery/preview/z;

    .line 206
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/ae;->b:Lcom/viber/voip/gallery/preview/z;

    iget-object v1, p0, Lcom/viber/voip/gallery/preview/ae;->k:Lcom/viber/voip/as;

    invoke-virtual {v0, v1}, Lcom/viber/voip/gallery/preview/z;->a(Lcom/viber/voip/as;)V

    .line 207
    new-instance v0, Lcom/viber/voip/gallery/animation/d;

    iget-object v1, p0, Lcom/viber/voip/gallery/preview/ae;->b:Lcom/viber/voip/gallery/preview/z;

    iget-object v2, p0, Lcom/viber/voip/gallery/preview/ae;->d:Lcom/viber/voip/messages/ui/view/ViewPagerWithPagingEnable;

    invoke-direct {v0, v1, v2}, Lcom/viber/voip/gallery/animation/d;-><init>(Lcom/viber/voip/gallery/animation/c;Lcom/viber/voip/messages/ui/view/ViewPagerWithPagingEnable;)V

    .line 208
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/viber/voip/gallery/animation/d;->a(Z)V

    .line 209
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/viber/voip/gallery/animation/d;->a(I)V

    .line 210
    invoke-virtual {v0, p0}, Lcom/viber/voip/gallery/animation/d;->a(Lcom/viber/voip/gallery/animation/b;)V

    .line 211
    invoke-virtual {v0, p0}, Lcom/viber/voip/gallery/animation/d;->a(Lcom/viber/voip/gallery/animation/a;)V

    .line 212
    invoke-virtual {v0, p0}, Lcom/viber/voip/gallery/animation/d;->a(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 213
    iget-object v1, p0, Lcom/viber/voip/gallery/preview/ae;->m:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/viber/voip/gallery/animation/d;->a(Landroid/view/View$OnClickListener;)V

    .line 215
    iget-object v1, p0, Lcom/viber/voip/gallery/preview/ae;->d:Lcom/viber/voip/messages/ui/view/ViewPagerWithPagingEnable;

    invoke-virtual {v1, v0}, Lcom/viber/voip/messages/ui/view/ViewPagerWithPagingEnable;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 216
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/ae;->d:Lcom/viber/voip/messages/ui/view/ViewPagerWithPagingEnable;

    iget v1, p0, Lcom/viber/voip/gallery/preview/ae;->e:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/messages/ui/view/ViewPagerWithPagingEnable;->setCurrentItem(IZ)V

    .line 217
    iget v0, p0, Lcom/viber/voip/gallery/preview/ae;->e:I

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/viber/voip/gallery/preview/ae;->b:Lcom/viber/voip/gallery/preview/z;

    iget v1, p0, Lcom/viber/voip/gallery/preview/ae;->e:I

    invoke-virtual {v0, v1}, Lcom/viber/voip/gallery/preview/z;->a(I)V

    .line 218
    :cond_1
    invoke-direct {p0}, Lcom/viber/voip/gallery/preview/ae;->f()V

    .line 219
    return-void
.end method

.method static synthetic c(Lcom/viber/voip/gallery/preview/ae;)I
    .locals 1
    .parameter

    .prologue
    .line 51
    iget v0, p0, Lcom/viber/voip/gallery/preview/ae;->e:I

    return v0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 246
    invoke-static {}, Lcom/viber/voip/messages/extras/image/b;->a()Lcom/viber/voip/messages/extras/image/b;

    move-result-object v0

    iget v1, p0, Lcom/viber/voip/gallery/preview/ae;->o:I

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/extras/image/b;->b(I)V

    .line 247
    const/4 v0, 0x0

    iput v0, p0, Lcom/viber/voip/gallery/preview/ae;->o:I

    .line 249
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/ae;->p:Lcom/viber/voip/messages/extras/image/e;

    if-eqz v0, :cond_0

    .line 250
    invoke-static {}, Lcom/viber/voip/messages/extras/image/b;->a()Lcom/viber/voip/messages/extras/image/b;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/gallery/preview/ae;->p:Lcom/viber/voip/messages/extras/image/e;

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/extras/image/b;->b(Lcom/viber/voip/messages/extras/image/e;)V

    .line 253
    :cond_0
    invoke-direct {p0}, Lcom/viber/voip/gallery/preview/ae;->g()V

    .line 254
    return-void
.end method

.method private d()V
    .locals 2

    .prologue
    .line 257
    invoke-static {}, Lcom/viber/voip/messages/extras/image/b;->a()Lcom/viber/voip/messages/extras/image/b;

    move-result-object v0

    iget v1, p0, Lcom/viber/voip/gallery/preview/ae;->o:I

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/extras/image/b;->a(I)V

    .line 258
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/ae;->p:Lcom/viber/voip/messages/extras/image/e;

    if-eqz v0, :cond_0

    .line 259
    invoke-static {}, Lcom/viber/voip/messages/extras/image/b;->a()Lcom/viber/voip/messages/extras/image/b;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/gallery/preview/ae;->p:Lcom/viber/voip/messages/extras/image/e;

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/extras/image/b;->b(Lcom/viber/voip/messages/extras/image/e;)V

    .line 262
    :cond_0
    invoke-direct {p0}, Lcom/viber/voip/gallery/preview/ae;->e()V

    .line 263
    return-void
.end method

.method static synthetic d(Lcom/viber/voip/gallery/preview/ae;)V
    .locals 0
    .parameter

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/viber/voip/gallery/preview/ae;->c()V

    return-void
.end method

.method static synthetic e(Lcom/viber/voip/gallery/preview/ae;)I
    .locals 1
    .parameter

    .prologue
    .line 51
    iget v0, p0, Lcom/viber/voip/gallery/preview/ae;->o:I

    return v0
.end method

.method private e()V
    .locals 4

    .prologue
    .line 266
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/ae;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 268
    iget-object v3, p0, Lcom/viber/voip/gallery/preview/ae;->a:Landroid/content/Context;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/viber/voip/messages/ui/media/SendMediaDataContainer;

    iget-object v1, v1, Lcom/viber/voip/messages/ui/media/SendMediaDataContainer;->b:Landroid/net/Uri;

    invoke-static {v3, v1}, Lcom/viber/voip/util/upload/ViberUploadReceiver;->a(Landroid/content/Context;Landroid/net/Uri;)V

    .line 269
    iget-object v3, p0, Lcom/viber/voip/gallery/preview/ae;->a:Landroid/content/Context;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/viber/voip/messages/ui/media/SendMediaDataContainer;

    iget-object v1, v1, Lcom/viber/voip/messages/ui/media/SendMediaDataContainer;->b:Landroid/net/Uri;

    invoke-static {v3, v1}, Lcom/viber/voip/messages/extras/image/h;->c(Landroid/content/Context;Landroid/net/Uri;)Z

    .line 270
    iget-object v1, p0, Lcom/viber/voip/gallery/preview/ae;->a:Landroid/content/Context;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/ui/media/SendMediaDataContainer;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/media/SendMediaDataContainer;->c:Landroid/net/Uri;

    invoke-static {v1, v0}, Lcom/viber/voip/messages/extras/image/h;->c(Landroid/content/Context;Landroid/net/Uri;)Z

    goto :goto_0

    .line 272
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/ae;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 273
    return-void
.end method

.method static synthetic f(Lcom/viber/voip/gallery/preview/ae;)Ljava/util/Map;
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/ae;->h:Ljava/util/Map;

    return-object v0
.end method

.method private f()V
    .locals 7

    .prologue
    .line 276
    invoke-direct {p0}, Lcom/viber/voip/gallery/preview/ae;->d()V

    .line 278
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/viber/voip/gallery/preview/ae;->o:I

    .line 280
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/ae;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v3, v0, [Landroid/net/Uri;

    .line 281
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/ae;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/ae;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/gallery/GalleryItem;

    invoke-virtual {v0}, Lcom/viber/voip/gallery/GalleryItem;->a()Landroid/net/Uri;

    move-result-object v0

    aput-object v0, v3, v1

    .line 281
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 285
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/ae;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/viber/voip/util/upload/ac;->a(Landroid/content/Context;)Z

    move-result v0

    .line 287
    new-instance v1, Lcom/viber/voip/gallery/preview/ai;

    invoke-direct {v1, p0, v0}, Lcom/viber/voip/gallery/preview/ai;-><init>(Lcom/viber/voip/gallery/preview/ae;Z)V

    iput-object v1, p0, Lcom/viber/voip/gallery/preview/ae;->p:Lcom/viber/voip/messages/extras/image/e;

    .line 306
    invoke-static {}, Lcom/viber/voip/messages/extras/image/b;->a()Lcom/viber/voip/messages/extras/image/b;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/gallery/preview/ae;->p:Lcom/viber/voip/messages/extras/image/e;

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/extras/image/b;->a(Lcom/viber/voip/messages/extras/image/e;)V

    .line 307
    invoke-static {}, Lcom/viber/voip/messages/extras/image/b;->a()Lcom/viber/voip/messages/extras/image/b;

    move-result-object v0

    iget v1, p0, Lcom/viber/voip/gallery/preview/ae;->o:I

    iget-object v2, p0, Lcom/viber/voip/gallery/preview/ae;->a:Landroid/content/Context;

    const-string/jumbo v4, "image"

    sget-object v5, Lcom/viber/voip/messages/extras/image/l;->d:Lcom/viber/voip/messages/extras/image/l;

    const v6, 0x3e800

    invoke-virtual/range {v0 .. v6}, Lcom/viber/voip/messages/extras/image/b;->a(ILandroid/content/Context;[Landroid/net/Uri;Ljava/lang/String;Lcom/viber/voip/messages/extras/image/l;I)V

    .line 309
    return-void
.end method

.method static synthetic g(Lcom/viber/voip/gallery/preview/ae;)Lcom/viber/voip/messages/conversation/ui/ConversationData;
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/ae;->f:Lcom/viber/voip/messages/conversation/ui/ConversationData;

    return-object v0
.end method

.method private g()V
    .locals 6

    .prologue
    .line 312
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 313
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 314
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/ae;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/gallery/GalleryItem;

    .line 315
    invoke-virtual {v0}, Lcom/viber/voip/gallery/GalleryItem;->a()Landroid/net/Uri;

    move-result-object v5

    .line 318
    iget-object v1, p0, Lcom/viber/voip/gallery/preview/ae;->h:Ljava/util/Map;

    invoke-interface {v1, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 319
    iget-object v1, p0, Lcom/viber/voip/gallery/preview/ae;->h:Ljava/util/Map;

    invoke-interface {v1, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/viber/voip/messages/ui/media/SendMediaDataContainer;

    .line 320
    invoke-virtual {v0}, Lcom/viber/voip/gallery/GalleryItem;->c()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/viber/voip/messages/ui/media/SendMediaDataContainer;->e:Ljava/lang/String;

    .line 341
    :goto_1
    invoke-virtual {v0}, Lcom/viber/voip/gallery/GalleryItem;->d()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 343
    invoke-virtual {v0}, Lcom/viber/voip/gallery/GalleryItem;->b()Landroid/net/Uri;

    move-result-object v0

    .line 344
    invoke-static {v0}, Lcom/viber/voip/gallery/b/a;->d(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v5

    .line 345
    if-eqz v5, :cond_0

    .line 347
    iput-object v5, v1, Lcom/viber/voip/messages/ui/media/SendMediaDataContainer;->a:Landroid/net/Uri;

    .line 349
    :cond_0
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 351
    :cond_1
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 323
    :cond_2
    new-instance v1, Lcom/viber/voip/messages/ui/media/SendMediaDataContainer;

    invoke-direct {v1}, Lcom/viber/voip/messages/ui/media/SendMediaDataContainer;-><init>()V

    .line 324
    iput-object v5, v1, Lcom/viber/voip/messages/ui/media/SendMediaDataContainer;->a:Landroid/net/Uri;

    .line 325
    invoke-virtual {v0}, Lcom/viber/voip/gallery/GalleryItem;->c()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/viber/voip/messages/ui/media/SendMediaDataContainer;->e:Ljava/lang/String;

    .line 326
    const-string/jumbo v5, "image"

    iput-object v5, v1, Lcom/viber/voip/messages/ui/media/SendMediaDataContainer;->d:Ljava/lang/String;

    goto :goto_1

    .line 355
    :cond_3
    sget-object v0, Lcom/viber/voip/dk;->h:Lcom/viber/voip/dk;

    invoke-static {v0}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/gallery/preview/a;

    invoke-direct {v1, v3}, Lcom/viber/voip/gallery/preview/a;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 357
    invoke-direct {p0}, Lcom/viber/voip/gallery/preview/ae;->e()V

    .line 359
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.viber.voip.action.CONVERSATION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 360
    const-string/jumbo v1, "extra_conversation_data"

    iget-object v3, p0, Lcom/viber/voip/gallery/preview/ae;->f:Lcom/viber/voip/messages/conversation/ui/ConversationData;

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 361
    const-string/jumbo v1, "multiply_send"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 362
    invoke-virtual {p0, v0}, Lcom/viber/voip/gallery/preview/ae;->startActivity(Landroid/content/Intent;)V

    .line 363
    return-void
.end method

.method static synthetic h(Lcom/viber/voip/gallery/preview/ae;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/ae;->a:Landroid/content/Context;

    return-object v0
.end method

.method private h()V
    .locals 3

    .prologue
    .line 366
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.viber.voip.action.ADD_MORE_GALLERY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 367
    const-string/jumbo v1, "extra_multiple_selection"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 368
    const-string/jumbo v1, "extra_selected_images"

    iget-object v2, p0, Lcom/viber/voip/gallery/preview/ae;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 369
    const/16 v1, 0xa

    invoke-virtual {p0, v0, v1}, Lcom/viber/voip/gallery/preview/ae;->startActivityForResult(Landroid/content/Intent;I)V

    .line 370
    return-void
.end method

.method private i()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 468
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/ae;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/viber/voip/gallery/preview/ae;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 469
    :goto_0
    iget-object v2, p0, Lcom/viber/voip/gallery/preview/ae;->j:Lcom/viber/voip/gallery/preview/ad;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/viber/voip/gallery/preview/ae;->j:Lcom/viber/voip/gallery/preview/ad;

    invoke-interface {v2, v0}, Lcom/viber/voip/gallery/preview/ad;->a(I)V

    .line 470
    :cond_0
    iget-object v2, p0, Lcom/viber/voip/gallery/preview/ae;->c:Lcom/actionbarsherlock/view/MenuItem;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/viber/voip/gallery/preview/ae;->c:Lcom/actionbarsherlock/view/MenuItem;

    if-lez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-interface {v2, v1}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 471
    :cond_2
    return-void

    :cond_3
    move v0, v1

    .line 468
    goto :goto_0
.end method


# virtual methods
.method a()V
    .locals 1

    .prologue
    .line 431
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/ae;->b:Lcom/viber/voip/gallery/preview/z;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/gallery/preview/ae;->b:Lcom/viber/voip/gallery/preview/z;

    invoke-virtual {v0}, Lcom/viber/voip/gallery/preview/z;->notifyDataSetChanged()V

    .line 432
    :cond_0
    return-void
.end method

.method public a(Landroid/view/View;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 392
    iput p2, p0, Lcom/viber/voip/gallery/preview/ae;->i:I

    .line 393
    return-void
.end method

.method public a(Landroid/view/View;Ljava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 386
    invoke-direct {p0}, Lcom/viber/voip/gallery/preview/ae;->i()V

    .line 387
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/ae;->j:Lcom/viber/voip/gallery/preview/ad;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/gallery/preview/ae;->j:Lcom/viber/voip/gallery/preview/ad;

    invoke-interface {v0}, Lcom/viber/voip/gallery/preview/ad;->f()V

    .line 388
    :cond_0
    return-void
.end method

.method a(Lcom/viber/voip/as;)V
    .locals 2
    .parameter

    .prologue
    .line 435
    invoke-virtual {p0}, Lcom/viber/voip/gallery/preview/ae;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/gallery/preview/ae;->k:Lcom/viber/voip/as;

    if-eqz v0, :cond_0

    .line 438
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/ae;->k:Lcom/viber/voip/as;

    iget-object v1, p0, Lcom/viber/voip/gallery/preview/ae;->l:Lcom/viber/voip/ax;

    invoke-virtual {v0, v1}, Lcom/viber/voip/as;->b(Lcom/viber/voip/ax;)V

    .line 439
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/viber/voip/gallery/preview/ae;->l:Lcom/viber/voip/ax;

    invoke-virtual {p1, v0}, Lcom/viber/voip/as;->a(Lcom/viber/voip/ax;)V

    .line 442
    :cond_0
    iput-object p1, p0, Lcom/viber/voip/gallery/preview/ae;->k:Lcom/viber/voip/as;

    .line 443
    return-void
.end method

.method a(Ljava/util/ArrayList;)V
    .locals 1
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
    .line 453
    invoke-direct {p0, p1}, Lcom/viber/voip/gallery/preview/ae;->b(Ljava/util/ArrayList;)V

    .line 455
    invoke-direct {p0}, Lcom/viber/voip/gallery/preview/ae;->i()V

    .line 456
    invoke-virtual {p0}, Lcom/viber/voip/gallery/preview/ae;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->supportInvalidateOptionsMenu()V

    .line 457
    return-void
.end method

.method b()I
    .locals 1

    .prologue
    .line 449
    iget v0, p0, Lcom/viber/voip/gallery/preview/ae;->e:I

    return v0
.end method

.method public b(Landroid/view/View;Ljava/lang/Object;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 381
    invoke-direct {p0, p3}, Lcom/viber/voip/gallery/preview/ae;->a(I)V

    .line 382
    return-void
.end method

.method public c(Landroid/view/View;Ljava/lang/Object;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 374
    invoke-direct {p0}, Lcom/viber/voip/gallery/preview/ae;->i()V

    .line 375
    invoke-direct {p0, p3}, Lcom/viber/voip/gallery/preview/ae;->b(I)V

    .line 376
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 148
    invoke-super {p0, p1}, Lcom/viber/voip/ui/al;->onActivityCreated(Landroid/os/Bundle;)V

    .line 149
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/viber/voip/gallery/preview/ae;->setHasOptionsMenu(Z)V

    .line 151
    invoke-virtual {p0}, Lcom/viber/voip/gallery/preview/ae;->getView()Landroid/view/View;

    move-result-object v0

    .line 153
    invoke-virtual {p0}, Lcom/viber/voip/gallery/preview/ae;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/viber/voip/gallery/preview/ae;->a:Landroid/content/Context;

    .line 154
    invoke-direct {p0, p1}, Lcom/viber/voip/gallery/preview/ae;->a(Landroid/os/Bundle;)V

    .line 156
    const v1, 0x7f07029e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/ui/view/ViewPagerWithPagingEnable;

    iput-object v0, p0, Lcom/viber/voip/gallery/preview/ae;->d:Lcom/viber/voip/messages/ui/view/ViewPagerWithPagingEnable;

    .line 157
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/ae;->g:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/viber/voip/gallery/preview/ae;->b(Ljava/util/ArrayList;)V

    .line 158
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 233
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    if-eqz p3, :cond_0

    .line 234
    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    .line 235
    const-string/jumbo v0, "extra_selected_images"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 237
    iget-object v1, p0, Lcom/viber/voip/gallery/preview/ae;->j:Lcom/viber/voip/gallery/preview/ad;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/viber/voip/gallery/preview/ae;->j:Lcom/viber/voip/gallery/preview/ad;

    invoke-interface {v1, v0}, Lcom/viber/voip/gallery/preview/ad;->a(Ljava/util/ArrayList;)V

    .line 240
    :cond_0
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .parameter

    .prologue
    .line 177
    invoke-super {p0, p1}, Lcom/viber/voip/ui/al;->onAttach(Landroid/app/Activity;)V

    .line 179
    const-class v0, Lcom/viber/voip/gallery/preview/ad;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 180
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "parent activity must implement PhotoPreviewController"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 183
    :cond_0
    check-cast p1, Lcom/viber/voip/gallery/preview/ad;

    iput-object p1, p0, Lcom/viber/voip/gallery/preview/ae;->j:Lcom/viber/voip/gallery/preview/ad;

    .line 185
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/ae;->k:Lcom/viber/voip/as;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/viber/voip/gallery/preview/ae;->k:Lcom/viber/voip/as;

    iget-object v1, p0, Lcom/viber/voip/gallery/preview/ae;->l:Lcom/viber/voip/ax;

    invoke-virtual {v0, v1}, Lcom/viber/voip/as;->a(Lcom/viber/voip/ax;)V

    .line 186
    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 130
    invoke-super {p0, p1}, Lcom/viber/voip/ui/al;->onCreate(Landroid/os/Bundle;)V

    .line 131
    invoke-virtual {p0}, Lcom/viber/voip/gallery/preview/ae;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "extra_conversation_data"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/conversation/ui/ConversationData;

    iput-object v0, p0, Lcom/viber/voip/gallery/preview/ae;->f:Lcom/viber/voip/messages/conversation/ui/ConversationData;

    .line 132
    return-void
.end method

.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 223
    const v0, 0x7f100015

    invoke-virtual {p2, v0, p1}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    .line 226
    const v0, 0x7f070476

    invoke-interface {p1, v0}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/gallery/preview/ae;->c:Lcom/actionbarsherlock/view/MenuItem;

    .line 227
    iget-object v1, p0, Lcom/viber/voip/gallery/preview/ae;->c:Lcom/actionbarsherlock/view/MenuItem;

    iget-object v0, p0, Lcom/viber/voip/gallery/preview/ae;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/gallery/preview/ae;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 228
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/ae;->c:Lcom/actionbarsherlock/view/MenuItem;

    const v1, 0x7f02006c

    const v2, 0x7f0c034b

    iget-object v3, p0, Lcom/viber/voip/gallery/preview/ae;->n:Landroid/view/View$OnClickListener;

    invoke-static {v0, v1, v2, v3}, Lcom/viber/voip/util/gl;->a(Lcom/actionbarsherlock/view/MenuItem;IILandroid/view/View$OnClickListener;)Lcom/actionbarsherlock/internal/view/menu/ActionMenuItemView;

    .line 229
    return-void

    .line 227
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 136
    const v0, 0x7f0300fe

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 141
    iput-object v0, p0, Lcom/viber/voip/gallery/preview/ae;->d:Lcom/viber/voip/messages/ui/view/ViewPagerWithPagingEnable;

    .line 142
    iput-object v0, p0, Lcom/viber/voip/gallery/preview/ae;->b:Lcom/viber/voip/gallery/preview/z;

    .line 143
    invoke-super {p0}, Lcom/viber/voip/ui/al;->onDestroyView()V

    .line 144
    return-void
.end method

.method public onDetach()V
    .locals 2

    .prologue
    .line 191
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/viber/voip/gallery/preview/ae;->j:Lcom/viber/voip/gallery/preview/ad;

    .line 192
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/ae;->k:Lcom/viber/voip/as;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/gallery/preview/ae;->k:Lcom/viber/voip/as;

    iget-object v1, p0, Lcom/viber/voip/gallery/preview/ae;->l:Lcom/viber/voip/ax;

    invoke-virtual {v0, v1}, Lcom/viber/voip/as;->b(Lcom/viber/voip/ax;)V

    .line 196
    :cond_0
    invoke-super {p0}, Lcom/viber/voip/ui/al;->onDetach()V

    .line 197
    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 2
    .parameter

    .prologue
    .line 422
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/ae;->b:Lcom/viber/voip/gallery/preview/z;

    if-nez v0, :cond_0

    .line 428
    :goto_0
    return-void

    .line 423
    :cond_0
    if-eqz p1, :cond_1

    .line 424
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/ae;->b:Lcom/viber/voip/gallery/preview/z;

    invoke-virtual {v0}, Lcom/viber/voip/gallery/preview/z;->a()V

    goto :goto_0

    .line 426
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/ae;->b:Lcom/viber/voip/gallery/preview/z;

    iget v1, p0, Lcom/viber/voip/gallery/preview/ae;->e:I

    invoke-virtual {v0, v1}, Lcom/viber/voip/gallery/preview/z;->a(I)V

    goto :goto_0
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 398
    return-void
.end method

.method public onPageSelected(I)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, -0x1

    .line 402
    iget v0, p0, Lcom/viber/voip/gallery/preview/ae;->i:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Lcom/viber/voip/gallery/preview/ae;->e:I

    if-eq v0, p1, :cond_0

    iget v0, p0, Lcom/viber/voip/gallery/preview/ae;->e:I

    iget-object v1, p0, Lcom/viber/voip/gallery/preview/ae;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 406
    iget v0, p0, Lcom/viber/voip/gallery/preview/ae;->e:I

    invoke-direct {p0, v0}, Lcom/viber/voip/gallery/preview/ae;->a(I)V

    .line 410
    :cond_0
    iget v0, p0, Lcom/viber/voip/gallery/preview/ae;->i:I

    if-eq v0, v2, :cond_1

    iget v0, p0, Lcom/viber/voip/gallery/preview/ae;->i:I

    if-le v0, p1, :cond_3

    .line 411
    :cond_1
    invoke-direct {p0, p1}, Lcom/viber/voip/gallery/preview/ae;->b(I)V

    .line 412
    iput p1, p0, Lcom/viber/voip/gallery/preview/ae;->e:I

    .line 413
    iput v2, p0, Lcom/viber/voip/gallery/preview/ae;->i:I

    .line 418
    :cond_2
    :goto_0
    return-void

    .line 414
    :cond_3
    iget v0, p0, Lcom/viber/voip/gallery/preview/ae;->i:I

    if-ge v0, p1, :cond_2

    .line 415
    iget v0, p0, Lcom/viber/voip/gallery/preview/ae;->e:I

    invoke-direct {p0, v0}, Lcom/viber/voip/gallery/preview/ae;->b(I)V

    .line 416
    iput v2, p0, Lcom/viber/voip/gallery/preview/ae;->i:I

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 162
    invoke-super {p0, p1}, Lcom/viber/voip/ui/al;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 164
    iget v0, p0, Lcom/viber/voip/gallery/preview/ae;->e:I

    invoke-direct {p0, v0}, Lcom/viber/voip/gallery/preview/ae;->a(I)V

    .line 166
    const-string/jumbo v0, "current_position"

    iget v1, p0, Lcom/viber/voip/gallery/preview/ae;->e:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 167
    return-void
.end method
