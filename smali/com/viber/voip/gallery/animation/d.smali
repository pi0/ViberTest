.class public Lcom/viber/voip/gallery/animation/d;
.super Landroid/support/v4/view/PagerAdapter;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;
.implements Lcom/viber/voip/gallery/animation/y;


# instance fields
.field private final a:Landroid/view/LayoutInflater;

.field private b:I

.field private c:Lcom/viber/voip/messages/ui/view/ViewPagerWithPagingEnable;

.field private d:Lcom/viber/voip/gallery/animation/c;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;

.field private h:Lcom/viber/voip/gallery/animation/s;

.field private i:Lcom/viber/voip/gallery/animation/a;

.field private j:Lcom/viber/voip/gallery/animation/b;

.field private k:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private l:Landroid/view/View$OnClickListener;

.field private final m:Landroid/view/View$OnClickListener;

.field private n:Ljava/lang/Runnable;

.field private o:Z


# direct methods
.method public constructor <init>(Lcom/viber/voip/gallery/animation/c;Lcom/viber/voip/messages/ui/view/ViewPagerWithPagingEnable;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 67
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 45
    iput-object v0, p0, Lcom/viber/voip/gallery/animation/d;->d:Lcom/viber/voip/gallery/animation/c;

    .line 46
    iput-object v0, p0, Lcom/viber/voip/gallery/animation/d;->e:Landroid/view/View;

    .line 47
    iput-object v0, p0, Lcom/viber/voip/gallery/animation/d;->f:Landroid/view/View;

    .line 56
    new-instance v0, Lcom/viber/voip/gallery/animation/e;

    invoke-direct {v0, p0}, Lcom/viber/voip/gallery/animation/e;-><init>(Lcom/viber/voip/gallery/animation/d;)V

    iput-object v0, p0, Lcom/viber/voip/gallery/animation/d;->m:Landroid/view/View$OnClickListener;

    .line 68
    invoke-virtual {p2}, Lcom/viber/voip/messages/ui/view/ViewPagerWithPagingEnable;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 70
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/viber/voip/gallery/animation/d;->a:Landroid/view/LayoutInflater;

    .line 71
    iput-object p2, p0, Lcom/viber/voip/gallery/animation/d;->c:Lcom/viber/voip/messages/ui/view/ViewPagerWithPagingEnable;

    .line 72
    iput-object p1, p0, Lcom/viber/voip/gallery/animation/d;->d:Lcom/viber/voip/gallery/animation/c;

    .line 73
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/gallery/animation/d;->a(Landroid/content/Context;)V

    .line 74
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/gallery/animation/d;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/viber/voip/gallery/animation/d;->l:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method private a(Landroid/view/View;IZ)Landroid/view/View;
    .locals 9
    .parameter
    .parameter
    .parameter
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v8, 0x2

    const/4 v7, -0x1

    const/4 v6, 0x0

    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 379
    iget-object v0, p0, Lcom/viber/voip/gallery/animation/d;->a:Landroid/view/LayoutInflater;

    const v1, 0x7f030130

    invoke-virtual {v0, v1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 380
    const v1, 0x7f07006c

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 381
    const v2, 0x7f07006d

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 382
    const v3, 0x7f0703c8

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 383
    if-eqz p3, :cond_1

    .line 385
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 386
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 387
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 388
    const/4 v2, 0x4

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 389
    new-instance v2, Lcom/viber/voip/gallery/animation/l;

    invoke-direct {v2, p0, p1}, Lcom/viber/voip/gallery/animation/l;-><init>(Lcom/viber/voip/gallery/animation/d;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 401
    iget-object v1, p0, Lcom/viber/voip/gallery/animation/d;->h:Lcom/viber/voip/gallery/animation/s;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 409
    :goto_0
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 410
    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 412
    invoke-virtual {v0, p1, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 414
    const v1, 0x7f07006e

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->setTag(ILjava/lang/Object;)V

    .line 415
    const v1, 0x7f07006e

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 417
    invoke-static {}, Lcom/viber/voip/util/gl;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 418
    invoke-virtual {v0, v8, v6}, Landroid/widget/RelativeLayout;->setLayerType(ILandroid/graphics/Paint;)V

    .line 419
    invoke-virtual {p1, v8, v6}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 422
    :cond_0
    return-object v0

    .line 404
    :cond_1
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 405
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 406
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/viber/voip/gallery/animation/d;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 30
    iput-object p1, p0, Lcom/viber/voip/gallery/animation/d;->f:Landroid/view/View;

    return-object p1
.end method

.method static synthetic a(Lcom/viber/voip/gallery/animation/d;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 30
    iput-object p1, p0, Lcom/viber/voip/gallery/animation/d;->n:Ljava/lang/Runnable;

    return-object p1
.end method

.method private a()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 426
    iget-object v0, p0, Lcom/viber/voip/gallery/animation/d;->f:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 427
    iget-object v0, p0, Lcom/viber/voip/gallery/animation/d;->f:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/viber/voip/gallery/animation/d;->e(Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    .line 428
    const v0, 0x7f07006e

    invoke-virtual {v1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 429
    iget-object v0, p0, Lcom/viber/voip/gallery/animation/d;->c:Lcom/viber/voip/messages/ui/view/ViewPagerWithPagingEnable;

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/view/ViewPagerWithPagingEnable;->getCurrentItem()I

    move-result v0

    if-ne v2, v0, :cond_1

    .line 457
    :cond_0
    :goto_0
    return-void

    .line 432
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/gallery/animation/d;->n:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    .line 433
    iget-object v0, p0, Lcom/viber/voip/gallery/animation/d;->f:Landroid/view/View;

    iget-object v3, p0, Lcom/viber/voip/gallery/animation/d;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v3}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 434
    iput-object v5, p0, Lcom/viber/voip/gallery/animation/d;->n:Ljava/lang/Runnable;

    .line 436
    :cond_2
    iget-object v0, p0, Lcom/viber/voip/gallery/animation/d;->c:Lcom/viber/voip/messages/ui/view/ViewPagerWithPagingEnable;

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/view/ViewPagerWithPagingEnable;->getCurrentItem()I

    move-result v0

    .line 438
    iget-object v3, p0, Lcom/viber/voip/gallery/animation/d;->f:Landroid/view/View;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/nineoldandroids/view/ViewHelper;->setAlpha(Landroid/view/View;F)V

    .line 439
    iget-object v3, p0, Lcom/viber/voip/gallery/animation/d;->c:Lcom/viber/voip/messages/ui/view/ViewPagerWithPagingEnable;

    invoke-virtual {v3, v5}, Lcom/viber/voip/messages/ui/view/ViewPagerWithPagingEnable;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 442
    iget-boolean v3, p0, Lcom/viber/voip/gallery/animation/d;->o:Z

    if-nez v3, :cond_3

    invoke-direct {p0, v2}, Lcom/viber/voip/gallery/animation/d;->d(I)V

    .line 443
    :cond_3
    iget-object v3, p0, Lcom/viber/voip/gallery/animation/d;->d:Lcom/viber/voip/gallery/animation/c;

    invoke-virtual {v3, v2, v1}, Lcom/viber/voip/gallery/animation/c;->c(ILandroid/view/View;)V

    .line 445
    iput-object v5, p0, Lcom/viber/voip/gallery/animation/d;->f:Landroid/view/View;

    .line 446
    iget-object v1, p0, Lcom/viber/voip/gallery/animation/d;->c:Lcom/viber/voip/messages/ui/view/ViewPagerWithPagingEnable;

    invoke-virtual {v1, p0}, Lcom/viber/voip/messages/ui/view/ViewPagerWithPagingEnable;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 447
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeAbandonedViewIfNeeded pageIndex="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " currentItem="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/viber/voip/gallery/animation/d;->a(Ljava/lang/String;)V

    .line 448
    invoke-virtual {p0}, Lcom/viber/voip/gallery/animation/d;->getCount()I

    move-result v1

    if-lez v1, :cond_5

    .line 449
    iget-object v1, p0, Lcom/viber/voip/gallery/animation/d;->c:Lcom/viber/voip/messages/ui/view/ViewPagerWithPagingEnable;

    if-le v0, v2, :cond_4

    add-int/lit8 v0, v0, -0x1

    :cond_4
    invoke-virtual {v1, v0}, Lcom/viber/voip/messages/ui/view/ViewPagerWithPagingEnable;->setCurrentItem(I)V

    .line 452
    :cond_5
    if-nez v2, :cond_6

    invoke-virtual {p0, v2}, Lcom/viber/voip/gallery/animation/d;->onPageSelected(I)V

    .line 455
    :cond_6
    iget-boolean v0, p0, Lcom/viber/voip/gallery/animation/d;->o:Z

    if-nez v0, :cond_0

    invoke-direct {p0, v2}, Lcom/viber/voip/gallery/animation/d;->e(I)V

    goto :goto_0
.end method

.method private a(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 77
    iget-object v0, p0, Lcom/viber/voip/gallery/animation/d;->d:Lcom/viber/voip/gallery/animation/c;

    new-instance v1, Lcom/viber/voip/gallery/animation/f;

    invoke-direct {v1, p0}, Lcom/viber/voip/gallery/animation/f;-><init>(Lcom/viber/voip/gallery/animation/d;)V

    invoke-virtual {v0, v1}, Lcom/viber/voip/gallery/animation/c;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 83
    iget-object v0, p0, Lcom/viber/voip/gallery/animation/d;->c:Lcom/viber/voip/messages/ui/view/ViewPagerWithPagingEnable;

    invoke-virtual {v0, p0}, Lcom/viber/voip/messages/ui/view/ViewPagerWithPagingEnable;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 84
    new-instance v0, Lcom/viber/voip/gallery/animation/s;

    sget-object v1, Lcom/viber/voip/gallery/animation/w;->c:Lcom/viber/voip/gallery/animation/w;

    const/16 v2, 0x28

    invoke-direct {v0, p1, p0, v1, v2}, Lcom/viber/voip/gallery/animation/s;-><init>(Landroid/content/Context;Lcom/viber/voip/gallery/animation/y;Lcom/viber/voip/gallery/animation/w;I)V

    iput-object v0, p0, Lcom/viber/voip/gallery/animation/d;->h:Lcom/viber/voip/gallery/animation/s;

    .line 85
    iget-object v0, p0, Lcom/viber/voip/gallery/animation/d;->a:Landroid/view/LayoutInflater;

    const v1, 0x7f030065

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/gallery/animation/d;->g:Landroid/view/View;

    .line 86
    iget-object v0, p0, Lcom/viber/voip/gallery/animation/d;->g:Landroid/view/View;

    const v1, 0x7f07019a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/gallery/animation/d;->m:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    return-void
.end method

.method private a(Landroid/view/View;Lcom/viber/voip/gallery/animation/x;Z)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 201
    iget-object v0, p0, Lcom/viber/voip/gallery/animation/d;->c:Lcom/viber/voip/messages/ui/view/ViewPagerWithPagingEnable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/ui/view/ViewPagerWithPagingEnable;->setPagingEnabled(Z)V

    .line 202
    iget-object v0, p0, Lcom/viber/voip/gallery/animation/d;->f:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/viber/voip/gallery/animation/d;->f:Landroid/view/View;

    iget-object v1, p0, Lcom/viber/voip/gallery/animation/d;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 204
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/viber/voip/gallery/animation/d;->n:Ljava/lang/Runnable;

    .line 206
    :cond_0
    const v0, 0x7f07006e

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 207
    invoke-direct {p0, p1}, Lcom/viber/voip/gallery/animation/d;->e(Landroid/view/View;)Landroid/view/View;

    move-result-object v4

    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "pageIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/gallery/animation/d;->a(Ljava/lang/String;)V

    .line 209
    invoke-virtual {p0}, Lcom/viber/voip/gallery/animation/d;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-eq v3, v0, :cond_8

    const/4 v0, 0x1

    move v1, v0

    .line 210
    :goto_0
    const/4 v0, 0x0

    move v2, v0

    :goto_1
    iget-object v0, p0, Lcom/viber/voip/gallery/animation/d;->c:Lcom/viber/voip/messages/ui/view/ViewPagerWithPagingEnable;

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/view/ViewPagerWithPagingEnable;->getChildCount()I

    move-result v0

    if-ge v2, v0, :cond_3

    .line 211
    iget-object v0, p0, Lcom/viber/voip/gallery/animation/d;->c:Lcom/viber/voip/messages/ui/view/ViewPagerWithPagingEnable;

    invoke-virtual {v0, v2}, Lcom/viber/voip/messages/ui/view/ViewPagerWithPagingEnable;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 212
    const v0, 0x7f07006e

    invoke-virtual {v5, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 213
    add-int v6, v3, v1

    .line 214
    if-eqz v5, :cond_9

    if-gez v1, :cond_1

    if-eq v0, v6, :cond_2

    :cond_1
    if-lez v1, :cond_9

    if-ne v0, v6, :cond_9

    .line 215
    :cond_2
    iput-object v5, p0, Lcom/viber/voip/gallery/animation/d;->e:Landroid/view/View;

    .line 219
    :cond_3
    iget-object v0, p0, Lcom/viber/voip/gallery/animation/d;->e:Landroid/view/View;

    if-nez v0, :cond_b

    .line 220
    iget-object v0, p0, Lcom/viber/voip/gallery/animation/d;->c:Lcom/viber/voip/messages/ui/view/ViewPagerWithPagingEnable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/ui/view/ViewPagerWithPagingEnable;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 223
    iget-boolean v0, p0, Lcom/viber/voip/gallery/animation/d;->o:Z

    if-nez v0, :cond_4

    invoke-direct {p0, v3}, Lcom/viber/voip/gallery/animation/d;->d(I)V

    .line 224
    :cond_4
    iget-object v0, p0, Lcom/viber/voip/gallery/animation/d;->d:Lcom/viber/voip/gallery/animation/c;

    invoke-virtual {v0, v3, v4}, Lcom/viber/voip/gallery/animation/c;->c(ILandroid/view/View;)V

    .line 225
    iget-object v0, p0, Lcom/viber/voip/gallery/animation/d;->c:Lcom/viber/voip/messages/ui/view/ViewPagerWithPagingEnable;

    invoke-virtual {v0, p0}, Lcom/viber/voip/messages/ui/view/ViewPagerWithPagingEnable;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 226
    invoke-virtual {p0}, Lcom/viber/voip/gallery/animation/d;->getCount()I

    move-result v0

    if-lez v0, :cond_5

    .line 227
    iget-object v1, p0, Lcom/viber/voip/gallery/animation/d;->c:Lcom/viber/voip/messages/ui/view/ViewPagerWithPagingEnable;

    iget v0, p0, Lcom/viber/voip/gallery/animation/d;->b:I

    add-int/lit8 v0, v0, -0x1

    if-ne v3, v0, :cond_a

    add-int/lit8 v0, v3, -0x1

    :goto_2
    invoke-virtual {v1, v0}, Lcom/viber/voip/messages/ui/view/ViewPagerWithPagingEnable;->setCurrentItem(I)V

    .line 229
    :cond_5
    invoke-interface {p2}, Lcom/viber/voip/gallery/animation/x;->a()V

    .line 230
    iget-object v0, p0, Lcom/viber/voip/gallery/animation/d;->c:Lcom/viber/voip/messages/ui/view/ViewPagerWithPagingEnable;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/ui/view/ViewPagerWithPagingEnable;->setPagingEnabled(Z)V

    .line 232
    if-nez v3, :cond_6

    invoke-virtual {p0, v3}, Lcom/viber/voip/gallery/animation/d;->onPageSelected(I)V

    .line 235
    :cond_6
    iget-boolean v0, p0, Lcom/viber/voip/gallery/animation/d;->o:Z

    if-nez v0, :cond_7

    invoke-direct {p0, v3}, Lcom/viber/voip/gallery/animation/d;->e(I)V

    .line 321
    :cond_7
    :goto_3
    return-void

    .line 209
    :cond_8
    const/4 v0, -0x1

    move v1, v0

    goto :goto_0

    .line 210
    :cond_9
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_a
    move v0, v3

    .line 227
    goto :goto_2

    .line 239
    :cond_b
    iget-object v0, p0, Lcom/viber/voip/gallery/animation/d;->e:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 240
    invoke-virtual {p0}, Lcom/viber/voip/gallery/animation/d;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne v3, v0, :cond_c

    iget-object v0, p0, Lcom/viber/voip/gallery/animation/d;->f:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iget-object v1, p0, Lcom/viber/voip/gallery/animation/d;->e:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int/2addr v0, v1

    .line 241
    :goto_4
    iget-object v1, p0, Lcom/viber/voip/gallery/animation/d;->e:Landroid/view/View;

    const-string/jumbo v2, "translationX"

    const/4 v5, 0x1

    new-array v5, v5, [F

    const/4 v6, 0x0

    int-to-float v0, v0

    aput v0, v5, v6

    invoke-static {v1, v2, v5}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Lcom/nineoldandroids/animation/ObjectAnimator;->setDuration(J)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v0

    .line 242
    if-eqz p3, :cond_d

    .line 243
    const-string/jumbo v1, "alpha"

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput v6, v2, v5

    invoke-static {p1, v1, v2}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v5, 0x12c

    invoke-virtual {v1, v5, v6}, Lcom/nineoldandroids/animation/ObjectAnimator;->setDuration(J)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v1

    .line 244
    new-instance v2, Lcom/nineoldandroids/animation/AnimatorSet;

    invoke-direct {v2}, Lcom/nineoldandroids/animation/AnimatorSet;-><init>()V

    .line 245
    const/4 v5, 0x2

    new-array v5, v5, [Lcom/nineoldandroids/animation/Animator;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v1, 0x1

    aput-object v0, v5, v1

    invoke-virtual {v2, v5}, Lcom/nineoldandroids/animation/AnimatorSet;->playTogether([Lcom/nineoldandroids/animation/Animator;)V

    .line 246
    new-instance v0, Lcom/viber/voip/gallery/animation/j;

    invoke-direct {v0, p0, v3, v4, p2}, Lcom/viber/voip/gallery/animation/j;-><init>(Lcom/viber/voip/gallery/animation/d;ILandroid/view/View;Lcom/viber/voip/gallery/animation/x;)V

    invoke-virtual {v2, v0}, Lcom/nineoldandroids/animation/AnimatorSet;->addListener(Lcom/nineoldandroids/animation/Animator$AnimatorListener;)V

    .line 281
    invoke-virtual {v2}, Lcom/nineoldandroids/animation/AnimatorSet;->start()V

    goto :goto_3

    .line 240
    :cond_c
    iget-object v0, p0, Lcom/viber/voip/gallery/animation/d;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    iget-object v1, p0, Lcom/viber/voip/gallery/animation/d;->f:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    sub-int/2addr v0, v1

    neg-int v0, v0

    goto :goto_4

    .line 283
    :cond_d
    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Lcom/nineoldandroids/animation/ObjectAnimator;->setStartDelay(J)V

    .line 284
    new-instance v1, Lcom/viber/voip/gallery/animation/k;

    invoke-direct {v1, p0, v3, v4, p2}, Lcom/viber/voip/gallery/animation/k;-><init>(Lcom/viber/voip/gallery/animation/d;ILandroid/view/View;Lcom/viber/voip/gallery/animation/x;)V

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/animation/ObjectAnimator;->addListener(Lcom/nineoldandroids/animation/Animator$AnimatorListener;)V

    .line 319
    invoke-virtual {v0}, Lcom/nineoldandroids/animation/ObjectAnimator;->start()V

    goto/16 :goto_3
.end method

.method static synthetic a(Lcom/viber/voip/gallery/animation/d;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/viber/voip/gallery/animation/d;->d(I)V

    return-void
.end method

.method static synthetic a(Lcom/viber/voip/gallery/animation/d;Landroid/view/View;Lcom/viber/voip/gallery/animation/x;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Lcom/viber/voip/gallery/animation/d;->a(Landroid/view/View;Lcom/viber/voip/gallery/animation/x;Z)V

    return-void
.end method

.method private static a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 641
    const/4 v0, 0x3

    const-string/jumbo v1, "SwipablePagerAdapterWrapper"

    invoke-static {v0, v1, p0}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 642
    return-void
.end method

.method private b()I
    .locals 1

    .prologue
    .line 480
    iget-object v0, p0, Lcom/viber/voip/gallery/animation/d;->d:Lcom/viber/voip/gallery/animation/c;

    invoke-virtual {v0}, Lcom/viber/voip/gallery/animation/c;->getCount()I

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/viber/voip/gallery/animation/d;Landroid/view/View;)Landroid/view/View;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/viber/voip/gallery/animation/d;->e(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/viber/voip/gallery/animation/d;)Lcom/viber/voip/gallery/animation/s;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/viber/voip/gallery/animation/d;->h:Lcom/viber/voip/gallery/animation/s;

    return-object v0
.end method

.method private b(I)V
    .locals 3
    .parameter

    .prologue
    .line 580
    iget-object v0, p0, Lcom/viber/voip/gallery/animation/d;->i:Lcom/viber/voip/gallery/animation/a;

    if-eqz v0, :cond_0

    .line 581
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "notifyViewRemoved(int): undone page removal at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/gallery/animation/d;->a(Ljava/lang/String;)V

    .line 582
    iget-object v0, p0, Lcom/viber/voip/gallery/animation/d;->i:Lcom/viber/voip/gallery/animation/a;

    iget-object v1, p0, Lcom/viber/voip/gallery/animation/d;->f:Landroid/view/View;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, p1}, Lcom/viber/voip/gallery/animation/a;->c(Landroid/view/View;Ljava/lang/Object;I)V

    .line 584
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/viber/voip/gallery/animation/d;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/viber/voip/gallery/animation/d;->e(I)V

    return-void
.end method

.method static synthetic c(Lcom/viber/voip/gallery/animation/d;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/viber/voip/gallery/animation/d;->f:Landroid/view/View;

    return-object v0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 573
    iget-object v0, p0, Lcom/viber/voip/gallery/animation/d;->f:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 574
    iget-object v0, p0, Lcom/viber/voip/gallery/animation/d;->f:Landroid/view/View;

    iget-object v1, p0, Lcom/viber/voip/gallery/animation/d;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 575
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/viber/voip/gallery/animation/d;->n:Ljava/lang/Runnable;

    .line 577
    :cond_0
    return-void
.end method

.method private c(I)V
    .locals 2
    .parameter

    .prologue
    .line 587
    iget-object v0, p0, Lcom/viber/voip/gallery/animation/d;->i:Lcom/viber/voip/gallery/animation/a;

    if-eqz v0, :cond_0

    .line 588
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "notifyUndoPageAbandoned(int): abandoned page at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/gallery/animation/d;->a(Ljava/lang/String;)V

    .line 589
    iget-object v0, p0, Lcom/viber/voip/gallery/animation/d;->i:Lcom/viber/voip/gallery/animation/a;

    iget-object v1, p0, Lcom/viber/voip/gallery/animation/d;->f:Landroid/view/View;

    invoke-interface {v0, v1, p1}, Lcom/viber/voip/gallery/animation/a;->a(Landroid/view/View;I)V

    .line 591
    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/viber/voip/gallery/animation/d;)Ljava/lang/Runnable;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/viber/voip/gallery/animation/d;->n:Ljava/lang/Runnable;

    return-object v0
.end method

.method private d(I)V
    .locals 3
    .parameter

    .prologue
    .line 594
    iget-object v0, p0, Lcom/viber/voip/gallery/animation/d;->j:Lcom/viber/voip/gallery/animation/b;

    if-eqz v0, :cond_0

    .line 595
    iget-object v0, p0, Lcom/viber/voip/gallery/animation/d;->j:Lcom/viber/voip/gallery/animation/b;

    iget-object v1, p0, Lcom/viber/voip/gallery/animation/d;->f:Landroid/view/View;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, p1}, Lcom/viber/voip/gallery/animation/b;->b(Landroid/view/View;Ljava/lang/Object;I)V

    .line 597
    :cond_0
    return-void
.end method

.method private e(Landroid/view/View;)Landroid/view/View;
    .locals 5
    .parameter

    .prologue
    .line 460
    iget-boolean v0, p0, Lcom/viber/voip/gallery/animation/d;->o:Z

    if-nez v0, :cond_0

    .line 473
    :goto_0
    return-object p1

    .line 463
    :cond_0
    check-cast p1, Landroid/view/ViewGroup;

    .line 464
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 465
    const/4 v0, 0x0

    .line 466
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_1

    .line 467
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v3

    .line 468
    const v4, 0x7f07006c

    if-eq v3, v4, :cond_2

    const v4, 0x7f07006d

    if-eq v3, v4, :cond_2

    const v4, 0x7f0703c8

    if-eq v3, v4, :cond_2

    .line 469
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    :cond_1
    move-object p1, v0

    .line 473
    goto :goto_0

    .line 466
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method static synthetic e(Lcom/viber/voip/gallery/animation/d;)Lcom/viber/voip/messages/ui/view/ViewPagerWithPagingEnable;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/viber/voip/gallery/animation/d;->c:Lcom/viber/voip/messages/ui/view/ViewPagerWithPagingEnable;

    return-object v0
.end method

.method private e(I)V
    .locals 3
    .parameter

    .prologue
    .line 600
    iget-object v0, p0, Lcom/viber/voip/gallery/animation/d;->j:Lcom/viber/voip/gallery/animation/b;

    if-eqz v0, :cond_0

    .line 601
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "notifyViewRemoved(int) removed page at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/gallery/animation/d;->a(Ljava/lang/String;)V

    .line 602
    iget-object v0, p0, Lcom/viber/voip/gallery/animation/d;->j:Lcom/viber/voip/gallery/animation/b;

    iget-object v1, p0, Lcom/viber/voip/gallery/animation/d;->f:Landroid/view/View;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, p1}, Lcom/viber/voip/gallery/animation/b;->a(Landroid/view/View;Ljava/lang/Object;I)V

    .line 604
    :cond_0
    return-void
.end method

.method private f(I)Z
    .locals 2
    .parameter

    .prologue
    .line 636
    invoke-direct {p0}, Lcom/viber/voip/gallery/animation/d;->b()I

    move-result v0

    .line 637
    iget v1, p0, Lcom/viber/voip/gallery/animation/d;->b:I

    if-lez v1, :cond_0

    iget v1, p0, Lcom/viber/voip/gallery/animation/d;->b:I

    if-ge v0, v1, :cond_0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic f(Lcom/viber/voip/gallery/animation/d;)Z
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/viber/voip/gallery/animation/d;->o:Z

    return v0
.end method

.method static synthetic g(Lcom/viber/voip/gallery/animation/d;)Lcom/viber/voip/gallery/animation/c;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/viber/voip/gallery/animation/d;->d:Lcom/viber/voip/gallery/animation/c;

    return-object v0
.end method

.method static synthetic h(Lcom/viber/voip/gallery/animation/d;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/viber/voip/gallery/animation/d;->e:Landroid/view/View;

    return-object v0
.end method

.method static synthetic i(Lcom/viber/voip/gallery/animation/d;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/viber/voip/gallery/animation/d;->g:Landroid/view/View;

    return-object v0
.end method

.method static synthetic j(Lcom/viber/voip/gallery/animation/d;)I
    .locals 1
    .parameter

    .prologue
    .line 30
    iget v0, p0, Lcom/viber/voip/gallery/animation/d;->b:I

    return v0
.end method


# virtual methods
.method public a(I)V
    .locals 0
    .parameter

    .prologue
    .line 94
    iput p1, p0, Lcom/viber/voip/gallery/animation/d;->b:I

    .line 95
    return-void
.end method

.method public a(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
    .locals 0
    .parameter

    .prologue
    .line 106
    iput-object p1, p0, Lcom/viber/voip/gallery/animation/d;->k:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 107
    return-void
.end method

.method public a(Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter

    .prologue
    .line 110
    iput-object p1, p0, Lcom/viber/voip/gallery/animation/d;->l:Landroid/view/View$OnClickListener;

    .line 111
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 521
    const v0, 0x7f07006e

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 522
    iget-object v1, p0, Lcom/viber/voip/gallery/animation/d;->d:Lcom/viber/voip/gallery/animation/c;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v0, v2, v3}, Lcom/viber/voip/gallery/animation/c;->a(Landroid/view/View;IZZ)V

    .line 523
    return-void
.end method

.method public a(Landroid/view/View;Lcom/viber/voip/gallery/animation/x;)V
    .locals 12
    .parameter
    .parameter

    .prologue
    const/high16 v7, 0x3f80

    const/4 v5, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 120
    iget-boolean v0, p0, Lcom/viber/voip/gallery/animation/d;->o:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f07006b

    if-ne v0, v1, :cond_2

    .line 121
    :cond_0
    iget-boolean v0, p0, Lcom/viber/voip/gallery/animation/d;->o:Z

    if-nez v0, :cond_1

    .line 122
    iput-object p1, p0, Lcom/viber/voip/gallery/animation/d;->f:Landroid/view/View;

    .line 124
    :cond_1
    invoke-direct {p0, p1, p2, v10}, Lcom/viber/voip/gallery/animation/d;->a(Landroid/view/View;Lcom/viber/voip/gallery/animation/x;Z)V

    .line 198
    :goto_0
    return-void

    .line 126
    :cond_2
    iget-object v0, p0, Lcom/viber/voip/gallery/animation/d;->c:Lcom/viber/voip/messages/ui/view/ViewPagerWithPagingEnable;

    invoke-virtual {v0, v11}, Lcom/viber/voip/messages/ui/view/ViewPagerWithPagingEnable;->requestDisallowInterceptTouchEvent(Z)V

    .line 127
    iget-object v0, p0, Lcom/viber/voip/gallery/animation/d;->c:Lcom/viber/voip/messages/ui/view/ViewPagerWithPagingEnable;

    invoke-virtual {v0, v10}, Lcom/viber/voip/messages/ui/view/ViewPagerWithPagingEnable;->setPagingEnabled(Z)V

    .line 129
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/viber/voip/gallery/animation/d;->f:Landroid/view/View;

    .line 130
    const v0, 0x7f07006e

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 132
    invoke-direct {p0, v0}, Lcom/viber/voip/gallery/animation/d;->d(I)V

    .line 134
    iget-object v1, p0, Lcom/viber/voip/gallery/animation/d;->d:Lcom/viber/voip/gallery/animation/c;

    invoke-virtual {v1, v0, p1}, Lcom/viber/voip/gallery/animation/c;->b(ILandroid/view/View;)V

    .line 136
    invoke-direct {p0, v0}, Lcom/viber/voip/gallery/animation/d;->e(I)V

    .line 138
    iget-object v0, p0, Lcom/viber/voip/gallery/animation/d;->f:Landroid/view/View;

    const v1, 0x7f07006c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 139
    iget-object v0, p0, Lcom/viber/voip/gallery/animation/d;->f:Landroid/view/View;

    const v1, 0x7f07006d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 140
    iget-object v0, p0, Lcom/viber/voip/gallery/animation/d;->f:Landroid/view/View;

    const v1, 0x7f0703c8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 141
    invoke-static {v2, v5}, Lcom/nineoldandroids/view/ViewHelper;->setAlpha(Landroid/view/View;F)V

    .line 142
    invoke-static {v3, v5}, Lcom/nineoldandroids/view/ViewHelper;->setAlpha(Landroid/view/View;F)V

    .line 143
    invoke-static {v4, v5}, Lcom/nineoldandroids/view/ViewHelper;->setAlpha(Landroid/view/View;F)V

    .line 144
    invoke-virtual {v2, v10}, Landroid/view/View;->setVisibility(I)V

    .line 145
    invoke-virtual {v3, v10}, Landroid/view/View;->setVisibility(I)V

    .line 146
    invoke-virtual {v4, v10}, Landroid/view/View;->setVisibility(I)V

    .line 148
    const-string/jumbo v0, "alpha"

    new-array v1, v11, [F

    aput v7, v1, v10

    invoke-static {v2, v0, v1}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v0

    .line 149
    const-string/jumbo v1, "alpha"

    new-array v5, v11, [F

    aput v7, v5, v10

    invoke-static {v3, v1, v5}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v1

    .line 150
    const-string/jumbo v5, "alpha"

    new-array v6, v11, [F

    aput v7, v6, v10

    invoke-static {v4, v5, v6}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v5

    .line 152
    new-instance v7, Lcom/nineoldandroids/animation/AnimatorSet;

    invoke-direct {v7}, Lcom/nineoldandroids/animation/AnimatorSet;-><init>()V

    .line 153
    const-wide/16 v8, 0x96

    invoke-virtual {v7, v8, v9}, Lcom/nineoldandroids/animation/AnimatorSet;->setStartDelay(J)V

    .line 154
    const/4 v6, 0x3

    new-array v6, v6, [Lcom/nineoldandroids/animation/Animator;

    aput-object v0, v6, v10

    aput-object v1, v6, v11

    const/4 v0, 0x2

    aput-object v5, v6, v0

    invoke-virtual {v7, v6}, Lcom/nineoldandroids/animation/AnimatorSet;->playTogether([Lcom/nineoldandroids/animation/Animator;)V

    .line 155
    const-wide/16 v0, 0xfa

    invoke-virtual {v7, v0, v1}, Lcom/nineoldandroids/animation/AnimatorSet;->setDuration(J)Lcom/nineoldandroids/animation/AnimatorSet;

    .line 156
    new-instance v0, Lcom/viber/voip/gallery/animation/g;

    move-object v1, p0

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/viber/voip/gallery/animation/g;-><init>(Lcom/viber/voip/gallery/animation/d;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Lcom/viber/voip/gallery/animation/x;)V

    invoke-virtual {v7, v0}, Lcom/nineoldandroids/animation/AnimatorSet;->addListener(Lcom/nineoldandroids/animation/Animator$AnimatorListener;)V

    .line 195
    invoke-virtual {v7}, Lcom/nineoldandroids/animation/AnimatorSet;->start()V

    goto/16 :goto_0
.end method

.method public a(Landroid/view/View;ZLcom/viber/voip/gallery/animation/x;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 537
    const v0, 0x7f07006e

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 538
    iget-object v1, p0, Lcom/viber/voip/gallery/animation/d;->d:Lcom/viber/voip/gallery/animation/c;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v0, v2, p2}, Lcom/viber/voip/gallery/animation/c;->a(Landroid/view/View;IZZ)V

    .line 539
    if-eqz p2, :cond_0

    .line 540
    invoke-virtual {p0, p1, p3}, Lcom/viber/voip/gallery/animation/d;->a(Landroid/view/View;Lcom/viber/voip/gallery/animation/x;)V

    .line 542
    :cond_0
    return-void
.end method

.method public a(Lcom/viber/voip/gallery/animation/a;)V
    .locals 0
    .parameter

    .prologue
    .line 102
    iput-object p1, p0, Lcom/viber/voip/gallery/animation/d;->i:Lcom/viber/voip/gallery/animation/a;

    .line 103
    return-void
.end method

.method public a(Lcom/viber/voip/gallery/animation/b;)V
    .locals 0
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Lcom/viber/voip/gallery/animation/d;->j:Lcom/viber/voip/gallery/animation/b;

    .line 99
    return-void
.end method

.method public a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/viber/voip/gallery/animation/d;->o:Z

    .line 91
    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 0
    .parameter

    .prologue
    .line 527
    invoke-direct {p0}, Lcom/viber/voip/gallery/animation/d;->c()V

    .line 528
    return-void
.end method

.method public c(Landroid/view/View;)V
    .locals 0
    .parameter

    .prologue
    .line 533
    return-void
.end method

.method public d(Landroid/view/View;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x8

    .line 546
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 547
    invoke-virtual {v0, v5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 550
    const v1, 0x7f07006e

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 551
    iget-object v2, p0, Lcom/viber/voip/gallery/animation/d;->d:Lcom/viber/voip/gallery/animation/c;

    invoke-virtual {v2, v1, p1}, Lcom/viber/voip/gallery/animation/c;->a(ILandroid/view/View;)V

    .line 552
    invoke-direct {p0, v1}, Lcom/viber/voip/gallery/animation/d;->b(I)V

    .line 554
    const v1, 0x7f07006c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 555
    const v2, 0x7f07006d

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 556
    const v3, 0x7f0703c8

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 558
    invoke-virtual {v1, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 560
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 561
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 562
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 564
    invoke-static {}, Lcom/viber/voip/util/gl;->b()Z

    move-result v3

    if-nez v3, :cond_0

    .line 565
    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    .line 566
    invoke-virtual {v2}, Landroid/view/View;->clearAnimation()V

    .line 567
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 569
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/gallery/animation/d;->h:Lcom/viber/voip/gallery/animation/s;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 570
    return-void
.end method

.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 367
    check-cast p3, Landroid/view/View;

    .line 369
    invoke-direct {p0, p2}, Lcom/viber/voip/gallery/animation/d;->f(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 370
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 371
    iget-object v1, p0, Lcom/viber/voip/gallery/animation/d;->d:Lcom/viber/voip/gallery/animation/c;

    iget-boolean v0, p0, Lcom/viber/voip/gallery/animation/d;->o:Z

    if-eqz v0, :cond_1

    move-object v0, p3

    check-cast v0, Landroid/view/ViewGroup;

    :goto_0
    invoke-direct {p0, p3}, Lcom/viber/voip/gallery/animation/d;->e(Landroid/view/View;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v0, p2, v2}, Lcom/viber/voip/gallery/animation/c;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 374
    :cond_0
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 375
    return-void

    :cond_1
    move-object v0, p1

    .line 371
    goto :goto_0
.end method

.method public finishUpdate(Landroid/view/ViewGroup;)V
    .locals 1
    .parameter

    .prologue
    .line 501
    iget-object v0, p0, Lcom/viber/voip/gallery/animation/d;->d:Lcom/viber/voip/gallery/animation/c;

    invoke-virtual {v0, p1}, Lcom/viber/voip/gallery/animation/c;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 502
    return-void
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 485
    invoke-direct {p0}, Lcom/viber/voip/gallery/animation/d;->b()I

    move-result v0

    .line 486
    iget v1, p0, Lcom/viber/voip/gallery/animation/d;->b:I

    if-lez v1, :cond_0

    iget v1, p0, Lcom/viber/voip/gallery/animation/d;->b:I

    if-ge v0, v1, :cond_0

    .line 489
    add-int/lit8 v0, v0, 0x1

    .line 491
    :cond_0
    return v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 1
    .parameter

    .prologue
    .line 115
    const/4 v0, -0x2

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const v3, 0x7f07006e

    .line 325
    invoke-direct {p0, p2}, Lcom/viber/voip/gallery/animation/d;->f(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/viber/voip/gallery/animation/d;->g:Landroid/view/View;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 329
    iget-object v0, p0, Lcom/viber/voip/gallery/animation/d;->g:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 330
    iget-object v0, p0, Lcom/viber/voip/gallery/animation/d;->g:Landroid/view/View;

    .line 361
    :goto_0
    return-object v0

    .line 333
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/gallery/animation/d;->d:Lcom/viber/voip/gallery/animation/c;

    invoke-virtual {v0, p1, p2}, Lcom/viber/voip/gallery/animation/c;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 334
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 335
    iget-object v1, p0, Lcom/viber/voip/gallery/animation/d;->h:Lcom/viber/voip/gallery/animation/s;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 337
    :cond_1
    iget-boolean v1, p0, Lcom/viber/voip/gallery/animation/d;->o:Z

    if-eqz v1, :cond_6

    .line 338
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 339
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_5

    .line 341
    iget-object v1, p0, Lcom/viber/voip/gallery/animation/d;->f:Landroid/view/View;

    if-eqz v1, :cond_4

    .line 342
    iget-object v1, p0, Lcom/viber/voip/gallery/animation/d;->f:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 343
    if-ne p2, v1, :cond_3

    const/4 v1, 0x1

    .line 344
    :goto_1
    invoke-direct {p0, v0, p2, v1}, Lcom/viber/voip/gallery/animation/d;->a(Landroid/view/View;IZ)Landroid/view/View;

    move-result-object v0

    .line 345
    if-eqz v1, :cond_2

    iput-object v0, p0, Lcom/viber/voip/gallery/animation/d;->f:Landroid/view/View;

    .line 350
    :cond_2
    :goto_2
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_3
    move v1, v2

    .line 343
    goto :goto_1

    .line 347
    :cond_4
    invoke-direct {p0, v0, p2, v2}, Lcom/viber/voip/gallery/animation/d;->a(Landroid/view/View;IZ)Landroid/view/View;

    move-result-object v0

    goto :goto_2

    .line 353
    :cond_5
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 354
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 355
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    goto :goto_0

    .line 359
    :cond_6
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 360
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 496
    iget-object v0, p0, Lcom/viber/voip/gallery/animation/d;->d:Lcom/viber/voip/gallery/animation/c;

    invoke-virtual {v0, p1, p2}, Lcom/viber/voip/gallery/animation/c;->isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public onPageScrollStateChanged(I)V
    .locals 1
    .parameter

    .prologue
    .line 619
    if-nez p1, :cond_0

    .line 620
    invoke-direct {p0}, Lcom/viber/voip/gallery/animation/d;->a()V

    .line 623
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/gallery/animation/d;->k:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/viber/voip/gallery/animation/d;->k:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    .line 624
    :cond_1
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 628
    invoke-direct {p0}, Lcom/viber/voip/gallery/animation/d;->c()V

    .line 630
    iget-object v0, p0, Lcom/viber/voip/gallery/animation/d;->k:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 631
    iget-object v0, p0, Lcom/viber/voip/gallery/animation/d;->k:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 633
    :cond_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 2
    .parameter

    .prologue
    .line 609
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onPageSelected page="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/gallery/animation/d;->a(Ljava/lang/String;)V

    .line 610
    iget-object v0, p0, Lcom/viber/voip/gallery/animation/d;->f:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 611
    iget-object v0, p0, Lcom/viber/voip/gallery/animation/d;->f:Landroid/view/View;

    const v1, 0x7f07006e

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/viber/voip/gallery/animation/d;->c(I)V

    .line 614
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/gallery/animation/d;->k:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/viber/voip/gallery/animation/d;->k:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 615
    :cond_1
    return-void
.end method

.method public restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 506
    iget-object v0, p0, Lcom/viber/voip/gallery/animation/d;->d:Lcom/viber/voip/gallery/animation/c;

    invoke-virtual {v0, p1, p2}, Lcom/viber/voip/gallery/animation/c;->restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    .line 507
    return-void
.end method

.method public saveState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 511
    iget-object v0, p0, Lcom/viber/voip/gallery/animation/d;->d:Lcom/viber/voip/gallery/animation/c;

    invoke-virtual {v0}, Lcom/viber/voip/gallery/animation/c;->saveState()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method public startUpdate(Landroid/view/ViewGroup;)V
    .locals 1
    .parameter

    .prologue
    .line 516
    iget-object v0, p0, Lcom/viber/voip/gallery/animation/d;->d:Lcom/viber/voip/gallery/animation/c;

    invoke-virtual {v0, p1}, Lcom/viber/voip/gallery/animation/c;->startUpdate(Landroid/view/ViewGroup;)V

    .line 517
    return-void
.end method
