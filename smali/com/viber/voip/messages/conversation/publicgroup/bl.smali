.class Lcom/viber/voip/messages/conversation/publicgroup/bl;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:I

.field private final f:I

.field private final g:Landroid/content/Context;

.field private h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/viber/jni/PublicGroupInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Lcom/viber/voip/util/b/w;

.field private final j:Lcom/viber/voip/util/b/x;

.field private k:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 8
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/viber/jni/PublicGroupInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 601
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 592
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/bl;->h:Ljava/util/ArrayList;

    .line 602
    iput-object p1, p0, Lcom/viber/voip/messages/conversation/publicgroup/bl;->g:Landroid/content/Context;

    .line 603
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a01f2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/bl;->c:I

    .line 604
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a01f4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/bl;->d:I

    .line 605
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a01f6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/bl;->a:I

    .line 606
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a01f3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/bl;->b:I

    .line 607
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a01f7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/bl;->e:I

    .line 608
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/conversation/publicgroup/bl;->a(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/bl;->f:I

    .line 609
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/bl;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 610
    invoke-static {p1}, Lcom/viber/voip/util/b/w;->a(Landroid/content/Context;)Lcom/viber/voip/util/b/w;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/bl;->i:Lcom/viber/voip/util/b/w;

    .line 612
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 613
    iget v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/bl;->f:I

    iget v2, p0, Lcom/viber/voip/messages/conversation/publicgroup/bl;->f:I

    invoke-static {v1, v2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/bl;->k:Landroid/graphics/Bitmap;

    .line 614
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/bl;->k:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 615
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/bl;->g:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900d7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 616
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 617
    new-instance v3, Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/viber/voip/messages/conversation/publicgroup/bl;->k:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/viber/voip/messages/conversation/publicgroup/bl;->k:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-direct {v3, v7, v7, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 618
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 619
    iget-object v5, p0, Lcom/viber/voip/messages/conversation/publicgroup/bl;->g:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a020e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    int-to-float v5, v5

    .line 621
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 622
    invoke-virtual {v0, v7, v7, v7, v7}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 623
    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 624
    invoke-virtual {v0, v4, v5, v5, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 626
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 627
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/bl;->k:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 628
    new-instance v0, Lcom/viber/voip/util/b/z;

    invoke-direct {v0}, Lcom/viber/voip/util/b/z;-><init>()V

    invoke-virtual {v0, v7}, Lcom/viber/voip/util/b/z;->c(Z)Lcom/viber/voip/util/b/z;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/messages/conversation/publicgroup/bj;

    iget v2, p0, Lcom/viber/voip/messages/conversation/publicgroup/bl;->f:I

    invoke-direct {v1, p1, v2}, Lcom/viber/voip/messages/conversation/publicgroup/bj;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Lcom/viber/voip/util/b/z;->a(Lcom/viber/voip/util/b/l;)Lcom/viber/voip/util/b/z;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/bl;->k:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/viber/voip/util/b/z;->a(Landroid/graphics/Bitmap;)Lcom/viber/voip/util/b/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/util/b/z;->b()Lcom/viber/voip/util/b/x;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/bl;->j:Lcom/viber/voip/util/b/x;

    .line 634
    return-void
.end method

.method private a(Landroid/content/Context;)I
    .locals 3
    .parameter

    .prologue
    .line 720
    invoke-static {p1}, Lcom/viber/voip/messages/extras/image/h;->a(Landroid/content/Context;)[I

    move-result-object v0

    .line 721
    iget v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/bl;->c:I

    mul-int/lit8 v1, v1, 0x2

    .line 722
    invoke-static {p1}, Lcom/viber/voip/util/gl;->e(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 723
    const/4 v2, 0x0

    aget v0, v0, v2

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/bl;->d:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x3

    .line 725
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/viber/voip/util/gl;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/messages/extras/image/h;->b(Landroid/view/Display;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    :goto_1
    sub-int/2addr v0, v1

    iget v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/bl;->d:I

    mul-int/lit8 v1, v1, 0x4

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x5

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    aget v0, v0, v2

    goto :goto_1
.end method

.method private b()Landroid/view/View;
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x2

    .line 679
    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/bl;->g:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 680
    new-instance v1, Lit/sephiroth/android/library/widget/i;

    iget v2, p0, Lcom/viber/voip/messages/conversation/publicgroup/bl;->f:I

    invoke-direct {v1, v2, v6}, Lit/sephiroth/android/library/widget/i;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 681
    iget v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/bl;->a:I

    iget v2, p0, Lcom/viber/voip/messages/conversation/publicgroup/bl;->a:I

    iget v3, p0, Lcom/viber/voip/messages/conversation/publicgroup/bl;->a:I

    invoke-virtual {v0, v1, v7, v2, v3}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 682
    const v1, 0x7f02034b

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 684
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/viber/voip/messages/conversation/publicgroup/bl;->g:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 685
    iget-object v2, p0, Lcom/viber/voip/messages/conversation/publicgroup/bl;->k:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 686
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    iget v3, p0, Lcom/viber/voip/messages/conversation/publicgroup/bl;->f:I

    iget v4, p0, Lcom/viber/voip/messages/conversation/publicgroup/bl;->f:I

    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 688
    new-instance v1, Landroid/widget/ProgressBar;

    iget-object v2, p0, Lcom/viber/voip/messages/conversation/publicgroup/bl;->g:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 689
    iget-object v2, p0, Lcom/viber/voip/messages/conversation/publicgroup/bl;->g:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02042e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 690
    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/viber/voip/messages/conversation/publicgroup/bl;->f:I

    div-int/lit8 v4, v4, 0x3

    iget v5, p0, Lcom/viber/voip/messages/conversation/publicgroup/bl;->f:I

    div-int/lit8 v5, v5, 0x3

    invoke-direct {v3, v7, v7, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 691
    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 693
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    iget v3, p0, Lcom/viber/voip/messages/conversation/publicgroup/bl;->f:I

    div-int/lit8 v3, v3, 0x3

    iget v4, p0, Lcom/viber/voip/messages/conversation/publicgroup/bl;->f:I

    div-int/lit8 v4, v4, 0x3

    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 694
    iget v3, p0, Lcom/viber/voip/messages/conversation/publicgroup/bl;->f:I

    div-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/viber/voip/messages/conversation/publicgroup/bl;->f:I

    div-int/lit8 v4, v4, 0x6

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 695
    iget v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 696
    const-string/jumbo v3, "public_groups_suggestion_progress"

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setTag(Ljava/lang/Object;)V

    .line 697
    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 699
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/viber/voip/messages/conversation/publicgroup/bl;->g:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 700
    const-string/jumbo v2, "public_groups_suggestion_image"

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 701
    const v2, 0x7f070079

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setId(I)V

    .line 702
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    iget v3, p0, Lcom/viber/voip/messages/conversation/publicgroup/bl;->f:I

    iget v4, p0, Lcom/viber/voip/messages/conversation/publicgroup/bl;->f:I

    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 704
    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/viber/voip/messages/conversation/publicgroup/bl;->g:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 705
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 706
    const/4 v4, 0x3

    invoke-virtual {v1}, Landroid/widget/ImageView;->getId()I

    move-result v1

    invoke-virtual {v3, v4, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 707
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/bl;->g:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f090058

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 708
    const/4 v1, 0x2

    const/high16 v4, 0x4160

    invoke-virtual {v2, v1, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 709
    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 710
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 711
    iget v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/bl;->a:I

    iget v4, p0, Lcom/viber/voip/messages/conversation/publicgroup/bl;->b:I

    iget v5, p0, Lcom/viber/voip/messages/conversation/publicgroup/bl;->a:I

    iget v6, p0, Lcom/viber/voip/messages/conversation/publicgroup/bl;->b:I

    invoke-virtual {v2, v1, v4, v5, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 712
    iget v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/bl;->e:I

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 713
    const-string/jumbo v1, "public_groups_suggestion_text"

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 714
    invoke-virtual {v0, v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 716
    return-object v0
.end method


# virtual methods
.method public a(I)Lcom/viber/jni/PublicGroupInfo;
    .locals 1
    .parameter

    .prologue
    .line 651
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/bl;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/jni/PublicGroupInfo;

    return-object v0
.end method

.method public a()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/viber/jni/PublicGroupInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 655
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/bl;->h:Ljava/util/ArrayList;

    return-object v0
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/viber/jni/PublicGroupInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 637
    if-eqz p1, :cond_0

    .line 638
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/bl;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 639
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/bl;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 640
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/publicgroup/bl;->notifyDataSetChanged()V

    .line 642
    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 646
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/bl;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 579
    invoke-virtual {p0, p1}, Lcom/viber/voip/messages/conversation/publicgroup/bl;->a(I)Lcom/viber/jni/PublicGroupInfo;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 660
    invoke-virtual {p0, p1}, Lcom/viber/voip/messages/conversation/publicgroup/bl;->a(I)Lcom/viber/jni/PublicGroupInfo;

    move-result-object v0

    iget-wide v0, v0, Lcom/viber/jni/PublicGroupInfo;->groupID:J

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 665
    if-nez p2, :cond_0

    .line 666
    invoke-direct {p0}, Lcom/viber/voip/messages/conversation/publicgroup/bl;->b()Landroid/view/View;

    move-result-object p2

    .line 668
    :cond_0
    invoke-virtual {p0, p1}, Lcom/viber/voip/messages/conversation/publicgroup/bl;->a(I)Lcom/viber/jni/PublicGroupInfo;

    move-result-object v1

    .line 669
    const-string/jumbo v0, "public_groups_suggestion_image"

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 670
    iget-object v2, p0, Lcom/viber/voip/messages/conversation/publicgroup/bl;->i:Lcom/viber/voip/util/b/w;

    iget-object v3, v1, Lcom/viber/jni/PublicGroupInfo;->iconId:Ljava/lang/String;

    invoke-static {v3}, Lcom/viber/voip/util/hv;->b(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/viber/voip/messages/conversation/publicgroup/bl;->j:Lcom/viber/voip/util/b/x;

    invoke-virtual {v2, v3, v0, v4}, Lcom/viber/voip/util/b/w;->a(Landroid/net/Uri;Landroid/widget/ImageView;Lcom/viber/voip/util/b/x;)V

    .line 672
    const-string/jumbo v0, "public_groups_suggestion_text"

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, v1, Lcom/viber/jni/PublicGroupInfo;->groupName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 674
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 675
    return-object p2
.end method
