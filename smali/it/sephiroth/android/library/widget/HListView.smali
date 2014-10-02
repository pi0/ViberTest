.class public Lit/sephiroth/android/library/widget/HListView;
.super Lit/sephiroth/android/library/widget/AbsHListView;
.source "SourceFile"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lit/sephiroth/android/library/widget/aq;",
            ">;"
        }
    .end annotation
.end field

.field private aA:Z

.field private aB:Z

.field private aC:Z

.field private aD:Z

.field private aE:Z

.field private aF:Z

.field private final aG:Landroid/graphics/Rect;

.field private aH:Landroid/graphics/Paint;

.field private final aI:Lit/sephiroth/android/library/widget/ap;

.field private aJ:Lit/sephiroth/android/library/widget/ar;

.field private aK:Z

.field au:Landroid/graphics/drawable/Drawable;

.field av:I

.field aw:I

.field ax:Landroid/graphics/drawable/Drawable;

.field ay:Landroid/graphics/drawable/Drawable;

.field private az:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lit/sephiroth/android/library/widget/aq;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 148
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lit/sephiroth/android/library/widget/HListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 149
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 152
    const v0, 0x7f01017f

    invoke-direct {p0, p1, p2, v0}, Lit/sephiroth/android/library/widget/HListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 153
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 156
    invoke-direct {p0, p1, p2, p3}, Lit/sephiroth/android/library/widget/AbsHListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 114
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lit/sephiroth/android/library/widget/HListView;->a:Ljava/util/ArrayList;

    .line 115
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lit/sephiroth/android/library/widget/HListView;->az:Ljava/util/ArrayList;

    .line 130
    iput-boolean v1, p0, Lit/sephiroth/android/library/widget/HListView;->aE:Z

    .line 132
    iput-boolean v2, p0, Lit/sephiroth/android/library/widget/HListView;->aF:Z

    .line 135
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lit/sephiroth/android/library/widget/HListView;->aG:Landroid/graphics/Rect;

    .line 140
    new-instance v4, Lit/sephiroth/android/library/widget/ap;

    invoke-direct {v4, v3}, Lit/sephiroth/android/library/widget/ap;-><init>(Lit/sephiroth/android/library/widget/ao;)V

    iput-object v4, p0, Lit/sephiroth/android/library/widget/HListView;->aI:Lit/sephiroth/android/library/widget/ap;

    .line 162
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    .line 163
    sget-object v5, Lcom/viber/voip/bb;->HListView:[I

    invoke-virtual {v4, p2, v5, p3, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v8

    .line 175
    if-eqz v8, :cond_5

    .line 176
    invoke-virtual {v8, v2}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v7

    .line 177
    invoke-virtual {v8, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 178
    const/4 v3, 0x5

    invoke-virtual {v8, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 179
    const/4 v3, 0x6

    invoke-virtual {v8, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 180
    const/4 v3, 0x2

    invoke-virtual {v8, v3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    .line 181
    const/4 v2, 0x3

    invoke-virtual {v8, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    .line 182
    const/4 v9, 0x4

    invoke-virtual {v8, v9, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 183
    const/4 v9, 0x7

    invoke-virtual {v8, v9, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    .line 184
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 197
    :goto_0
    if-eqz v7, :cond_0

    .line 198
    new-instance v8, Landroid/widget/ArrayAdapter;

    const v9, 0x1090003

    invoke-direct {v8, p1, v9, v7}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {p0, v8}, Lit/sephiroth/android/library/widget/HListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 201
    :cond_0
    if-eqz v6, :cond_1

    .line 203
    invoke-virtual {p0, v6}, Lit/sephiroth/android/library/widget/HListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 206
    :cond_1
    if-eqz v5, :cond_2

    .line 207
    invoke-virtual {p0, v5}, Lit/sephiroth/android/library/widget/HListView;->setOverscrollHeader(Landroid/graphics/drawable/Drawable;)V

    .line 210
    :cond_2
    if-eqz v4, :cond_3

    .line 211
    invoke-virtual {p0, v4}, Lit/sephiroth/android/library/widget/HListView;->setOverscrollFooter(Landroid/graphics/drawable/Drawable;)V

    .line 215
    :cond_3
    if-eqz v3, :cond_4

    .line 216
    invoke-virtual {p0, v3}, Lit/sephiroth/android/library/widget/HListView;->setDividerWidth(I)V

    .line 219
    :cond_4
    iput-boolean v2, p0, Lit/sephiroth/android/library/widget/HListView;->aC:Z

    .line 220
    iput-boolean v1, p0, Lit/sephiroth/android/library/widget/HListView;->aD:Z

    .line 221
    iput v0, p0, Lit/sephiroth/android/library/widget/HListView;->aw:I

    .line 223
    return-void

    :cond_5
    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    move v3, v2

    move v2, v1

    goto :goto_0
.end method

.method private A()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 553
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getScrollX()I

    move-result v1

    iget-object v2, p0, Lit/sephiroth/android/library/widget/HListView;->v:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    .line 554
    iget v2, p0, Lit/sephiroth/android/library/widget/HListView;->W:I

    if-gtz v2, :cond_0

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/HListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    if-le v2, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private B()Z
    .locals 4

    .prologue
    .line 561
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getChildCount()I

    move-result v0

    .line 562
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/HListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    .line 563
    iget v2, p0, Lit/sephiroth/android/library/widget/HListView;->W:I

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x1

    .line 565
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getScrollX()I

    move-result v2

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lit/sephiroth/android/library/widget/HListView;->v:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    .line 567
    iget v3, p0, Lit/sephiroth/android/library/widget/HListView;->ao:I

    add-int/lit8 v3, v3, -0x1

    if-lt v0, v3, :cond_0

    if-ge v1, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(ILandroid/view/View;I)I
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2965
    const/4 v0, 0x0

    .line 2966
    iget-object v1, p0, Lit/sephiroth/android/library/widget/HListView;->aG:Landroid/graphics/Rect;

    invoke-virtual {p2, v1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 2967
    iget-object v1, p0, Lit/sephiroth/android/library/widget/HListView;->aG:Landroid/graphics/Rect;

    invoke-virtual {p0, p2, v1}, Lit/sephiroth/android/library/widget/HListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2968
    const/16 v1, 0x21

    if-ne p1, v1, :cond_1

    .line 2969
    iget-object v1, p0, Lit/sephiroth/android/library/widget/HListView;->aG:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lit/sephiroth/android/library/widget/HListView;->v:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    if-ge v1, v2, :cond_0

    .line 2970
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->v:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lit/sephiroth/android/library/widget/HListView;->aG:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    .line 2971
    if-lez p3, :cond_0

    .line 2972
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/HListView;->getArrowScrollPreviewLength()I

    move-result v1

    add-int/2addr v0, v1

    .line 2984
    :cond_0
    :goto_0
    return v0

    .line 2976
    :cond_1
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getWidth()I

    move-result v1

    iget-object v2, p0, Lit/sephiroth/android/library/widget/HListView;->v:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    .line 2977
    iget-object v2, p0, Lit/sephiroth/android/library/widget/HListView;->aG:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    if-le v2, v1, :cond_0

    .line 2978
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->aG:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    .line 2979
    iget v1, p0, Lit/sephiroth/android/library/widget/HListView;->ao:I

    add-int/lit8 v1, v1, -0x1

    if-ge p3, v1, :cond_0

    .line 2980
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/HListView;->getArrowScrollPreviewLength()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method private a(III)Landroid/view/View;
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 830
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getHorizontalFadingEdgeLength()I

    move-result v0

    .line 831
    iget v1, p0, Lit/sephiroth/android/library/widget/HListView;->am:I

    .line 835
    invoke-direct {p0, p2, v0, v1}, Lit/sephiroth/android/library/widget/HListView;->c(III)I

    move-result v6

    .line 836
    invoke-direct {p0, p3, v0, v1}, Lit/sephiroth/android/library/widget/HListView;->b(III)I

    move-result v7

    .line 838
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->v:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->top:I

    move-object v0, p0

    move v2, p1

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lit/sephiroth/android/library/widget/HListView;->a(IIZIZ)Landroid/view/View;

    move-result-object v0

    .line 841
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v2

    if-le v2, v7, :cond_1

    .line 844
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int/2addr v2, v6

    .line 848
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v3

    sub-int/2addr v3, v7

    .line 849
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 852
    neg-int v2, v2

    invoke-virtual {v0, v2}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 868
    :cond_0
    :goto_0
    invoke-direct {p0, v0, v1}, Lit/sephiroth/android/library/widget/HListView;->a(Landroid/view/View;I)V

    .line 870
    iget-boolean v1, p0, Lit/sephiroth/android/library/widget/HListView;->L:Z

    if-nez v1, :cond_2

    .line 871
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getChildCount()I

    move-result v1

    invoke-direct {p0, v1}, Lit/sephiroth/android/library/widget/HListView;->k(I)V

    .line 876
    :goto_1
    return-object v0

    .line 853
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    if-ge v2, v6, :cond_0

    .line 856
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int v2, v6, v2

    .line 860
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v3

    sub-int v3, v7, v3

    .line 861
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 864
    invoke-virtual {v0, v2}, Landroid/view/View;->offsetLeftAndRight(I)V

    goto :goto_0

    .line 873
    :cond_2
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getChildCount()I

    move-result v1

    invoke-direct {p0, v1}, Lit/sephiroth/android/library/widget/HListView;->l(I)V

    goto :goto_1
.end method

.method private a(IIZIZ)Landroid/view/View;
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1880
    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/HListView;->aj:Z

    if-nez v0, :cond_0

    .line 1882
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->q:Lit/sephiroth/android/library/widget/p;

    invoke-virtual {v0, p1}, Lit/sephiroth/android/library/widget/p;->c(I)Landroid/view/View;

    move-result-object v1

    .line 1883
    if-eqz v1, :cond_0

    .line 1886
    const/4 v7, 0x1

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v7}, Lit/sephiroth/android/library/widget/HListView;->a(Landroid/view/View;IIZIZZ)V

    .line 1898
    :goto_0
    return-object v1

    .line 1893
    :cond_0
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->Q:[Z

    invoke-virtual {p0, p1, v0}, Lit/sephiroth/android/library/widget/HListView;->a(I[Z)Landroid/view/View;

    move-result-object v1

    .line 1896
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->Q:[Z

    const/4 v2, 0x0

    aget-boolean v7, v0, v2

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v7}, Lit/sephiroth/android/library/widget/HListView;->a(Landroid/view/View;IIZIZZ)V

    goto :goto_0
.end method

.method private a(Landroid/view/View;Landroid/view/View;III)Landroid/view/View;
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 959
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getHorizontalFadingEdgeLength()I

    move-result v0

    .line 960
    iget v6, p0, Lit/sephiroth/android/library/widget/HListView;->am:I

    .line 964
    invoke-direct {p0, p4, v0, v6}, Lit/sephiroth/android/library/widget/HListView;->c(III)I

    move-result v7

    .line 965
    invoke-direct {p0, p4, v0, v6}, Lit/sephiroth/android/library/widget/HListView;->b(III)I

    move-result v8

    .line 967
    if-lez p3, :cond_2

    .line 980
    add-int/lit8 v1, v6, -0x1

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    const/4 v3, 0x1

    iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->v:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->top:I

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lit/sephiroth/android/library/widget/HListView;->a(IIZIZ)Landroid/view/View;

    move-result-object v9

    .line 982
    iget v10, p0, Lit/sephiroth/android/library/widget/HListView;->av:I

    .line 985
    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v0

    add-int v2, v0, v10

    const/4 v3, 0x1

    iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->v:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->top:I

    const/4 v5, 0x1

    move-object v0, p0

    move v1, v6

    invoke-direct/range {v0 .. v5}, Lit/sephiroth/android/library/widget/HListView;->a(IIZIZ)Landroid/view/View;

    move-result-object v0

    .line 988
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v1

    if-le v1, v8, :cond_0

    .line 991
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int/2addr v1, v7

    .line 994
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v2

    sub-int/2addr v2, v8

    .line 997
    sub-int v3, p5, p4

    div-int/lit8 v3, v3, 0x2

    .line 998
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 999
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1002
    neg-int v2, v1

    invoke-virtual {v9, v2}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 1004
    neg-int v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 1008
    :cond_0
    iget-boolean v1, p0, Lit/sephiroth/android/library/widget/HListView;->L:Z

    if-nez v1, :cond_1

    .line 1009
    iget v1, p0, Lit/sephiroth/android/library/widget/HListView;->am:I

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int/2addr v2, v10

    invoke-direct {p0, v1, v2}, Lit/sephiroth/android/library/widget/HListView;->h(II)Landroid/view/View;

    .line 1010
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/HListView;->z()V

    .line 1011
    iget v1, p0, Lit/sephiroth/android/library/widget/HListView;->am:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v2

    add-int/2addr v2, v10

    invoke-direct {p0, v1, v2}, Lit/sephiroth/android/library/widget/HListView;->g(II)Landroid/view/View;

    .line 1081
    :goto_0
    return-object v0

    .line 1013
    :cond_1
    iget v1, p0, Lit/sephiroth/android/library/widget/HListView;->am:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v2

    add-int/2addr v2, v10

    invoke-direct {p0, v1, v2}, Lit/sephiroth/android/library/widget/HListView;->g(II)Landroid/view/View;

    .line 1014
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/HListView;->z()V

    .line 1015
    iget v1, p0, Lit/sephiroth/android/library/widget/HListView;->am:I

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int/2addr v2, v10

    invoke-direct {p0, v1, v2}, Lit/sephiroth/android/library/widget/HListView;->h(II)Landroid/view/View;

    goto :goto_0

    .line 1017
    :cond_2
    if-gez p3, :cond_5

    .line 1029
    if-eqz p2, :cond_4

    .line 1031
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v2

    const/4 v3, 0x1

    iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->v:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->top:I

    const/4 v5, 0x1

    move-object v0, p0

    move v1, v6

    invoke-direct/range {v0 .. v5}, Lit/sephiroth/android/library/widget/HListView;->a(IIZIZ)Landroid/view/View;

    move-result-object v0

    .line 1039
    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    if-ge v1, v7, :cond_3

    .line 1041
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int v1, v7, v1

    .line 1044
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v2

    sub-int v2, v8, v2

    .line 1047
    sub-int v3, p5, p4

    div-int/lit8 v3, v3, 0x2

    .line 1048
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1049
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1052
    invoke-virtual {v0, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 1056
    :cond_3
    invoke-direct {p0, v0, v6}, Lit/sephiroth/android/library/widget/HListView;->a(Landroid/view/View;I)V

    goto :goto_0

    .line 1035
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    const/4 v3, 0x0

    iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->v:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->top:I

    const/4 v5, 0x1

    move-object v0, p0

    move v1, v6

    invoke-direct/range {v0 .. v5}, Lit/sephiroth/android/library/widget/HListView;->a(IIZIZ)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    .line 1059
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    .line 1064
    const/4 v3, 0x1

    iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->v:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->top:I

    const/4 v5, 0x1

    move-object v0, p0

    move v1, v6

    invoke-direct/range {v0 .. v5}, Lit/sephiroth/android/library/widget/HListView;->a(IIZIZ)Landroid/view/View;

    move-result-object v0

    .line 1067
    if-ge v2, p4, :cond_6

    .line 1070
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v1

    .line 1071
    add-int/lit8 v2, p4, 0x14

    if-ge v1, v2, :cond_6

    .line 1073
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int v1, p4, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 1078
    :cond_6
    invoke-direct {p0, v0, v6}, Lit/sephiroth/android/library/widget/HListView;->a(Landroid/view/View;I)V

    goto/16 :goto_0
.end method

.method private a(Landroid/view/View;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 805
    iget v0, p0, Lit/sephiroth/android/library/widget/HListView;->av:I

    .line 806
    iget-boolean v1, p0, Lit/sephiroth/android/library/widget/HListView;->L:Z

    if-nez v1, :cond_0

    .line 807
    add-int/lit8 v1, p2, -0x1

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-direct {p0, v1, v2}, Lit/sephiroth/android/library/widget/HListView;->h(II)Landroid/view/View;

    .line 808
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/HListView;->z()V

    .line 809
    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v2

    add-int/2addr v0, v2

    invoke-direct {p0, v1, v0}, Lit/sephiroth/android/library/widget/HListView;->g(II)Landroid/view/View;

    .line 815
    :goto_0
    return-void

    .line 811
    :cond_0
    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v2

    add-int/2addr v2, v0

    invoke-direct {p0, v1, v2}, Lit/sephiroth/android/library/widget/HListView;->g(II)Landroid/view/View;

    .line 812
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/HListView;->z()V

    .line 813
    add-int/lit8 v1, p2, -0x1

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int v0, v2, v0

    invoke-direct {p0, v1, v0}, Lit/sephiroth/android/library/widget/HListView;->h(II)Landroid/view/View;

    goto :goto_0
.end method

.method private a(Landroid/view/View;II)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 1189
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lit/sephiroth/android/library/widget/i;

    .line 1190
    if-nez v0, :cond_0

    .line 1191
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lit/sephiroth/android/library/widget/i;

    .line 1192
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1194
    :cond_0
    iget-object v1, p0, Lit/sephiroth/android/library/widget/HListView;->k:Landroid/widget/ListAdapter;

    invoke-interface {v1, p2}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v1

    iput v1, v0, Lit/sephiroth/android/library/widget/i;->a:I

    .line 1195
    const/4 v1, 0x1

    iput-boolean v1, v0, Lit/sephiroth/android/library/widget/i;->c:Z

    .line 1197
    iget-object v1, p0, Lit/sephiroth/android/library/widget/HListView;->v:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lit/sephiroth/android/library/widget/HListView;->v:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v2

    iget v2, v0, Lit/sephiroth/android/library/widget/i;->height:I

    invoke-static {p3, v1, v2}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 1198
    iget v0, v0, Lit/sephiroth/android/library/widget/i;->width:I

    .line 1200
    if-lez v0, :cond_1

    .line 1201
    const/high16 v2, 0x4000

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1205
    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/view/View;->measure(II)V

    .line 1206
    return-void

    .line 1203
    :cond_1
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_0
.end method

.method private a(Landroid/view/View;IIZ)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2574
    const/4 v0, -0x1

    if-ne p3, v0, :cond_0

    .line 2575
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "newSelectedPosition needs to be valid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2586
    :cond_0
    iget v0, p0, Lit/sephiroth/android/library/widget/HListView;->am:I

    iget v3, p0, Lit/sephiroth/android/library/widget/HListView;->W:I

    sub-int/2addr v0, v3

    .line 2587
    iget v3, p0, Lit/sephiroth/android/library/widget/HListView;->W:I

    sub-int v3, p3, v3

    .line 2589
    const/16 v4, 0x21

    if-ne p2, v4, :cond_3

    .line 2592
    invoke-virtual {p0, v3}, Lit/sephiroth/android/library/widget/HListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    move-object v5, v4

    move v4, v3

    move v3, v0

    move v0, v1

    .line 2602
    :goto_0
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getChildCount()I

    move-result v7

    .line 2605
    if-eqz v5, :cond_1

    .line 2606
    if-nez p4, :cond_4

    if-eqz v0, :cond_4

    move v6, v1

    :goto_1
    invoke-virtual {v5, v6}, Landroid/view/View;->setSelected(Z)V

    .line 2607
    invoke-direct {p0, v5, v4, v7}, Lit/sephiroth/android/library/widget/HListView;->b(Landroid/view/View;II)V

    .line 2611
    :cond_1
    if-eqz p1, :cond_2

    .line 2612
    if-nez p4, :cond_5

    if-nez v0, :cond_5

    :goto_2
    invoke-virtual {p1, v1}, Landroid/view/View;->setSelected(Z)V

    .line 2613
    invoke-direct {p0, p1, v3, v7}, Lit/sephiroth/android/library/widget/HListView;->b(Landroid/view/View;II)V

    .line 2615
    :cond_2
    return-void

    .line 2599
    :cond_3
    invoke-virtual {p0, v3}, Lit/sephiroth/android/library/widget/HListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    move-object v5, p1

    move-object p1, v4

    move v4, v0

    move v0, v2

    goto :goto_0

    :cond_4
    move v6, v2

    .line 2606
    goto :goto_1

    :cond_5
    move v1, v2

    .line 2612
    goto :goto_2
.end method

.method private a(Landroid/view/View;IIZIZZ)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 1921
    if-eqz p6, :cond_8

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->h()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    move v1, v0

    .line 1922
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-eq v1, v0, :cond_9

    const/4 v0, 0x1

    move v2, v0

    .line 1923
    :goto_1
    iget v0, p0, Lit/sephiroth/android/library/widget/HListView;->G:I

    .line 1924
    if-lez v0, :cond_a

    const/4 v3, 0x3

    if-ge v0, v3, :cond_a

    iget v0, p0, Lit/sephiroth/android/library/widget/HListView;->B:I

    if-ne v0, p2, :cond_a

    const/4 v0, 0x1

    move v3, v0

    .line 1925
    :goto_2
    invoke-virtual {p1}, Landroid/view/View;->isPressed()Z

    move-result v0

    if-eq v3, v0, :cond_b

    const/4 v0, 0x1

    move v6, v0

    .line 1926
    :goto_3
    if-eqz p7, :cond_0

    if-nez v2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_0
    const/4 v0, 0x1

    move v4, v0

    .line 1930
    :goto_4
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lit/sephiroth/android/library/widget/i;

    .line 1931
    if-nez v0, :cond_16

    .line 1932
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lit/sephiroth/android/library/widget/i;

    move-object v5, v0

    .line 1934
    :goto_5
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->k:Landroid/widget/ListAdapter;

    invoke-interface {v0, p2}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v0

    iput v0, v5, Lit/sephiroth/android/library/widget/i;->a:I

    .line 1936
    if-eqz p7, :cond_1

    iget-boolean v0, v5, Lit/sephiroth/android/library/widget/i;->c:Z

    if-eqz v0, :cond_2

    :cond_1
    iget-boolean v0, v5, Lit/sephiroth/android/library/widget/i;->b:Z

    if-eqz v0, :cond_e

    iget v0, v5, Lit/sephiroth/android/library/widget/i;->a:I

    const/4 v7, -0x2

    if-ne v0, v7, :cond_e

    .line 1937
    :cond_2
    if-eqz p4, :cond_d

    const/4 v0, -0x1

    :goto_6
    invoke-virtual {p0, p1, v0, v5}, Lit/sephiroth/android/library/widget/HListView;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1946
    :goto_7
    if-eqz v2, :cond_3

    .line 1947
    invoke-virtual {p1, v1}, Landroid/view/View;->setSelected(Z)V

    .line 1950
    :cond_3
    if-eqz v6, :cond_4

    .line 1951
    invoke-virtual {p1, v3}, Landroid/view/View;->setPressed(Z)V

    .line 1954
    :cond_4
    iget v0, p0, Lit/sephiroth/android/library/widget/HListView;->c:I

    if-eqz v0, :cond_5

    iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->g:Landroid/support/v4/util/SparseArrayCompat;

    if-eqz v0, :cond_5

    .line 1955
    instance-of v0, p1, Landroid/widget/Checkable;

    if-eqz v0, :cond_11

    move-object v0, p1

    .line 1956
    check-cast v0, Landroid/widget/Checkable;

    iget-object v1, p0, Lit/sephiroth/android/library/widget/HListView;->g:Landroid/support/v4/util/SparseArrayCompat;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Landroid/support/v4/util/SparseArrayCompat;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 1962
    :cond_5
    :goto_8
    if-eqz v4, :cond_13

    .line 1963
    iget v0, p0, Lit/sephiroth/android/library/widget/HListView;->w:I

    iget-object v1, p0, Lit/sephiroth/android/library/widget/HListView;->v:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lit/sephiroth/android/library/widget/HListView;->v:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v2

    iget v2, v5, Lit/sephiroth/android/library/widget/i;->height:I

    invoke-static {v0, v1, v2}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 1964
    iget v0, v5, Lit/sephiroth/android/library/widget/i;->width:I

    .line 1966
    if-lez v0, :cond_12

    .line 1967
    const/high16 v2, 0x4000

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1971
    :goto_9
    invoke-virtual {p1, v0, v1}, Landroid/view/View;->measure(II)V

    .line 1976
    :goto_a
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 1977
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 1978
    if-eqz p4, :cond_14

    .line 1980
    :goto_b
    if-eqz v4, :cond_15

    .line 1981
    add-int/2addr v1, p5

    .line 1982
    add-int/2addr v0, p3

    .line 1983
    invoke-virtual {p1, p3, p5, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 1989
    :goto_c
    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/HListView;->z:Z

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Landroid/view/View;->isDrawingCacheEnabled()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1990
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 1993
    :cond_6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_7

    .line 1994
    if-eqz p7, :cond_7

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lit/sephiroth/android/library/widget/i;

    iget v0, v0, Lit/sephiroth/android/library/widget/i;->d:I

    if-eq v0, p2, :cond_7

    .line 1995
    invoke-virtual {p1}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 1998
    :cond_7
    return-void

    .line 1921
    :cond_8
    const/4 v0, 0x0

    move v1, v0

    goto/16 :goto_0

    .line 1922
    :cond_9
    const/4 v0, 0x0

    move v2, v0

    goto/16 :goto_1

    .line 1924
    :cond_a
    const/4 v0, 0x0

    move v3, v0

    goto/16 :goto_2

    .line 1925
    :cond_b
    const/4 v0, 0x0

    move v6, v0

    goto/16 :goto_3

    .line 1926
    :cond_c
    const/4 v0, 0x0

    move v4, v0

    goto/16 :goto_4

    .line 1937
    :cond_d
    const/4 v0, 0x0

    goto/16 :goto_6

    .line 1939
    :cond_e
    const/4 v0, 0x0

    iput-boolean v0, v5, Lit/sephiroth/android/library/widget/i;->c:Z

    .line 1940
    iget v0, v5, Lit/sephiroth/android/library/widget/i;->a:I

    const/4 v7, -0x2

    if-ne v0, v7, :cond_f

    .line 1941
    const/4 v0, 0x1

    iput-boolean v0, v5, Lit/sephiroth/android/library/widget/i;->b:Z

    .line 1943
    :cond_f
    if-eqz p4, :cond_10

    const/4 v0, -0x1

    :goto_d
    const/4 v7, 0x1

    invoke-virtual {p0, p1, v0, v5, v7}, Lit/sephiroth/android/library/widget/HListView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    goto/16 :goto_7

    :cond_10
    const/4 v0, 0x0

    goto :goto_d

    .line 1957
    :cond_11
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_5

    .line 1958
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->g:Landroid/support/v4/util/SparseArrayCompat;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Landroid/support/v4/util/SparseArrayCompat;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setActivated(Z)V

    goto/16 :goto_8

    .line 1969
    :cond_12
    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto/16 :goto_9

    .line 1973
    :cond_13
    invoke-virtual {p0, p1}, Lit/sephiroth/android/library/widget/HListView;->cleanupLayoutState(Landroid/view/View;)V

    goto/16 :goto_a

    .line 1978
    :cond_14
    sub-int/2addr p3, v0

    goto/16 :goto_b

    .line 1985
    :cond_15
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    sub-int v0, p3, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 1986
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    sub-int v0, p5, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto/16 :goto_c

    :cond_16
    move-object v5, v0

    goto/16 :goto_5
.end method

.method private a(Ljava/util/ArrayList;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lit/sephiroth/android/library/widget/aq;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 536
    if-eqz p1, :cond_1

    .line 537
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v2

    .line 539
    :goto_0
    if-ge v1, v3, :cond_1

    .line 540
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lit/sephiroth/android/library/widget/aq;

    iget-object v0, v0, Lit/sephiroth/android/library/widget/aq;->a:Landroid/view/View;

    .line 541
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lit/sephiroth/android/library/widget/i;

    .line 542
    if-eqz v0, :cond_0

    .line 543
    iput-boolean v2, v0, Lit/sephiroth/android/library/widget/i;->b:Z

    .line 539
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 547
    :cond_1
    return-void
.end method

.method private a(IILandroid/view/KeyEvent;)Z
    .locals 8
    .parameter
    .parameter
    .parameter
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const/4 v7, 0x2

    const/16 v6, 0x82

    const/16 v5, 0x21

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 2183
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->k:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/HListView;->T:Z

    if-nez v0, :cond_1

    .line 2316
    :cond_0
    :goto_0
    return v1

    .line 2187
    :cond_1
    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/HListView;->aj:Z

    if-eqz v0, :cond_2

    .line 2188
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->e()V

    .line 2191
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v0, v3, :cond_0

    .line 2196
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    .line 2198
    if-eq v4, v2, :cond_3

    .line 2199
    sparse-switch p1, :sswitch_data_0

    :cond_3
    move v0, v1

    .line 2301
    :cond_4
    :goto_1
    if-eqz v0, :cond_1b

    move v1, v2

    .line 2302
    goto :goto_0

    .line 2201
    :sswitch_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2202
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->n()Z

    move-result v0

    .line 2203
    if-nez v0, :cond_4

    move v3, p2

    .line 2204
    :goto_2
    add-int/lit8 p2, v3, -0x1

    if-lez v3, :cond_4

    .line 2205
    invoke-virtual {p0, v5}, Lit/sephiroth/android/library/widget/HListView;->j(I)Z

    move-result v3

    if-eqz v3, :cond_4

    move v0, v2

    move v3, p2

    .line 2206
    goto :goto_2

    .line 2212
    :cond_5
    invoke-virtual {p3, v7}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2213
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->n()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0, v5}, Lit/sephiroth/android/library/widget/HListView;->i(I)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    move v0, v2

    goto :goto_1

    :cond_7
    move v0, v1

    goto :goto_1

    .line 2218
    :sswitch_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2219
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->n()Z

    move-result v0

    .line 2220
    if-nez v0, :cond_4

    move v3, p2

    .line 2221
    :goto_3
    add-int/lit8 p2, v3, -0x1

    if-lez v3, :cond_4

    .line 2222
    invoke-virtual {p0, v6}, Lit/sephiroth/android/library/widget/HListView;->j(I)Z

    move-result v3

    if-eqz v3, :cond_4

    move v0, v2

    move v3, p2

    .line 2223
    goto :goto_3

    .line 2229
    :cond_8
    invoke-virtual {p3, v7}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2230
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->n()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p0, v6}, Lit/sephiroth/android/library/widget/HListView;->i(I)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_9
    move v0, v2

    goto :goto_1

    :cond_a
    move v0, v1

    goto :goto_1

    .line 2235
    :sswitch_2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2236
    const/16 v0, 0x11

    invoke-direct {p0, v0}, Lit/sephiroth/android/library/widget/HListView;->m(I)Z

    move-result v0

    goto :goto_1

    .line 2241
    :sswitch_3
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2242
    const/16 v0, 0x42

    invoke-direct {p0, v0}, Lit/sephiroth/android/library/widget/HListView;->m(I)Z

    move-result v0

    goto :goto_1

    .line 2248
    :sswitch_4
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2249
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->n()Z

    move-result v0

    .line 2250
    if-nez v0, :cond_4

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getChildCount()I

    move-result v3

    if-lez v3, :cond_4

    .line 2252
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->i()V

    move v0, v2

    .line 2253
    goto/16 :goto_1

    .line 2260
    :sswitch_5
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2261
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->n()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {p0, v6}, Lit/sephiroth/android/library/widget/HListView;->h(I)Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_b
    :goto_4
    move v0, v2

    .line 2266
    goto/16 :goto_1

    .line 2262
    :cond_c
    invoke-virtual {p3, v2}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2263
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->n()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {p0, v5}, Lit/sephiroth/android/library/widget/HListView;->h(I)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_4

    .line 2269
    :sswitch_6
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2270
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->n()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {p0, v5}, Lit/sephiroth/android/library/widget/HListView;->h(I)Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_d
    move v0, v2

    goto/16 :goto_1

    :cond_e
    move v0, v1

    goto/16 :goto_1

    .line 2271
    :cond_f
    invoke-virtual {p3, v7}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2272
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->n()Z

    move-result v0

    if-nez v0, :cond_10

    invoke-virtual {p0, v5}, Lit/sephiroth/android/library/widget/HListView;->i(I)Z

    move-result v0

    if-eqz v0, :cond_11

    :cond_10
    move v0, v2

    goto/16 :goto_1

    :cond_11
    move v0, v1

    goto/16 :goto_1

    .line 2277
    :sswitch_7
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 2278
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->n()Z

    move-result v0

    if-nez v0, :cond_12

    invoke-virtual {p0, v6}, Lit/sephiroth/android/library/widget/HListView;->h(I)Z

    move-result v0

    if-eqz v0, :cond_13

    :cond_12
    move v0, v2

    goto/16 :goto_1

    :cond_13
    move v0, v1

    goto/16 :goto_1

    .line 2279
    :cond_14
    invoke-virtual {p3, v7}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2280
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->n()Z

    move-result v0

    if-nez v0, :cond_15

    invoke-virtual {p0, v6}, Lit/sephiroth/android/library/widget/HListView;->i(I)Z

    move-result v0

    if-eqz v0, :cond_16

    :cond_15
    move v0, v2

    goto/16 :goto_1

    :cond_16
    move v0, v1

    goto/16 :goto_1

    .line 2285
    :sswitch_8
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2286
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->n()Z

    move-result v0

    if-nez v0, :cond_17

    invoke-virtual {p0, v5}, Lit/sephiroth/android/library/widget/HListView;->i(I)Z

    move-result v0

    if-eqz v0, :cond_18

    :cond_17
    move v0, v2

    goto/16 :goto_1

    :cond_18
    move v0, v1

    goto/16 :goto_1

    .line 2291
    :sswitch_9
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2292
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->n()Z

    move-result v0

    if-nez v0, :cond_19

    invoke-virtual {p0, v6}, Lit/sephiroth/android/library/widget/HListView;->i(I)Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_19
    move v0, v2

    goto/16 :goto_1

    :cond_1a
    move v0, v1

    goto/16 :goto_1

    .line 2305
    :cond_1b
    packed-switch v4, :pswitch_data_0

    goto/16 :goto_0

    .line 2307
    :pswitch_0
    invoke-super {p0, p1, p3}, Lit/sephiroth/android/library/widget/AbsHListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto/16 :goto_0

    .line 2310
    :pswitch_1
    invoke-super {p0, p1, p3}, Lit/sephiroth/android/library/widget/AbsHListView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto/16 :goto_0

    .line 2313
    :pswitch_2
    invoke-super {p0, p1, p2, p3}, Lit/sephiroth/android/library/widget/AbsHListView;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v1

    goto/16 :goto_0

    .line 2199
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_1
        0x15 -> :sswitch_2
        0x16 -> :sswitch_3
        0x17 -> :sswitch_4
        0x3e -> :sswitch_5
        0x42 -> :sswitch_4
        0x5c -> :sswitch_6
        0x5d -> :sswitch_7
        0x7a -> :sswitch_8
        0x7b -> :sswitch_9
    .end sparse-switch

    .line 2305
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private a(Landroid/view/View;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1844
    iget-object v4, p0, Lit/sephiroth/android/library/widget/HListView;->a:Ljava/util/ArrayList;

    .line 1845
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v3, v2

    .line 1846
    :goto_0
    if-ge v3, v5, :cond_1

    .line 1847
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lit/sephiroth/android/library/widget/aq;

    iget-object v0, v0, Lit/sephiroth/android/library/widget/aq;->a:Landroid/view/View;

    if-ne p1, v0, :cond_0

    move v0, v1

    .line 1858
    :goto_1
    return v0

    .line 1846
    :cond_0
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 1851
    :cond_1
    iget-object v4, p0, Lit/sephiroth/android/library/widget/HListView;->az:Ljava/util/ArrayList;

    .line 1852
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v3, v2

    .line 1853
    :goto_2
    if-ge v3, v5, :cond_3

    .line 1854
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lit/sephiroth/android/library/widget/aq;

    iget-object v0, v0, Lit/sephiroth/android/library/widget/aq;->a:Landroid/view/View;

    if-ne p1, v0, :cond_2

    move v0, v1

    .line 1855
    goto :goto_1

    .line 1853
    :cond_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    :cond_3
    move v0, v2

    .line 1858
    goto :goto_1
.end method

.method private a(Landroid/view/View;Landroid/view/View;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 2945
    if-ne p1, p2, :cond_0

    .line 2950
    :goto_0
    return v1

    .line 2949
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2950
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0, p2}, Lit/sephiroth/android/library/widget/HListView;->a(Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private b(III)I
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 891
    .line 892
    iget v0, p0, Lit/sephiroth/android/library/widget/HListView;->ao:I

    add-int/lit8 v0, v0, -0x1

    if-eq p3, v0, :cond_0

    .line 893
    sub-int/2addr p1, p2

    .line 895
    :cond_0
    return p1
.end method

.method private b(Landroid/view/View;I)Landroid/view/View;
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 3090
    add-int/lit8 v2, p2, -0x1

    .line 3091
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->Q:[Z

    invoke-virtual {p0, v2, v0}, Lit/sephiroth/android/library/widget/HListView;->a(I[Z)Landroid/view/View;

    move-result-object v1

    .line 3092
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    iget v3, p0, Lit/sephiroth/android/library/widget/HListView;->av:I

    sub-int v3, v0, v3

    .line 3093
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->v:Landroid/graphics/Rect;

    iget v5, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->Q:[Z

    aget-boolean v7, v0, v4

    move-object v0, p0

    move v6, v4

    invoke-direct/range {v0 .. v7}, Lit/sephiroth/android/library/widget/HListView;->a(Landroid/view/View;IIZIZZ)V

    .line 3094
    return-object v1
.end method

.method private b(Landroid/view/View;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 2649
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 2650
    if-nez v0, :cond_0

    .line 2651
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 2656
    :cond_0
    iget v1, p0, Lit/sephiroth/android/library/widget/HListView;->w:I

    iget-object v2, p0, Lit/sephiroth/android/library/widget/HListView;->v:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lit/sephiroth/android/library/widget/HListView;->v:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v1, v2, v3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 2657
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 2659
    if-lez v0, :cond_1

    .line 2660
    const/high16 v2, 0x4000

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 2664
    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/view/View;->measure(II)V

    .line 2665
    return-void

    .line 2662
    :cond_1
    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_0
.end method

.method private b(Landroid/view/View;II)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2628
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 2629
    invoke-direct {p0, p1}, Lit/sephiroth/android/library/widget/HListView;->b(Landroid/view/View;)V

    .line 2630
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 2632
    invoke-direct {p0, p1}, Lit/sephiroth/android/library/widget/HListView;->c(Landroid/view/View;)V

    .line 2635
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr v1, v0

    .line 2636
    add-int/lit8 v0, p2, 0x1

    :goto_0
    if-ge v0, p3, :cond_0

    .line 2637
    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/HListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 2636
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2640
    :cond_0
    return-void
.end method

.method private c(III)I
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 911
    .line 912
    if-lez p3, :cond_0

    .line 913
    add-int/2addr p1, p2

    .line 915
    :cond_0
    return p1
.end method

.method private c(Landroid/view/View;I)Landroid/view/View;
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 3098
    add-int/lit8 v2, p2, 0x1

    .line 3099
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->Q:[Z

    invoke-virtual {p0, v2, v0}, Lit/sephiroth/android/library/widget/HListView;->a(I[Z)Landroid/view/View;

    move-result-object v1

    .line 3100
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    iget v3, p0, Lit/sephiroth/android/library/widget/HListView;->av:I

    add-int/2addr v3, v0

    .line 3101
    const/4 v4, 0x1

    iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->v:Landroid/graphics/Rect;

    iget v5, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->Q:[Z

    aget-boolean v7, v0, v6

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lit/sephiroth/android/library/widget/HListView;->a(Landroid/view/View;IIZIZZ)V

    .line 3102
    return-object v1
.end method

.method private c(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 2674
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 2675
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 2677
    iget-object v2, p0, Lit/sephiroth/android/library/widget/HListView;->v:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    .line 2678
    add-int/2addr v1, v2

    .line 2680
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v3

    .line 2681
    add-int/2addr v0, v3

    .line 2683
    invoke-virtual {p1, v3, v2, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 2684
    return-void
.end method

.method private d(Landroid/view/View;)I
    .locals 3
    .parameter

    .prologue
    .line 2930
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getChildCount()I

    move-result v1

    .line 2931
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 2932
    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/HListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2933
    invoke-direct {p0, p1, v2}, Lit/sephiroth/android/library/widget/HListView;->a(Landroid/view/View;Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2934
    iget v1, p0, Lit/sephiroth/android/library/widget/HListView;->W:I

    add-int/2addr v0, v1

    return v0

    .line 2931
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2937
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "newFocus is not a child of any of the children of the list!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private g(I)Landroid/view/View;
    .locals 2
    .parameter

    .prologue
    .line 754
    iget v0, p0, Lit/sephiroth/android/library/widget/HListView;->W:I

    iget v1, p0, Lit/sephiroth/android/library/widget/HListView;->am:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lit/sephiroth/android/library/widget/HListView;->W:I

    .line 755
    iget v0, p0, Lit/sephiroth/android/library/widget/HListView;->W:I

    iget v1, p0, Lit/sephiroth/android/library/widget/HListView;->ao:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lit/sephiroth/android/library/widget/HListView;->W:I

    .line 756
    iget v0, p0, Lit/sephiroth/android/library/widget/HListView;->W:I

    if-gez v0, :cond_0

    .line 757
    const/4 v0, 0x0

    iput v0, p0, Lit/sephiroth/android/library/widget/HListView;->W:I

    .line 759
    :cond_0
    iget v0, p0, Lit/sephiroth/android/library/widget/HListView;->W:I

    invoke-direct {p0, v0, p1}, Lit/sephiroth/android/library/widget/HListView;->g(II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private g(II)Landroid/view/View;
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 687
    const/4 v6, 0x0

    .line 689
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getRight()I

    move-result v0

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getLeft()I

    move-result v1

    sub-int v7, v0, v1

    move v2, p2

    move v1, p1

    .line 694
    :goto_0
    if-ge v2, v7, :cond_1

    iget v0, p0, Lit/sephiroth/android/library/widget/HListView;->ao:I

    if-ge v1, v0, :cond_1

    .line 696
    iget v0, p0, Lit/sephiroth/android/library/widget/HListView;->am:I

    if-ne v1, v0, :cond_0

    move v5, v3

    .line 697
    :goto_1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->v:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->top:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lit/sephiroth/android/library/widget/HListView;->a(IIZIZ)Landroid/view/View;

    move-result-object v0

    .line 699
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v2

    iget v4, p0, Lit/sephiroth/android/library/widget/HListView;->av:I

    add-int/2addr v2, v4

    .line 700
    if-eqz v5, :cond_2

    .line 703
    :goto_2
    add-int/lit8 v1, v1, 0x1

    move-object v6, v0

    .line 704
    goto :goto_0

    .line 696
    :cond_0
    const/4 v5, 0x0

    goto :goto_1

    .line 706
    :cond_1
    iget v0, p0, Lit/sephiroth/android/library/widget/HListView;->W:I

    iget v1, p0, Lit/sephiroth/android/library/widget/HListView;->W:I

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getChildCount()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Lit/sephiroth/android/library/widget/HListView;->e(II)V

    .line 707
    return-object v6

    :cond_2
    move-object v0, v6

    goto :goto_2
.end method

.method private getArrowScrollPreviewLength()I
    .locals 2

    .prologue
    .line 2690
    const/4 v0, 0x2

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getHorizontalFadingEdgeLength()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private h(Landroid/view/View;)I
    .locals 4
    .parameter

    .prologue
    .line 2995
    const/4 v0, 0x0

    .line 2996
    iget-object v1, p0, Lit/sephiroth/android/library/widget/HListView;->aG:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 2997
    iget-object v1, p0, Lit/sephiroth/android/library/widget/HListView;->aG:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v1}, Lit/sephiroth/android/library/widget/HListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2998
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getRight()I

    move-result v1

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getLeft()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lit/sephiroth/android/library/widget/HListView;->v:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    .line 2999
    iget-object v2, p0, Lit/sephiroth/android/library/widget/HListView;->aG:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lit/sephiroth/android/library/widget/HListView;->v:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    if-ge v2, v3, :cond_1

    .line 3000
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->v:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lit/sephiroth/android/library/widget/HListView;->aG:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    .line 3004
    :cond_0
    :goto_0
    return v0

    .line 3001
    :cond_1
    iget-object v2, p0, Lit/sephiroth/android/library/widget/HListView;->aG:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    if-le v2, v1, :cond_0

    .line 3002
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->aG:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method private h(II)Landroid/view/View;
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 722
    const/4 v6, 0x0

    move v2, p2

    move v1, p1

    .line 729
    :goto_0
    if-le v2, v3, :cond_1

    if-ltz v1, :cond_1

    .line 731
    iget v0, p0, Lit/sephiroth/android/library/widget/HListView;->am:I

    if-ne v1, v0, :cond_0

    const/4 v5, 0x1

    .line 732
    :goto_1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->v:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->top:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lit/sephiroth/android/library/widget/HListView;->a(IIZIZ)Landroid/view/View;

    move-result-object v0

    .line 733
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    iget v4, p0, Lit/sephiroth/android/library/widget/HListView;->av:I

    sub-int/2addr v2, v4

    .line 734
    if-eqz v5, :cond_2

    .line 737
    :goto_2
    add-int/lit8 v1, v1, -0x1

    move-object v6, v0

    .line 738
    goto :goto_0

    :cond_0
    move v5, v3

    .line 731
    goto :goto_1

    .line 740
    :cond_1
    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lit/sephiroth/android/library/widget/HListView;->W:I

    .line 741
    iget v0, p0, Lit/sephiroth/android/library/widget/HListView;->W:I

    iget v1, p0, Lit/sephiroth/android/library/widget/HListView;->W:I

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getChildCount()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Lit/sephiroth/android/library/widget/HListView;->e(II)V

    .line 742
    return-object v6

    :cond_2
    move-object v0, v6

    goto :goto_2
.end method

.method private i(II)Landroid/view/View;
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 773
    sub-int v6, p2, p1

    .line 775
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->m()I

    move-result v1

    .line 777
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->v:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->top:I

    move-object v0, p0

    move v2, p1

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lit/sephiroth/android/library/widget/HListView;->a(IIZIZ)Landroid/view/View;

    move-result-object v0

    .line 778
    iput v1, p0, Lit/sephiroth/android/library/widget/HListView;->W:I

    .line 780
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 781
    if-gt v2, v6, :cond_0

    .line 782
    sub-int v2, v6, v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v0, v2}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 785
    :cond_0
    invoke-direct {p0, v0, v1}, Lit/sephiroth/android/library/widget/HListView;->a(Landroid/view/View;I)V

    .line 787
    iget-boolean v1, p0, Lit/sephiroth/android/library/widget/HListView;->L:Z

    if-nez v1, :cond_1

    .line 788
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getChildCount()I

    move-result v1

    invoke-direct {p0, v1}, Lit/sephiroth/android/library/widget/HListView;->k(I)V

    .line 793
    :goto_0
    return-object v0

    .line 790
    :cond_1
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getChildCount()I

    move-result v1

    invoke-direct {p0, v1}, Lit/sephiroth/android/library/widget/HListView;->l(I)V

    goto :goto_0
.end method

.method private j(II)Landroid/view/View;
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 1393
    iget v0, p0, Lit/sephiroth/android/library/widget/HListView;->am:I

    if-ne p1, v0, :cond_1

    move v5, v3

    .line 1394
    :goto_0
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->v:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->top:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lit/sephiroth/android/library/widget/HListView;->a(IIZIZ)Landroid/view/View;

    move-result-object v0

    .line 1396
    iput p1, p0, Lit/sephiroth/android/library/widget/HListView;->W:I

    .line 1401
    iget v3, p0, Lit/sephiroth/android/library/widget/HListView;->av:I

    .line 1402
    iget-boolean v1, p0, Lit/sephiroth/android/library/widget/HListView;->L:Z

    if-nez v1, :cond_2

    .line 1403
    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-direct {p0, v1, v2}, Lit/sephiroth/android/library/widget/HListView;->h(II)Landroid/view/View;

    move-result-object v1

    .line 1405
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/HListView;->z()V

    .line 1406
    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {p0, v2, v3}, Lit/sephiroth/android/library/widget/HListView;->g(II)Landroid/view/View;

    move-result-object v2

    .line 1407
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getChildCount()I

    move-result v3

    .line 1408
    if-lez v3, :cond_0

    .line 1409
    invoke-direct {p0, v3}, Lit/sephiroth/android/library/widget/HListView;->k(I)V

    .line 1422
    :cond_0
    :goto_1
    if-eqz v5, :cond_3

    .line 1427
    :goto_2
    return-object v0

    .line 1393
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .line 1412
    :cond_2
    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v2

    add-int/2addr v2, v3

    invoke-direct {p0, v1, v2}, Lit/sephiroth/android/library/widget/HListView;->g(II)Landroid/view/View;

    move-result-object v2

    .line 1414
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/HListView;->z()V

    .line 1415
    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v4

    sub-int v3, v4, v3

    invoke-direct {p0, v1, v3}, Lit/sephiroth/android/library/widget/HListView;->h(II)Landroid/view/View;

    move-result-object v1

    .line 1416
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getChildCount()I

    move-result v3

    .line 1417
    if-lez v3, :cond_0

    .line 1418
    invoke-direct {p0, v3}, Lit/sephiroth/android/library/widget/HListView;->l(I)V

    goto :goto_1

    .line 1424
    :cond_3
    if-eqz v1, :cond_4

    move-object v0, v1

    .line 1425
    goto :goto_2

    :cond_4
    move-object v0, v2

    .line 1427
    goto :goto_2
.end method

.method private k(II)I
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, -0x1

    const/4 v2, 0x0

    .line 2704
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getWidth()I

    move-result v0

    iget-object v1, p0, Lit/sephiroth/android/library/widget/HListView;->v:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int v1, v0, v1

    .line 2705
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->v:Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Rect;->left:I

    .line 2707
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getChildCount()I

    move-result v4

    .line 2709
    const/16 v0, 0x82

    if-ne p1, v0, :cond_5

    .line 2710
    add-int/lit8 v0, v4, -0x1

    .line 2711
    if-eq p2, v6, :cond_0

    .line 2712
    iget v0, p0, Lit/sephiroth/android/library/widget/HListView;->W:I

    sub-int v0, p2, v0

    .line 2715
    :cond_0
    iget v3, p0, Lit/sephiroth/android/library/widget/HListView;->W:I

    add-int/2addr v3, v0

    .line 2716
    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/HListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 2719
    iget v0, p0, Lit/sephiroth/android/library/widget/HListView;->ao:I

    add-int/lit8 v0, v0, -0x1

    if-ge v3, v0, :cond_a

    .line 2720
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/HListView;->getArrowScrollPreviewLength()I

    move-result v0

    sub-int v0, v1, v0

    .line 2723
    :goto_0
    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v3

    if-gt v3, v0, :cond_2

    .line 2771
    :cond_1
    :goto_1
    return v2

    .line 2728
    :cond_2
    if-eq p2, v6, :cond_3

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int v3, v0, v3

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getMaxScrollAmount()I

    move-result v6

    if-ge v3, v6, :cond_1

    .line 2734
    :cond_3
    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v2

    sub-int v0, v2, v0

    .line 2736
    iget v2, p0, Lit/sephiroth/android/library/widget/HListView;->W:I

    add-int/2addr v2, v4

    iget v3, p0, Lit/sephiroth/android/library/widget/HListView;->ao:I

    if-ne v2, v3, :cond_4

    .line 2738
    add-int/lit8 v2, v4, -0x1

    invoke-virtual {p0, v2}, Lit/sephiroth/android/library/widget/HListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    sub-int v1, v2, v1

    .line 2739
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2742
    :cond_4
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getMaxScrollAmount()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_1

    .line 2745
    :cond_5
    if-eq p2, v6, :cond_9

    .line 2746
    iget v0, p0, Lit/sephiroth/android/library/widget/HListView;->W:I

    sub-int v0, p2, v0

    .line 2748
    :goto_2
    iget v1, p0, Lit/sephiroth/android/library/widget/HListView;->W:I

    add-int/2addr v1, v0

    .line 2749
    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/HListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2751
    if-lez v1, :cond_8

    .line 2752
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/HListView;->getArrowScrollPreviewLength()I

    move-result v0

    add-int/2addr v0, v3

    .line 2754
    :goto_3
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v1

    if-ge v1, v0, :cond_1

    .line 2759
    if-eq p2, v6, :cond_6

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getMaxScrollAmount()I

    move-result v5

    if-ge v1, v5, :cond_1

    .line 2765
    :cond_6
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int/2addr v0, v1

    .line 2766
    iget v1, p0, Lit/sephiroth/android/library/widget/HListView;->W:I

    if-nez v1, :cond_7

    .line 2768
    invoke-virtual {p0, v2}, Lit/sephiroth/android/library/widget/HListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int v1, v3, v1

    .line 2769
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2771
    :cond_7
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getMaxScrollAmount()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_1

    :cond_8
    move v0, v3

    goto :goto_3

    :cond_9
    move v0, v2

    goto :goto_2

    :cond_a
    move v0, v1

    goto/16 :goto_0
.end method

.method private k(I)V
    .locals 4
    .parameter

    .prologue
    .line 1441
    iget v0, p0, Lit/sephiroth/android/library/widget/HListView;->W:I

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    .line 1442
    iget v1, p0, Lit/sephiroth/android/library/widget/HListView;->ao:I

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_2

    if-lez p1, :cond_2

    .line 1445
    add-int/lit8 v0, p1, -0x1

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/HListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1448
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    .line 1451
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getRight()I

    move-result v1

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getLeft()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lit/sephiroth/android/library/widget/HListView;->v:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    .line 1455
    sub-int v0, v1, v0

    .line 1456
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/HListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1457
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    .line 1461
    if-lez v0, :cond_2

    iget v3, p0, Lit/sephiroth/android/library/widget/HListView;->W:I

    if-gtz v3, :cond_0

    iget-object v3, p0, Lit/sephiroth/android/library/widget/HListView;->v:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    if-ge v2, v3, :cond_2

    .line 1462
    :cond_0
    iget v3, p0, Lit/sephiroth/android/library/widget/HListView;->W:I

    if-nez v3, :cond_1

    .line 1464
    iget-object v3, p0, Lit/sephiroth/android/library/widget/HListView;->v:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int v2, v3, v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1467
    :cond_1
    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/HListView;->c(I)V

    .line 1468
    iget v0, p0, Lit/sephiroth/android/library/widget/HListView;->W:I

    if-lez v0, :cond_2

    .line 1471
    iget v0, p0, Lit/sephiroth/android/library/widget/HListView;->W:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    iget v2, p0, Lit/sephiroth/android/library/widget/HListView;->av:I

    sub-int/2addr v1, v2

    invoke-direct {p0, v0, v1}, Lit/sephiroth/android/library/widget/HListView;->h(II)Landroid/view/View;

    .line 1473
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/HListView;->z()V

    .line 1478
    :cond_2
    return-void
.end method

.method private l(I)V
    .locals 6
    .parameter

    .prologue
    .line 1490
    iget v0, p0, Lit/sephiroth/android/library/widget/HListView;->W:I

    if-nez v0, :cond_2

    if-lez p1, :cond_2

    .line 1493
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/HListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1496
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    .line 1499
    iget-object v1, p0, Lit/sephiroth/android/library/widget/HListView;->v:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    .line 1502
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getRight()I

    move-result v2

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getLeft()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lit/sephiroth/android/library/widget/HListView;->v:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    .line 1506
    sub-int/2addr v0, v1

    .line 1507
    add-int/lit8 v1, p1, -0x1

    invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/HListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1508
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v3

    .line 1509
    iget v4, p0, Lit/sephiroth/android/library/widget/HListView;->W:I

    add-int/2addr v4, p1

    add-int/lit8 v4, v4, -0x1

    .line 1513
    if-lez v0, :cond_2

    .line 1514
    iget v5, p0, Lit/sephiroth/android/library/widget/HListView;->ao:I

    add-int/lit8 v5, v5, -0x1

    if-lt v4, v5, :cond_0

    if-le v3, v2, :cond_3

    .line 1515
    :cond_0
    iget v5, p0, Lit/sephiroth/android/library/widget/HListView;->ao:I

    add-int/lit8 v5, v5, -0x1

    if-ne v4, v5, :cond_1

    .line 1517
    sub-int v2, v3, v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1520
    :cond_1
    neg-int v0, v0

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/HListView;->c(I)V

    .line 1521
    iget v0, p0, Lit/sephiroth/android/library/widget/HListView;->ao:I

    add-int/lit8 v0, v0, -0x1

    if-ge v4, v0, :cond_2

    .line 1524
    add-int/lit8 v0, v4, 0x1

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    iget v2, p0, Lit/sephiroth/android/library/widget/HListView;->av:I

    add-int/2addr v1, v2

    invoke-direct {p0, v0, v1}, Lit/sephiroth/android/library/widget/HListView;->g(II)Landroid/view/View;

    .line 1526
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/HListView;->z()V

    .line 1533
    :cond_2
    :goto_0
    return-void

    .line 1528
    :cond_3
    iget v0, p0, Lit/sephiroth/android/library/widget/HListView;->ao:I

    add-int/lit8 v0, v0, -0x1

    if-ne v4, v0, :cond_2

    .line 1529
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/HListView;->z()V

    goto :goto_0
.end method

.method private m(I)Z
    .locals 3
    .parameter

    .prologue
    .line 2415
    const/16 v0, 0x11

    if-eq p1, v0, :cond_0

    const/16 v0, 0x42

    if-eq p1, v0, :cond_0

    .line 2416
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "direction must be one of {View.FOCUS_LEFT, View.FOCUS_RIGHT}"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2420
    :cond_0
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getChildCount()I

    move-result v0

    .line 2421
    iget-boolean v1, p0, Lit/sephiroth/android/library/widget/HListView;->aF:Z

    if-eqz v1, :cond_2

    if-lez v0, :cond_2

    iget v0, p0, Lit/sephiroth/android/library/widget/HListView;->am:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 2422
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 2423
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_2

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    .line 2426
    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v1

    .line 2427
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v2

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v2, v0, v1, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 2429
    if-eqz v0, :cond_1

    .line 2431
    iget-object v2, p0, Lit/sephiroth/android/library/widget/HListView;->aG:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 2432
    iget-object v2, p0, Lit/sephiroth/android/library/widget/HListView;->aG:Landroid/graphics/Rect;

    invoke-virtual {p0, v1, v2}, Lit/sephiroth/android/library/widget/HListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2433
    iget-object v2, p0, Lit/sephiroth/android/library/widget/HListView;->aG:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v2}, Lit/sephiroth/android/library/widget/HListView;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2434
    iget-object v2, p0, Lit/sephiroth/android/library/widget/HListView;->aG:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2435
    const/4 v0, 0x1

    .line 2449
    :goto_0
    return v0

    .line 2442
    :cond_1
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v2

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getRootView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v2, v0, v1, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 2444
    if-eqz v0, :cond_2

    .line 2445
    invoke-direct {p0, v0, p0}, Lit/sephiroth/android/library/widget/HListView;->a(Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    goto :goto_0

    .line 2449
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private n(I)Z
    .locals 11
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v9, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2482
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_1

    .line 2554
    :cond_0
    :goto_0
    return v2

    .line 2486
    :cond_1
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getSelectedView()Landroid/view/View;

    move-result-object v6

    .line 2487
    iget v5, p0, Lit/sephiroth/android/library/widget/HListView;->am:I

    .line 2489
    invoke-direct {p0, p1}, Lit/sephiroth/android/library/widget/HListView;->o(I)I

    move-result v7

    .line 2490
    invoke-direct {p0, p1, v7}, Lit/sephiroth/android/library/widget/HListView;->k(II)I

    move-result v3

    .line 2493
    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/HListView;->aF:Z

    if-eqz v0, :cond_9

    invoke-direct {p0, p1}, Lit/sephiroth/android/library/widget/HListView;->p(I)Lit/sephiroth/android/library/widget/ap;

    move-result-object v0

    move-object v8, v0

    .line 2494
    :goto_1
    if-eqz v8, :cond_2

    .line 2495
    invoke-virtual {v8}, Lit/sephiroth/android/library/widget/ap;->a()I

    move-result v7

    .line 2496
    invoke-virtual {v8}, Lit/sephiroth/android/library/widget/ap;->b()I

    move-result v3

    .line 2499
    :cond_2
    if-eqz v8, :cond_a

    move v0, v1

    .line 2500
    :goto_2
    if-eq v7, v9, :cond_e

    .line 2501
    if-eqz v8, :cond_b

    move v0, v1

    :goto_3
    invoke-direct {p0, v6, p1, v7, v0}, Lit/sephiroth/android/library/widget/HListView;->a(Landroid/view/View;IIZ)V

    .line 2502
    invoke-virtual {p0, v7}, Lit/sephiroth/android/library/widget/HListView;->setSelectedPositionInt(I)V

    .line 2503
    invoke-virtual {p0, v7}, Lit/sephiroth/android/library/widget/HListView;->setNextSelectedPositionInt(I)V

    .line 2504
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getSelectedView()Landroid/view/View;

    move-result-object v5

    .line 2506
    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/HListView;->aF:Z

    if-eqz v0, :cond_3

    if-nez v8, :cond_3

    .line 2509
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    .line 2510
    if-eqz v0, :cond_3

    .line 2511
    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 2515
    :cond_3
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->v()V

    move v0, v1

    move v6, v7

    .line 2518
    :goto_4
    if-lez v3, :cond_4

    .line 2519
    const/16 v0, 0x21

    if-ne p1, v0, :cond_c

    move v0, v3

    :goto_5
    invoke-direct {p0, v0}, Lit/sephiroth/android/library/widget/HListView;->q(I)V

    move v0, v1

    .line 2525
    :cond_4
    iget-boolean v3, p0, Lit/sephiroth/android/library/widget/HListView;->aF:Z

    if-eqz v3, :cond_6

    if-nez v8, :cond_6

    if-eqz v5, :cond_6

    invoke-virtual {v5}, Landroid/view/View;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2526
    invoke-virtual {v5}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v3

    .line 2527
    invoke-direct {p0, v3, p0}, Lit/sephiroth/android/library/widget/HListView;->a(Landroid/view/View;Landroid/view/View;)Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-direct {p0, v3}, Lit/sephiroth/android/library/widget/HListView;->h(Landroid/view/View;)I

    move-result v8

    if-lez v8, :cond_6

    .line 2528
    :cond_5
    invoke-virtual {v3}, Landroid/view/View;->clearFocus()V

    .line 2533
    :cond_6
    if-ne v7, v9, :cond_d

    if-eqz v5, :cond_d

    invoke-direct {p0, v5, p0}, Lit/sephiroth/android/library/widget/HListView;->a(Landroid/view/View;Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 2535
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->l()V

    .line 2539
    iput v9, p0, Lit/sephiroth/android/library/widget/HListView;->N:I

    move-object v3, v4

    .line 2542
    :goto_6
    if-eqz v0, :cond_0

    .line 2543
    if-eqz v3, :cond_7

    .line 2544
    invoke-virtual {p0, v6, v3}, Lit/sephiroth/android/library/widget/HListView;->a(ILandroid/view/View;)V

    .line 2545
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v0

    iput v0, p0, Lit/sephiroth/android/library/widget/HListView;->K:I

    .line 2547
    :cond_7
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->awakenScrollBars()Z

    move-result v0

    if-nez v0, :cond_8

    .line 2548
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->invalidate()V

    .line 2550
    :cond_8
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->b()V

    move v2, v1

    .line 2551
    goto/16 :goto_0

    :cond_9
    move-object v8, v4

    .line 2493
    goto/16 :goto_1

    :cond_a
    move v0, v2

    .line 2499
    goto/16 :goto_2

    :cond_b
    move v0, v2

    .line 2501
    goto :goto_3

    .line 2519
    :cond_c
    neg-int v0, v3

    goto :goto_5

    :cond_d
    move-object v3, v5

    goto :goto_6

    :cond_e
    move v10, v5

    move-object v5, v6

    move v6, v10

    goto :goto_4
.end method

.method private o(I)I
    .locals 6
    .parameter

    .prologue
    const/4 v3, -0x1

    .line 2808
    iget v1, p0, Lit/sephiroth/android/library/widget/HListView;->W:I

    .line 2809
    const/16 v0, 0x82

    if-ne p1, v0, :cond_5

    .line 2810
    iget v0, p0, Lit/sephiroth/android/library/widget/HListView;->am:I

    if-eq v0, v3, :cond_1

    iget v0, p0, Lit/sephiroth/android/library/widget/HListView;->am:I

    add-int/lit8 v0, v0, 0x1

    .line 2813
    :goto_0
    iget-object v2, p0, Lit/sephiroth/android/library/widget/HListView;->k:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    if-lt v0, v2, :cond_2

    move v0, v3

    .line 2848
    :cond_0
    :goto_1
    return v0

    :cond_1
    move v0, v1

    .line 2810
    goto :goto_0

    .line 2816
    :cond_2
    if-ge v0, v1, :cond_3

    move v0, v1

    .line 2820
    :cond_3
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getLastVisiblePosition()I

    move-result v2

    .line 2821
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    .line 2822
    :goto_2
    if-gt v0, v2, :cond_a

    .line 2823
    invoke-interface {v4, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_4

    sub-int v5, v0, v1

    invoke-virtual {p0, v5}, Lit/sephiroth/android/library/widget/HListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_0

    .line 2822
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2829
    :cond_5
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getChildCount()I

    move-result v0

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    .line 2830
    iget v2, p0, Lit/sephiroth/android/library/widget/HListView;->am:I

    if-eq v2, v3, :cond_7

    iget v2, p0, Lit/sephiroth/android/library/widget/HListView;->am:I

    add-int/lit8 v2, v2, -0x1

    .line 2833
    :goto_3
    if-ltz v2, :cond_6

    iget-object v4, p0, Lit/sephiroth/android/library/widget/HListView;->k:Landroid/widget/ListAdapter;

    invoke-interface {v4}, Landroid/widget/ListAdapter;->getCount()I

    move-result v4

    if-lt v2, v4, :cond_8

    :cond_6
    move v0, v3

    .line 2834
    goto :goto_1

    .line 2830
    :cond_7
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getChildCount()I

    move-result v2

    add-int/2addr v2, v1

    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    .line 2836
    :cond_8
    if-le v2, v0, :cond_b

    .line 2840
    :goto_4
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    .line 2841
    :goto_5
    if-lt v0, v1, :cond_a

    .line 2842
    invoke-interface {v2, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_9

    sub-int v4, v0, v1

    invoke-virtual {p0, v4}, Lit/sephiroth/android/library/widget/HListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_0

    .line 2841
    :cond_9
    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    :cond_a
    move v0, v3

    .line 2848
    goto :goto_1

    :cond_b
    move v0, v2

    goto :goto_4
.end method

.method private p(I)Lit/sephiroth/android/library/widget/ap;
    .locals 8
    .parameter

    .prologue
    const/4 v2, 0x0

    const/16 v7, 0x82

    const/4 v0, 0x1

    const/4 v6, -0x1

    const/4 v1, 0x0

    .line 2860
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getSelectedView()Landroid/view/View;

    move-result-object v3

    .line 2862
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/view/View;->hasFocus()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2863
    invoke-virtual {v3}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 2864
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v1

    invoke-virtual {v1, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 2889
    :goto_0
    if-eqz v0, :cond_c

    .line 2890
    invoke-direct {p0, v0}, Lit/sephiroth/android/library/widget/HListView;->d(Landroid/view/View;)I

    move-result v1

    .line 2894
    iget v3, p0, Lit/sephiroth/android/library/widget/HListView;->am:I

    if-eq v3, v6, :cond_a

    iget v3, p0, Lit/sephiroth/android/library/widget/HListView;->am:I

    if-eq v1, v3, :cond_a

    .line 2895
    invoke-direct {p0, p1}, Lit/sephiroth/android/library/widget/HListView;->o(I)I

    move-result v3

    .line 2896
    if-eq v3, v6, :cond_a

    if-ne p1, v7, :cond_0

    if-lt v3, v1, :cond_1

    :cond_0
    const/16 v4, 0x21

    if-ne p1, v4, :cond_a

    if-le v3, v1, :cond_a

    :cond_1
    move-object v0, v2

    .line 2921
    :goto_1
    return-object v0

    .line 2866
    :cond_2
    if-ne p1, v7, :cond_6

    .line 2867
    iget v4, p0, Lit/sephiroth/android/library/widget/HListView;->W:I

    if-lez v4, :cond_4

    .line 2868
    :goto_2
    iget-object v4, p0, Lit/sephiroth/android/library/widget/HListView;->v:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lit/sephiroth/android/library/widget/HListView;->getArrowScrollPreviewLength()I

    move-result v0

    :goto_3
    add-int/2addr v0, v4

    .line 2870
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v4

    if-le v4, v0, :cond_3

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v0

    .line 2874
    :cond_3
    iget-object v3, p0, Lit/sephiroth/android/library/widget/HListView;->aG:Landroid/graphics/Rect;

    invoke-virtual {v3, v0, v1, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 2886
    :goto_4
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

    iget-object v1, p0, Lit/sephiroth/android/library/widget/HListView;->aG:Landroid/graphics/Rect;

    invoke-virtual {v0, p0, v1, p1}, Landroid/view/FocusFinder;->findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_4
    move v0, v1

    .line 2867
    goto :goto_2

    :cond_5
    move v0, v1

    .line 2868
    goto :goto_3

    .line 2876
    :cond_6
    iget v4, p0, Lit/sephiroth/android/library/widget/HListView;->W:I

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getChildCount()I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x1

    iget v5, p0, Lit/sephiroth/android/library/widget/HListView;->ao:I

    if-ge v4, v5, :cond_8

    .line 2878
    :goto_5
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getWidth()I

    move-result v4

    iget-object v5, p0, Lit/sephiroth/android/library/widget/HListView;->v:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v5

    if-eqz v0, :cond_9

    invoke-direct {p0}, Lit/sephiroth/android/library/widget/HListView;->getArrowScrollPreviewLength()I

    move-result v0

    :goto_6
    sub-int v0, v4, v0

    .line 2880
    if-eqz v3, :cond_7

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v4

    if-ge v4, v0, :cond_7

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v0

    .line 2884
    :cond_7
    iget-object v3, p0, Lit/sephiroth/android/library/widget/HListView;->aG:Landroid/graphics/Rect;

    invoke-virtual {v3, v0, v1, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_4

    :cond_8
    move v0, v1

    .line 2876
    goto :goto_5

    :cond_9
    move v0, v1

    .line 2878
    goto :goto_6

    .line 2903
    :cond_a
    invoke-direct {p0, p1, v0, v1}, Lit/sephiroth/android/library/widget/HListView;->a(ILandroid/view/View;I)I

    move-result v3

    .line 2905
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getMaxScrollAmount()I

    move-result v4

    .line 2906
    if-ge v3, v4, :cond_b

    .line 2908
    invoke-virtual {v0, p1}, Landroid/view/View;->requestFocus(I)Z

    .line 2909
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->aI:Lit/sephiroth/android/library/widget/ap;

    invoke-virtual {v0, v1, v3}, Lit/sephiroth/android/library/widget/ap;->a(II)V

    .line 2910
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->aI:Lit/sephiroth/android/library/widget/ap;

    goto :goto_1

    .line 2911
    :cond_b
    invoke-direct {p0, v0}, Lit/sephiroth/android/library/widget/HListView;->h(Landroid/view/View;)I

    move-result v3

    if-ge v3, v4, :cond_c

    .line 2916
    invoke-virtual {v0, p1}, Landroid/view/View;->requestFocus(I)Z

    .line 2917
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->aI:Lit/sephiroth/android/library/widget/ap;

    invoke-virtual {v0, v1, v4}, Lit/sephiroth/android/library/widget/ap;->a(II)V

    .line 2918
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->aI:Lit/sephiroth/android/library/widget/ap;

    goto/16 :goto_1

    :cond_c
    move-object v0, v2

    .line 2921
    goto/16 :goto_1
.end method

.method private q(I)V
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x0

    .line 3014
    invoke-virtual {p0, p1}, Lit/sephiroth/android/library/widget/HListView;->c(I)V

    .line 3016
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getWidth()I

    move-result v0

    iget-object v1, p0, Lit/sephiroth/android/library/widget/HListView;->v:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int v3, v0, v1

    .line 3017
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->v:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    .line 3018
    iget-object v4, p0, Lit/sephiroth/android/library/widget/HListView;->q:Lit/sephiroth/android/library/widget/p;

    .line 3020
    if-gez p1, :cond_3

    .line 3024
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getChildCount()I

    move-result v1

    .line 3025
    add-int/lit8 v0, v1, -0x1

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/HListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3026
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v5

    if-ge v5, v3, :cond_0

    .line 3027
    iget v5, p0, Lit/sephiroth/android/library/widget/HListView;->W:I

    add-int/2addr v5, v1

    add-int/lit8 v5, v5, -0x1

    .line 3028
    iget v6, p0, Lit/sephiroth/android/library/widget/HListView;->ao:I

    add-int/lit8 v6, v6, -0x1

    if-ge v5, v6, :cond_0

    .line 3029
    invoke-direct {p0, v0, v5}, Lit/sephiroth/android/library/widget/HListView;->c(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 3030
    add-int/lit8 v1, v1, 0x1

    .line 3034
    goto :goto_0

    .line 3039
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v1

    if-ge v1, v3, :cond_1

    .line 3040
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    sub-int v0, v3, v0

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/HListView;->c(I)V

    .line 3044
    :cond_1
    invoke-virtual {p0, v7}, Lit/sephiroth/android/library/widget/HListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    .line 3045
    :goto_1
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v0

    if-ge v0, v2, :cond_7

    .line 3046
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lit/sephiroth/android/library/widget/i;

    .line 3047
    iget v0, v0, Lit/sephiroth/android/library/widget/i;->a:I

    invoke-virtual {v4, v0}, Lit/sephiroth/android/library/widget/p;->b(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3048
    invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/HListView;->detachViewFromParent(Landroid/view/View;)V

    .line 3049
    iget v0, p0, Lit/sephiroth/android/library/widget/HListView;->W:I

    invoke-virtual {v4, v1, v0}, Lit/sephiroth/android/library/widget/p;->a(Landroid/view/View;I)V

    .line 3053
    :goto_2
    invoke-virtual {p0, v7}, Lit/sephiroth/android/library/widget/HListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3054
    iget v1, p0, Lit/sephiroth/android/library/widget/HListView;->W:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lit/sephiroth/android/library/widget/HListView;->W:I

    move-object v1, v0

    .line 3055
    goto :goto_1

    .line 3051
    :cond_2
    invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/HListView;->removeViewInLayout(Landroid/view/View;)V

    goto :goto_2

    .line 3058
    :cond_3
    invoke-virtual {p0, v7}, Lit/sephiroth/android/library/widget/HListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3061
    :goto_3
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    if-le v1, v2, :cond_4

    iget v1, p0, Lit/sephiroth/android/library/widget/HListView;->W:I

    if-lez v1, :cond_4

    .line 3062
    iget v1, p0, Lit/sephiroth/android/library/widget/HListView;->W:I

    invoke-direct {p0, v0, v1}, Lit/sephiroth/android/library/widget/HListView;->b(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 3063
    iget v1, p0, Lit/sephiroth/android/library/widget/HListView;->W:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lit/sephiroth/android/library/widget/HListView;->W:I

    goto :goto_3

    .line 3068
    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    if-le v1, v2, :cond_5

    .line 3069
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    sub-int v0, v2, v0

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/HListView;->c(I)V

    .line 3072
    :cond_5
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getChildCount()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    .line 3073
    invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/HListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    move v2, v1

    move-object v1, v0

    .line 3076
    :goto_4
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v0

    if-le v0, v3, :cond_7

    .line 3077
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lit/sephiroth/android/library/widget/i;

    .line 3078
    iget v0, v0, Lit/sephiroth/android/library/widget/i;->a:I

    invoke-virtual {v4, v0}, Lit/sephiroth/android/library/widget/p;->b(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3079
    invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/HListView;->detachViewFromParent(Landroid/view/View;)V

    .line 3080
    iget v0, p0, Lit/sephiroth/android/library/widget/HListView;->W:I

    add-int/2addr v0, v2

    invoke-virtual {v4, v1, v0}, Lit/sephiroth/android/library/widget/p;->a(Landroid/view/View;I)V

    .line 3084
    :goto_5
    add-int/lit8 v1, v2, -0x1

    invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/HListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    move v2, v1

    move-object v1, v0

    .line 3085
    goto :goto_4

    .line 3082
    :cond_6
    invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/HListView;->removeViewInLayout(Landroid/view/View;)V

    goto :goto_5

    .line 3087
    :cond_7
    return-void
.end method

.method private z()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 236
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getChildCount()I

    move-result v2

    .line 239
    if-lez v2, :cond_2

    .line 242
    iget-boolean v1, p0, Lit/sephiroth/android/library/widget/HListView;->L:Z

    if-nez v1, :cond_3

    .line 245
    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/HListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 246
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    iget-object v2, p0, Lit/sephiroth/android/library/widget/HListView;->v:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    .line 247
    iget v2, p0, Lit/sephiroth/android/library/widget/HListView;->W:I

    if-eqz v2, :cond_0

    .line 250
    iget v2, p0, Lit/sephiroth/android/library/widget/HListView;->av:I

    sub-int/2addr v1, v2

    .line 252
    :cond_0
    if-gez v1, :cond_5

    .line 272
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 273
    neg-int v0, v0

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/HListView;->c(I)V

    .line 276
    :cond_2
    return-void

    .line 258
    :cond_3
    add-int/lit8 v1, v2, -0x1

    invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/HListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 259
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getWidth()I

    move-result v3

    iget-object v4, p0, Lit/sephiroth/android/library/widget/HListView;->v:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    sub-int/2addr v1, v3

    .line 261
    iget v3, p0, Lit/sephiroth/android/library/widget/HListView;->W:I

    add-int/2addr v2, v3

    iget v3, p0, Lit/sephiroth/android/library/widget/HListView;->ao:I

    if-ge v2, v3, :cond_4

    .line 264
    iget v2, p0, Lit/sephiroth/android/library/widget/HListView;->av:I

    add-int/2addr v1, v2

    .line 267
    :cond_4
    if-gtz v1, :cond_1

    :cond_5
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method final a(IIIII)I
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v8, -0x1

    .line 1253
    iget-object v4, p0, Lit/sephiroth/android/library/widget/HListView;->k:Landroid/widget/ListAdapter;

    .line 1254
    if-nez v4, :cond_1

    .line 1255
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->v:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lit/sephiroth/android/library/widget/HListView;->v:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int p4, v0, v1

    .line 1307
    :cond_0
    :goto_0
    return p4

    .line 1259
    :cond_1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->v:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lit/sephiroth/android/library/widget/HListView;->v:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v2

    .line 1260
    iget v2, p0, Lit/sephiroth/android/library/widget/HListView;->av:I

    if-lez v2, :cond_4

    iget-object v2, p0, Lit/sephiroth/android/library/widget/HListView;->au:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_4

    iget v2, p0, Lit/sephiroth/android/library/widget/HListView;->av:I

    move v3, v2

    .line 1268
    :goto_1
    if-ne p3, v8, :cond_2

    invoke-interface {v4}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    add-int/lit8 p3, v2, -0x1

    .line 1269
    :cond_2
    iget-object v4, p0, Lit/sephiroth/android/library/widget/HListView;->q:Lit/sephiroth/android/library/widget/p;

    .line 1270
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->y()Z

    move-result v5

    .line 1271
    iget-object v6, p0, Lit/sephiroth/android/library/widget/HListView;->Q:[Z

    .line 1273
    :goto_2
    if-gt p2, p3, :cond_7

    .line 1274
    invoke-virtual {p0, p2, v6}, Lit/sephiroth/android/library/widget/HListView;->a(I[Z)Landroid/view/View;

    move-result-object v7

    .line 1276
    invoke-direct {p0, v7, p2, p1}, Lit/sephiroth/android/library/widget/HListView;->a(Landroid/view/View;II)V

    .line 1278
    if-lez p2, :cond_8

    .line 1280
    add-int/2addr v0, v3

    move v2, v0

    .line 1284
    :goto_3
    if-eqz v5, :cond_3

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lit/sephiroth/android/library/widget/i;

    iget v0, v0, Lit/sephiroth/android/library/widget/i;->a:I

    invoke-virtual {v4, v0}, Lit/sephiroth/android/library/widget/p;->b(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1285
    invoke-virtual {v4, v7, v8}, Lit/sephiroth/android/library/widget/p;->a(Landroid/view/View;I)V

    .line 1288
    :cond_3
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, v2

    .line 1290
    if-lt v0, p4, :cond_5

    .line 1293
    if-ltz p5, :cond_0

    if-le p2, p5, :cond_0

    if-lez v1, :cond_0

    if-eq v0, p4, :cond_0

    move p4, v1

    goto :goto_0

    :cond_4
    move v3, v1

    .line 1260
    goto :goto_1

    .line 1300
    :cond_5
    if-ltz p5, :cond_6

    if-lt p2, p5, :cond_6

    move v1, v0

    .line 1273
    :cond_6
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_7
    move p4, v0

    .line 1307
    goto :goto_0

    :cond_8
    move v2, v0

    goto :goto_3
.end method

.method a(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3365
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->au:Landroid/graphics/drawable/Drawable;

    .line 3367
    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3368
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3369
    return-void
.end method

.method a(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3158
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v0

    .line 3160
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 3161
    invoke-virtual {p1, p3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 3163
    iget v1, p3, Landroid/graphics/Rect;->right:I

    iget v2, p3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    .line 3164
    if-ge v1, v0, :cond_0

    .line 3165
    iget v1, p3, Landroid/graphics/Rect;->right:I

    sub-int v0, v1, v0

    iput v0, p3, Landroid/graphics/Rect;->left:I

    .line 3168
    :cond_0
    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3169
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3171
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 3172
    return-void
.end method

.method public a(Landroid/view/View;Ljava/lang/Object;Z)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 294
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->k:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->k:Landroid/widget/ListAdapter;

    instance-of v0, v0, Lit/sephiroth/android/library/widget/as;

    if-nez v0, :cond_0

    .line 295
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot add header view to list -- setAdapter has already been called."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 299
    :cond_0
    new-instance v0, Lit/sephiroth/android/library/widget/aq;

    invoke-direct {v0}, Lit/sephiroth/android/library/widget/aq;-><init>()V

    .line 300
    iput-object p1, v0, Lit/sephiroth/android/library/widget/aq;->a:Landroid/view/View;

    .line 301
    iput-object p2, v0, Lit/sephiroth/android/library/widget/aq;->b:Ljava/lang/Object;

    .line 302
    iput-boolean p3, v0, Lit/sephiroth/android/library/widget/aq;->c:Z

    .line 303
    iget-object v1, p0, Lit/sephiroth/android/library/widget/HListView;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 307
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->k:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->j:Lit/sephiroth/android/library/widget/c;

    if-eqz v0, :cond_1

    .line 308
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->j:Lit/sephiroth/android/library/widget/c;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/c;->onChanged()V

    .line 310
    :cond_1
    return-void
.end method

.method protected a(Z)V
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 655
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getChildCount()I

    move-result v1

    .line 656
    if-eqz p1, :cond_1

    .line 661
    if-lez v1, :cond_0

    add-int/lit8 v0, v1, -0x1

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/HListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    iget v2, p0, Lit/sephiroth/android/library/widget/HListView;->av:I

    add-int/2addr v0, v2

    .line 662
    :cond_0
    iget v2, p0, Lit/sephiroth/android/library/widget/HListView;->W:I

    add-int/2addr v1, v2

    invoke-direct {p0, v1, v0}, Lit/sephiroth/android/library/widget/HListView;->g(II)Landroid/view/View;

    .line 663
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getChildCount()I

    move-result v0

    invoke-direct {p0, v0}, Lit/sephiroth/android/library/widget/HListView;->k(I)V

    .line 673
    :goto_0
    return-void

    .line 669
    :cond_1
    if-lez v1, :cond_2

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/HListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iget v1, p0, Lit/sephiroth/android/library/widget/HListView;->av:I

    sub-int/2addr v0, v1

    .line 670
    :goto_1
    iget v1, p0, Lit/sephiroth/android/library/widget/HListView;->W:I

    add-int/lit8 v1, v1, -0x1

    invoke-direct {p0, v1, v0}, Lit/sephiroth/android/library/widget/HListView;->h(II)Landroid/view/View;

    .line 671
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getChildCount()I

    move-result v0

    invoke-direct {p0, v0}, Lit/sephiroth/android/library/widget/HListView;->l(I)V

    goto :goto_0

    .line 669
    :cond_2
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getWidth()I

    move-result v1

    sub-int v0, v1, v0

    goto :goto_1
.end method

.method final a(IIIIII)[I
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1315
    iget-object v2, p0, Lit/sephiroth/android/library/widget/HListView;->k:Landroid/widget/ListAdapter;

    .line 1316
    if-nez v2, :cond_0

    .line 1317
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    iget-object v2, p0, Lit/sephiroth/android/library/widget/HListView;->v:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lit/sephiroth/android/library/widget/HListView;->v:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    aput v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lit/sephiroth/android/library/widget/HListView;->v:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lit/sephiroth/android/library/widget/HListView;->v:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    aput v2, v0, v1

    .line 1355
    :goto_0
    return-object v0

    .line 1321
    :cond_0
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->v:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lit/sephiroth/android/library/widget/HListView;->v:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int v4, v0, v1

    .line 1322
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->v:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lit/sephiroth/android/library/widget/HListView;->v:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int v5, v0, v1

    .line 1324
    iget v0, p0, Lit/sephiroth/android/library/widget/HListView;->av:I

    if-lez v0, :cond_3

    iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->au:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget v0, p0, Lit/sephiroth/android/library/widget/HListView;->av:I

    move v3, v0

    .line 1326
    :goto_1
    const/4 v1, 0x0

    .line 1327
    const/4 v0, 0x0

    .line 1333
    const/4 v6, -0x1

    if-ne p3, v6, :cond_1

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    add-int/lit8 p3, v2, -0x1

    .line 1334
    :cond_1
    iget-object v6, p0, Lit/sephiroth/android/library/widget/HListView;->q:Lit/sephiroth/android/library/widget/p;

    .line 1335
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->y()Z

    move-result v7

    .line 1336
    iget-object v8, p0, Lit/sephiroth/android/library/widget/HListView;->Q:[Z

    move v2, v1

    move v1, v0

    .line 1338
    :goto_2
    if-gt p2, p3, :cond_4

    .line 1339
    invoke-virtual {p0, p2, v8}, Lit/sephiroth/android/library/widget/HListView;->a(I[Z)Landroid/view/View;

    move-result-object v9

    .line 1341
    invoke-direct {p0, v9, p2, p1}, Lit/sephiroth/android/library/widget/HListView;->a(Landroid/view/View;II)V

    .line 1344
    if-eqz v7, :cond_2

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lit/sephiroth/android/library/widget/i;

    iget v0, v0, Lit/sephiroth/android/library/widget/i;->a:I

    invoke-virtual {v6, v0}, Lit/sephiroth/android/library/widget/p;->b(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1345
    const/4 v0, -0x1

    invoke-virtual {v6, v9, v0}, Lit/sephiroth/android/library/widget/p;->a(Landroid/view/View;I)V

    .line 1348
    :cond_2
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, v3

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1349
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1338
    add-int/lit8 p2, p2, 0x1

    move v1, v0

    goto :goto_2

    .line 1324
    :cond_3
    const/4 v0, 0x0

    move v3, v0

    goto :goto_1

    .line 1352
    :cond_4
    add-int/2addr v2, v4

    .line 1353
    add-int/2addr v1, v5

    .line 1355
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v3, 0x0

    invoke-static {v2, p4}, Ljava/lang/Math;->min(II)I

    move-result v2

    aput v2, v0, v3

    const/4 v2, 0x1

    invoke-static {v1, p5}, Ljava/lang/Math;->min(II)I

    move-result v1

    aput v1, v0, v2

    goto :goto_0
.end method

.method protected b(IZ)I
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 2100
    iget-object v1, p0, Lit/sephiroth/android/library/widget/HListView;->k:Landroid/widget/ListAdapter;

    .line 2101
    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->isInTouchMode()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    move p1, v0

    .line 2127
    :cond_1
    :goto_0
    return p1

    .line 2105
    :cond_2
    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    .line 2106
    iget-boolean v3, p0, Lit/sephiroth/android/library/widget/HListView;->aE:Z

    if-nez v3, :cond_6

    .line 2107
    if-eqz p2, :cond_3

    .line 2108
    const/4 v3, 0x0

    invoke-static {v3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 2109
    :goto_1
    if-ge p1, v2, :cond_4

    invoke-interface {v1, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v3

    if-nez v3, :cond_4

    .line 2110
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 2113
    :cond_3
    add-int/lit8 v3, v2, -0x1

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 2114
    :goto_2
    if-ltz p1, :cond_4

    invoke-interface {v1, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v3

    if-nez v3, :cond_4

    .line 2115
    add-int/lit8 p1, p1, -0x1

    goto :goto_2

    .line 2119
    :cond_4
    if-ltz p1, :cond_5

    if-lt p1, v2, :cond_1

    :cond_5
    move p1, v0

    .line 2120
    goto :goto_0

    .line 2124
    :cond_6
    if-ltz p1, :cond_7

    if-lt p1, v2, :cond_1

    :cond_7
    move p1, v0

    .line 2125
    goto :goto_0
.end method

.method b(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3175
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v0

    .line 3177
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 3178
    invoke-virtual {p1, p3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 3180
    iget v1, p3, Landroid/graphics/Rect;->right:I

    iget v2, p3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    .line 3181
    if-ge v1, v0, :cond_0

    .line 3182
    iget v1, p3, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    iput v0, p3, Landroid/graphics/Rect;->right:I

    .line 3185
    :cond_0
    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3186
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3188
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 3189
    return-void
.end method

.method public b(Landroid/view/View;Ljava/lang/Object;Z)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 385
    new-instance v0, Lit/sephiroth/android/library/widget/aq;

    invoke-direct {v0}, Lit/sephiroth/android/library/widget/aq;-><init>()V

    .line 386
    iput-object p1, v0, Lit/sephiroth/android/library/widget/aq;->a:Landroid/view/View;

    .line 387
    iput-object p2, v0, Lit/sephiroth/android/library/widget/aq;->b:Ljava/lang/Object;

    .line 388
    iput-boolean p3, v0, Lit/sephiroth/android/library/widget/aq;->c:Z

    .line 389
    iget-object v1, p0, Lit/sephiroth/android/library/widget/HListView;->az:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 393
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->k:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->j:Lit/sephiroth/android/library/widget/c;

    if-eqz v0, :cond_0

    .line 394
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->j:Lit/sephiroth/android/library/widget/c;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/c;->onChanged()V

    .line 396
    :cond_0
    return-void
.end method

.method protected canAnimate()Z
    .locals 1

    .prologue
    .line 2002
    invoke-super {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->canAnimate()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lit/sephiroth/android/library/widget/HListView;->ao:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected d(I)I
    .locals 3
    .parameter

    .prologue
    .line 1361
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getChildCount()I

    move-result v1

    .line 1362
    if-lez v1, :cond_3

    .line 1363
    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/HListView;->L:Z

    if-nez v0, :cond_1

    .line 1364
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_3

    .line 1365
    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/HListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1366
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    if-gt p1, v2, :cond_0

    .line 1367
    iget v1, p0, Lit/sephiroth/android/library/widget/HListView;->W:I

    add-int/2addr v0, v1

    .line 1379
    :goto_1
    return v0

    .line 1364
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1371
    :cond_1
    add-int/lit8 v0, v1, -0x1

    :goto_2
    if-ltz v0, :cond_3

    .line 1372
    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/HListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1373
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    if-lt p1, v1, :cond_2

    .line 1374
    iget v1, p0, Lit/sephiroth/android/library/widget/HListView;->W:I

    add-int/2addr v0, v1

    goto :goto_1

    .line 1371
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 1379
    :cond_3
    const/4 v0, -0x1

    goto :goto_1
.end method

.method protected d()V
    .locals 1

    .prologue
    .line 527
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->a:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lit/sephiroth/android/library/widget/HListView;->a(Ljava/util/ArrayList;)V

    .line 528
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->az:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lit/sephiroth/android/library/widget/HListView;->a(Ljava/util/ArrayList;)V

    .line 530
    invoke-super {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->d()V

    .line 532
    const/4 v0, 0x0

    iput v0, p0, Lit/sephiroth/android/library/widget/HListView;->i:I

    .line 533
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 25
    .parameter

    .prologue
    .line 3193
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lit/sephiroth/android/library/widget/HListView;->z:Z

    if-eqz v2, :cond_0

    .line 3194
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lit/sephiroth/android/library/widget/HListView;->A:Z

    .line 3198
    :cond_0
    move-object/from16 v0, p0

    iget v8, v0, Lit/sephiroth/android/library/widget/HListView;->av:I

    .line 3199
    move-object/from16 v0, p0

    iget-object v9, v0, Lit/sephiroth/android/library/widget/HListView;->ax:Landroid/graphics/drawable/Drawable;

    .line 3200
    move-object/from16 v0, p0

    iget-object v10, v0, Lit/sephiroth/android/library/widget/HListView;->ay:Landroid/graphics/drawable/Drawable;

    .line 3201
    if-eqz v9, :cond_9

    const/4 v2, 0x1

    move v7, v2

    .line 3202
    :goto_0
    if-eqz v10, :cond_a

    const/4 v2, 0x1

    move v6, v2

    .line 3203
    :goto_1
    if-lez v8, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lit/sephiroth/android/library/widget/HListView;->au:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_b

    const/4 v2, 0x1

    move v5, v2

    .line 3205
    :goto_2
    if-nez v5, :cond_1

    if-nez v7, :cond_1

    if-eqz v6, :cond_10

    .line 3207
    :cond_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lit/sephiroth/android/library/widget/HListView;->aG:Landroid/graphics/Rect;

    .line 3208
    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/HListView;->getPaddingTop()I

    move-result v2

    iput v2, v11, Landroid/graphics/Rect;->top:I

    .line 3209
    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/HListView;->getBottom()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/HListView;->getTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/HListView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    .line 3211
    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/HListView;->getChildCount()I

    move-result v12

    .line 3212
    move-object/from16 v0, p0

    iget-object v2, v0, Lit/sephiroth/android/library/widget/HListView;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 3213
    move-object/from16 v0, p0

    iget v14, v0, Lit/sephiroth/android/library/widget/HListView;->ao:I

    .line 3214
    move-object/from16 v0, p0

    iget-object v2, v0, Lit/sephiroth/android/library/widget/HListView;->az:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int v2, v14, v2

    add-int/lit8 v15, v2, -0x1

    .line 3215
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lit/sephiroth/android/library/widget/HListView;->aC:Z

    move/from16 v16, v0

    .line 3216
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lit/sephiroth/android/library/widget/HListView;->aD:Z

    move/from16 v17, v0

    .line 3217
    move-object/from16 v0, p0

    iget v0, v0, Lit/sephiroth/android/library/widget/HListView;->W:I

    move/from16 v18, v0

    .line 3218
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lit/sephiroth/android/library/widget/HListView;->aE:Z

    move/from16 v19, v0

    .line 3219
    move-object/from16 v0, p0

    iget-object v0, v0, Lit/sephiroth/android/library/widget/HListView;->k:Landroid/widget/ListAdapter;

    move-object/from16 v20, v0

    .line 3224
    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/HListView;->isOpaque()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-super/range {p0 .. p0}, Lit/sephiroth/android/library/widget/AbsHListView;->isOpaque()Z

    move-result v2

    if-nez v2, :cond_c

    const/4 v2, 0x1

    move v4, v2

    .line 3226
    :goto_3
    if-eqz v4, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lit/sephiroth/android/library/widget/HListView;->aH:Landroid/graphics/Paint;

    if-nez v2, :cond_2

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lit/sephiroth/android/library/widget/HListView;->aA:Z

    if-eqz v2, :cond_2

    .line 3227
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lit/sephiroth/android/library/widget/HListView;->aH:Landroid/graphics/Paint;

    .line 3228
    move-object/from16 v0, p0

    iget-object v2, v0, Lit/sephiroth/android/library/widget/HListView;->aH:Landroid/graphics/Paint;

    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/HListView;->getCacheColorHint()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 3230
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lit/sephiroth/android/library/widget/HListView;->aH:Landroid/graphics/Paint;

    move-object/from16 v21, v0

    .line 3232
    const/4 v3, 0x0

    .line 3233
    const/4 v2, 0x0

    .line 3239
    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/HListView;->getRight()I

    move-result v22

    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/HListView;->getLeft()I

    move-result v23

    sub-int v22, v22, v23

    sub-int v2, v22, v2

    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/HListView;->getScrollX()I

    move-result v22

    add-int v22, v22, v2

    .line 3240
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lit/sephiroth/android/library/widget/HListView;->L:Z

    if-nez v2, :cond_11

    .line 3241
    const/4 v3, 0x0

    .line 3244
    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/HListView;->getScrollX()I

    move-result v2

    .line 3245
    if-lez v12, :cond_3

    if-gez v2, :cond_3

    .line 3246
    if-eqz v7, :cond_d

    .line 3247
    const/4 v7, 0x0

    iput v7, v11, Landroid/graphics/Rect;->right:I

    .line 3248
    iput v2, v11, Landroid/graphics/Rect;->left:I

    .line 3249
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v9, v11}, Lit/sephiroth/android/library/widget/HListView;->a(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    .line 3257
    :cond_3
    :goto_4
    const/4 v2, 0x0

    move/from16 v24, v2

    move v2, v3

    move/from16 v3, v24

    :goto_5
    if-ge v3, v12, :cond_f

    .line 3258
    if-nez v16, :cond_4

    add-int v7, v18, v3

    if-lt v7, v13, :cond_8

    :cond_4
    if-nez v17, :cond_5

    add-int v7, v18, v3

    if-ge v7, v15, :cond_8

    .line 3260
    :cond_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lit/sephiroth/android/library/widget/HListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 3261
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    .line 3264
    if-eqz v5, :cond_8

    move/from16 v0, v22

    if-ge v2, v0, :cond_8

    if-eqz v6, :cond_6

    add-int/lit8 v7, v12, -0x1

    if-eq v3, v7, :cond_8

    .line 3266
    :cond_6
    if-nez v19, :cond_7

    add-int v7, v18, v3

    move-object/from16 v0, v20

    invoke-interface {v0, v7}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_e

    add-int/lit8 v7, v12, -0x1

    if-eq v3, v7, :cond_7

    add-int v7, v18, v3

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, v20

    invoke-interface {v0, v7}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 3268
    :cond_7
    iput v2, v11, Landroid/graphics/Rect;->left:I

    .line 3269
    add-int v7, v2, v8

    iput v7, v11, Landroid/graphics/Rect;->right:I

    .line 3270
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v11, v3}, Lit/sephiroth/android/library/widget/HListView;->a(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 3257
    :cond_8
    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 3201
    :cond_9
    const/4 v2, 0x0

    move v7, v2

    goto/16 :goto_0

    .line 3202
    :cond_a
    const/4 v2, 0x0

    move v6, v2

    goto/16 :goto_1

    .line 3203
    :cond_b
    const/4 v2, 0x0

    move v5, v2

    goto/16 :goto_2

    .line 3224
    :cond_c
    const/4 v2, 0x0

    move v4, v2

    goto/16 :goto_3

    .line 3250
    :cond_d
    if-eqz v5, :cond_3

    .line 3251
    const/4 v2, 0x0

    iput v2, v11, Landroid/graphics/Rect;->right:I

    .line 3252
    neg-int v2, v8

    iput v2, v11, Landroid/graphics/Rect;->left:I

    .line 3253
    const/4 v2, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v11, v2}, Lit/sephiroth/android/library/widget/HListView;->a(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    goto :goto_4

    .line 3271
    :cond_e
    if-eqz v4, :cond_8

    .line 3272
    iput v2, v11, Landroid/graphics/Rect;->left:I

    .line 3273
    add-int v7, v2, v8

    iput v7, v11, Landroid/graphics/Rect;->right:I

    .line 3274
    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v11, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_6

    .line 3280
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/HListView;->getRight()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/HListView;->getScrollX()I

    move-result v4

    add-int/2addr v3, v4

    .line 3281
    if-eqz v6, :cond_10

    add-int v4, v18, v12

    if-ne v4, v14, :cond_10

    if-le v3, v2, :cond_10

    .line 3283
    iput v2, v11, Landroid/graphics/Rect;->left:I

    .line 3284
    iput v3, v11, Landroid/graphics/Rect;->right:I

    .line 3285
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v10, v11}, Lit/sephiroth/android/library/widget/HListView;->b(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    .line 3340
    :cond_10
    :goto_7
    invoke-super/range {p0 .. p1}, Lit/sephiroth/android/library/widget/AbsHListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 3341
    return-void

    .line 3290
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/HListView;->getScrollX()I

    move-result v14

    .line 3292
    if-lez v12, :cond_12

    if-eqz v7, :cond_12

    .line 3293
    iput v14, v11, Landroid/graphics/Rect;->left:I

    .line 3294
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lit/sephiroth/android/library/widget/HListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    iput v2, v11, Landroid/graphics/Rect;->right:I

    .line 3295
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v9, v11}, Lit/sephiroth/android/library/widget/HListView;->a(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    .line 3298
    :cond_12
    if-eqz v7, :cond_17

    const/4 v2, 0x1

    .line 3299
    :goto_8
    if-ge v2, v12, :cond_19

    .line 3300
    if-nez v16, :cond_13

    add-int v7, v18, v2

    if-lt v7, v13, :cond_16

    :cond_13
    if-nez v17, :cond_14

    add-int v7, v18, v2

    if-ge v7, v15, :cond_16

    .line 3302
    :cond_14
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lit/sephiroth/android/library/widget/HListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 3303
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v7

    .line 3305
    if-le v7, v3, :cond_16

    .line 3306
    if-nez v19, :cond_15

    add-int v9, v18, v2

    move-object/from16 v0, v20

    invoke-interface {v0, v9}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v9

    if-eqz v9, :cond_18

    add-int/lit8 v9, v12, -0x1

    if-eq v2, v9, :cond_15

    add-int v9, v18, v2

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, v20

    invoke-interface {v0, v9}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v9

    if-eqz v9, :cond_18

    .line 3308
    :cond_15
    sub-int v9, v7, v8

    iput v9, v11, Landroid/graphics/Rect;->left:I

    .line 3309
    iput v7, v11, Landroid/graphics/Rect;->right:I

    .line 3314
    add-int/lit8 v7, v2, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v11, v7}, Lit/sephiroth/android/library/widget/HListView;->a(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 3299
    :cond_16
    :goto_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 3298
    :cond_17
    const/4 v2, 0x0

    goto :goto_8

    .line 3315
    :cond_18
    if-eqz v4, :cond_16

    .line 3316
    sub-int v9, v7, v8

    iput v9, v11, Landroid/graphics/Rect;->left:I

    .line 3317
    iput v7, v11, Landroid/graphics/Rect;->right:I

    .line 3318
    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v11, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_9

    .line 3324
    :cond_19
    if-lez v12, :cond_10

    if-lez v14, :cond_10

    .line 3325
    if-eqz v6, :cond_1a

    .line 3326
    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/HListView;->getRight()I

    move-result v2

    .line 3327
    iput v2, v11, Landroid/graphics/Rect;->left:I

    .line 3328
    add-int/2addr v2, v14

    iput v2, v11, Landroid/graphics/Rect;->right:I

    .line 3329
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v10, v11}, Lit/sephiroth/android/library/widget/HListView;->b(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    goto/16 :goto_7

    .line 3330
    :cond_1a
    if-eqz v5, :cond_10

    .line 3331
    move/from16 v0, v22

    iput v0, v11, Landroid/graphics/Rect;->left:I

    .line 3332
    add-int v2, v22, v8

    iput v2, v11, Landroid/graphics/Rect;->right:I

    .line 3333
    const/4 v2, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v11, v2}, Lit/sephiroth/android/library/widget/HListView;->a(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    goto/16 :goto_7
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter

    .prologue
    .line 2153
    invoke-super {p0, p1}, Lit/sephiroth/android/library/widget/AbsHListView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 2154
    if-nez v0, :cond_0

    .line 2156
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getFocusedChild()Landroid/view/View;

    move-result-object v1

    .line 2157
    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 2160
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lit/sephiroth/android/library/widget/HListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 2163
    :cond_0
    return v0
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3345
    invoke-super {p0, p1, p2, p3, p4}, Lit/sephiroth/android/library/widget/AbsHListView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    .line 3346
    iget-boolean v1, p0, Lit/sephiroth/android/library/widget/HListView;->A:Z

    if-eqz v1, :cond_0

    .line 3347
    const/4 v1, 0x0

    iput-boolean v1, p0, Lit/sephiroth/android/library/widget/HListView;->A:Z

    .line 3349
    :cond_0
    return v0
.end method

.method protected e()V
    .locals 17

    .prologue
    .line 1537
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lit/sephiroth/android/library/widget/HListView;->at:Z

    .line 1538
    if-nez v10, :cond_0

    .line 1539
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lit/sephiroth/android/library/widget/HListView;->at:Z

    .line 1545
    :try_start_0
    invoke-super/range {p0 .. p0}, Lit/sephiroth/android/library/widget/AbsHListView;->e()V

    .line 1547
    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/HListView;->invalidate()V

    .line 1549
    move-object/from16 v0, p0

    iget-object v1, v0, Lit/sephiroth/android/library/widget/HListView;->k:Landroid/widget/ListAdapter;

    if-nez v1, :cond_1

    .line 1550
    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/HListView;->d()V

    .line 1551
    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/HListView;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1813
    if-nez v10, :cond_0

    .line 1814
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lit/sephiroth/android/library/widget/HListView;->at:Z

    .line 1817
    :cond_0
    :goto_0
    return-void

    .line 1555
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lit/sephiroth/android/library/widget/HListView;->v:Landroid/graphics/Rect;

    iget v5, v1, Landroid/graphics/Rect;->left:I

    .line 1556
    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/HListView;->getRight()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/HListView;->getLeft()I

    move-result v2

    sub-int/2addr v1, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lit/sephiroth/android/library/widget/HListView;->v:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int v6, v1, v2

    .line 1558
    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/HListView;->getChildCount()I

    move-result v11

    .line 1560
    const/4 v4, 0x0

    .line 1563
    const/4 v2, 0x0

    .line 1564
    const/4 v1, 0x0

    .line 1565
    const/4 v3, 0x0

    .line 1567
    const/4 v7, 0x0

    .line 1574
    move-object/from16 v0, p0

    iget v8, v0, Lit/sephiroth/android/library/widget/HListView;->i:I

    packed-switch v8, :pswitch_data_0

    .line 1589
    move-object/from16 v0, p0

    iget v1, v0, Lit/sephiroth/android/library/widget/HListView;->am:I

    move-object/from16 v0, p0

    iget v3, v0, Lit/sephiroth/android/library/widget/HListView;->W:I

    sub-int v3, v1, v3

    .line 1590
    if-ltz v3, :cond_2

    if-ge v3, v11, :cond_2

    .line 1591
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lit/sephiroth/android/library/widget/HListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1595
    :cond_2
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lit/sephiroth/android/library/widget/HListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1597
    move-object/from16 v0, p0

    iget v8, v0, Lit/sephiroth/android/library/widget/HListView;->ak:I

    if-ltz v8, :cond_3

    .line 1598
    move-object/from16 v0, p0

    iget v4, v0, Lit/sephiroth/android/library/widget/HListView;->ak:I

    move-object/from16 v0, p0

    iget v8, v0, Lit/sephiroth/android/library/widget/HListView;->am:I

    sub-int/2addr v4, v8

    .line 1602
    :cond_3
    add-int/2addr v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lit/sephiroth/android/library/widget/HListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    move-object v9, v1

    .line 1605
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lit/sephiroth/android/library/widget/HListView;->aj:Z

    .line 1606
    if-eqz v12, :cond_4

    .line 1607
    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/HListView;->q()V

    .line 1612
    :cond_4
    move-object/from16 v0, p0

    iget v1, v0, Lit/sephiroth/android/library/widget/HListView;->ao:I

    if-nez v1, :cond_5

    .line 1613
    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/HListView;->d()V

    .line 1614
    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/HListView;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1813
    if-nez v10, :cond_0

    .line 1814
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lit/sephiroth/android/library/widget/HListView;->at:Z

    goto :goto_0

    .line 1576
    :pswitch_0
    :try_start_2
    move-object/from16 v0, p0

    iget v8, v0, Lit/sephiroth/android/library/widget/HListView;->ak:I

    move-object/from16 v0, p0

    iget v9, v0, Lit/sephiroth/android/library/widget/HListView;->W:I

    sub-int/2addr v8, v9

    .line 1577
    if-ltz v8, :cond_22

    if-ge v8, v11, :cond_22

    .line 1578
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lit/sephiroth/android/library/widget/HListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    move-object v9, v1

    goto :goto_1

    :pswitch_1
    move-object v9, v1

    .line 1585
    goto :goto_1

    .line 1616
    :cond_5
    move-object/from16 v0, p0

    iget v1, v0, Lit/sephiroth/android/library/widget/HListView;->ao:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lit/sephiroth/android/library/widget/HListView;->k:Landroid/widget/ListAdapter;

    invoke-interface {v8}, Landroid/widget/ListAdapter;->getCount()I

    move-result v8

    if-eq v1, v8, :cond_7

    .line 1617
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "The content of the adapter has changed but ListView did not receive a notification. Make sure the content of your adapter is not modified from a background thread, but only from the UI thread. [in ListView("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/HListView;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") with Adapter("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lit/sephiroth/android/library/widget/HListView;->k:Landroid/widget/ListAdapter;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1813
    :catchall_0
    move-exception v1

    if-nez v10, :cond_6

    .line 1814
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lit/sephiroth/android/library/widget/HListView;->at:Z

    :cond_6
    throw v1

    .line 1624
    :cond_7
    :try_start_3
    move-object/from16 v0, p0

    iget v1, v0, Lit/sephiroth/android/library/widget/HListView;->ak:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lit/sephiroth/android/library/widget/HListView;->setSelectedPositionInt(I)V

    .line 1628
    move-object/from16 v0, p0

    iget v13, v0, Lit/sephiroth/android/library/widget/HListView;->W:I

    .line 1629
    move-object/from16 v0, p0

    iget-object v14, v0, Lit/sephiroth/android/library/widget/HListView;->q:Lit/sephiroth/android/library/widget/p;

    .line 1632
    const/4 v1, 0x0

    .line 1636
    if-eqz v12, :cond_8

    .line 1637
    const/4 v8, 0x0

    :goto_2
    if-ge v8, v11, :cond_9

    .line 1638
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lit/sephiroth/android/library/widget/HListView;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    add-int v16, v13, v8

    invoke-virtual/range {v14 .. v16}, Lit/sephiroth/android/library/widget/p;->a(Landroid/view/View;I)V

    .line 1637
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 1641
    :cond_8
    invoke-virtual {v14, v11, v13}, Lit/sephiroth/android/library/widget/p;->a(II)V

    .line 1648
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/HListView;->getFocusedChild()Landroid/view/View;

    move-result-object v8

    .line 1649
    if-eqz v8, :cond_21

    .line 1654
    if-eqz v12, :cond_a

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lit/sephiroth/android/library/widget/HListView;->a(Landroid/view/View;)Z

    move-result v12

    if-eqz v12, :cond_c

    .line 1657
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/HListView;->findFocus()Landroid/view/View;

    move-result-object v7

    .line 1658
    if-eqz v7, :cond_b

    .line 1660
    invoke-virtual {v7}, Landroid/view/View;->onStartTemporaryDetach()V

    :cond_b
    move-object v1, v8

    .line 1663
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/HListView;->requestFocus()Z

    move-object v8, v7

    move-object v7, v1

    .line 1678
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/HListView;->detachAllViewsFromParent()V

    .line 1679
    invoke-virtual {v14}, Lit/sephiroth/android/library/widget/p;->d()V

    .line 1681
    move-object/from16 v0, p0

    iget v1, v0, Lit/sephiroth/android/library/widget/HListView;->i:I

    packed-switch v1, :pswitch_data_1

    .line 1708
    if-nez v11, :cond_16

    .line 1709
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lit/sephiroth/android/library/widget/HListView;->L:Z

    if-nez v1, :cond_15

    .line 1710
    const/4 v1, 0x0

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lit/sephiroth/android/library/widget/HListView;->b(IZ)I

    move-result v1

    .line 1711
    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lit/sephiroth/android/library/widget/HListView;->setSelectedPositionInt(I)V

    .line 1712
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lit/sephiroth/android/library/widget/HListView;->g(I)Landroid/view/View;

    move-result-object v1

    move-object v2, v1

    .line 1731
    :goto_4
    invoke-virtual {v14}, Lit/sephiroth/android/library/widget/p;->e()V

    .line 1733
    if-eqz v2, :cond_1e

    .line 1736
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lit/sephiroth/android/library/widget/HListView;->aF:Z

    if-eqz v1, :cond_1d

    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/HListView;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-virtual {v2}, Landroid/view/View;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_1d

    .line 1737
    if-ne v2, v7, :cond_d

    if-eqz v8, :cond_d

    invoke-virtual {v8}, Landroid/view/View;->requestFocus()Z

    move-result v1

    if-nez v1, :cond_e

    :cond_d
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    move-result v1

    if-eqz v1, :cond_1b

    :cond_e
    const/4 v1, 0x1

    .line 1740
    :goto_5
    if-nez v1, :cond_1c

    .line 1744
    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/HListView;->getFocusedChild()Landroid/view/View;

    move-result-object v1

    .line 1745
    if-eqz v1, :cond_f

    .line 1746
    invoke-virtual {v1}, Landroid/view/View;->clearFocus()V

    .line 1748
    :cond_f
    const/4 v1, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lit/sephiroth/android/library/widget/HListView;->a(ILandroid/view/View;)V

    .line 1756
    :goto_6
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lit/sephiroth/android/library/widget/HListView;->K:I

    .line 1791
    :cond_10
    :goto_7
    if-eqz v8, :cond_11

    invoke-virtual {v8}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 1793
    invoke-virtual {v8}, Landroid/view/View;->onFinishTemporaryDetach()V

    .line 1796
    :cond_11
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lit/sephiroth/android/library/widget/HListView;->i:I

    .line 1797
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lit/sephiroth/android/library/widget/HListView;->aj:Z

    .line 1798
    move-object/from16 v0, p0

    iget-object v1, v0, Lit/sephiroth/android/library/widget/HListView;->P:Ljava/lang/Runnable;

    if-eqz v1, :cond_12

    .line 1799
    move-object/from16 v0, p0

    iget-object v1, v0, Lit/sephiroth/android/library/widget/HListView;->P:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lit/sephiroth/android/library/widget/HListView;->post(Ljava/lang/Runnable;)Z

    .line 1800
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lit/sephiroth/android/library/widget/HListView;->P:Ljava/lang/Runnable;

    .line 1802
    :cond_12
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lit/sephiroth/android/library/widget/HListView;->ad:Z

    .line 1803
    move-object/from16 v0, p0

    iget v1, v0, Lit/sephiroth/android/library/widget/HListView;->am:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lit/sephiroth/android/library/widget/HListView;->setNextSelectedPositionInt(I)V

    .line 1805
    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/HListView;->f()V

    .line 1807
    move-object/from16 v0, p0

    iget v1, v0, Lit/sephiroth/android/library/widget/HListView;->ao:I

    if-lez v1, :cond_13

    .line 1808
    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/HListView;->v()V

    .line 1811
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/HListView;->b()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1813
    if-nez v10, :cond_0

    .line 1814
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lit/sephiroth/android/library/widget/HListView;->at:Z

    goto/16 :goto_0

    .line 1683
    :pswitch_2
    if-eqz v3, :cond_14

    .line 1684
    :try_start_4
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v5, v6}, Lit/sephiroth/android/library/widget/HListView;->a(III)Landroid/view/View;

    move-result-object v1

    move-object v2, v1

    goto/16 :goto_4

    .line 1686
    :cond_14
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6}, Lit/sephiroth/android/library/widget/HListView;->i(II)Landroid/view/View;

    move-result-object v1

    move-object v2, v1

    .line 1688
    goto/16 :goto_4

    .line 1690
    :pswitch_3
    move-object/from16 v0, p0

    iget v1, v0, Lit/sephiroth/android/library/widget/HListView;->aa:I

    move-object/from16 v0, p0

    iget v2, v0, Lit/sephiroth/android/library/widget/HListView;->Z:I

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Lit/sephiroth/android/library/widget/HListView;->j(II)Landroid/view/View;

    move-result-object v1

    move-object v2, v1

    .line 1691
    goto/16 :goto_4

    .line 1693
    :pswitch_4
    move-object/from16 v0, p0

    iget v1, v0, Lit/sephiroth/android/library/widget/HListView;->ao:I

    add-int/lit8 v1, v1, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v6}, Lit/sephiroth/android/library/widget/HListView;->h(II)Landroid/view/View;

    move-result-object v1

    .line 1694
    invoke-direct/range {p0 .. p0}, Lit/sephiroth/android/library/widget/HListView;->z()V

    move-object v2, v1

    .line 1695
    goto/16 :goto_4

    .line 1697
    :pswitch_5
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lit/sephiroth/android/library/widget/HListView;->W:I

    .line 1698
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lit/sephiroth/android/library/widget/HListView;->g(I)Landroid/view/View;

    move-result-object v1

    .line 1699
    invoke-direct/range {p0 .. p0}, Lit/sephiroth/android/library/widget/HListView;->z()V

    move-object v2, v1

    .line 1700
    goto/16 :goto_4

    .line 1702
    :pswitch_6
    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/HListView;->m()I

    move-result v1

    move-object/from16 v0, p0

    iget v2, v0, Lit/sephiroth/android/library/widget/HListView;->Z:I

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Lit/sephiroth/android/library/widget/HListView;->j(II)Landroid/view/View;

    move-result-object v1

    move-object v2, v1

    .line 1703
    goto/16 :goto_4

    :pswitch_7
    move-object/from16 v1, p0

    .line 1705
    invoke-direct/range {v1 .. v6}, Lit/sephiroth/android/library/widget/HListView;->a(Landroid/view/View;Landroid/view/View;III)Landroid/view/View;

    move-result-object v1

    move-object v2, v1

    .line 1706
    goto/16 :goto_4

    .line 1714
    :cond_15
    move-object/from16 v0, p0

    iget v1, v0, Lit/sephiroth/android/library/widget/HListView;->ao:I

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lit/sephiroth/android/library/widget/HListView;->b(IZ)I

    move-result v1

    .line 1715
    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lit/sephiroth/android/library/widget/HListView;->setSelectedPositionInt(I)V

    .line 1716
    move-object/from16 v0, p0

    iget v1, v0, Lit/sephiroth/android/library/widget/HListView;->ao:I

    add-int/lit8 v1, v1, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v6}, Lit/sephiroth/android/library/widget/HListView;->h(II)Landroid/view/View;

    move-result-object v1

    move-object v2, v1

    .line 1717
    goto/16 :goto_4

    .line 1719
    :cond_16
    move-object/from16 v0, p0

    iget v1, v0, Lit/sephiroth/android/library/widget/HListView;->am:I

    if-ltz v1, :cond_18

    move-object/from16 v0, p0

    iget v1, v0, Lit/sephiroth/android/library/widget/HListView;->am:I

    move-object/from16 v0, p0

    iget v3, v0, Lit/sephiroth/android/library/widget/HListView;->ao:I

    if-ge v1, v3, :cond_18

    .line 1720
    move-object/from16 v0, p0

    iget v1, v0, Lit/sephiroth/android/library/widget/HListView;->am:I

    if-nez v2, :cond_17

    :goto_8
    move-object/from16 v0, p0

    invoke-direct {v0, v1, v5}, Lit/sephiroth/android/library/widget/HListView;->j(II)Landroid/view/View;

    move-result-object v1

    move-object v2, v1

    goto/16 :goto_4

    :cond_17
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v5

    goto :goto_8

    .line 1721
    :cond_18
    move-object/from16 v0, p0

    iget v1, v0, Lit/sephiroth/android/library/widget/HListView;->W:I

    move-object/from16 v0, p0

    iget v2, v0, Lit/sephiroth/android/library/widget/HListView;->ao:I

    if-ge v1, v2, :cond_1a

    .line 1722
    move-object/from16 v0, p0

    iget v1, v0, Lit/sephiroth/android/library/widget/HListView;->W:I

    if-nez v9, :cond_19

    :goto_9
    move-object/from16 v0, p0

    invoke-direct {v0, v1, v5}, Lit/sephiroth/android/library/widget/HListView;->j(II)Landroid/view/View;

    move-result-object v1

    move-object v2, v1

    goto/16 :goto_4

    :cond_19
    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v5

    goto :goto_9

    .line 1724
    :cond_1a
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v5}, Lit/sephiroth/android/library/widget/HListView;->j(II)Landroid/view/View;

    move-result-object v1

    move-object v2, v1

    goto/16 :goto_4

    .line 1737
    :cond_1b
    const/4 v1, 0x0

    goto/16 :goto_5

    .line 1750
    :cond_1c
    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Landroid/view/View;->setSelected(Z)V

    .line 1751
    move-object/from16 v0, p0

    iget-object v1, v0, Lit/sephiroth/android/library/widget/HListView;->p:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    goto/16 :goto_6

    .line 1754
    :cond_1d
    const/4 v1, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lit/sephiroth/android/library/widget/HListView;->a(ILandroid/view/View;)V

    goto/16 :goto_6

    .line 1758
    :cond_1e
    move-object/from16 v0, p0

    iget v1, v0, Lit/sephiroth/android/library/widget/HListView;->G:I

    if-lez v1, :cond_20

    move-object/from16 v0, p0

    iget v1, v0, Lit/sephiroth/android/library/widget/HListView;->G:I

    const/4 v2, 0x3

    if-ge v1, v2, :cond_20

    .line 1759
    move-object/from16 v0, p0

    iget v1, v0, Lit/sephiroth/android/library/widget/HListView;->B:I

    move-object/from16 v0, p0

    iget v2, v0, Lit/sephiroth/android/library/widget/HListView;->W:I

    sub-int/2addr v1, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lit/sephiroth/android/library/widget/HListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1760
    if-eqz v1, :cond_1f

    move-object/from16 v0, p0

    iget v2, v0, Lit/sephiroth/android/library/widget/HListView;->B:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v1}, Lit/sephiroth/android/library/widget/HListView;->a(ILandroid/view/View;)V

    .line 1768
    :cond_1f
    :goto_a
    invoke-virtual/range {p0 .. p0}, Lit/sephiroth/android/library/widget/HListView;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_10

    if-eqz v8, :cond_10

    .line 1769
    invoke-virtual {v8}, Landroid/view/View;->requestFocus()Z

    goto/16 :goto_7

    .line 1762
    :cond_20
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lit/sephiroth/android/library/widget/HListView;->K:I

    .line 1763
    move-object/from16 v0, p0

    iget-object v1, v0, Lit/sephiroth/android/library/widget/HListView;->p:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_a

    :cond_21
    move-object v8, v7

    move-object v7, v1

    goto/16 :goto_3

    :cond_22
    move-object v9, v1

    goto/16 :goto_1

    .line 1574
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 1681
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_2
        :pswitch_4
        :pswitch_6
        :pswitch_3
        :pswitch_7
    .end packed-switch
.end method

.method public f(II)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 2027
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->k:Landroid/widget/ListAdapter;

    if-nez v0, :cond_1

    .line 2054
    :cond_0
    :goto_0
    return-void

    .line 2031
    :cond_1
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_5

    .line 2032
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lit/sephiroth/android/library/widget/HListView;->b(IZ)I

    move-result p1

    .line 2033
    if-ltz p1, :cond_2

    .line 2034
    invoke-virtual {p0, p1}, Lit/sephiroth/android/library/widget/HListView;->setNextSelectedPositionInt(I)V

    .line 2040
    :cond_2
    :goto_1
    if-ltz p1, :cond_0

    .line 2041
    const/4 v0, 0x4

    iput v0, p0, Lit/sephiroth/android/library/widget/HListView;->i:I

    .line 2042
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->v:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, p2

    iput v0, p0, Lit/sephiroth/android/library/widget/HListView;->Z:I

    .line 2044
    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/HListView;->ad:Z

    if-eqz v0, :cond_3

    .line 2045
    iput p1, p0, Lit/sephiroth/android/library/widget/HListView;->aa:I

    .line 2046
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->k:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    iput-wide v0, p0, Lit/sephiroth/android/library/widget/HListView;->ab:J

    .line 2049
    :cond_3
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->J:Lit/sephiroth/android/library/widget/m;

    if-eqz v0, :cond_4

    .line 2050
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->J:Lit/sephiroth/android/library/widget/m;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/m;->a()V

    .line 2052
    :cond_4
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->requestLayout()V

    goto :goto_0

    .line 2037
    :cond_5
    iput p1, p0, Lit/sephiroth/android/library/widget/HListView;->N:I

    goto :goto_1
.end method

.method public f(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 323
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lit/sephiroth/android/library/widget/HListView;->a(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 324
    return-void
.end method

.method public g(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 410
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lit/sephiroth/android/library/widget/HListView;->b(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 411
    return-void
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 1

    .prologue
    .line 80
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 450
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->k:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getCheckItemIds()[J
    .locals 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 3594
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->k:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->k:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3595
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getCheckedItemIds()[J

    move-result-object v0

    .line 3624
    :goto_0
    return-object v0

    .line 3600
    :cond_0
    iget v0, p0, Lit/sephiroth/android/library/widget/HListView;->c:I

    if-eqz v0, :cond_3

    iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->g:Landroid/support/v4/util/SparseArrayCompat;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->k:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_3

    .line 3601
    iget-object v5, p0, Lit/sephiroth/android/library/widget/HListView;->g:Landroid/support/v4/util/SparseArrayCompat;

    .line 3602
    invoke-virtual {v5}, Landroid/support/v4/util/SparseArrayCompat;->size()I

    move-result v6

    .line 3603
    new-array v2, v6, [J

    .line 3604
    iget-object v7, p0, Lit/sephiroth/android/library/widget/HListView;->k:Landroid/widget/ListAdapter;

    move v3, v4

    move v1, v4

    .line 3607
    :goto_1
    if-ge v3, v6, :cond_1

    .line 3608
    invoke-virtual {v5, v3}, Landroid/support/v4/util/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3609
    add-int/lit8 v0, v1, 0x1

    invoke-virtual {v5, v3}, Landroid/support/v4/util/SparseArrayCompat;->keyAt(I)I

    move-result v8

    invoke-interface {v7, v8}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v8

    aput-wide v8, v2, v1

    .line 3607
    :goto_2
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v0

    goto :goto_1

    .line 3615
    :cond_1
    if-ne v1, v6, :cond_2

    move-object v0, v2

    .line 3616
    goto :goto_0

    .line 3618
    :cond_2
    new-array v0, v1, [J

    .line 3619
    invoke-static {v2, v4, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 3624
    :cond_3
    new-array v0, v4, [J

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_2
.end method

.method public getDivider()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 3377
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->au:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDividerWidth()I
    .locals 1

    .prologue
    .line 3407
    iget v0, p0, Lit/sephiroth/android/library/widget/HListView;->av:I

    return v0
.end method

.method public getFooterViewsCount()I
    .locals 1

    .prologue
    .line 415
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->az:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getHeaderViewsCount()I
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemsCanFocus()Z
    .locals 1

    .prologue
    .line 3122
    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/HListView;->aF:Z

    return v0
.end method

.method public getMaxScrollAmount()I
    .locals 3

    .prologue
    .line 229
    const v0, 0x3ea8f5c3

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getRight()I

    move-result v1

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getLeft()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getOverscrollFooter()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 3491
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->ay:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getOverscrollHeader()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 3472
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->ax:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method h(I)Z
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2328
    const/4 v2, -0x1

    .line 2331
    const/16 v3, 0x21

    if-ne p1, v3, :cond_3

    iget v2, p0, Lit/sephiroth/android/library/widget/HListView;->am:I

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getChildCount()I

    move-result v3

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    move v3, v2

    move v2, v1

    .line 2337
    :goto_0
    if-ltz v3, :cond_4

    .line 2338
    invoke-virtual {p0, v3, v2}, Lit/sephiroth/android/library/widget/HListView;->b(IZ)I

    move-result v3

    .line 2339
    if-ltz v3, :cond_4

    .line 2340
    const/4 v1, 0x4

    iput v1, p0, Lit/sephiroth/android/library/widget/HListView;->i:I

    .line 2341
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getHorizontalFadingEdgeLength()I

    move-result v4

    add-int/2addr v1, v4

    iput v1, p0, Lit/sephiroth/android/library/widget/HListView;->Z:I

    .line 2343
    if-eqz v2, :cond_0

    iget v1, p0, Lit/sephiroth/android/library/widget/HListView;->ao:I

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getChildCount()I

    move-result v4

    sub-int/2addr v1, v4

    if-le v3, v1, :cond_0

    .line 2344
    const/4 v1, 0x3

    iput v1, p0, Lit/sephiroth/android/library/widget/HListView;->i:I

    .line 2347
    :cond_0
    if-nez v2, :cond_1

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getChildCount()I

    move-result v1

    if-ge v3, v1, :cond_1

    .line 2348
    iput v0, p0, Lit/sephiroth/android/library/widget/HListView;->i:I

    .line 2351
    :cond_1
    invoke-virtual {p0, v3}, Lit/sephiroth/android/library/widget/HListView;->setSelectionInt(I)V

    .line 2352
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->b()V

    .line 2353
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->awakenScrollBars()Z

    move-result v1

    if-nez v1, :cond_2

    .line 2354
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->invalidate()V

    .line 2361
    :cond_2
    :goto_1
    return v0

    .line 2332
    :cond_3
    const/16 v3, 0x82

    if-ne p1, v3, :cond_5

    .line 2333
    iget v2, p0, Lit/sephiroth/android/library/widget/HListView;->ao:I

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lit/sephiroth/android/library/widget/HListView;->am:I

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getChildCount()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    move v3, v2

    move v2, v0

    .line 2334
    goto :goto_0

    :cond_4
    move v0, v1

    .line 2361
    goto :goto_1

    :cond_5
    move v3, v2

    move v2, v1

    goto :goto_0
.end method

.method i(I)Z
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 2374
    .line 2375
    const/16 v2, 0x21

    if-ne p1, v2, :cond_2

    .line 2376
    iget v2, p0, Lit/sephiroth/android/library/widget/HListView;->am:I

    if-eqz v2, :cond_3

    .line 2377
    invoke-virtual {p0, v1, v0}, Lit/sephiroth/android/library/widget/HListView;->b(IZ)I

    move-result v1

    .line 2378
    if-ltz v1, :cond_0

    .line 2379
    iput v0, p0, Lit/sephiroth/android/library/widget/HListView;->i:I

    .line 2380
    invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/HListView;->setSelectionInt(I)V

    .line 2381
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->b()V

    .line 2397
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->awakenScrollBars()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2398
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->awakenScrollBars()Z

    .line 2399
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->invalidate()V

    .line 2402
    :cond_1
    return v0

    .line 2385
    :cond_2
    const/16 v2, 0x82

    if-ne p1, v2, :cond_3

    .line 2386
    iget v2, p0, Lit/sephiroth/android/library/widget/HListView;->am:I

    iget v3, p0, Lit/sephiroth/android/library/widget/HListView;->ao:I

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_3

    .line 2387
    iget v1, p0, Lit/sephiroth/android/library/widget/HListView;->ao:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1, v0}, Lit/sephiroth/android/library/widget/HListView;->b(IZ)I

    move-result v1

    .line 2388
    if-ltz v1, :cond_0

    .line 2389
    const/4 v2, 0x3

    iput v2, p0, Lit/sephiroth/android/library/widget/HListView;->i:I

    .line 2390
    invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/HListView;->setSelectionInt(I)V

    .line 2391
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->b()V

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public isOpaque()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 3127
    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/HListView;->A:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/HListView;->aA:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/HListView;->aB:Z

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->isOpaque()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    const/4 v2, 0x1

    .line 3128
    :goto_0
    if-eqz v2, :cond_8

    .line 3130
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->v:Landroid/graphics/Rect;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->v:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    .line 3131
    :goto_1
    invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/HListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 3132
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    if-le v3, v0, :cond_5

    :cond_2
    move v0, v1

    .line 3141
    :goto_2
    return v0

    :cond_3
    move v2, v1

    .line 3127
    goto :goto_0

    .line 3130
    :cond_4
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getPaddingLeft()I

    move-result v0

    goto :goto_1

    .line 3135
    :cond_5
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getWidth()I

    move-result v3

    iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->v:Landroid/graphics/Rect;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->v:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    :goto_3
    sub-int v0, v3, v0

    .line 3136
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0, v3}, Lit/sephiroth/android/library/widget/HListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 3137
    if-eqz v3, :cond_6

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    if-ge v3, v0, :cond_8

    :cond_6
    move v0, v1

    .line 3138
    goto :goto_2

    .line 3135
    :cond_7
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getPaddingRight()I

    move-result v0

    goto :goto_3

    :cond_8
    move v0, v2

    .line 3141
    goto :goto_2
.end method

.method j(I)Z
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 2462
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lit/sephiroth/android/library/widget/HListView;->af:Z

    .line 2463
    invoke-direct {p0, p1}, Lit/sephiroth/android/library/widget/HListView;->n(I)Z

    move-result v0

    .line 2464
    if-eqz v0, :cond_0

    .line 2465
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lit/sephiroth/android/library/widget/HListView;->playSoundEffect(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2469
    :cond_0
    iput-boolean v2, p0, Lit/sephiroth/android/library/widget/HListView;->af:Z

    return v0

    :catchall_0
    move-exception v0

    iput-boolean v2, p0, Lit/sephiroth/android/library/widget/HListView;->af:Z

    throw v0
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 3552
    invoke-super {p0}, Lit/sephiroth/android/library/widget/AbsHListView;->onFinishInflate()V

    .line 3554
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getChildCount()I

    move-result v1

    .line 3555
    if-lez v1, :cond_1

    .line 3556
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 3557
    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/HListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Lit/sephiroth/android/library/widget/HListView;->f(Landroid/view/View;)V

    .line 3556
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3559
    :cond_0
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->removeAllViews()V

    .line 3561
    :cond_1
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 3496
    invoke-super {p0, p1, p2, p3}, Lit/sephiroth/android/library/widget/AbsHListView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 3498
    iget-object v5, p0, Lit/sephiroth/android/library/widget/HListView;->k:Landroid/widget/ListAdapter;

    .line 3499
    const/4 v3, -0x1

    .line 3501
    if-eqz v5, :cond_2

    if-eqz p1, :cond_2

    if-eqz p3, :cond_2

    .line 3502
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getScrollY()I

    move-result v1

    invoke-virtual {p3, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 3506
    invoke-interface {v5}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getChildCount()I

    move-result v1

    iget v4, p0, Lit/sephiroth/android/library/widget/HListView;->W:I

    add-int/2addr v1, v4

    if-ge v0, v1, :cond_0

    .line 3507
    iput v2, p0, Lit/sephiroth/android/library/widget/HListView;->i:I

    .line 3508
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->e()V

    .line 3513
    :cond_0
    iget-object v6, p0, Lit/sephiroth/android/library/widget/HListView;->aG:Landroid/graphics/Rect;

    .line 3514
    const v0, 0x7fffffff

    .line 3515
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getChildCount()I

    move-result v7

    .line 3516
    iget v8, p0, Lit/sephiroth/android/library/widget/HListView;->W:I

    move v4, v2

    .line 3518
    :goto_0
    if-ge v4, v7, :cond_2

    .line 3520
    add-int v1, v8, v4

    invoke-interface {v5, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v2

    move v2, v3

    .line 3518
    :goto_1
    add-int/lit8 v4, v4, 0x1

    move v3, v2

    move v2, v1

    goto :goto_0

    .line 3524
    :cond_1
    invoke-virtual {p0, v4}, Lit/sephiroth/android/library/widget/HListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 3525
    invoke-virtual {v9, v6}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 3526
    invoke-virtual {p0, v9, v6}, Lit/sephiroth/android/library/widget/HListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 3527
    invoke-static {p3, v6, p2}, Lit/sephiroth/android/library/widget/HListView;->a(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I

    move-result v1

    .line 3529
    if-ge v1, v0, :cond_4

    .line 3532
    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v0

    move v2, v4

    move v10, v0

    move v0, v1

    move v1, v10

    goto :goto_1

    .line 3537
    :cond_2
    if-ltz v3, :cond_3

    .line 3538
    iget v0, p0, Lit/sephiroth/android/library/widget/HListView;->W:I

    add-int/2addr v0, v3

    invoke-virtual {p0, v0, v2}, Lit/sephiroth/android/library/widget/HListView;->f(II)V

    .line 3542
    :goto_2
    return-void

    .line 3540
    :cond_3
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->requestLayout()V

    goto :goto_2

    :cond_4
    move v1, v2

    move v2, v3

    goto :goto_1
.end method

.method public onGlobalLayout()V
    .locals 0

    .prologue
    .line 3641
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .parameter

    .prologue
    .line 3629
    invoke-super {p0, p1}, Lit/sephiroth/android/library/widget/AbsHListView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 3630
    const-class v0, Lit/sephiroth/android/library/widget/HListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 3631
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .parameter
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 3636
    invoke-super {p0, p1}, Lit/sephiroth/android/library/widget/AbsHListView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 3637
    const-class v0, Lit/sephiroth/android/library/widget/HListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 3638
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter

    .prologue
    .line 3645
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/HListView;->aK:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/viber/voip/util/gl;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3646
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 3649
    :cond_0
    invoke-super {p0, p1}, Lit/sephiroth/android/library/widget/AbsHListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2168
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lit/sephiroth/android/library/widget/HListView;->a(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2173
    invoke-direct {p0, p1, p2, p3}, Lit/sephiroth/android/library/widget/HListView;->a(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2178
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lit/sephiroth/android/library/widget/HListView;->a(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onMeasure(II)V
    .locals 9
    .parameter
    .parameter
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 1123
    invoke-super {p0, p1, p2}, Lit/sephiroth/android/library/widget/AbsHListView;->onMeasure(II)V

    .line 1125
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v7

    .line 1128
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 1129
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 1135
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->k:Landroid/widget/ListAdapter;

    if-nez v0, :cond_5

    move v0, v2

    :goto_0
    iput v0, p0, Lit/sephiroth/android/library/widget/HListView;->ao:I

    .line 1137
    iget v0, p0, Lit/sephiroth/android/library/widget/HListView;->ao:I

    if-lez v0, :cond_6

    if-eqz v7, :cond_0

    .line 1142
    :cond_0
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->Q:[Z

    invoke-virtual {p0, v2, v0}, Lit/sephiroth/android/library/widget/HListView;->a(I[Z)Landroid/view/View;

    move-result-object v6

    .line 1144
    invoke-direct {p0, v6, v2, p2}, Lit/sephiroth/android/library/widget/HListView;->a(Landroid/view/View;II)V

    .line 1146
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .line 1147
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 1149
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0xb

    if-lt v0, v8, :cond_1

    .line 1150
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredState()I

    move-result v0

    invoke-static {v2, v0}, Lit/sephiroth/android/library/widget/HListView;->combineMeasuredStates(II)I

    .line 1153
    :cond_1
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->y()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v8, p0, Lit/sephiroth/android/library/widget/HListView;->q:Lit/sephiroth/android/library/widget/p;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lit/sephiroth/android/library/widget/i;

    iget v0, v0, Lit/sephiroth/android/library/widget/i;->a:I

    invoke-virtual {v8, v0}, Lit/sephiroth/android/library/widget/p;->b(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1154
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->q:Lit/sephiroth/android/library/widget/p;

    invoke-virtual {v0, v6, v3}, Lit/sephiroth/android/library/widget/p;->a(Landroid/view/View;I)V

    :cond_2
    move v0, v1

    move v1, v5

    .line 1159
    :goto_1
    iget-object v5, p0, Lit/sephiroth/android/library/widget/HListView;->v:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Lit/sephiroth/android/library/widget/HListView;->v:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v6

    add-int/2addr v0, v5

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getHorizontalScrollbarHeight()I

    move-result v5

    add-int/2addr v0, v5

    move v6, v0

    .line 1172
    if-nez v7, :cond_3

    .line 1173
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->v:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lit/sephiroth/android/library/widget/HListView;->v:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v4

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getHorizontalFadingEdgeLength()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int v4, v0, v1

    .line 1176
    :cond_3
    const/high16 v0, -0x8000

    if-ne v7, v0, :cond_4

    move-object v0, p0

    move v1, p2

    move v5, v3

    .line 1177
    invoke-virtual/range {v0 .. v5}, Lit/sephiroth/android/library/widget/HListView;->a(IIIII)I

    move-result v4

    .line 1184
    :cond_4
    invoke-virtual {p0, v4, v6}, Lit/sephiroth/android/library/widget/HListView;->setMeasuredDimension(II)V

    .line 1185
    iput p2, p0, Lit/sephiroth/android/library/widget/HListView;->w:I

    .line 1186
    return-void

    .line 1135
    :cond_5
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->k:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    goto :goto_0

    :cond_6
    move v0, v2

    move v1, v2

    goto :goto_1
.end method

.method protected onSizeChanged(IIII)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1103
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 1104
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    .line 1105
    if-eqz v0, :cond_1

    .line 1106
    iget v1, p0, Lit/sephiroth/android/library/widget/HListView;->W:I

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/HListView;->indexOfChild(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    .line 1107
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v2

    .line 1108
    const/4 v3, 0x0

    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getPaddingLeft()I

    move-result v4

    sub-int v4, p1, v4

    sub-int/2addr v2, v4

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1109
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    sub-int/2addr v0, v2

    .line 1110
    iget-object v2, p0, Lit/sephiroth/android/library/widget/HListView;->aJ:Lit/sephiroth/android/library/widget/ar;

    if-nez v2, :cond_0

    .line 1111
    new-instance v2, Lit/sephiroth/android/library/widget/ar;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lit/sephiroth/android/library/widget/ar;-><init>(Lit/sephiroth/android/library/widget/HListView;Lit/sephiroth/android/library/widget/ao;)V

    iput-object v2, p0, Lit/sephiroth/android/library/widget/HListView;->aJ:Lit/sephiroth/android/library/widget/ar;

    .line 1113
    :cond_0
    iget-object v2, p0, Lit/sephiroth/android/library/widget/HListView;->aJ:Lit/sephiroth/android/library/widget/ar;

    invoke-virtual {v2, v1, v0}, Lit/sephiroth/android/library/widget/ar;->a(II)Lit/sephiroth/android/library/widget/ar;

    move-result-object v0

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/HListView;->post(Ljava/lang/Runnable;)Z

    .line 1116
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lit/sephiroth/android/library/widget/AbsHListView;->onSizeChanged(IIII)V

    .line 1117
    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 574
    iget v3, p2, Landroid/graphics/Rect;->left:I

    .line 577
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 578
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v0

    neg-int v0, v0

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v1

    neg-int v1, v1

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 580
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getWidth()I

    move-result v4

    .line 581
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getScrollX()I

    move-result v0

    .line 582
    add-int v1, v0, v4

    .line 583
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getHorizontalFadingEdgeLength()I

    move-result v5

    .line 585
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/HListView;->A()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 587
    iget v6, p0, Lit/sephiroth/android/library/widget/HListView;->am:I

    if-gtz v6, :cond_0

    if-le v3, v5, :cond_1

    .line 588
    :cond_0
    add-int/2addr v0, v5

    .line 592
    :cond_1
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getChildCount()I

    move-result v3

    .line 593
    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0, v3}, Lit/sephiroth/android/library/widget/HListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    .line 595
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/HListView;->B()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 597
    iget v6, p0, Lit/sephiroth/android/library/widget/HListView;->am:I

    iget v7, p0, Lit/sephiroth/android/library/widget/HListView;->ao:I

    add-int/lit8 v7, v7, -0x1

    if-lt v6, v7, :cond_2

    iget v6, p2, Landroid/graphics/Rect;->right:I

    sub-int v7, v3, v5

    if-ge v6, v7, :cond_3

    .line 599
    :cond_2
    sub-int/2addr v1, v5

    .line 605
    :cond_3
    iget v5, p2, Landroid/graphics/Rect;->right:I

    if-le v5, v1, :cond_6

    iget v5, p2, Landroid/graphics/Rect;->left:I

    if-le v5, v0, :cond_6

    .line 610
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v5

    if-le v5, v4, :cond_5

    .line 612
    iget v4, p2, Landroid/graphics/Rect;->left:I

    sub-int v0, v4, v0

    add-int/2addr v0, v2

    .line 619
    :goto_0
    sub-int v1, v3, v1

    .line 620
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    move v1, v0

    .line 640
    :goto_1
    if-eqz v1, :cond_8

    const/4 v0, 0x1

    .line 641
    :goto_2
    if-eqz v0, :cond_4

    .line 642
    neg-int v1, v1

    invoke-direct {p0, v1}, Lit/sephiroth/android/library/widget/HListView;->q(I)V

    .line 643
    const/4 v1, -0x1

    invoke-virtual {p0, v1, p1}, Lit/sephiroth/android/library/widget/HListView;->a(ILandroid/view/View;)V

    .line 644
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    iput v1, p0, Lit/sephiroth/android/library/widget/HListView;->K:I

    .line 645
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->invalidate()V

    .line 647
    :cond_4
    return v0

    .line 615
    :cond_5
    iget v0, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    add-int/2addr v0, v2

    goto :goto_0

    .line 621
    :cond_6
    iget v3, p2, Landroid/graphics/Rect;->left:I

    if-ge v3, v0, :cond_9

    iget v3, p2, Landroid/graphics/Rect;->right:I

    if-ge v3, v1, :cond_9

    .line 626
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-le v3, v4, :cond_7

    .line 628
    iget v3, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v3

    sub-int v1, v2, v1

    .line 635
    :goto_3
    invoke-virtual {p0, v2}, Lit/sephiroth/android/library/widget/HListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    .line 636
    sub-int v0, v3, v0

    .line 637
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v1, v0

    goto :goto_1

    .line 631
    :cond_7
    iget v1, p2, Landroid/graphics/Rect;->left:I

    sub-int v1, v0, v1

    sub-int v1, v2, v1

    goto :goto_3

    :cond_8
    move v0, v2

    .line 640
    goto :goto_2

    :cond_9
    move v1, v2

    goto :goto_1
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .parameter

    .prologue
    .line 80
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lit/sephiroth/android/library/widget/HListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 467
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->k:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->j:Lit/sephiroth/android/library/widget/c;

    if-eqz v0, :cond_0

    .line 468
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->k:Landroid/widget/ListAdapter;

    iget-object v1, p0, Lit/sephiroth/android/library/widget/HListView;->j:Lit/sephiroth/android/library/widget/c;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 471
    :cond_0
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->d()V

    .line 472
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->q:Lit/sephiroth/android/library/widget/p;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/p;->b()V

    .line 474
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_1

    iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->az:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 475
    :cond_1
    new-instance v0, Lit/sephiroth/android/library/widget/as;

    iget-object v1, p0, Lit/sephiroth/android/library/widget/HListView;->a:Ljava/util/ArrayList;

    iget-object v2, p0, Lit/sephiroth/android/library/widget/HListView;->az:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2, p1}, Lit/sephiroth/android/library/widget/as;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)V

    iput-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->k:Landroid/widget/ListAdapter;

    .line 480
    :goto_0
    const/4 v0, -0x1

    iput v0, p0, Lit/sephiroth/android/library/widget/HListView;->ar:I

    .line 481
    const-wide/high16 v0, -0x8000

    iput-wide v0, p0, Lit/sephiroth/android/library/widget/HListView;->as:J

    .line 484
    invoke-super {p0, p1}, Lit/sephiroth/android/library/widget/AbsHListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 486
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->k:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_5

    .line 487
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->k:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lit/sephiroth/android/library/widget/HListView;->aE:Z

    .line 488
    iget v0, p0, Lit/sephiroth/android/library/widget/HListView;->ao:I

    iput v0, p0, Lit/sephiroth/android/library/widget/HListView;->ap:I

    .line 489
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->k:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    iput v0, p0, Lit/sephiroth/android/library/widget/HListView;->ao:I

    .line 490
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->t()V

    .line 492
    new-instance v0, Lit/sephiroth/android/library/widget/c;

    invoke-direct {v0, p0}, Lit/sephiroth/android/library/widget/c;-><init>(Lit/sephiroth/android/library/widget/AbsHListView;)V

    iput-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->j:Lit/sephiroth/android/library/widget/c;

    .line 493
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->k:Landroid/widget/ListAdapter;

    iget-object v1, p0, Lit/sephiroth/android/library/widget/HListView;->j:Lit/sephiroth/android/library/widget/c;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 495
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->q:Lit/sephiroth/android/library/widget/p;

    iget-object v1, p0, Lit/sephiroth/android/library/widget/HListView;->k:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lit/sephiroth/android/library/widget/p;->a(I)V

    .line 498
    iget-boolean v0, p0, Lit/sephiroth/android/library/widget/HListView;->L:Z

    if-eqz v0, :cond_4

    .line 499
    iget v0, p0, Lit/sephiroth/android/library/widget/HListView;->ao:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0, v3}, Lit/sephiroth/android/library/widget/HListView;->b(IZ)I

    move-result v0

    .line 503
    :goto_1
    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/HListView;->setSelectedPositionInt(I)V

    .line 504
    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/HListView;->setNextSelectedPositionInt(I)V

    .line 506
    iget v0, p0, Lit/sephiroth/android/library/widget/HListView;->ao:I

    if-nez v0, :cond_2

    .line 508
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->v()V

    .line 517
    :cond_2
    :goto_2
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->requestLayout()V

    .line 518
    return-void

    .line 477
    :cond_3
    iput-object p1, p0, Lit/sephiroth/android/library/widget/HListView;->k:Landroid/widget/ListAdapter;

    goto :goto_0

    .line 501
    :cond_4
    invoke-virtual {p0, v3, v4}, Lit/sephiroth/android/library/widget/HListView;->b(IZ)I

    move-result v0

    goto :goto_1

    .line 511
    :cond_5
    iput-boolean v4, p0, Lit/sephiroth/android/library/widget/HListView;->aE:Z

    .line 512
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->t()V

    .line 514
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->v()V

    goto :goto_2
.end method

.method public setCacheColorHint(I)V
    .locals 2
    .parameter

    .prologue
    .line 3146
    ushr-int/lit8 v0, p1, 0x18

    const/16 v1, 0xff

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    .line 3147
    :goto_0
    iput-boolean v0, p0, Lit/sephiroth/android/library/widget/HListView;->aA:Z

    .line 3148
    if-eqz v0, :cond_1

    .line 3149
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->aH:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 3150
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->aH:Landroid/graphics/Paint;

    .line 3152
    :cond_0
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView;->aH:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 3154
    :cond_1
    invoke-super {p0, p1}, Lit/sephiroth/android/library/widget/AbsHListView;->setCacheColorHint(I)V

    .line 3155
    return-void

    .line 3146
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 3392
    if-eqz p1, :cond_2

    .line 3393
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, p0, Lit/sephiroth/android/library/widget/HListView;->av:I

    .line 3397
    :goto_0
    iput-object p1, p0, Lit/sephiroth/android/library/widget/HListView;->au:Landroid/graphics/drawable/Drawable;

    .line 3398
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    iput-boolean v0, p0, Lit/sephiroth/android/library/widget/HListView;->aB:Z

    .line 3399
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->requestLayout()V

    .line 3400
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->invalidate()V

    .line 3401
    return-void

    .line 3395
    :cond_2
    iput v0, p0, Lit/sephiroth/android/library/widget/HListView;->av:I

    goto :goto_0
.end method

.method public setDividerWidth(I)V
    .locals 0
    .parameter

    .prologue
    .line 3421
    iput p1, p0, Lit/sephiroth/android/library/widget/HListView;->av:I

    .line 3422
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->requestLayout()V

    .line 3423
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->invalidate()V

    .line 3424
    return-void
.end method

.method public setFooterDividersEnabled(Z)V
    .locals 0
    .parameter

    .prologue
    .line 3450
    iput-boolean p1, p0, Lit/sephiroth/android/library/widget/HListView;->aD:Z

    .line 3451
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->invalidate()V

    .line 3452
    return-void
.end method

.method public setHeaderDividersEnabled(Z)V
    .locals 0
    .parameter

    .prologue
    .line 3436
    iput-boolean p1, p0, Lit/sephiroth/android/library/widget/HListView;->aC:Z

    .line 3437
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->invalidate()V

    .line 3438
    return-void
.end method

.method public setItemsCanFocus(Z)V
    .locals 1
    .parameter

    .prologue
    .line 3112
    iput-boolean p1, p0, Lit/sephiroth/android/library/widget/HListView;->aF:Z

    .line 3113
    if-nez p1, :cond_0

    .line 3114
    const/high16 v0, 0x6

    invoke-virtual {p0, v0}, Lit/sephiroth/android/library/widget/HListView;->setDescendantFocusability(I)V

    .line 3116
    :cond_0
    return-void
.end method

.method public setNeedInterceptEvents(Z)V
    .locals 0
    .parameter

    .prologue
    .line 3661
    iput-boolean p1, p0, Lit/sephiroth/android/library/widget/HListView;->aK:Z

    .line 3662
    return-void
.end method

.method public setOverscrollFooter(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter

    .prologue
    .line 3483
    iput-object p1, p0, Lit/sephiroth/android/library/widget/HListView;->ay:Landroid/graphics/drawable/Drawable;

    .line 3484
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->invalidate()V

    .line 3485
    return-void
.end method

.method public setOverscrollHeader(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter

    .prologue
    .line 3462
    iput-object p1, p0, Lit/sephiroth/android/library/widget/HListView;->ax:Landroid/graphics/drawable/Drawable;

    .line 3463
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->getScrollX()I

    move-result v0

    if-gez v0, :cond_0

    .line 3464
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->invalidate()V

    .line 3466
    :cond_0
    return-void
.end method

.method public setSelection(I)V
    .locals 1
    .parameter

    .prologue
    .line 2014
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lit/sephiroth/android/library/widget/HListView;->f(II)V

    .line 2015
    return-void
.end method

.method public setSelectionInt(I)V
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 2064
    invoke-virtual {p0, p1}, Lit/sephiroth/android/library/widget/HListView;->setNextSelectedPositionInt(I)V

    .line 2065
    const/4 v1, 0x0

    .line 2067
    iget v2, p0, Lit/sephiroth/android/library/widget/HListView;->am:I

    .line 2069
    if-ltz v2, :cond_4

    .line 2070
    add-int/lit8 v3, v2, -0x1

    if-ne p1, v3, :cond_3

    .line 2077
    :cond_0
    :goto_0
    iget-object v1, p0, Lit/sephiroth/android/library/widget/HListView;->J:Lit/sephiroth/android/library/widget/m;

    if-eqz v1, :cond_1

    .line 2078
    iget-object v1, p0, Lit/sephiroth/android/library/widget/HListView;->J:Lit/sephiroth/android/library/widget/m;

    invoke-virtual {v1}, Lit/sephiroth/android/library/widget/m;->a()V

    .line 2081
    :cond_1
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->e()V

    .line 2083
    if-eqz v0, :cond_2

    .line 2084
    invoke-virtual {p0}, Lit/sephiroth/android/library/widget/HListView;->awakenScrollBars()Z

    .line 2086
    :cond_2
    return-void

    .line 2072
    :cond_3
    add-int/lit8 v2, v2, 0x1

    if-eq p1, v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method protected y()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "list"
    .end annotation

    .prologue
    .line 1223
    const/4 v0, 0x1

    return v0
.end method
