.class Lcom/android/camera/CropImageView;
.super Lcom/android/camera/s;
.source "SourceFile"


# instance fields
.field a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/m;",
            ">;"
        }
    .end annotation
.end field

.field b:Lcom/android/camera/m;

.field c:F

.field d:F

.field e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 637
    invoke-direct {p0, p1, p2}, Lcom/android/camera/s;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 616
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/CropImageView;->a:Ljava/util/ArrayList;

    .line 617
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/CropImageView;->b:Lcom/android/camera/m;

    .line 638
    return-void
.end method

.method private a(Landroid/view/MotionEvent;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 680
    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/android/camera/CropImageView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 681
    iget-object v0, p0, Lcom/android/camera/CropImageView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/m;

    .line 682
    invoke-virtual {v0, v2}, Lcom/android/camera/m;->a(Z)V

    .line 683
    invoke-virtual {v0}, Lcom/android/camera/m;->c()V

    .line 680
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 686
    :cond_0
    add-int/lit8 v2, v2, 0x1

    :cond_1
    iget-object v0, p0, Lcom/android/camera/CropImageView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    .line 687
    iget-object v0, p0, Lcom/android/camera/CropImageView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/m;

    .line 688
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v0, v1, v3}, Lcom/android/camera/m;->a(FF)I

    move-result v1

    .line 689
    if-eq v1, v4, :cond_0

    .line 690
    invoke-virtual {v0}, Lcom/android/camera/m;->a()Z

    move-result v1

    if-nez v1, :cond_2

    .line 691
    invoke-virtual {v0, v4}, Lcom/android/camera/m;->a(Z)V

    .line 692
    invoke-virtual {v0}, Lcom/android/camera/m;->c()V

    .line 697
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/CropImageView;->invalidate()V

    .line 698
    return-void
.end method

.method private b(Lcom/android/camera/m;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 795
    iget-object v1, p1, Lcom/android/camera/m;->d:Landroid/graphics/Rect;

    .line 797
    invoke-virtual {p0}, Lcom/android/camera/CropImageView;->getLeft()I

    move-result v0

    iget v2, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v2

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 798
    invoke-virtual {p0}, Lcom/android/camera/CropImageView;->getRight()I

    move-result v0

    iget v3, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v3

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 800
    invoke-virtual {p0}, Lcom/android/camera/CropImageView;->getTop()I

    move-result v0

    iget v4, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v4

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 801
    invoke-virtual {p0}, Lcom/android/camera/CropImageView;->getBottom()I

    move-result v4

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int v1, v4, v1

    invoke-static {v5, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 803
    if-eqz v2, :cond_2

    .line 804
    :goto_0
    if-eqz v0, :cond_3

    .line 806
    :goto_1
    if-nez v2, :cond_0

    if-eqz v0, :cond_1

    .line 807
    :cond_0
    int-to-float v1, v2

    int-to-float v0, v0

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/CropImageView;->b(FF)V

    .line 809
    :cond_1
    return-void

    :cond_2
    move v2, v3

    .line 803
    goto :goto_0

    :cond_3
    move v0, v1

    .line 804
    goto :goto_1
.end method

.method private c(Lcom/android/camera/m;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const v4, 0x3f19999a

    .line 814
    iget-object v0, p1, Lcom/android/camera/m;->d:Landroid/graphics/Rect;

    .line 816
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    .line 817
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    .line 819
    invoke-virtual {p0}, Lcom/android/camera/CropImageView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    .line 820
    invoke-virtual {p0}, Lcom/android/camera/CropImageView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    .line 822
    div-float v1, v2, v1

    mul-float/2addr v1, v4

    .line 823
    div-float v0, v3, v0

    mul-float/2addr v0, v4

    .line 825
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 826
    invoke-virtual {p0}, Lcom/android/camera/CropImageView;->b()F

    move-result v1

    mul-float/2addr v0, v1

    .line 827
    const/high16 v1, 0x3f80

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 829
    invoke-virtual {p0}, Lcom/android/camera/CropImageView;->b()F

    move-result v1

    sub-float v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    div-float/2addr v1, v0

    float-to-double v1, v1

    const-wide v3, 0x3fb999999999999aL

    cmpl-double v1, v1, v3

    if-lez v1, :cond_0

    .line 830
    const/4 v1, 0x2

    new-array v1, v1, [F

    iget-object v2, p1, Lcom/android/camera/m;->e:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    aput v2, v1, v5

    iget-object v2, p1, Lcom/android/camera/m;->e:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    aput v2, v1, v6

    .line 832
    invoke-virtual {p0}, Lcom/android/camera/CropImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 833
    aget v2, v1, v5

    aget v1, v1, v6

    const/high16 v3, 0x4396

    invoke-virtual {p0, v0, v2, v1, v3}, Lcom/android/camera/CropImageView;->a(FFFF)V

    .line 836
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/camera/CropImageView;->b(Lcom/android/camera/m;)V

    .line 837
    return-void
.end method


# virtual methods
.method protected a(FF)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 669
    invoke-super {p0, p1, p2}, Lcom/android/camera/s;->a(FF)V

    .line 670
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/android/camera/CropImageView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 671
    iget-object v0, p0, Lcom/android/camera/CropImageView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/m;

    .line 672
    iget-object v2, v0, Lcom/android/camera/m;->f:Landroid/graphics/Matrix;

    invoke-virtual {v2, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 673
    invoke-virtual {v0}, Lcom/android/camera/m;->c()V

    .line 670
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 675
    :cond_0
    return-void
.end method

.method protected a(FFF)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 642
    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/s;->a(FFF)V

    .line 643
    iget-object v0, p0, Lcom/android/camera/CropImageView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/m;

    .line 644
    iget-object v2, v0, Lcom/android/camera/m;->f:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/android/camera/CropImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 645
    invoke-virtual {v0}, Lcom/android/camera/m;->c()V

    goto :goto_0

    .line 647
    :cond_0
    return-void
.end method

.method public a(Lcom/android/camera/m;)V
    .locals 1
    .parameter

    .prologue
    .line 848
    iget-object v0, p0, Lcom/android/camera/CropImageView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 849
    invoke-virtual {p0}, Lcom/android/camera/CropImageView;->invalidate()V

    .line 850
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter

    .prologue
    .line 841
    invoke-super {p0, p1}, Lcom/android/camera/s;->onDraw(Landroid/graphics/Canvas;)V

    .line 842
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/android/camera/CropImageView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 843
    iget-object v0, p0, Lcom/android/camera/CropImageView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/m;

    invoke-virtual {v0, p1}, Lcom/android/camera/m;->a(Landroid/graphics/Canvas;)V

    .line 842
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 845
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 624
    invoke-super/range {p0 .. p5}, Lcom/android/camera/s;->onLayout(ZIIII)V

    .line 625
    iget-object v0, p0, Lcom/android/camera/CropImageView;->h:Lcom/android/camera/y;

    invoke-virtual {v0}, Lcom/android/camera/y;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 626
    iget-object v0, p0, Lcom/android/camera/CropImageView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/m;

    .line 627
    iget-object v2, v0, Lcom/android/camera/m;->f:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/android/camera/CropImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 628
    invoke-virtual {v0}, Lcom/android/camera/m;->c()V

    .line 629
    iget-boolean v2, v0, Lcom/android/camera/m;->b:Z

    if-eqz v2, :cond_0

    .line 630
    invoke-direct {p0, v0}, Lcom/android/camera/CropImageView;->c(Lcom/android/camera/m;)V

    goto :goto_0

    .line 634
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x1

    .line 702
    invoke-virtual {p0}, Lcom/android/camera/CropImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/camera/CropImage;

    .line 703
    iget-boolean v1, v0, Lcom/android/camera/CropImage;->b:Z

    if-eqz v1, :cond_0

    .line 790
    :goto_0
    return v2

    .line 707
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 775
    :cond_1
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    :cond_2
    :goto_2
    move v2, v5

    .line 790
    goto :goto_0

    .line 709
    :pswitch_0
    iget-boolean v0, v0, Lcom/android/camera/CropImage;->a:Z

    if-eqz v0, :cond_3

    .line 710
    invoke-direct {p0, p1}, Lcom/android/camera/CropImageView;->a(Landroid/view/MotionEvent;)V

    goto :goto_1

    :cond_3
    move v1, v2

    .line 712
    :goto_3
    iget-object v0, p0, Lcom/android/camera/CropImageView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 713
    iget-object v0, p0, Lcom/android/camera/CropImageView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/m;

    .line 714
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/m;->a(FF)I

    move-result v2

    .line 715
    if-eq v2, v5, :cond_5

    .line 716
    iput v2, p0, Lcom/android/camera/CropImageView;->e:I

    .line 717
    iput-object v0, p0, Lcom/android/camera/CropImageView;->b:Lcom/android/camera/m;

    .line 718
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/camera/CropImageView;->c:F

    .line 719
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/camera/CropImageView;->d:F

    .line 720
    iget-object v1, p0, Lcom/android/camera/CropImageView;->b:Lcom/android/camera/m;

    const/16 v0, 0x20

    if-ne v2, v0, :cond_4

    sget-object v0, Lcom/android/camera/n;->b:Lcom/android/camera/n;

    :goto_4
    invoke-virtual {v1, v0}, Lcom/android/camera/m;->a(Lcom/android/camera/n;)V

    goto :goto_1

    :cond_4
    sget-object v0, Lcom/android/camera/n;->c:Lcom/android/camera/n;

    goto :goto_4

    .line 712
    :cond_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    .line 730
    :pswitch_1
    iget-boolean v1, v0, Lcom/android/camera/CropImage;->a:Z

    if-eqz v1, :cond_9

    move v3, v2

    .line 731
    :goto_5
    iget-object v1, p0, Lcom/android/camera/CropImageView;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v3, v1, :cond_a

    .line 732
    iget-object v1, p0, Lcom/android/camera/CropImageView;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/m;

    .line 733
    invoke-virtual {v1}, Lcom/android/camera/m;->a()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 734
    iput-object v1, v0, Lcom/android/camera/CropImage;->c:Lcom/android/camera/m;

    move v4, v2

    .line 735
    :goto_6
    iget-object v0, p0, Lcom/android/camera/CropImageView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v4, v0, :cond_7

    .line 736
    if-ne v4, v3, :cond_6

    .line 735
    :goto_7
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_6

    .line 739
    :cond_6
    iget-object v0, p0, Lcom/android/camera/CropImageView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/m;

    invoke-virtual {v0, v5}, Lcom/android/camera/m;->b(Z)V

    goto :goto_7

    .line 741
    :cond_7
    invoke-direct {p0, v1}, Lcom/android/camera/CropImageView;->c(Lcom/android/camera/m;)V

    .line 742
    invoke-virtual {p0}, Lcom/android/camera/CropImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/camera/CropImage;

    iput-boolean v2, v0, Lcom/android/camera/CropImage;->a:Z

    move v2, v5

    .line 743
    goto/16 :goto_0

    .line 731
    :cond_8
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_5

    .line 746
    :cond_9
    iget-object v0, p0, Lcom/android/camera/CropImageView;->b:Lcom/android/camera/m;

    if-eqz v0, :cond_a

    .line 747
    iget-object v0, p0, Lcom/android/camera/CropImageView;->b:Lcom/android/camera/m;

    invoke-direct {p0, v0}, Lcom/android/camera/CropImageView;->c(Lcom/android/camera/m;)V

    .line 748
    iget-object v0, p0, Lcom/android/camera/CropImageView;->b:Lcom/android/camera/m;

    sget-object v1, Lcom/android/camera/n;->a:Lcom/android/camera/n;

    invoke-virtual {v0, v1}, Lcom/android/camera/m;->a(Lcom/android/camera/n;)V

    .line 751
    :cond_a
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/CropImageView;->b:Lcom/android/camera/m;

    goto/16 :goto_1

    .line 754
    :pswitch_2
    iget-boolean v0, v0, Lcom/android/camera/CropImage;->a:Z

    if-eqz v0, :cond_b

    .line 755
    invoke-direct {p0, p1}, Lcom/android/camera/CropImageView;->a(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 756
    :cond_b
    iget-object v0, p0, Lcom/android/camera/CropImageView;->b:Lcom/android/camera/m;

    if-eqz v0, :cond_1

    .line 757
    iget-object v0, p0, Lcom/android/camera/CropImageView;->b:Lcom/android/camera/m;

    iget v1, p0, Lcom/android/camera/CropImageView;->e:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget v3, p0, Lcom/android/camera/CropImageView;->c:F

    sub-float/2addr v2, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget v4, p0, Lcom/android/camera/CropImageView;->d:F

    sub-float/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/m;->a(IFF)V

    .line 760
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/camera/CropImageView;->c:F

    .line 761
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/camera/CropImageView;->d:F

    .line 769
    iget-object v0, p0, Lcom/android/camera/CropImageView;->b:Lcom/android/camera/m;

    invoke-direct {p0, v0}, Lcom/android/camera/CropImageView;->b(Lcom/android/camera/m;)V

    goto/16 :goto_1

    .line 777
    :pswitch_3
    invoke-virtual {p0, v5, v5}, Lcom/android/camera/CropImageView;->a(ZZ)V

    goto/16 :goto_2

    .line 784
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/camera/CropImageView;->b()F

    move-result v0

    const/high16 v1, 0x3f80

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    .line 785
    invoke-virtual {p0, v5, v5}, Lcom/android/camera/CropImageView;->a(ZZ)V

    goto/16 :goto_2

    .line 707
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 775
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
