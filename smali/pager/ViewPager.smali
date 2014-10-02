.class public Lpager/ViewPager;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# static fields
.field private static final a:[I

.field private static final b:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lpager/e;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Landroid/view/animation/Interpolator;


# instance fields
.field private A:Z

.field private B:I

.field private C:I

.field private D:I

.field private E:F

.field private F:F

.field private G:F

.field private H:I

.field private I:Landroid/view/VelocityTracker;

.field private J:I

.field private K:I

.field private L:I

.field private M:I

.field private N:Z

.field private O:Landroid/support/v4/widget/EdgeEffectCompat;

.field private P:Landroid/support/v4/widget/EdgeEffectCompat;

.field private Q:Z

.field private R:Z

.field private S:Z

.field private T:I

.field private U:Lpager/h;

.field private V:Lpager/h;

.field private W:Lpager/g;

.field private Z:I

.field private final d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lpager/e;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lpager/e;

.field private final f:Landroid/graphics/Rect;

.field private g:Lpager/a;

.field private h:I

.field private i:I

.field private j:Landroid/os/Parcelable;

.field private k:Ljava/lang/ClassLoader;

.field private l:Landroid/widget/Scroller;

.field private m:Lpager/i;

.field private n:I

.field private o:Landroid/graphics/drawable/Drawable;

.field private p:I

.field private q:I

.field private r:F

.field private s:F

.field private t:I

.field private u:I

.field private v:Z

.field private w:Z

.field private x:Z

.field private y:I

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 108
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100b3

    aput v2, v0, v1

    sput-object v0, Lpager/ViewPager;->a:[I

    .line 120
    new-instance v0, Lpager/b;

    invoke-direct {v0}, Lpager/b;-><init>()V

    sput-object v0, Lpager/ViewPager;->b:Ljava/util/Comparator;

    .line 127
    new-instance v0, Lpager/c;

    invoke-direct {v0}, Lpager/c;-><init>()V

    sput-object v0, Lpager/ViewPager;->c:Landroid/view/animation/Interpolator;

    return-void
.end method

.method private a(IFII)I
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1927
    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lpager/ViewPager;->L:I

    if-le v0, v1, :cond_2

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lpager/ViewPager;->J:I

    if-le v0, v1, :cond_2

    .line 1928
    if-lez p3, :cond_1

    .line 1933
    :goto_0
    iget-object v0, p0, Lpager/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1934
    iget-object v0, p0, Lpager/ViewPager;->d:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpager/e;

    .line 1935
    iget-object v1, p0, Lpager/ViewPager;->d:Ljava/util/ArrayList;

    iget-object v2, p0, Lpager/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpager/e;

    .line 1938
    iget v0, v0, Lpager/e;->b:I

    iget v1, v1, Lpager/e;->b:I

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1941
    :cond_0
    return p1

    .line 1928
    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 1930
    :cond_2
    int-to-float v0, p1

    add-float/2addr v0, p2

    const/high16 v1, 0x3f00

    add-float/2addr v0, v1

    float-to-int p1, v0

    goto :goto_0
.end method

.method private a(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 2316
    if-nez p1, :cond_2

    .line 2317
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 2319
    :goto_0
    if-nez p2, :cond_0

    .line 2320
    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    move-object v0, v1

    .line 2338
    :goto_1
    return-object v0

    .line 2323
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v0

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 2324
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v0

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 2325
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 2326
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v0

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 2328
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2329
    :goto_2
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    if-eq v0, p0, :cond_1

    .line 2330
    check-cast v0, Landroid/view/ViewGroup;

    .line 2331
    iget v2, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLeft()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 2332
    iget v2, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getRight()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 2333
    iget v2, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTop()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 2334
    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getBottom()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 2336
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_2

    :cond_1
    move-object v0, v1

    .line 2338
    goto :goto_1

    :cond_2
    move-object v1, p1

    goto :goto_0
.end method

.method private a(IIII)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1303
    iget-object v0, p0, Lpager/ViewPager;->l:Landroid/widget/Scroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 1305
    iget v0, p0, Lpager/ViewPager;->h:I

    invoke-virtual {p0, v0}, Lpager/ViewPager;->b(I)Lpager/e;

    move-result-object v0

    .line 1306
    if-eqz v0, :cond_1

    iget v0, v0, Lpager/e;->e:F

    iget v1, p0, Lpager/ViewPager;->s:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 1307
    :goto_0
    int-to-float v1, p1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 1308
    invoke-virtual {p0}, Lpager/ViewPager;->getScrollX()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 1309
    invoke-direct {p0}, Lpager/ViewPager;->g()V

    .line 1310
    invoke-virtual {p0}, Lpager/ViewPager;->getScrollY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lpager/ViewPager;->scrollTo(II)V

    .line 1313
    :cond_0
    return-void

    .line 1306
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Landroid/view/MotionEvent;)V
    .locals 3
    .parameter

    .prologue
    .line 2159
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v0

    .line 2160
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v1

    .line 2161
    iget v2, p0, Lpager/ViewPager;->H:I

    if-ne v1, v2, :cond_0

    .line 2164
    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 2165
    :goto_0
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v1

    iput v1, p0, Lpager/ViewPager;->F:F

    .line 2166
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lpager/ViewPager;->H:I

    .line 2167
    iget-object v0, p0, Lpager/ViewPager;->I:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 2168
    iget-object v0, p0, Lpager/ViewPager;->I:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 2171
    :cond_0
    return-void

    .line 2164
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Lpager/e;ILpager/e;)V
    .locals 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/high16 v10, 0x3f80

    .line 944
    iget-object v0, p0, Lpager/ViewPager;->g:Lpager/a;

    invoke-virtual {v0}, Lpager/a;->a()I

    move-result v7

    .line 945
    invoke-virtual {p0}, Lpager/ViewPager;->getWidth()I

    move-result v0

    .line 946
    if-lez v0, :cond_0

    iget v1, p0, Lpager/ViewPager;->n:I

    int-to-float v1, v1

    int-to-float v0, v0

    div-float v0, v1, v0

    move v6, v0

    .line 948
    :goto_0
    if-eqz p3, :cond_6

    .line 949
    iget v0, p3, Lpager/e;->b:I

    .line 951
    iget v1, p1, Lpager/e;->b:I

    if-ge v0, v1, :cond_3

    .line 954
    iget v1, p3, Lpager/e;->e:F

    iget v2, p3, Lpager/e;->d:F

    add-float/2addr v1, v2

    add-float v3, v1, v6

    .line 955
    add-int/lit8 v2, v0, 0x1

    move v1, v4

    .line 956
    :goto_1
    iget v0, p1, Lpager/e;->b:I

    if-gt v2, v0, :cond_6

    iget-object v0, p0, Lpager/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_6

    .line 957
    iget-object v0, p0, Lpager/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpager/e;

    .line 958
    :goto_2
    iget v5, v0, Lpager/e;->b:I

    if-le v2, v5, :cond_1

    iget-object v5, p0, Lpager/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_1

    .line 959
    add-int/lit8 v1, v1, 0x1

    .line 960
    iget-object v0, p0, Lpager/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpager/e;

    goto :goto_2

    .line 946
    :cond_0
    const/4 v0, 0x0

    move v6, v0

    goto :goto_0

    .line 962
    :cond_1
    :goto_3
    iget v5, v0, Lpager/e;->b:I

    if-ge v2, v5, :cond_2

    .line 965
    iget-object v5, p0, Lpager/ViewPager;->g:Lpager/a;

    invoke-virtual {v5, v2}, Lpager/a;->a(I)F

    move-result v5

    add-float/2addr v5, v6

    add-float/2addr v3, v5

    .line 966
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 968
    :cond_2
    iput v3, v0, Lpager/e;->e:F

    .line 969
    iget v0, v0, Lpager/e;->d:F

    add-float/2addr v0, v6

    add-float/2addr v3, v0

    .line 956
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 971
    :cond_3
    iget v1, p1, Lpager/e;->b:I

    if-le v0, v1, :cond_6

    .line 972
    iget-object v1, p0, Lpager/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 974
    iget v3, p3, Lpager/e;->e:F

    .line 975
    add-int/lit8 v2, v0, -0x1

    .line 976
    :goto_4
    iget v0, p1, Lpager/e;->b:I

    if-lt v2, v0, :cond_6

    if-ltz v1, :cond_6

    .line 977
    iget-object v0, p0, Lpager/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpager/e;

    .line 978
    :goto_5
    iget v5, v0, Lpager/e;->b:I

    if-ge v2, v5, :cond_4

    if-lez v1, :cond_4

    .line 979
    add-int/lit8 v1, v1, -0x1

    .line 980
    iget-object v0, p0, Lpager/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpager/e;

    goto :goto_5

    .line 982
    :cond_4
    :goto_6
    iget v5, v0, Lpager/e;->b:I

    if-le v2, v5, :cond_5

    .line 985
    iget-object v5, p0, Lpager/ViewPager;->g:Lpager/a;

    invoke-virtual {v5, v2}, Lpager/a;->a(I)F

    move-result v5

    add-float/2addr v5, v6

    sub-float/2addr v3, v5

    .line 986
    add-int/lit8 v2, v2, -0x1

    goto :goto_6

    .line 988
    :cond_5
    iget v5, v0, Lpager/e;->d:F

    add-float/2addr v5, v6

    sub-float/2addr v3, v5

    .line 989
    iput v3, v0, Lpager/e;->e:F

    .line 976
    add-int/lit8 v2, v2, -0x1

    goto :goto_4

    .line 995
    :cond_6
    iget-object v0, p0, Lpager/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 996
    iget v2, p1, Lpager/e;->e:F

    .line 997
    iget v0, p1, Lpager/e;->b:I

    add-int/lit8 v1, v0, -0x1

    .line 998
    iget v0, p1, Lpager/e;->b:I

    if-nez v0, :cond_7

    iget v0, p1, Lpager/e;->e:F

    :goto_7
    iput v0, p0, Lpager/ViewPager;->r:F

    .line 999
    iget v0, p1, Lpager/e;->b:I

    add-int/lit8 v3, v7, -0x1

    if-ne v0, v3, :cond_8

    iget v0, p1, Lpager/e;->e:F

    iget v3, p1, Lpager/e;->d:F

    add-float/2addr v0, v3

    sub-float/2addr v0, v10

    :goto_8
    iput v0, p0, Lpager/ViewPager;->s:F

    .line 1002
    add-int/lit8 v0, p2, -0x1

    move v5, v0

    :goto_9
    if-ltz v5, :cond_b

    .line 1003
    iget-object v0, p0, Lpager/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpager/e;

    move v3, v2

    .line 1004
    :goto_a
    iget v2, v0, Lpager/e;->b:I

    if-le v1, v2, :cond_9

    .line 1005
    iget-object v9, p0, Lpager/ViewPager;->g:Lpager/a;

    add-int/lit8 v2, v1, -0x1

    invoke-virtual {v9, v1}, Lpager/a;->a(I)F

    move-result v1

    add-float/2addr v1, v6

    sub-float v1, v3, v1

    move v3, v1

    move v1, v2

    goto :goto_a

    .line 998
    :cond_7
    const v0, -0x800001

    goto :goto_7

    .line 999
    :cond_8
    const v0, 0x7f7fffff

    goto :goto_8

    .line 1007
    :cond_9
    iget v2, v0, Lpager/e;->d:F

    add-float/2addr v2, v6

    sub-float v2, v3, v2

    .line 1008
    iput v2, v0, Lpager/e;->e:F

    .line 1009
    iget v0, v0, Lpager/e;->b:I

    if-nez v0, :cond_a

    iput v2, p0, Lpager/ViewPager;->r:F

    .line 1002
    :cond_a
    add-int/lit8 v0, v5, -0x1

    add-int/lit8 v1, v1, -0x1

    move v5, v0

    goto :goto_9

    .line 1011
    :cond_b
    iget v0, p1, Lpager/e;->e:F

    iget v1, p1, Lpager/e;->d:F

    add-float/2addr v0, v1

    add-float v2, v0, v6

    .line 1012
    iget v0, p1, Lpager/e;->b:I

    add-int/lit8 v1, v0, 0x1

    .line 1014
    add-int/lit8 v0, p2, 0x1

    move v5, v0

    :goto_b
    if-ge v5, v8, :cond_e

    .line 1015
    iget-object v0, p0, Lpager/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpager/e;

    move v3, v2

    .line 1016
    :goto_c
    iget v2, v0, Lpager/e;->b:I

    if-ge v1, v2, :cond_c

    .line 1017
    iget-object v9, p0, Lpager/ViewPager;->g:Lpager/a;

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v9, v1}, Lpager/a;->a(I)F

    move-result v1

    add-float/2addr v1, v6

    add-float/2addr v1, v3

    move v3, v1

    move v1, v2

    goto :goto_c

    .line 1019
    :cond_c
    iget v2, v0, Lpager/e;->b:I

    add-int/lit8 v9, v7, -0x1

    if-ne v2, v9, :cond_d

    .line 1020
    iget v2, v0, Lpager/e;->d:F

    add-float/2addr v2, v3

    sub-float/2addr v2, v10

    iput v2, p0, Lpager/ViewPager;->s:F

    .line 1022
    :cond_d
    iput v3, v0, Lpager/e;->e:F

    .line 1023
    iget v0, v0, Lpager/e;->d:F

    add-float/2addr v0, v6

    add-float v2, v3, v0

    .line 1014
    add-int/lit8 v0, v5, 0x1

    add-int/lit8 v1, v1, 0x1

    move v5, v0

    goto :goto_b

    .line 1026
    :cond_e
    iput-boolean v4, p0, Lpager/ViewPager;->R:Z

    .line 1027
    return-void
.end method

.method private a(FF)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1567
    iget v0, p0, Lpager/ViewPager;->C:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    cmpl-float v0, p2, v2

    if-gtz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lpager/ViewPager;->getWidth()I

    move-result v0

    iget v1, p0, Lpager/ViewPager;->C:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_2

    cmpg-float v0, p2, v2

    if-gez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(F)Z
    .locals 10
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1833
    .line 1835
    iget v0, p0, Lpager/ViewPager;->F:F

    sub-float/2addr v0, p1

    .line 1836
    iput p1, p0, Lpager/ViewPager;->F:F

    .line 1838
    invoke-virtual {p0}, Lpager/ViewPager;->getScrollX()I

    move-result v1

    int-to-float v1, v1

    .line 1839
    add-float v5, v1, v0

    .line 1840
    invoke-virtual {p0}, Lpager/ViewPager;->getWidth()I

    move-result v7

    .line 1842
    int-to-float v0, v7

    iget v1, p0, Lpager/ViewPager;->r:F

    mul-float v4, v0, v1

    .line 1843
    int-to-float v0, v7

    iget v1, p0, Lpager/ViewPager;->s:F

    mul-float v6, v0, v1

    .line 1847
    iget-object v0, p0, Lpager/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpager/e;

    .line 1848
    iget-object v1, p0, Lpager/ViewPager;->d:Ljava/util/ArrayList;

    iget-object v8, p0, Lpager/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpager/e;

    .line 1849
    iget v8, v0, Lpager/e;->b:I

    if-eqz v8, :cond_5

    .line 1851
    iget v0, v0, Lpager/e;->e:F

    int-to-float v4, v7

    mul-float/2addr v0, v4

    move v4, v0

    move v0, v2

    .line 1853
    :goto_0
    iget v8, v1, Lpager/e;->b:I

    iget-object v9, p0, Lpager/ViewPager;->g:Lpager/a;

    invoke-virtual {v9}, Lpager/a;->a()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-eq v8, v9, :cond_4

    .line 1855
    iget v1, v1, Lpager/e;->e:F

    int-to-float v3, v7

    mul-float/2addr v1, v3

    move v3, v2

    .line 1858
    :goto_1
    cmpg-float v6, v5, v4

    if-gez v6, :cond_1

    .line 1859
    if-eqz v0, :cond_0

    .line 1860
    sub-float v0, v4, v5

    .line 1861
    iget-object v1, p0, Lpager/ViewPager;->O:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    int-to-float v2, v7

    div-float/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/support/v4/widget/EdgeEffectCompat;->onPull(F)Z

    move-result v2

    .line 1872
    :cond_0
    :goto_2
    iget v0, p0, Lpager/ViewPager;->F:F

    float-to-int v1, v4

    int-to-float v1, v1

    sub-float v1, v4, v1

    add-float/2addr v0, v1

    iput v0, p0, Lpager/ViewPager;->F:F

    .line 1873
    float-to-int v0, v4

    invoke-virtual {p0}, Lpager/ViewPager;->getScrollY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lpager/ViewPager;->scrollTo(II)V

    .line 1874
    float-to-int v0, v4

    invoke-direct {p0, v0}, Lpager/ViewPager;->d(I)Z

    .line 1876
    return v2

    .line 1864
    :cond_1
    cmpl-float v0, v5, v1

    if-lez v0, :cond_3

    .line 1865
    if-eqz v3, :cond_2

    .line 1866
    sub-float v0, v5, v1

    .line 1867
    iget-object v2, p0, Lpager/ViewPager;->P:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    int-to-float v3, v7

    div-float/2addr v0, v3

    invoke-virtual {v2, v0}, Landroid/support/v4/widget/EdgeEffectCompat;->onPull(F)Z

    move-result v2

    :cond_2
    move v4, v1

    .line 1869
    goto :goto_2

    :cond_3
    move v4, v5

    goto :goto_2

    :cond_4
    move v1, v6

    goto :goto_1

    :cond_5
    move v0, v3

    goto :goto_0
.end method

.method private d(I)Z
    .locals 7
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1449
    iget-object v1, p0, Lpager/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 1450
    iput-boolean v0, p0, Lpager/ViewPager;->S:Z

    .line 1451
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v0}, Lpager/ViewPager;->a(IFI)V

    .line 1452
    iget-boolean v1, p0, Lpager/ViewPager;->S:Z

    if-nez v1, :cond_2

    .line 1453
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "onPageScrolled did not call superclass implementation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1458
    :cond_0
    invoke-direct {p0}, Lpager/ViewPager;->h()Lpager/e;

    move-result-object v1

    .line 1459
    invoke-virtual {p0}, Lpager/ViewPager;->getWidth()I

    move-result v2

    .line 1460
    iget v3, p0, Lpager/ViewPager;->n:I

    add-int/2addr v3, v2

    .line 1461
    iget v4, p0, Lpager/ViewPager;->n:I

    int-to-float v4, v4

    int-to-float v5, v2

    div-float/2addr v4, v5

    .line 1462
    iget v5, v1, Lpager/e;->b:I

    .line 1463
    int-to-float v6, p1

    int-to-float v2, v2

    div-float v2, v6, v2

    iget v6, v1, Lpager/e;->e:F

    sub-float/2addr v2, v6

    iget v1, v1, Lpager/e;->d:F

    add-float/2addr v1, v4

    div-float v1, v2, v1

    .line 1465
    int-to-float v2, v3

    mul-float/2addr v2, v1

    float-to-int v2, v2

    .line 1467
    iput-boolean v0, p0, Lpager/ViewPager;->S:Z

    .line 1468
    invoke-virtual {p0, v5, v1, v2}, Lpager/ViewPager;->a(IFI)V

    .line 1469
    iget-boolean v0, p0, Lpager/ViewPager;->S:Z

    if-nez v0, :cond_1

    .line 1470
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "onPageScrolled did not call superclass implementation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1473
    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method static synthetic e()[I
    .locals 1

    .prologue
    .line 96
    sget-object v0, Lpager/ViewPager;->a:[I

    return-object v0
.end method

.method private f()V
    .locals 2

    .prologue
    .line 406
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lpager/ViewPager;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 407
    invoke-virtual {p0, v1}, Lpager/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 408
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lpager/f;

    .line 409
    iget-boolean v0, v0, Lpager/f;->a:Z

    if-nez v0, :cond_0

    .line 410
    invoke-virtual {p0, v1}, Lpager/ViewPager;->removeViewAt(I)V

    .line 411
    add-int/lit8 v1, v1, -0x1

    .line 406
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 414
    :cond_1
    return-void
.end method

.method private g()V
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 1539
    iget v0, p0, Lpager/ViewPager;->Z:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    move v0, v4

    .line 1540
    :goto_0
    if-eqz v0, :cond_2

    .line 1542
    invoke-direct {p0, v2}, Lpager/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 1543
    iget-object v1, p0, Lpager/ViewPager;->l:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1544
    invoke-virtual {p0}, Lpager/ViewPager;->getScrollX()I

    move-result v1

    .line 1545
    invoke-virtual {p0}, Lpager/ViewPager;->getScrollY()I

    move-result v3

    .line 1546
    iget-object v5, p0, Lpager/ViewPager;->l:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->getCurrX()I

    move-result v5

    .line 1547
    iget-object v6, p0, Lpager/ViewPager;->l:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->getCurrY()I

    move-result v6

    .line 1548
    if-ne v1, v5, :cond_0

    if-eq v3, v6, :cond_1

    .line 1549
    :cond_0
    invoke-virtual {p0, v5, v6}, Lpager/ViewPager;->scrollTo(II)V

    .line 1551
    :cond_1
    invoke-direct {p0, v2}, Lpager/ViewPager;->setScrollState(I)V

    .line 1553
    :cond_2
    iput-boolean v2, p0, Lpager/ViewPager;->x:Z

    move v1, v2

    move v3, v0

    .line 1554
    :goto_1
    iget-object v0, p0, Lpager/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    .line 1555
    iget-object v0, p0, Lpager/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpager/e;

    .line 1556
    iget-boolean v5, v0, Lpager/e;->c:Z

    if-eqz v5, :cond_3

    .line 1558
    iput-boolean v2, v0, Lpager/e;->c:Z

    move v3, v4

    .line 1554
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_4
    move v0, v2

    .line 1539
    goto :goto_0

    .line 1561
    :cond_5
    if-eqz v3, :cond_6

    .line 1562
    invoke-virtual {p0}, Lpager/ViewPager;->b()V

    .line 1564
    :cond_6
    return-void
.end method

.method private h()Lpager/e;
    .locals 13

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1884
    invoke-virtual {p0}, Lpager/ViewPager;->getWidth()I

    move-result v1

    .line 1885
    if-lez v1, :cond_3

    invoke-virtual {p0}, Lpager/ViewPager;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    int-to-float v4, v1

    div-float/2addr v0, v4

    move v9, v0

    .line 1886
    :goto_0
    if-lez v1, :cond_4

    iget v0, p0, Lpager/ViewPager;->n:I

    int-to-float v0, v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    move v1, v0

    .line 1887
    :goto_1
    const/4 v5, -0x1

    .line 1890
    const/4 v4, 0x1

    .line 1892
    const/4 v0, 0x0

    move v6, v2

    move v7, v2

    move v8, v5

    move v2, v3

    move v5, v4

    move-object v4, v0

    .line 1893
    :goto_2
    iget-object v0, p0, Lpager/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    .line 1894
    iget-object v0, p0, Lpager/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpager/e;

    .line 1896
    if-nez v5, :cond_6

    iget v10, v0, Lpager/e;->b:I

    add-int/lit8 v11, v8, 0x1

    if-eq v10, v11, :cond_6

    .line 1898
    iget-object v0, p0, Lpager/ViewPager;->e:Lpager/e;

    .line 1899
    add-float/2addr v6, v7

    add-float/2addr v6, v1

    iput v6, v0, Lpager/e;->e:F

    .line 1900
    add-int/lit8 v6, v8, 0x1

    iput v6, v0, Lpager/e;->b:I

    .line 1901
    iget-object v6, p0, Lpager/ViewPager;->g:Lpager/a;

    iget v7, v0, Lpager/e;->b:I

    invoke-virtual {v6, v7}, Lpager/a;->a(I)F

    move-result v6

    iput v6, v0, Lpager/e;->d:F

    .line 1902
    add-int/lit8 v2, v2, -0x1

    move-object v12, v0

    move v0, v2

    move-object v2, v12

    .line 1904
    :goto_3
    iget v6, v2, Lpager/e;->e:F

    .line 1907
    iget v7, v2, Lpager/e;->d:F

    add-float/2addr v7, v6

    add-float/2addr v7, v1

    .line 1908
    if-nez v5, :cond_0

    cmpl-float v5, v9, v6

    if-ltz v5, :cond_2

    .line 1909
    :cond_0
    cmpg-float v4, v9, v7

    if-ltz v4, :cond_1

    iget-object v4, p0, Lpager/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v0, v4, :cond_5

    :cond_1
    move-object v4, v2

    .line 1922
    :cond_2
    return-object v4

    :cond_3
    move v9, v2

    .line 1885
    goto :goto_0

    :cond_4
    move v1, v2

    .line 1886
    goto :goto_1

    .line 1916
    :cond_5
    iget v5, v2, Lpager/e;->b:I

    .line 1918
    iget v4, v2, Lpager/e;->d:F

    .line 1893
    add-int/lit8 v0, v0, 0x1

    move v7, v6

    move v8, v5

    move v5, v3

    move v6, v4

    move-object v4, v2

    move v2, v0

    goto :goto_2

    :cond_6
    move-object v12, v0

    move v0, v2

    move-object v2, v12

    goto :goto_3
.end method

.method private i()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2174
    iput-boolean v0, p0, Lpager/ViewPager;->z:Z

    .line 2175
    iput-boolean v0, p0, Lpager/ViewPager;->A:Z

    .line 2177
    iget-object v0, p0, Lpager/ViewPager;->I:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 2178
    iget-object v0, p0, Lpager/ViewPager;->I:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 2179
    const/4 v0, 0x0

    iput-object v0, p0, Lpager/ViewPager;->I:Landroid/view/VelocityTracker;

    .line 2181
    :cond_0
    return-void
.end method

.method private setScrollState(I)V
    .locals 1
    .parameter

    .prologue
    .line 349
    iget v0, p0, Lpager/ViewPager;->Z:I

    if-ne v0, p1, :cond_1

    .line 357
    :cond_0
    :goto_0
    return-void

    .line 353
    :cond_1
    iput p1, p0, Lpager/ViewPager;->Z:I

    .line 354
    iget-object v0, p0, Lpager/ViewPager;->U:Lpager/h;

    if-eqz v0, :cond_0

    .line 355
    iget-object v0, p0, Lpager/ViewPager;->U:Lpager/h;

    invoke-interface {v0, p1}, Lpager/h;->b(I)V

    goto :goto_0
.end method

.method private setScrollingCacheEnabled(Z)V
    .locals 1
    .parameter

    .prologue
    .line 2184
    iget-boolean v0, p0, Lpager/ViewPager;->w:Z

    if-eq v0, p1, :cond_0

    .line 2185
    iput-boolean p1, p0, Lpager/ViewPager;->w:Z

    .line 2196
    :cond_0
    return-void
.end method


# virtual methods
.method a(F)F
    .locals 4
    .parameter

    .prologue
    .line 642
    const/high16 v0, 0x3f00

    sub-float v0, p1, v0

    .line 643
    float-to-double v0, v0

    const-wide v2, 0x3fde28c7460698c7L

    mul-double/2addr v0, v2

    double-to-float v0, v0

    .line 644
    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method a(II)Lpager/e;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 705
    new-instance v0, Lpager/e;

    invoke-direct {v0}, Lpager/e;-><init>()V

    .line 706
    iput p1, v0, Lpager/e;->b:I

    .line 707
    iget-object v1, p0, Lpager/ViewPager;->g:Lpager/a;

    invoke-virtual {v1, p0, p1}, Lpager/a;->a(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lpager/e;->a:Ljava/lang/Object;

    .line 708
    iget-object v1, p0, Lpager/ViewPager;->g:Lpager/a;

    invoke-virtual {v1, p1}, Lpager/a;->a(I)F

    move-result v1

    iput v1, v0, Lpager/e;->d:F

    .line 709
    if-ltz p2, :cond_0

    iget-object v1, p0, Lpager/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p2, v1, :cond_1

    .line 710
    :cond_0
    iget-object v1, p0, Lpager/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 714
    :goto_0
    return-object v0

    .line 712
    :cond_1
    iget-object v1, p0, Lpager/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method a(Landroid/view/View;)Lpager/e;
    .locals 4
    .parameter

    .prologue
    .line 1139
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lpager/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 1140
    iget-object v0, p0, Lpager/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpager/e;

    .line 1141
    iget-object v2, p0, Lpager/ViewPager;->g:Lpager/a;

    iget-object v3, v0, Lpager/e;->a:Ljava/lang/Object;

    invoke-virtual {v2, p1, v3}, Lpager/a;->a(Landroid/view/View;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1145
    :goto_1
    return-object v0

    .line 1139
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1145
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method a()V
    .locals 9

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 720
    iget-object v0, p0, Lpager/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v3, p0, Lpager/ViewPager;->y:I

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x1

    if-ge v0, v3, :cond_0

    iget-object v0, p0, Lpager/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v3, p0, Lpager/ViewPager;->g:Lpager/a;

    invoke-virtual {v3}, Lpager/a;->a()I

    move-result v3

    if-ge v0, v3, :cond_0

    move v0, v1

    .line 722
    :goto_0
    iget v3, p0, Lpager/ViewPager;->h:I

    move v4, v2

    move v5, v3

    move v6, v0

    move v3, v2

    .line 725
    :goto_1
    iget-object v0, p0, Lpager/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_5

    .line 726
    iget-object v0, p0, Lpager/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpager/e;

    .line 727
    iget-object v7, p0, Lpager/ViewPager;->g:Lpager/a;

    iget-object v8, v0, Lpager/e;->a:Ljava/lang/Object;

    invoke-virtual {v7, v8}, Lpager/a;->a(Ljava/lang/Object;)I

    move-result v7

    .line 729
    const/4 v8, -0x1

    if-ne v7, v8, :cond_1

    move v0, v3

    move v3, v4

    move v4, v5

    move v5, v6

    .line 725
    :goto_2
    add-int/lit8 v0, v0, 0x1

    move v6, v5

    move v5, v4

    move v4, v3

    move v3, v0

    goto :goto_1

    :cond_0
    move v0, v2

    .line 720
    goto :goto_0

    .line 733
    :cond_1
    const/4 v8, -0x2

    if-ne v7, v8, :cond_3

    .line 734
    iget-object v6, p0, Lpager/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 735
    add-int/lit8 v3, v3, -0x1

    .line 737
    if-nez v4, :cond_2

    .line 738
    iget-object v4, p0, Lpager/ViewPager;->g:Lpager/a;

    invoke-virtual {v4, p0}, Lpager/a;->a(Landroid/view/ViewGroup;)V

    move v4, v1

    .line 742
    :cond_2
    iget-object v6, p0, Lpager/ViewPager;->g:Lpager/a;

    iget v7, v0, Lpager/e;->b:I

    iget-object v8, v0, Lpager/e;->a:Ljava/lang/Object;

    invoke-virtual {v6, p0, v7, v8}, Lpager/a;->a(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 745
    iget v6, p0, Lpager/ViewPager;->h:I

    iget v0, v0, Lpager/e;->b:I

    if-ne v6, v0, :cond_b

    .line 747
    iget v0, p0, Lpager/ViewPager;->h:I

    iget-object v5, p0, Lpager/ViewPager;->g:Lpager/a;

    invoke-virtual {v5}, Lpager/a;->a()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v5

    move v0, v3

    move v3, v4

    move v4, v5

    move v5, v1

    .line 748
    goto :goto_2

    .line 753
    :cond_3
    iget v8, v0, Lpager/e;->b:I

    if-eq v8, v7, :cond_a

    .line 754
    iget v6, v0, Lpager/e;->b:I

    iget v8, p0, Lpager/ViewPager;->h:I

    if-ne v6, v8, :cond_4

    move v5, v7

    .line 759
    :cond_4
    iput v7, v0, Lpager/e;->b:I

    move v0, v3

    move v3, v4

    move v4, v5

    move v5, v1

    .line 760
    goto :goto_2

    .line 764
    :cond_5
    if-eqz v4, :cond_6

    .line 765
    iget-object v0, p0, Lpager/ViewPager;->g:Lpager/a;

    invoke-virtual {v0, p0}, Lpager/a;->b(Landroid/view/ViewGroup;)V

    .line 768
    :cond_6
    iget-object v0, p0, Lpager/ViewPager;->d:Ljava/util/ArrayList;

    sget-object v3, Lpager/ViewPager;->b:Ljava/util/Comparator;

    invoke-static {v0, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 770
    if-eqz v6, :cond_9

    .line 772
    invoke-virtual {p0}, Lpager/ViewPager;->getChildCount()I

    move-result v4

    move v3, v2

    .line 773
    :goto_3
    if-ge v3, v4, :cond_8

    .line 774
    invoke-virtual {p0, v3}, Lpager/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 775
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lpager/f;

    .line 776
    iget-boolean v6, v0, Lpager/f;->a:Z

    if-nez v6, :cond_7

    .line 777
    const/4 v6, 0x0

    iput v6, v0, Lpager/f;->c:F

    .line 773
    :cond_7
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_3

    .line 781
    :cond_8
    invoke-virtual {p0, v5, v2, v1}, Lpager/ViewPager;->a(IZZ)V

    .line 782
    invoke-virtual {p0}, Lpager/ViewPager;->requestLayout()V

    .line 784
    :cond_9
    return-void

    :cond_a
    move v0, v3

    move v3, v4

    move v4, v5

    move v5, v6

    goto/16 :goto_2

    :cond_b
    move v0, v3

    move v3, v4

    move v4, v5

    move v5, v1

    goto/16 :goto_2
.end method

.method a(I)V
    .locals 14
    .parameter

    .prologue
    .line 791
    const/4 v0, 0x0

    .line 792
    iget v1, p0, Lpager/ViewPager;->h:I

    if-eq v1, p1, :cond_1e

    .line 793
    iget v0, p0, Lpager/ViewPager;->h:I

    invoke-virtual {p0, v0}, Lpager/ViewPager;->b(I)Lpager/e;

    move-result-object v0

    .line 794
    iput p1, p0, Lpager/ViewPager;->h:I

    move-object v1, v0

    .line 797
    :goto_0
    iget-object v0, p0, Lpager/ViewPager;->g:Lpager/a;

    if-nez v0, :cond_1

    .line 941
    :cond_0
    return-void

    .line 805
    :cond_1
    iget-boolean v0, p0, Lpager/ViewPager;->x:Z

    if-nez v0, :cond_0

    .line 813
    invoke-virtual {p0}, Lpager/ViewPager;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 817
    iget-object v0, p0, Lpager/ViewPager;->g:Lpager/a;

    invoke-virtual {v0, p0}, Lpager/a;->a(Landroid/view/ViewGroup;)V

    .line 819
    iget v0, p0, Lpager/ViewPager;->y:I

    .line 820
    const/4 v2, 0x0

    iget v3, p0, Lpager/ViewPager;->h:I

    sub-int/2addr v3, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 821
    iget-object v2, p0, Lpager/ViewPager;->g:Lpager/a;

    invoke-virtual {v2}, Lpager/a;->a()I

    move-result v8

    .line 822
    add-int/lit8 v2, v8, -0x1

    iget v3, p0, Lpager/ViewPager;->h:I

    add-int/2addr v0, v3

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 826
    const/4 v3, 0x0

    .line 827
    const/4 v0, 0x0

    move v2, v0

    :goto_1
    iget-object v0, p0, Lpager/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_1d

    .line 828
    iget-object v0, p0, Lpager/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpager/e;

    .line 829
    iget v4, v0, Lpager/e;->b:I

    iget v5, p0, Lpager/ViewPager;->h:I

    if-lt v4, v5, :cond_6

    .line 830
    iget v4, v0, Lpager/e;->b:I

    iget v5, p0, Lpager/ViewPager;->h:I

    if-ne v4, v5, :cond_1d

    .line 835
    :goto_2
    if-nez v0, :cond_1c

    if-lez v8, :cond_1c

    .line 836
    iget v0, p0, Lpager/ViewPager;->h:I

    invoke-virtual {p0, v0, v2}, Lpager/ViewPager;->a(II)Lpager/e;

    move-result-object v0

    move-object v6, v0

    .line 842
    :goto_3
    if-eqz v6, :cond_4

    .line 843
    const/4 v5, 0x0

    .line 844
    add-int/lit8 v4, v2, -0x1

    .line 845
    if-ltz v4, :cond_7

    iget-object v0, p0, Lpager/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpager/e;

    .line 846
    :goto_4
    const/high16 v3, 0x4000

    iget v10, v6, Lpager/e;->d:F

    sub-float v10, v3, v10

    .line 847
    iget v3, p0, Lpager/ViewPager;->h:I

    add-int/lit8 v3, v3, -0x1

    move v12, v3

    move v3, v5

    move v5, v12

    move v13, v4

    move v4, v2

    move v2, v13

    :goto_5
    if-ltz v5, :cond_2

    .line 848
    cmpl-float v11, v3, v10

    if-ltz v11, :cond_b

    if-ge v5, v7, :cond_b

    .line 849
    if-nez v0, :cond_8

    .line 871
    :cond_2
    iget v3, v6, Lpager/e;->d:F

    .line 872
    add-int/lit8 v5, v4, 0x1

    .line 873
    const/high16 v0, 0x4000

    cmpg-float v0, v3, v0

    if-gez v0, :cond_3

    .line 874
    iget-object v0, p0, Lpager/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v5, v0, :cond_f

    iget-object v0, p0, Lpager/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpager/e;

    .line 875
    :goto_6
    iget v2, p0, Lpager/ViewPager;->h:I

    add-int/lit8 v2, v2, 0x1

    move v12, v2

    move v2, v3

    move v3, v5

    move v5, v12

    :goto_7
    if-ge v5, v8, :cond_3

    .line 876
    const/high16 v7, 0x4000

    cmpl-float v7, v2, v7

    if-ltz v7, :cond_12

    if-le v5, v9, :cond_12

    .line 877
    if-nez v0, :cond_10

    .line 898
    :cond_3
    invoke-direct {p0, v6, v4, v1}, Lpager/ViewPager;->a(Lpager/e;ILpager/e;)V

    .line 908
    :cond_4
    iget-object v1, p0, Lpager/ViewPager;->g:Lpager/a;

    iget v2, p0, Lpager/ViewPager;->h:I

    if-eqz v6, :cond_16

    iget-object v0, v6, Lpager/e;->a:Ljava/lang/Object;

    :goto_8
    invoke-virtual {v1, p0, v2, v0}, Lpager/a;->b(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 910
    iget-object v0, p0, Lpager/ViewPager;->g:Lpager/a;

    invoke-virtual {v0, p0}, Lpager/a;->b(Landroid/view/ViewGroup;)V

    .line 913
    invoke-virtual {p0}, Lpager/ViewPager;->getChildCount()I

    move-result v2

    .line 914
    const/4 v0, 0x0

    move v1, v0

    :goto_9
    if-ge v1, v2, :cond_17

    .line 915
    invoke-virtual {p0, v1}, Lpager/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 916
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lpager/f;

    .line 917
    iget-boolean v4, v0, Lpager/f;->a:Z

    if-nez v4, :cond_5

    iget v4, v0, Lpager/f;->c:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-nez v4, :cond_5

    .line 919
    invoke-virtual {p0, v3}, Lpager/ViewPager;->a(Landroid/view/View;)Lpager/e;

    move-result-object v3

    .line 920
    if-eqz v3, :cond_5

    .line 921
    iget v3, v3, Lpager/e;->d:F

    iput v3, v0, Lpager/f;->c:F

    .line 914
    :cond_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_9

    .line 827
    :cond_6
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_1

    .line 845
    :cond_7
    const/4 v0, 0x0

    goto/16 :goto_4

    .line 852
    :cond_8
    iget v11, v0, Lpager/e;->b:I

    if-ne v5, v11, :cond_9

    iget-boolean v11, v0, Lpager/e;->c:Z

    if-nez v11, :cond_9

    .line 853
    iget-object v11, p0, Lpager/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 854
    iget-object v11, p0, Lpager/ViewPager;->g:Lpager/a;

    iget-object v0, v0, Lpager/e;->a:Ljava/lang/Object;

    invoke-virtual {v11, p0, v5, v0}, Lpager/a;->a(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 855
    add-int/lit8 v2, v2, -0x1

    .line 856
    add-int/lit8 v4, v4, -0x1

    .line 857
    if-ltz v2, :cond_a

    iget-object v0, p0, Lpager/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpager/e;

    .line 847
    :cond_9
    :goto_a
    add-int/lit8 v5, v5, -0x1

    goto/16 :goto_5

    .line 857
    :cond_a
    const/4 v0, 0x0

    goto :goto_a

    .line 859
    :cond_b
    if-eqz v0, :cond_d

    iget v11, v0, Lpager/e;->b:I

    if-ne v5, v11, :cond_d

    .line 860
    iget v0, v0, Lpager/e;->d:F

    add-float/2addr v3, v0

    .line 861
    add-int/lit8 v2, v2, -0x1

    .line 862
    if-ltz v2, :cond_c

    iget-object v0, p0, Lpager/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpager/e;

    goto :goto_a

    :cond_c
    const/4 v0, 0x0

    goto :goto_a

    .line 864
    :cond_d
    add-int/lit8 v0, v2, 0x1

    invoke-virtual {p0, v5, v0}, Lpager/ViewPager;->a(II)Lpager/e;

    move-result-object v0

    .line 865
    iget v0, v0, Lpager/e;->d:F

    add-float/2addr v3, v0

    .line 866
    add-int/lit8 v4, v4, 0x1

    .line 867
    if-ltz v2, :cond_e

    iget-object v0, p0, Lpager/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpager/e;

    goto :goto_a

    :cond_e
    const/4 v0, 0x0

    goto :goto_a

    .line 874
    :cond_f
    const/4 v0, 0x0

    goto/16 :goto_6

    .line 880
    :cond_10
    iget v7, v0, Lpager/e;->b:I

    if-ne v5, v7, :cond_1b

    iget-boolean v7, v0, Lpager/e;->c:Z

    if-nez v7, :cond_1b

    .line 881
    iget-object v7, p0, Lpager/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 882
    iget-object v7, p0, Lpager/ViewPager;->g:Lpager/a;

    iget-object v0, v0, Lpager/e;->a:Ljava/lang/Object;

    invoke-virtual {v7, p0, v5, v0}, Lpager/a;->a(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 883
    iget-object v0, p0, Lpager/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_11

    iget-object v0, p0, Lpager/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpager/e;

    :goto_b
    move v12, v2

    move-object v2, v0

    move v0, v12

    .line 875
    :goto_c
    add-int/lit8 v5, v5, 0x1

    move v12, v0

    move-object v0, v2

    move v2, v12

    goto/16 :goto_7

    .line 883
    :cond_11
    const/4 v0, 0x0

    goto :goto_b

    .line 885
    :cond_12
    if-eqz v0, :cond_14

    iget v7, v0, Lpager/e;->b:I

    if-ne v5, v7, :cond_14

    .line 886
    iget v0, v0, Lpager/e;->d:F

    add-float/2addr v2, v0

    .line 887
    add-int/lit8 v3, v3, 0x1

    .line 888
    iget-object v0, p0, Lpager/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_13

    iget-object v0, p0, Lpager/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpager/e;

    :goto_d
    move v12, v2

    move-object v2, v0

    move v0, v12

    goto :goto_c

    :cond_13
    const/4 v0, 0x0

    goto :goto_d

    .line 890
    :cond_14
    invoke-virtual {p0, v5, v3}, Lpager/ViewPager;->a(II)Lpager/e;

    move-result-object v0

    .line 891
    add-int/lit8 v3, v3, 0x1

    .line 892
    iget v0, v0, Lpager/e;->d:F

    add-float/2addr v2, v0

    .line 893
    iget-object v0, p0, Lpager/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_15

    iget-object v0, p0, Lpager/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpager/e;

    :goto_e
    move v12, v2

    move-object v2, v0

    move v0, v12

    goto :goto_c

    :cond_15
    const/4 v0, 0x0

    goto :goto_e

    .line 908
    :cond_16
    const/4 v0, 0x0

    goto/16 :goto_8

    .line 926
    :cond_17
    invoke-virtual {p0}, Lpager/ViewPager;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 927
    invoke-virtual {p0}, Lpager/ViewPager;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 928
    if-eqz v0, :cond_1a

    invoke-virtual {p0, v0}, Lpager/ViewPager;->b(Landroid/view/View;)Lpager/e;

    move-result-object v0

    .line 929
    :goto_f
    if-eqz v0, :cond_18

    iget v0, v0, Lpager/e;->b:I

    iget v1, p0, Lpager/ViewPager;->h:I

    if-eq v0, v1, :cond_0

    .line 930
    :cond_18
    const/4 v0, 0x0

    :goto_10
    invoke-virtual {p0}, Lpager/ViewPager;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 931
    invoke-virtual {p0, v0}, Lpager/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 932
    invoke-virtual {p0, v1}, Lpager/ViewPager;->a(Landroid/view/View;)Lpager/e;

    move-result-object v2

    .line 933
    if-eqz v2, :cond_19

    iget v2, v2, Lpager/e;->b:I

    iget v3, p0, Lpager/ViewPager;->h:I

    if-ne v2, v3, :cond_19

    .line 934
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/view/View;->requestFocus(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 930
    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 928
    :cond_1a
    const/4 v0, 0x0

    goto :goto_f

    :cond_1b
    move v12, v2

    move-object v2, v0

    move v0, v12

    goto/16 :goto_c

    :cond_1c
    move-object v6, v0

    goto/16 :goto_3

    :cond_1d
    move-object v0, v3

    goto/16 :goto_2

    :cond_1e
    move-object v1, v0

    goto/16 :goto_0
.end method

.method protected a(IFI)V
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1490
    iget v0, p0, Lpager/ViewPager;->T:I

    if-lez v0, :cond_2

    .line 1491
    invoke-virtual {p0}, Lpager/ViewPager;->getScrollX()I

    move-result v4

    .line 1492
    invoke-virtual {p0}, Lpager/ViewPager;->getPaddingLeft()I

    move-result v1

    .line 1493
    invoke-virtual {p0}, Lpager/ViewPager;->getPaddingRight()I

    move-result v2

    .line 1494
    invoke-virtual {p0}, Lpager/ViewPager;->getWidth()I

    move-result v5

    .line 1495
    invoke-virtual {p0}, Lpager/ViewPager;->getChildCount()I

    move-result v6

    .line 1496
    const/4 v0, 0x0

    move v3, v0

    :goto_0
    if-ge v3, v6, :cond_2

    .line 1497
    invoke-virtual {p0, v3}, Lpager/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 1498
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lpager/f;

    .line 1499
    iget-boolean v8, v0, Lpager/f;->a:Z

    if-nez v8, :cond_1

    move v9, v2

    move v2, v1

    move v1, v9

    .line 1496
    :cond_0
    :goto_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move v9, v1

    move v1, v2

    move v2, v9

    goto :goto_0

    .line 1501
    :cond_1
    iget v0, v0, Lpager/f;->b:I

    and-int/lit8 v0, v0, 0x7

    .line 1503
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    move v0, v1

    move v9, v2

    move v2, v1

    move v1, v9

    .line 1520
    :goto_2
    add-int/2addr v0, v4

    .line 1522
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v8

    sub-int/2addr v0, v8

    .line 1523
    if-eqz v0, :cond_0

    .line 1524
    invoke-virtual {v7, v0}, Landroid/view/View;->offsetLeftAndRight(I)V

    goto :goto_1

    .line 1509
    :pswitch_1
    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v0

    add-int/2addr v0, v1

    move v9, v1

    move v1, v2

    move v2, v0

    move v0, v9

    .line 1510
    goto :goto_2

    .line 1512
    :pswitch_2
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int v0, v5, v0

    div-int/lit8 v0, v0, 0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v9, v2

    move v2, v1

    move v1, v9

    .line 1514
    goto :goto_2

    .line 1516
    :pswitch_3
    sub-int v0, v5, v2

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    sub-int/2addr v0, v8

    .line 1517
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v2, v8

    move v9, v2

    move v2, v1

    move v1, v9

    goto :goto_2

    .line 1529
    :cond_2
    iget-object v0, p0, Lpager/ViewPager;->U:Lpager/h;

    if-eqz v0, :cond_3

    .line 1530
    iget-object v0, p0, Lpager/ViewPager;->U:Lpager/h;

    invoke-interface {v0, p1, p2, p3}, Lpager/h;->a(IFI)V

    .line 1532
    :cond_3
    iget-object v0, p0, Lpager/ViewPager;->V:Lpager/h;

    if-eqz v0, :cond_4

    .line 1533
    iget-object v0, p0, Lpager/ViewPager;->V:Lpager/h;

    invoke-interface {v0, p1, p2, p3}, Lpager/h;->a(IFI)V

    .line 1535
    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Lpager/ViewPager;->S:Z

    .line 1536
    return-void

    .line 1503
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method a(III)V
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const/high16 v8, 0x3f80

    .line 665
    invoke-virtual {p0}, Lpager/ViewPager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 667
    invoke-direct {p0, v5}, Lpager/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 702
    :goto_0
    return-void

    .line 670
    :cond_0
    invoke-virtual {p0}, Lpager/ViewPager;->getScrollX()I

    move-result v1

    .line 671
    invoke-virtual {p0}, Lpager/ViewPager;->getScrollY()I

    move-result v2

    .line 672
    sub-int v3, p1, v1

    .line 673
    sub-int v4, p2, v2

    .line 674
    if-nez v3, :cond_1

    if-nez v4, :cond_1

    .line 675
    invoke-direct {p0}, Lpager/ViewPager;->g()V

    .line 676
    invoke-virtual {p0}, Lpager/ViewPager;->b()V

    .line 677
    invoke-direct {p0, v5}, Lpager/ViewPager;->setScrollState(I)V

    goto :goto_0

    .line 681
    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lpager/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 682
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lpager/ViewPager;->setScrollState(I)V

    .line 684
    invoke-virtual {p0}, Lpager/ViewPager;->getWidth()I

    move-result v0

    .line 685
    div-int/lit8 v5, v0, 0x2

    .line 686
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v8

    int-to-float v7, v0

    div-float/2addr v6, v7

    invoke-static {v8, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 687
    int-to-float v7, v5

    int-to-float v5, v5

    invoke-virtual {p0, v6}, Lpager/ViewPager;->a(F)F

    move-result v6

    mul-float/2addr v5, v6

    add-float/2addr v5, v7

    .line 691
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v6

    .line 692
    if-lez v6, :cond_2

    .line 693
    const/high16 v0, 0x447a

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    mul-float/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    .line 699
    :goto_1
    const/16 v5, 0x258

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 700
    iget-object v0, p0, Lpager/ViewPager;->l:Landroid/widget/Scroller;

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 701
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    goto :goto_0

    .line 695
    :cond_2
    int-to-float v0, v0

    iget-object v5, p0, Lpager/ViewPager;->g:Lpager/a;

    iget v6, p0, Lpager/ViewPager;->h:I

    invoke-virtual {v5, v6}, Lpager/a;->a(I)F

    move-result v5

    mul-float/2addr v0, v5

    .line 696
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lpager/ViewPager;->n:I

    int-to-float v6, v6

    add-float/2addr v0, v6

    div-float v0, v5, v0

    .line 697
    add-float/2addr v0, v8

    const/high16 v5, 0x42c8

    mul-float/2addr v0, v5

    float-to-int v0, v0

    goto :goto_1
.end method

.method public a(IZ)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 448
    iput-boolean v0, p0, Lpager/ViewPager;->x:Z

    .line 449
    invoke-virtual {p0, p1, p2, v0}, Lpager/ViewPager;->a(IZZ)V

    .line 450
    return-void
.end method

.method a(IZZ)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 457
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lpager/ViewPager;->a(IZZI)V

    .line 458
    return-void
.end method

.method a(IZZI)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 461
    iget-object v0, p0, Lpager/ViewPager;->g:Lpager/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lpager/ViewPager;->g:Lpager/a;

    invoke-virtual {v0}, Lpager/a;->a()I

    move-result v0

    if-gtz v0, :cond_2

    .line 462
    :cond_0
    invoke-direct {p0, v1}, Lpager/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 511
    :cond_1
    :goto_0
    return-void

    .line 465
    :cond_2
    if-nez p3, :cond_3

    iget v0, p0, Lpager/ViewPager;->h:I

    if-ne v0, p1, :cond_3

    iget-object v0, p0, Lpager/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_3

    .line 466
    invoke-direct {p0, v1}, Lpager/ViewPager;->setScrollingCacheEnabled(Z)V

    goto :goto_0

    .line 470
    :cond_3
    if-gez p1, :cond_6

    move p1, v1

    .line 475
    :cond_4
    :goto_1
    iget v0, p0, Lpager/ViewPager;->y:I

    .line 476
    iget v2, p0, Lpager/ViewPager;->h:I

    add-int/2addr v2, v0

    if-gt p1, v2, :cond_5

    iget v2, p0, Lpager/ViewPager;->h:I

    sub-int v0, v2, v0

    if-ge p1, v0, :cond_7

    :cond_5
    move v2, v1

    .line 480
    :goto_2
    iget-object v0, p0, Lpager/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_7

    .line 481
    iget-object v0, p0, Lpager/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpager/e;

    iput-boolean v3, v0, Lpager/e;->c:Z

    .line 480
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 472
    :cond_6
    iget-object v0, p0, Lpager/ViewPager;->g:Lpager/a;

    invoke-virtual {v0}, Lpager/a;->a()I

    move-result v0

    if-lt p1, v0, :cond_4

    .line 473
    iget-object v0, p0, Lpager/ViewPager;->g:Lpager/a;

    invoke-virtual {v0}, Lpager/a;->a()I

    move-result v0

    add-int/lit8 p1, v0, -0x1

    goto :goto_1

    .line 484
    :cond_7
    iget v0, p0, Lpager/ViewPager;->h:I

    if-eq v0, p1, :cond_9

    move v0, v3

    .line 485
    :goto_3
    invoke-virtual {p0, p1}, Lpager/ViewPager;->a(I)V

    .line 486
    invoke-virtual {p0, p1}, Lpager/ViewPager;->b(I)Lpager/e;

    move-result-object v2

    .line 488
    if-eqz v2, :cond_d

    .line 489
    invoke-virtual {p0}, Lpager/ViewPager;->getWidth()I

    move-result v3

    .line 490
    int-to-float v3, v3

    iget v4, p0, Lpager/ViewPager;->r:F

    iget v2, v2, Lpager/e;->e:F

    iget v5, p0, Lpager/ViewPager;->s:F

    invoke-static {v2, v5}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 493
    :goto_4
    if-eqz p2, :cond_a

    .line 494
    invoke-virtual {p0, v2, v1, p4}, Lpager/ViewPager;->a(III)V

    .line 495
    if-eqz v0, :cond_8

    iget-object v1, p0, Lpager/ViewPager;->U:Lpager/h;

    if-eqz v1, :cond_8

    .line 496
    iget-object v1, p0, Lpager/ViewPager;->U:Lpager/h;

    invoke-interface {v1, p1}, Lpager/h;->a(I)V

    .line 498
    :cond_8
    if-eqz v0, :cond_1

    iget-object v0, p0, Lpager/ViewPager;->V:Lpager/h;

    if-eqz v0, :cond_1

    .line 499
    iget-object v0, p0, Lpager/ViewPager;->V:Lpager/h;

    invoke-interface {v0, p1}, Lpager/h;->a(I)V

    goto/16 :goto_0

    :cond_9
    move v0, v1

    .line 484
    goto :goto_3

    .line 502
    :cond_a
    if-eqz v0, :cond_b

    iget-object v3, p0, Lpager/ViewPager;->U:Lpager/h;

    if-eqz v3, :cond_b

    .line 503
    iget-object v3, p0, Lpager/ViewPager;->U:Lpager/h;

    invoke-interface {v3, p1}, Lpager/h;->a(I)V

    .line 505
    :cond_b
    if-eqz v0, :cond_c

    iget-object v0, p0, Lpager/ViewPager;->V:Lpager/h;

    if-eqz v0, :cond_c

    .line 506
    iget-object v0, p0, Lpager/ViewPager;->V:Lpager/h;

    invoke-interface {v0, p1}, Lpager/h;->a(I)V

    .line 508
    :cond_c
    invoke-direct {p0}, Lpager/ViewPager;->g()V

    .line 509
    invoke-virtual {p0, v2, v1}, Lpager/ViewPager;->scrollTo(II)V

    goto/16 :goto_0

    :cond_d
    move v2, v1

    goto :goto_4
.end method

.method public a(Landroid/view/KeyEvent;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 2247
    const/4 v0, 0x0

    .line 2248
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 2249
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 2269
    :cond_0
    :goto_0
    return v0

    .line 2251
    :sswitch_0
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lpager/ViewPager;->c(I)Z

    move-result v0

    goto :goto_0

    .line 2254
    :sswitch_1
    const/16 v0, 0x42

    invoke-virtual {p0, v0}, Lpager/ViewPager;->c(I)Z

    move-result v0

    goto :goto_0

    .line 2257
    :sswitch_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    .line 2260
    invoke-static {p1}, Landroid/support/v4/view/KeyEventCompat;->hasNoModifiers(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2261
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lpager/ViewPager;->c(I)Z

    move-result v0

    goto :goto_0

    .line 2262
    :cond_1
    invoke-static {p1, v3}, Landroid/support/v4/view/KeyEventCompat;->hasModifiers(Landroid/view/KeyEvent;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2263
    invoke-virtual {p0, v3}, Lpager/ViewPager;->c(I)Z

    move-result v0

    goto :goto_0

    .line 2249
    nop

    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x3d -> :sswitch_2
    .end sparse-switch
.end method

.method protected a(Landroid/view/View;ZIII)Z
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 2210
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    move-object v6, p1

    .line 2211
    check-cast v6, Landroid/view/ViewGroup;

    .line 2212
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v8

    .line 2213
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v9

    .line 2214
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 2216
    add-int/lit8 v0, v0, -0x1

    move v7, v0

    :goto_0
    if-ltz v7, :cond_2

    .line 2219
    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2220
    add-int v0, p4, v8

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v3

    if-lt v0, v3, :cond_1

    add-int v0, p4, v8

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v3

    if-ge v0, v3, :cond_1

    add-int v0, p5, v9

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    if-lt v0, v3, :cond_1

    add-int v0, p5, v9

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v3

    if-ge v0, v3, :cond_1

    add-int v0, p4, v8

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int v4, v0, v3

    add-int v0, p5, v9

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int v5, v0, v3

    move-object v0, p0

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lpager/ViewPager;->a(Landroid/view/View;ZIII)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2229
    :cond_0
    :goto_1
    return v2

    .line 2216
    :cond_1
    add-int/lit8 v0, v7, -0x1

    move v7, v0

    goto :goto_0

    .line 2229
    :cond_2
    if-eqz p2, :cond_3

    neg-int v0, p3

    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompat;->canScrollHorizontally(Landroid/view/View;I)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 2362
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2364
    invoke-virtual {p0}, Lpager/ViewPager;->getDescendantFocusability()I

    move-result v2

    .line 2366
    const/high16 v0, 0x6

    if-eq v2, v0, :cond_1

    .line 2367
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lpager/ViewPager;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 2368
    invoke-virtual {p0, v0}, Lpager/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2369
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    .line 2370
    invoke-virtual {p0, v3}, Lpager/ViewPager;->a(Landroid/view/View;)Lpager/e;

    move-result-object v4

    .line 2371
    if-eqz v4, :cond_0

    iget v4, v4, Lpager/e;->b:I

    iget v5, p0, Lpager/ViewPager;->h:I

    if-ne v4, v5, :cond_0

    .line 2372
    invoke-virtual {v3, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 2367
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2382
    :cond_1
    const/high16 v0, 0x4

    if-ne v2, v0, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v1, v0, :cond_3

    .line 2388
    :cond_2
    invoke-virtual {p0}, Lpager/ViewPager;->isFocusable()Z

    move-result v0

    if-nez v0, :cond_4

    .line 2399
    :cond_3
    :goto_1
    return-void

    .line 2391
    :cond_4
    and-int/lit8 v0, p3, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    invoke-virtual {p0}, Lpager/ViewPager;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lpager/ViewPager;->isFocusableInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2395
    :cond_5
    if-eqz p1, :cond_3

    .line 2396
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public addTouchables(Ljava/util/ArrayList;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2409
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lpager/ViewPager;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2410
    invoke-virtual {p0, v0}, Lpager/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2411
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 2412
    invoke-virtual {p0, v1}, Lpager/ViewPager;->a(Landroid/view/View;)Lpager/e;

    move-result-object v2

    .line 2413
    if-eqz v2, :cond_0

    iget v2, v2, Lpager/e;->b:I

    iget v3, p0, Lpager/ViewPager;->h:I

    if-ne v2, v3, :cond_0

    .line 2414
    invoke-virtual {v1, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    .line 2409
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2418
    :cond_1
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1114
    invoke-virtual {p0, p3}, Lpager/ViewPager;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1115
    invoke-virtual {p0, p3}, Lpager/ViewPager;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    :goto_0
    move-object v0, v1

    .line 1117
    check-cast v0, Lpager/f;

    .line 1118
    iget-boolean v2, v0, Lpager/f;->a:Z

    instance-of v3, p1, Lpager/d;

    or-int/2addr v2, v3

    iput-boolean v2, v0, Lpager/f;->a:Z

    .line 1119
    iget-boolean v2, p0, Lpager/ViewPager;->v:Z

    if-eqz v2, :cond_1

    .line 1120
    if-eqz v0, :cond_0

    iget-boolean v2, v0, Lpager/f;->a:Z

    if-eqz v2, :cond_0

    .line 1121
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot add pager decor view during layout"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1123
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, v0, Lpager/f;->d:Z

    .line 1124
    invoke-virtual {p0, p1, p2, v1}, Lpager/ViewPager;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 1136
    :goto_1
    return-void

    .line 1126
    :cond_1
    invoke-super {p0, p1, p2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_2
    move-object v1, p3

    goto :goto_0
.end method

.method b(I)Lpager/e;
    .locals 3
    .parameter

    .prologue
    .line 1160
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lpager/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 1161
    iget-object v0, p0, Lpager/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpager/e;

    .line 1162
    iget v2, v0, Lpager/e;->b:I

    if-ne v2, p1, :cond_0

    .line 1166
    :goto_1
    return-object v0

    .line 1160
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1166
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method b(Landroid/view/View;)Lpager/e;
    .locals 2
    .parameter

    .prologue
    .line 1150
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, p0, :cond_2

    .line 1151
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/view/View;

    if-nez v1, :cond_1

    .line 1152
    :cond_0
    const/4 v0, 0x0

    .line 1156
    :goto_1
    return-object v0

    .line 1154
    :cond_1
    check-cast v0, Landroid/view/View;

    move-object p1, v0

    goto :goto_0

    .line 1156
    :cond_2
    invoke-virtual {p0, p1}, Lpager/ViewPager;->a(Landroid/view/View;)Lpager/e;

    move-result-object v0

    goto :goto_1
.end method

.method b()V
    .locals 1

    .prologue
    .line 787
    iget v0, p0, Lpager/ViewPager;->h:I

    invoke-virtual {p0, v0}, Lpager/ViewPager;->a(I)V

    .line 788
    return-void
.end method

.method c()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2342
    iget v1, p0, Lpager/ViewPager;->h:I

    if-lez v1, :cond_0

    .line 2343
    iget v1, p0, Lpager/ViewPager;->h:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1, v0}, Lpager/ViewPager;->a(IZ)V

    .line 2346
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(I)Z
    .locals 5
    .parameter

    .prologue
    const/16 v4, 0x42

    const/16 v3, 0x11

    .line 2273
    invoke-virtual {p0}, Lpager/ViewPager;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 2274
    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    .line 2276
    :cond_0
    const/4 v1, 0x0

    .line 2278
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v2

    invoke-virtual {v2, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    .line 2280
    if-eqz v2, :cond_5

    if-eq v2, v0, :cond_5

    .line 2281
    if-ne p1, v3, :cond_3

    .line 2284
    iget-object v1, p0, Lpager/ViewPager;->f:Landroid/graphics/Rect;

    invoke-direct {p0, v1, v2}, Lpager/ViewPager;->a(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    .line 2285
    iget-object v3, p0, Lpager/ViewPager;->f:Landroid/graphics/Rect;

    invoke-direct {p0, v3, v0}, Lpager/ViewPager;->a(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    .line 2286
    if-eqz v0, :cond_2

    if-lt v1, v3, :cond_2

    .line 2287
    invoke-virtual {p0}, Lpager/ViewPager;->c()Z

    move-result v0

    .line 2309
    :goto_0
    if-eqz v0, :cond_1

    .line 2310
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lpager/ViewPager;->playSoundEffect(I)V

    .line 2312
    :cond_1
    return v0

    .line 2289
    :cond_2
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    move-result v0

    goto :goto_0

    .line 2291
    :cond_3
    if-ne p1, v4, :cond_9

    .line 2294
    iget-object v1, p0, Lpager/ViewPager;->f:Landroid/graphics/Rect;

    invoke-direct {p0, v1, v2}, Lpager/ViewPager;->a(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    .line 2295
    iget-object v3, p0, Lpager/ViewPager;->f:Landroid/graphics/Rect;

    invoke-direct {p0, v3, v0}, Lpager/ViewPager;->a(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    .line 2296
    if-eqz v0, :cond_4

    if-gt v1, v3, :cond_4

    .line 2297
    invoke-virtual {p0}, Lpager/ViewPager;->d()Z

    move-result v0

    goto :goto_0

    .line 2299
    :cond_4
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    move-result v0

    goto :goto_0

    .line 2302
    :cond_5
    if-eq p1, v3, :cond_6

    const/4 v0, 0x1

    if-ne p1, v0, :cond_7

    .line 2304
    :cond_6
    invoke-virtual {p0}, Lpager/ViewPager;->c()Z

    move-result v0

    goto :goto_0

    .line 2305
    :cond_7
    if-eq p1, v4, :cond_8

    const/4 v0, 0x2

    if-ne p1, v0, :cond_9

    .line 2307
    :cond_8
    invoke-virtual {p0}, Lpager/ViewPager;->d()Z

    move-result v0

    goto :goto_0

    :cond_9
    move v0, v1

    goto :goto_0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .parameter

    .prologue
    .line 2487
    instance-of v0, p1, Lpager/f;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public computeScroll()V
    .locals 4

    .prologue
    .line 1425
    iget-object v0, p0, Lpager/ViewPager;->l:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lpager/ViewPager;->l:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1426
    invoke-virtual {p0}, Lpager/ViewPager;->getScrollX()I

    move-result v0

    .line 1427
    invoke-virtual {p0}, Lpager/ViewPager;->getScrollY()I

    move-result v1

    .line 1428
    iget-object v2, p0, Lpager/ViewPager;->l:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    .line 1429
    iget-object v3, p0, Lpager/ViewPager;->l:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    .line 1431
    if-ne v0, v2, :cond_0

    if-eq v1, v3, :cond_1

    .line 1432
    :cond_0
    invoke-virtual {p0, v2, v3}, Lpager/ViewPager;->scrollTo(II)V

    .line 1433
    invoke-direct {p0, v2}, Lpager/ViewPager;->d(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1434
    iget-object v0, p0, Lpager/ViewPager;->l:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1435
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v3}, Lpager/ViewPager;->scrollTo(II)V

    .line 1440
    :cond_1
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 1446
    :goto_0
    return-void

    .line 1445
    :cond_2
    invoke-direct {p0}, Lpager/ViewPager;->g()V

    goto :goto_0
.end method

.method d()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 2350
    iget-object v1, p0, Lpager/ViewPager;->g:Lpager/a;

    if-eqz v1, :cond_0

    iget v1, p0, Lpager/ViewPager;->h:I

    iget-object v2, p0, Lpager/ViewPager;->g:Lpager/a;

    invoke-virtual {v2}, Lpager/a;->a()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    .line 2351
    iget v1, p0, Lpager/ViewPager;->h:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1, v0}, Lpager/ViewPager;->a(IZ)V

    .line 2354
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter

    .prologue
    .line 2235
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lpager/ViewPager;->a(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 2460
    invoke-virtual {p0}, Lpager/ViewPager;->getChildCount()I

    move-result v2

    move v1, v0

    .line 2461
    :goto_0
    if-ge v1, v2, :cond_0

    .line 2462
    invoke-virtual {p0, v1}, Lpager/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2463
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    .line 2464
    invoke-virtual {p0, v3}, Lpager/ViewPager;->a(Landroid/view/View;)Lpager/e;

    move-result-object v4

    .line 2465
    if-eqz v4, :cond_1

    iget v4, v4, Lpager/e;->b:I

    iget v5, p0, Lpager/ViewPager;->h:I

    if-ne v4, v5, :cond_1

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2467
    const/4 v0, 0x1

    .line 2472
    :cond_0
    return v0

    .line 2461
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 1946
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 1947
    const/4 v0, 0x0

    .line 1949
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getOverScrollMode(Landroid/view/View;)I

    move-result v1

    .line 1950
    if-eqz v1, :cond_0

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lpager/ViewPager;->g:Lpager/a;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lpager/ViewPager;->g:Lpager/a;

    invoke-virtual {v1}, Lpager/a;->a()I

    move-result v1

    if-le v1, v2, :cond_4

    .line 1953
    :cond_0
    iget-object v1, p0, Lpager/ViewPager;->O:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1954
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 1955
    invoke-virtual {p0}, Lpager/ViewPager;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lpager/ViewPager;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lpager/ViewPager;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    .line 1956
    invoke-virtual {p0}, Lpager/ViewPager;->getWidth()I

    move-result v3

    .line 1958
    const/high16 v4, 0x4387

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    .line 1959
    neg-int v4, v2

    invoke-virtual {p0}, Lpager/ViewPager;->getPaddingTop()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, p0, Lpager/ViewPager;->r:F

    int-to-float v6, v3

    mul-float/2addr v5, v6

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1960
    iget-object v4, p0, Lpager/ViewPager;->O:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v4, v2, v3}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    .line 1961
    iget-object v2, p0, Lpager/ViewPager;->O:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v2, p1}, Landroid/support/v4/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    move-result v2

    or-int/2addr v0, v2

    .line 1962
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1964
    :cond_1
    iget-object v1, p0, Lpager/ViewPager;->P:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1965
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 1966
    invoke-virtual {p0}, Lpager/ViewPager;->getWidth()I

    move-result v2

    .line 1967
    invoke-virtual {p0}, Lpager/ViewPager;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lpager/ViewPager;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lpager/ViewPager;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    .line 1969
    const/high16 v4, 0x42b4

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    .line 1970
    invoke-virtual {p0}, Lpager/ViewPager;->getPaddingTop()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    iget v5, p0, Lpager/ViewPager;->s:F

    const/high16 v6, 0x3f80

    add-float/2addr v5, v6

    neg-float v5, v5

    int-to-float v6, v2

    mul-float/2addr v5, v6

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1971
    iget-object v4, p0, Lpager/ViewPager;->P:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v4, v3, v2}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    .line 1972
    iget-object v2, p0, Lpager/ViewPager;->P:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v2, p1}, Landroid/support/v4/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    move-result v2

    or-int/2addr v0, v2

    .line 1973
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1980
    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    .line 1982
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 1984
    :cond_3
    return-void

    .line 1976
    :cond_4
    iget-object v1, p0, Lpager/ViewPager;->O:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->finish()V

    .line 1977
    iget-object v1, p0, Lpager/ViewPager;->P:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->finish()V

    goto :goto_0
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 630
    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    .line 631
    iget-object v0, p0, Lpager/ViewPager;->o:Landroid/graphics/drawable/Drawable;

    .line 632
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 633
    invoke-virtual {p0}, Lpager/ViewPager;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 635
    :cond_0
    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 2477
    new-instance v0, Lpager/f;

    invoke-direct {v0}, Lpager/f;-><init>()V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .parameter

    .prologue
    .line 2492
    new-instance v0, Lpager/f;

    invoke-virtual {p0}, Lpager/ViewPager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lpager/f;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter

    .prologue
    .line 2482
    invoke-virtual {p0}, Lpager/ViewPager;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Lpager/a;
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Lpager/ViewPager;->g:Lpager/a;

    return-object v0
.end method

.method public getCurrentItem()I
    .locals 1

    .prologue
    .line 453
    iget v0, p0, Lpager/ViewPager;->h:I

    return v0
.end method

.method public getOffscreenPageLimit()I
    .locals 1

    .prologue
    .line 543
    iget v0, p0, Lpager/ViewPager;->y:I

    return v0
.end method

.method public getPageMargin()I
    .locals 1

    .prologue
    .line 599
    iget v0, p0, Lpager/ViewPager;->n:I

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 1171
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 1172
    const/4 v0, 0x1

    iput-boolean v0, p0, Lpager/ViewPager;->Q:Z

    .line 1173
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 16
    .parameter

    .prologue
    .line 1988
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 1991
    move-object/from16 v0, p0

    iget v1, v0, Lpager/ViewPager;->n:I

    if-lez v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lpager/ViewPager;->o:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lpager/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lpager/ViewPager;->g:Lpager/a;

    if-eqz v1, :cond_2

    .line 1992
    invoke-virtual/range {p0 .. p0}, Lpager/ViewPager;->getScrollX()I

    move-result v6

    .line 1993
    invoke-virtual/range {p0 .. p0}, Lpager/ViewPager;->getWidth()I

    move-result v7

    .line 1995
    move-object/from16 v0, p0

    iget v1, v0, Lpager/ViewPager;->n:I

    int-to-float v1, v1

    int-to-float v2, v7

    div-float v8, v1, v2

    .line 1996
    const/4 v5, 0x0

    .line 1997
    move-object/from16 v0, p0

    iget-object v1, v0, Lpager/ViewPager;->d:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpager/e;

    .line 1998
    iget v4, v1, Lpager/e;->e:F

    .line 1999
    move-object/from16 v0, p0

    iget-object v2, v0, Lpager/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 2000
    iget v3, v1, Lpager/e;->b:I

    .line 2001
    move-object/from16 v0, p0

    iget-object v2, v0, Lpager/ViewPager;->d:Ljava/util/ArrayList;

    add-int/lit8 v10, v9, -0x1

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpager/e;

    iget v10, v2, Lpager/e;->b:I

    move v2, v5

    move v5, v3

    .line 2002
    :goto_0
    if-ge v5, v10, :cond_2

    .line 2003
    :goto_1
    iget v3, v1, Lpager/e;->b:I

    if-le v5, v3, :cond_0

    if-ge v2, v9, :cond_0

    .line 2004
    move-object/from16 v0, p0

    iget-object v1, v0, Lpager/ViewPager;->d:Ljava/util/ArrayList;

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpager/e;

    goto :goto_1

    .line 2008
    :cond_0
    iget v3, v1, Lpager/e;->b:I

    if-ne v5, v3, :cond_3

    .line 2009
    iget v3, v1, Lpager/e;->e:F

    iget v4, v1, Lpager/e;->d:F

    add-float/2addr v3, v4

    int-to-float v4, v7

    mul-float/2addr v3, v4

    .line 2010
    iget v4, v1, Lpager/e;->e:F

    iget v11, v1, Lpager/e;->d:F

    add-float/2addr v4, v11

    add-float/2addr v4, v8

    .line 2017
    :goto_2
    move-object/from16 v0, p0

    iget v11, v0, Lpager/ViewPager;->n:I

    int-to-float v11, v11

    add-float/2addr v11, v3

    int-to-float v12, v6

    cmpl-float v11, v11, v12

    if-lez v11, :cond_1

    .line 2018
    move-object/from16 v0, p0

    iget-object v11, v0, Lpager/ViewPager;->o:Landroid/graphics/drawable/Drawable;

    float-to-int v12, v3

    move-object/from16 v0, p0

    iget v13, v0, Lpager/ViewPager;->p:I

    move-object/from16 v0, p0

    iget v14, v0, Lpager/ViewPager;->n:I

    int-to-float v14, v14

    add-float/2addr v14, v3

    const/high16 v15, 0x3f00

    add-float/2addr v14, v15

    float-to-int v14, v14

    move-object/from16 v0, p0

    iget v15, v0, Lpager/ViewPager;->q:I

    invoke-virtual {v11, v12, v13, v14, v15}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2020
    move-object/from16 v0, p0

    iget-object v11, v0, Lpager/ViewPager;->o:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2023
    :cond_1
    add-int v11, v6, v7

    int-to-float v11, v11

    cmpl-float v3, v3, v11

    if-lez v3, :cond_4

    .line 2028
    :cond_2
    return-void

    .line 2012
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lpager/ViewPager;->g:Lpager/a;

    invoke-virtual {v3, v5}, Lpager/a;->a(I)F

    move-result v11

    .line 2013
    add-float v3, v4, v11

    int-to-float v12, v7

    mul-float/2addr v3, v12

    .line 2014
    add-float/2addr v11, v8

    add-float/2addr v4, v11

    goto :goto_2

    .line 2002
    :cond_4
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .parameter

    .prologue
    const/4 v3, -0x1

    const/4 v12, 0x0

    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 1578
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 1581
    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    if-ne v0, v6, :cond_2

    .line 1584
    :cond_0
    iput-boolean v2, p0, Lpager/ViewPager;->z:Z

    .line 1585
    iput-boolean v2, p0, Lpager/ViewPager;->A:Z

    .line 1586
    iput v3, p0, Lpager/ViewPager;->H:I

    .line 1587
    iget-object v0, p0, Lpager/ViewPager;->I:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_1

    .line 1588
    iget-object v0, p0, Lpager/ViewPager;->I:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 1589
    const/4 v0, 0x0

    iput-object v0, p0, Lpager/ViewPager;->I:Landroid/view/VelocityTracker;

    .line 1710
    :cond_1
    :goto_0
    return v2

    .line 1596
    :cond_2
    if-eqz v0, :cond_4

    .line 1597
    iget-boolean v1, p0, Lpager/ViewPager;->z:Z

    if-eqz v1, :cond_3

    move v2, v6

    .line 1599
    goto :goto_0

    .line 1601
    :cond_3
    iget-boolean v1, p0, Lpager/ViewPager;->A:Z

    if-nez v1, :cond_1

    .line 1607
    :cond_4
    sparse-switch v0, :sswitch_data_0

    .line 1701
    :cond_5
    :goto_1
    iget-object v0, p0, Lpager/ViewPager;->I:Landroid/view/VelocityTracker;

    if-nez v0, :cond_6

    .line 1702
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lpager/ViewPager;->I:Landroid/view/VelocityTracker;

    .line 1704
    :cond_6
    iget-object v0, p0, Lpager/ViewPager;->I:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1710
    iget-boolean v2, p0, Lpager/ViewPager;->z:Z

    goto :goto_0

    .line 1618
    :sswitch_0
    iget v0, p0, Lpager/ViewPager;->H:I

    .line 1619
    if-eq v0, v3, :cond_5

    .line 1624
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 1625
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v7

    .line 1626
    iget v1, p0, Lpager/ViewPager;->F:F

    sub-float v8, v7, v1

    .line 1627
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v9

    .line 1628
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v10

    .line 1629
    iget v0, p0, Lpager/ViewPager;->G:F

    sub-float v0, v10, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v11

    .line 1632
    cmpl-float v0, v8, v12

    if-eqz v0, :cond_7

    iget v0, p0, Lpager/ViewPager;->F:F

    invoke-direct {p0, v0, v8}, Lpager/ViewPager;->a(FF)Z

    move-result v0

    if-nez v0, :cond_7

    float-to-int v3, v8

    float-to-int v4, v7

    float-to-int v5, v10

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lpager/ViewPager;->a(Landroid/view/View;ZIII)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1635
    iput v7, p0, Lpager/ViewPager;->F:F

    iput v7, p0, Lpager/ViewPager;->E:F

    .line 1636
    iput v10, p0, Lpager/ViewPager;->G:F

    .line 1637
    iput-boolean v6, p0, Lpager/ViewPager;->A:Z

    goto :goto_0

    .line 1640
    :cond_7
    iget v0, p0, Lpager/ViewPager;->D:I

    int-to-float v0, v0

    cmpl-float v0, v9, v0

    if-lez v0, :cond_a

    cmpl-float v0, v9, v11

    if-lez v0, :cond_a

    .line 1642
    iput-boolean v6, p0, Lpager/ViewPager;->z:Z

    .line 1643
    invoke-direct {p0, v6}, Lpager/ViewPager;->setScrollState(I)V

    .line 1644
    cmpl-float v0, v8, v12

    if-lez v0, :cond_9

    iget v0, p0, Lpager/ViewPager;->E:F

    iget v1, p0, Lpager/ViewPager;->D:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    :goto_2
    iput v0, p0, Lpager/ViewPager;->F:F

    .line 1646
    invoke-direct {p0, v6}, Lpager/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 1657
    :cond_8
    :goto_3
    iget-boolean v0, p0, Lpager/ViewPager;->z:Z

    if-eqz v0, :cond_5

    .line 1659
    invoke-direct {p0, v7}, Lpager/ViewPager;->b(F)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1660
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    goto :goto_1

    .line 1644
    :cond_9
    iget v0, p0, Lpager/ViewPager;->E:F

    iget v1, p0, Lpager/ViewPager;->D:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    goto :goto_2

    .line 1648
    :cond_a
    iget v0, p0, Lpager/ViewPager;->D:I

    int-to-float v0, v0

    cmpl-float v0, v11, v0

    if-lez v0, :cond_8

    .line 1654
    iput-boolean v6, p0, Lpager/ViewPager;->A:Z

    goto :goto_3

    .line 1671
    :sswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lpager/ViewPager;->E:F

    iput v0, p0, Lpager/ViewPager;->F:F

    .line 1672
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lpager/ViewPager;->G:F

    .line 1673
    invoke-static {p1, v2}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lpager/ViewPager;->H:I

    .line 1674
    iput-boolean v2, p0, Lpager/ViewPager;->A:Z

    .line 1676
    iget-object v0, p0, Lpager/ViewPager;->l:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 1677
    iget v0, p0, Lpager/ViewPager;->Z:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_b

    iget-object v0, p0, Lpager/ViewPager;->l:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalX()I

    move-result v0

    iget-object v1, p0, Lpager/ViewPager;->l:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lpager/ViewPager;->M:I

    if-le v0, v1, :cond_b

    .line 1680
    iget-object v0, p0, Lpager/ViewPager;->l:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1681
    iput-boolean v2, p0, Lpager/ViewPager;->x:Z

    .line 1682
    invoke-virtual {p0}, Lpager/ViewPager;->b()V

    .line 1683
    iput-boolean v6, p0, Lpager/ViewPager;->z:Z

    .line 1684
    invoke-direct {p0, v6}, Lpager/ViewPager;->setScrollState(I)V

    goto/16 :goto_1

    .line 1686
    :cond_b
    invoke-direct {p0}, Lpager/ViewPager;->g()V

    .line 1687
    iput-boolean v2, p0, Lpager/ViewPager;->z:Z

    goto/16 :goto_1

    .line 1697
    :sswitch_2
    invoke-direct {p0, p1}, Lpager/ViewPager;->a(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 1607
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x2 -> :sswitch_0
        0x6 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 17
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1317
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lpager/ViewPager;->v:Z

    .line 1318
    invoke-virtual/range {p0 .. p0}, Lpager/ViewPager;->b()V

    .line 1319
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lpager/ViewPager;->v:Z

    .line 1321
    invoke-virtual/range {p0 .. p0}, Lpager/ViewPager;->getChildCount()I

    move-result v9

    .line 1322
    sub-int v10, p4, p2

    .line 1323
    sub-int v11, p5, p3

    .line 1324
    invoke-virtual/range {p0 .. p0}, Lpager/ViewPager;->getPaddingLeft()I

    move-result v6

    .line 1325
    invoke-virtual/range {p0 .. p0}, Lpager/ViewPager;->getPaddingTop()I

    move-result v2

    .line 1326
    invoke-virtual/range {p0 .. p0}, Lpager/ViewPager;->getPaddingRight()I

    move-result v5

    .line 1327
    invoke-virtual/range {p0 .. p0}, Lpager/ViewPager;->getPaddingBottom()I

    move-result v3

    .line 1328
    invoke-virtual/range {p0 .. p0}, Lpager/ViewPager;->getScrollX()I

    move-result v12

    .line 1330
    const/4 v4, 0x0

    .line 1334
    const/4 v1, 0x0

    move v8, v1

    :goto_0
    if-ge v8, v9, :cond_0

    .line 1335
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lpager/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 1336
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v7, 0x8

    if-eq v1, v7, :cond_4

    .line 1337
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lpager/f;

    .line 1340
    iget-boolean v7, v1, Lpager/f;->a:Z

    if-eqz v7, :cond_4

    .line 1341
    iget v7, v1, Lpager/f;->b:I

    and-int/lit8 v7, v7, 0x7

    .line 1342
    iget v1, v1, Lpager/f;->b:I

    and-int/lit8 v14, v1, 0x70

    .line 1343
    packed-switch v7, :pswitch_data_0

    :pswitch_0
    move v7, v6

    .line 1360
    :goto_1
    sparse-switch v14, :sswitch_data_0

    move v1, v2

    move/from16 v16, v3

    move v3, v2

    move/from16 v2, v16

    .line 1377
    :goto_2
    add-int/2addr v7, v12

    .line 1378
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    add-int/2addr v14, v7

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    add-int/2addr v15, v1

    invoke-virtual {v13, v7, v1, v14, v15}, Landroid/view/View;->layout(IIII)V

    .line 1381
    add-int/lit8 v1, v4, 0x1

    move v4, v3

    move v3, v2

    move v2, v5

    move v5, v6

    .line 1334
    :goto_3
    add-int/lit8 v6, v8, 0x1

    move v8, v6

    move v6, v5

    move v5, v2

    move v2, v4

    move v4, v1

    goto :goto_0

    .line 1349
    :pswitch_1
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v1, v6

    move v7, v6

    move v6, v1

    .line 1350
    goto :goto_1

    .line 1352
    :pswitch_2
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    sub-int v1, v10, v1

    div-int/lit8 v1, v1, 0x2

    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    move v7, v1

    .line 1354
    goto :goto_1

    .line 1356
    :pswitch_3
    sub-int v1, v10, v5

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    sub-int/2addr v1, v7

    .line 1357
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v5, v7

    move v7, v1

    goto :goto_1

    .line 1366
    :sswitch_0
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, v2

    move/from16 v16, v2

    move v2, v3

    move v3, v1

    move/from16 v1, v16

    .line 1367
    goto :goto_2

    .line 1369
    :sswitch_1
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int v1, v11, v1

    div-int/lit8 v1, v1, 0x2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    move/from16 v16, v3

    move v3, v2

    move/from16 v2, v16

    .line 1371
    goto :goto_2

    .line 1373
    :sswitch_2
    sub-int v1, v11, v3

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    sub-int/2addr v1, v14

    .line 1374
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    add-int/2addr v3, v14

    move/from16 v16, v3

    move v3, v2

    move/from16 v2, v16

    goto :goto_2

    .line 1387
    :cond_0
    const/4 v1, 0x0

    move v7, v1

    :goto_4
    if-ge v7, v9, :cond_3

    .line 1388
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lpager/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 1389
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v12, 0x8

    if-eq v1, v12, :cond_2

    .line 1390
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lpager/f;

    .line 1392
    iget-boolean v12, v1, Lpager/f;->a:Z

    if-nez v12, :cond_2

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lpager/ViewPager;->a(Landroid/view/View;)Lpager/e;

    move-result-object v12

    if-eqz v12, :cond_2

    .line 1393
    int-to-float v13, v10

    iget v12, v12, Lpager/e;->e:F

    mul-float/2addr v12, v13

    float-to-int v12, v12

    .line 1394
    add-int/2addr v12, v6

    .line 1396
    iget-boolean v13, v1, Lpager/f;->d:Z

    if-eqz v13, :cond_1

    .line 1399
    const/4 v13, 0x0

    iput-boolean v13, v1, Lpager/f;->d:Z

    .line 1400
    sub-int v13, v10, v6

    sub-int/2addr v13, v5

    int-to-float v13, v13

    iget v1, v1, Lpager/f;->c:F

    mul-float/2addr v1, v13

    float-to-int v1, v1

    const/high16 v13, 0x4000

    invoke-static {v1, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1403
    sub-int v13, v11, v2

    sub-int/2addr v13, v3

    const/high16 v14, 0x4000

    invoke-static {v13, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    .line 1406
    invoke-virtual {v8, v1, v13}, Landroid/view/View;->measure(II)V

    .line 1411
    :cond_1
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v1, v12

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    add-int/2addr v13, v2

    invoke-virtual {v8, v12, v2, v1, v13}, Landroid/view/View;->layout(IIII)V

    .line 1387
    :cond_2
    add-int/lit8 v1, v7, 0x1

    move v7, v1

    goto :goto_4

    .line 1417
    :cond_3
    move-object/from16 v0, p0

    iput v2, v0, Lpager/ViewPager;->p:I

    .line 1418
    sub-int v1, v11, v3

    move-object/from16 v0, p0

    iput v1, v0, Lpager/ViewPager;->q:I

    .line 1419
    move-object/from16 v0, p0

    iput v4, v0, Lpager/ViewPager;->T:I

    .line 1420
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lpager/ViewPager;->Q:Z

    .line 1421
    return-void

    :cond_4
    move v1, v4

    move v4, v2

    move v2, v5

    move v5, v6

    goto/16 :goto_3

    .line 1343
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 1360
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x30 -> :sswitch_0
        0x50 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .locals 13
    .parameter
    .parameter

    .prologue
    .line 1182
    const/4 v0, 0x0

    invoke-static {v0, p1}, Lpager/ViewPager;->getDefaultSize(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, p2}, Lpager/ViewPager;->getDefaultSize(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lpager/ViewPager;->setMeasuredDimension(II)V

    .line 1185
    invoke-virtual {p0}, Lpager/ViewPager;->getMeasuredWidth()I

    move-result v0

    .line 1186
    div-int/lit8 v1, v0, 0xa

    .line 1187
    iget v2, p0, Lpager/ViewPager;->B:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lpager/ViewPager;->C:I

    .line 1190
    invoke-virtual {p0}, Lpager/ViewPager;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lpager/ViewPager;->getPaddingRight()I

    move-result v1

    sub-int v3, v0, v1

    .line 1191
    invoke-virtual {p0}, Lpager/ViewPager;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Lpager/ViewPager;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lpager/ViewPager;->getPaddingBottom()I

    move-result v1

    sub-int v5, v0, v1

    .line 1198
    invoke-virtual {p0}, Lpager/ViewPager;->getChildCount()I

    move-result v9

    .line 1199
    const/4 v0, 0x0

    move v8, v0

    :goto_0
    if-ge v8, v9, :cond_8

    .line 1200
    invoke-virtual {p0, v8}, Lpager/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 1201
    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_3

    .line 1202
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lpager/f;

    .line 1203
    if-eqz v0, :cond_3

    iget-boolean v1, v0, Lpager/f;->a:Z

    if-eqz v1, :cond_3

    .line 1204
    iget v1, v0, Lpager/f;->b:I

    and-int/lit8 v6, v1, 0x7

    .line 1205
    iget v1, v0, Lpager/f;->b:I

    and-int/lit8 v4, v1, 0x70

    .line 1206
    const/high16 v2, -0x8000

    .line 1207
    const/high16 v1, -0x8000

    .line 1208
    const/16 v7, 0x30

    if-eq v4, v7, :cond_0

    const/16 v7, 0x50

    if-ne v4, v7, :cond_4

    :cond_0
    const/4 v4, 0x1

    move v7, v4

    .line 1209
    :goto_1
    const/4 v4, 0x3

    if-eq v6, v4, :cond_1

    const/4 v4, 0x5

    if-ne v6, v4, :cond_5

    :cond_1
    const/4 v4, 0x1

    move v6, v4

    .line 1211
    :goto_2
    if-eqz v7, :cond_6

    .line 1212
    const/high16 v2, 0x4000

    .line 1219
    :cond_2
    :goto_3
    iget v4, v0, Lpager/f;->width:I

    const/4 v11, -0x2

    if-eq v4, v11, :cond_e

    .line 1220
    const/high16 v4, 0x4000

    .line 1221
    iget v2, v0, Lpager/f;->width:I

    const/4 v11, -0x1

    if-eq v2, v11, :cond_d

    .line 1222
    iget v2, v0, Lpager/f;->width:I

    .line 1225
    :goto_4
    iget v11, v0, Lpager/f;->height:I

    const/4 v12, -0x2

    if-eq v11, v12, :cond_c

    .line 1226
    const/high16 v1, 0x4000

    .line 1227
    iget v11, v0, Lpager/f;->height:I

    const/4 v12, -0x1

    if-eq v11, v12, :cond_c

    .line 1228
    iget v0, v0, Lpager/f;->height:I

    .line 1231
    :goto_5
    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 1232
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1233
    invoke-virtual {v10, v2, v0}, Landroid/view/View;->measure(II)V

    .line 1235
    if-eqz v7, :cond_7

    .line 1236
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    sub-int/2addr v5, v0

    .line 1199
    :cond_3
    :goto_6
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_0

    .line 1208
    :cond_4
    const/4 v4, 0x0

    move v7, v4

    goto :goto_1

    .line 1209
    :cond_5
    const/4 v4, 0x0

    move v6, v4

    goto :goto_2

    .line 1213
    :cond_6
    if-eqz v6, :cond_2

    .line 1214
    const/high16 v1, 0x4000

    goto :goto_3

    .line 1237
    :cond_7
    if-eqz v6, :cond_3

    .line 1238
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int/2addr v3, v0

    goto :goto_6

    .line 1244
    :cond_8
    const/high16 v0, 0x4000

    invoke-static {v3, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iput v0, p0, Lpager/ViewPager;->t:I

    .line 1245
    const/high16 v0, 0x4000

    invoke-static {v5, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iput v0, p0, Lpager/ViewPager;->u:I

    .line 1248
    const/4 v0, 0x1

    iput-boolean v0, p0, Lpager/ViewPager;->v:Z

    .line 1249
    invoke-virtual {p0}, Lpager/ViewPager;->b()V

    .line 1250
    const/4 v0, 0x0

    iput-boolean v0, p0, Lpager/ViewPager;->v:Z

    .line 1253
    invoke-virtual {p0}, Lpager/ViewPager;->getChildCount()I

    move-result v2

    .line 1254
    const/4 v0, 0x0

    move v1, v0

    :goto_7
    if-ge v1, v2, :cond_b

    .line 1255
    invoke-virtual {p0, v1}, Lpager/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1256
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v5, 0x8

    if-eq v0, v5, :cond_a

    .line 1260
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lpager/f;

    .line 1261
    if-eqz v0, :cond_9

    iget-boolean v5, v0, Lpager/f;->a:Z

    if-nez v5, :cond_a

    .line 1262
    :cond_9
    int-to-float v5, v3

    iget v0, v0, Lpager/f;->c:F

    mul-float/2addr v0, v5

    float-to-int v0, v0

    const/high16 v5, 0x4000

    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1264
    iget v5, p0, Lpager/ViewPager;->u:I

    invoke-virtual {v4, v0, v5}, Landroid/view/View;->measure(II)V

    .line 1254
    :cond_a
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    .line 1268
    :cond_b
    return-void

    :cond_c
    move v0, v5

    goto :goto_5

    :cond_d
    move v2, v3

    goto/16 :goto_4

    :cond_e
    move v4, v2

    move v2, v3

    goto/16 :goto_4
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v1, -0x1

    .line 2429
    invoke-virtual {p0}, Lpager/ViewPager;->getChildCount()I

    move-result v0

    .line 2430
    and-int/lit8 v3, p1, 0x2

    if-eqz v3, :cond_0

    move v1, v2

    move v3, v4

    .line 2439
    :goto_0
    if-eq v3, v0, :cond_2

    .line 2440
    invoke-virtual {p0, v3}, Lpager/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 2441
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_1

    .line 2442
    invoke-virtual {p0, v5}, Lpager/ViewPager;->a(Landroid/view/View;)Lpager/e;

    move-result-object v6

    .line 2443
    if-eqz v6, :cond_1

    iget v6, v6, Lpager/e;->b:I

    iget v7, p0, Lpager/ViewPager;->h:I

    if-ne v6, v7, :cond_1

    .line 2444
    invoke-virtual {v5, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2450
    :goto_1
    return v2

    .line 2435
    :cond_0
    add-int/lit8 v0, v0, -0x1

    move v3, v0

    move v0, v1

    .line 2437
    goto :goto_0

    .line 2439
    :cond_1
    add-int/2addr v3, v1

    goto :goto_0

    :cond_2
    move v2, v4

    .line 2450
    goto :goto_1
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .parameter

    .prologue
    .line 1094
    instance-of v0, p1, Lpager/ViewPager$SavedState;

    if-nez v0, :cond_0

    .line 1095
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1110
    :goto_0
    return-void

    .line 1099
    :cond_0
    check-cast p1, Lpager/ViewPager$SavedState;

    .line 1100
    invoke-virtual {p1}, Lpager/ViewPager$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1102
    iget-object v0, p0, Lpager/ViewPager;->g:Lpager/a;

    if-eqz v0, :cond_1

    .line 1103
    iget-object v0, p0, Lpager/ViewPager;->g:Lpager/a;

    iget-object v1, p1, Lpager/ViewPager$SavedState;->b:Landroid/os/Parcelable;

    iget-object v2, p1, Lpager/ViewPager$SavedState;->c:Ljava/lang/ClassLoader;

    invoke-virtual {v0, v1, v2}, Lpager/a;->a(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    .line 1104
    iget v0, p1, Lpager/ViewPager$SavedState;->a:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lpager/ViewPager;->a(IZZ)V

    goto :goto_0

    .line 1106
    :cond_1
    iget v0, p1, Lpager/ViewPager$SavedState;->a:I

    iput v0, p0, Lpager/ViewPager;->i:I

    .line 1107
    iget-object v0, p1, Lpager/ViewPager$SavedState;->b:Landroid/os/Parcelable;

    iput-object v0, p0, Lpager/ViewPager;->j:Landroid/os/Parcelable;

    .line 1108
    iget-object v0, p1, Lpager/ViewPager$SavedState;->c:Ljava/lang/ClassLoader;

    iput-object v0, p0, Lpager/ViewPager;->k:Ljava/lang/ClassLoader;

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 1083
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 1084
    new-instance v1, Lpager/ViewPager$SavedState;

    invoke-direct {v1, v0}, Lpager/ViewPager$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1085
    iget v0, p0, Lpager/ViewPager;->h:I

    iput v0, v1, Lpager/ViewPager$SavedState;->a:I

    .line 1086
    iget-object v0, p0, Lpager/ViewPager;->g:Lpager/a;

    if-eqz v0, :cond_0

    .line 1087
    iget-object v0, p0, Lpager/ViewPager;->g:Lpager/a;

    invoke-virtual {v0}, Lpager/a;->b()Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, v1, Lpager/ViewPager$SavedState;->b:Landroid/os/Parcelable;

    .line 1089
    :cond_0
    return-object v1
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1272
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 1275
    if-eq p1, p3, :cond_0

    .line 1276
    iget v0, p0, Lpager/ViewPager;->n:I

    iget v1, p0, Lpager/ViewPager;->n:I

    invoke-direct {p0, p1, p3, v0, v1}, Lpager/ViewPager;->a(IIII)V

    .line 1278
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter

    .prologue
    const/4 v6, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1715
    iget-boolean v0, p0, Lpager/ViewPager;->N:Z

    if-eqz v0, :cond_0

    move v0, v1

    .line 1829
    :goto_0
    return v0

    .line 1722
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    .line 1725
    goto :goto_0

    .line 1728
    :cond_1
    iget-object v0, p0, Lpager/ViewPager;->g:Lpager/a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lpager/ViewPager;->g:Lpager/a;

    invoke-virtual {v0}, Lpager/a;->a()I

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    move v0, v2

    .line 1730
    goto :goto_0

    .line 1733
    :cond_3
    iget-object v0, p0, Lpager/ViewPager;->I:Landroid/view/VelocityTracker;

    if-nez v0, :cond_4

    .line 1734
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lpager/ViewPager;->I:Landroid/view/VelocityTracker;

    .line 1736
    :cond_4
    iget-object v0, p0, Lpager/ViewPager;->I:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1738
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1741
    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_0

    .line 1826
    :cond_5
    :goto_1
    :pswitch_0
    if-eqz v2, :cond_6

    .line 1827
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_6
    move v0, v1

    .line 1829
    goto :goto_0

    .line 1743
    :pswitch_1
    iget-object v0, p0, Lpager/ViewPager;->l:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1744
    iput-boolean v2, p0, Lpager/ViewPager;->x:Z

    .line 1745
    invoke-virtual {p0}, Lpager/ViewPager;->b()V

    .line 1746
    iput-boolean v1, p0, Lpager/ViewPager;->z:Z

    .line 1747
    invoke-direct {p0, v1}, Lpager/ViewPager;->setScrollState(I)V

    .line 1750
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lpager/ViewPager;->E:F

    iput v0, p0, Lpager/ViewPager;->F:F

    .line 1751
    invoke-static {p1, v2}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lpager/ViewPager;->H:I

    goto :goto_1

    .line 1755
    :pswitch_2
    iget-boolean v0, p0, Lpager/ViewPager;->z:Z

    if-nez v0, :cond_7

    .line 1756
    iget v0, p0, Lpager/ViewPager;->H:I

    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 1757
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v3

    .line 1758
    iget v4, p0, Lpager/ViewPager;->F:F

    sub-float v4, v3, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 1759
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v0

    .line 1760
    iget v5, p0, Lpager/ViewPager;->G:F

    sub-float/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 1762
    iget v5, p0, Lpager/ViewPager;->D:I

    int-to-float v5, v5

    cmpl-float v5, v4, v5

    if-lez v5, :cond_7

    cmpl-float v0, v4, v0

    if-lez v0, :cond_7

    .line 1764
    iput-boolean v1, p0, Lpager/ViewPager;->z:Z

    .line 1765
    iget v0, p0, Lpager/ViewPager;->E:F

    sub-float v0, v3, v0

    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_8

    iget v0, p0, Lpager/ViewPager;->E:F

    iget v3, p0, Lpager/ViewPager;->D:I

    int-to-float v3, v3

    add-float/2addr v0, v3

    :goto_2
    iput v0, p0, Lpager/ViewPager;->F:F

    .line 1767
    invoke-direct {p0, v1}, Lpager/ViewPager;->setScrollState(I)V

    .line 1768
    invoke-direct {p0, v1}, Lpager/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 1772
    :cond_7
    iget-boolean v0, p0, Lpager/ViewPager;->z:Z

    if-eqz v0, :cond_5

    .line 1774
    iget v0, p0, Lpager/ViewPager;->H:I

    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 1776
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v0

    .line 1777
    invoke-direct {p0, v0}, Lpager/ViewPager;->b(F)Z

    move-result v0

    or-int/2addr v2, v0

    .line 1778
    goto :goto_1

    .line 1765
    :cond_8
    iget v0, p0, Lpager/ViewPager;->E:F

    iget v3, p0, Lpager/ViewPager;->D:I

    int-to-float v3, v3

    sub-float/2addr v0, v3

    goto :goto_2

    .line 1781
    :pswitch_3
    iget-boolean v0, p0, Lpager/ViewPager;->z:Z

    if-eqz v0, :cond_5

    .line 1782
    iget-object v0, p0, Lpager/ViewPager;->I:Landroid/view/VelocityTracker;

    .line 1783
    const/16 v2, 0x3e8

    iget v3, p0, Lpager/ViewPager;->K:I

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1784
    iget v2, p0, Lpager/ViewPager;->H:I

    invoke-static {v0, v2}, Landroid/support/v4/view/VelocityTrackerCompat;->getXVelocity(Landroid/view/VelocityTracker;I)F

    move-result v0

    float-to-int v0, v0

    .line 1786
    iput-boolean v1, p0, Lpager/ViewPager;->x:Z

    .line 1787
    invoke-virtual {p0}, Lpager/ViewPager;->getWidth()I

    move-result v2

    .line 1788
    invoke-virtual {p0}, Lpager/ViewPager;->getScrollX()I

    move-result v3

    .line 1789
    invoke-direct {p0}, Lpager/ViewPager;->h()Lpager/e;

    move-result-object v4

    .line 1790
    iget v5, v4, Lpager/e;->b:I

    .line 1791
    int-to-float v3, v3

    int-to-float v2, v2

    div-float v2, v3, v2

    iget v3, v4, Lpager/e;->e:F

    sub-float/2addr v2, v3

    iget v3, v4, Lpager/e;->d:F

    div-float/2addr v2, v3

    .line 1792
    iget v3, p0, Lpager/ViewPager;->H:I

    invoke-static {p1, v3}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v3

    .line 1794
    invoke-static {p1, v3}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v3

    .line 1795
    iget v4, p0, Lpager/ViewPager;->E:F

    sub-float/2addr v3, v4

    float-to-int v3, v3

    .line 1796
    invoke-direct {p0, v5, v2, v0, v3}, Lpager/ViewPager;->a(IFII)I

    move-result v2

    .line 1798
    invoke-virtual {p0, v2, v1, v1, v0}, Lpager/ViewPager;->a(IZZI)V

    .line 1800
    iput v6, p0, Lpager/ViewPager;->H:I

    .line 1801
    invoke-direct {p0}, Lpager/ViewPager;->i()V

    .line 1802
    iget-object v0, p0, Lpager/ViewPager;->O:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v0

    iget-object v2, p0, Lpager/ViewPager;->P:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v2}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v2

    or-int/2addr v2, v0

    .line 1803
    goto/16 :goto_1

    .line 1806
    :pswitch_4
    iget-boolean v0, p0, Lpager/ViewPager;->z:Z

    if-eqz v0, :cond_5

    .line 1807
    iget v0, p0, Lpager/ViewPager;->h:I

    invoke-virtual {p0, v0, v1, v1}, Lpager/ViewPager;->a(IZZ)V

    .line 1808
    iput v6, p0, Lpager/ViewPager;->H:I

    .line 1809
    invoke-direct {p0}, Lpager/ViewPager;->i()V

    .line 1810
    iget-object v0, p0, Lpager/ViewPager;->O:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v0

    iget-object v2, p0, Lpager/ViewPager;->P:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v2}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v2

    or-int/2addr v2, v0

    goto/16 :goto_1

    .line 1814
    :pswitch_5
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v0

    .line 1815
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v3

    .line 1816
    iput v3, p0, Lpager/ViewPager;->F:F

    .line 1817
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lpager/ViewPager;->H:I

    goto/16 :goto_1

    .line 1821
    :pswitch_6
    invoke-direct {p0, p1}, Lpager/ViewPager;->a(Landroid/view/MotionEvent;)V

    .line 1822
    iget v0, p0, Lpager/ViewPager;->H:I

    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v0

    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v0

    iput v0, p0, Lpager/ViewPager;->F:F

    goto/16 :goto_1

    .line 1741
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public setAdapter(Lpager/a;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 365
    iget-object v0, p0, Lpager/ViewPager;->g:Lpager/a;

    if-eqz v0, :cond_1

    .line 366
    iget-object v0, p0, Lpager/ViewPager;->g:Lpager/a;

    iget-object v1, p0, Lpager/ViewPager;->m:Lpager/i;

    invoke-virtual {v0, v1}, Lpager/a;->b(Landroid/database/DataSetObserver;)V

    .line 367
    iget-object v0, p0, Lpager/ViewPager;->g:Lpager/a;

    invoke-virtual {v0, p0}, Lpager/a;->a(Landroid/view/ViewGroup;)V

    move v1, v2

    .line 368
    :goto_0
    iget-object v0, p0, Lpager/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 369
    iget-object v0, p0, Lpager/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpager/e;

    .line 370
    iget-object v3, p0, Lpager/ViewPager;->g:Lpager/a;

    iget v4, v0, Lpager/e;->b:I

    iget-object v0, v0, Lpager/e;->a:Ljava/lang/Object;

    invoke-virtual {v3, p0, v4, v0}, Lpager/a;->a(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 368
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 372
    :cond_0
    iget-object v0, p0, Lpager/ViewPager;->g:Lpager/a;

    invoke-virtual {v0, p0}, Lpager/a;->b(Landroid/view/ViewGroup;)V

    .line 373
    iget-object v0, p0, Lpager/ViewPager;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 374
    invoke-direct {p0}, Lpager/ViewPager;->f()V

    .line 375
    iput v2, p0, Lpager/ViewPager;->h:I

    .line 376
    invoke-virtual {p0, v2, v2}, Lpager/ViewPager;->scrollTo(II)V

    .line 379
    :cond_1
    iget-object v0, p0, Lpager/ViewPager;->g:Lpager/a;

    .line 380
    iput-object p1, p0, Lpager/ViewPager;->g:Lpager/a;

    .line 382
    iget-object v1, p0, Lpager/ViewPager;->g:Lpager/a;

    if-eqz v1, :cond_3

    .line 383
    iget-object v1, p0, Lpager/ViewPager;->m:Lpager/i;

    if-nez v1, :cond_2

    .line 384
    new-instance v1, Lpager/i;

    invoke-direct {v1, p0, v5}, Lpager/i;-><init>(Lpager/ViewPager;Lpager/b;)V

    iput-object v1, p0, Lpager/ViewPager;->m:Lpager/i;

    .line 386
    :cond_2
    iget-object v1, p0, Lpager/ViewPager;->g:Lpager/a;

    iget-object v3, p0, Lpager/ViewPager;->m:Lpager/i;

    invoke-virtual {v1, v3}, Lpager/a;->a(Landroid/database/DataSetObserver;)V

    .line 387
    iput-boolean v2, p0, Lpager/ViewPager;->x:Z

    .line 388
    iput-boolean v6, p0, Lpager/ViewPager;->Q:Z

    .line 389
    iget v1, p0, Lpager/ViewPager;->i:I

    if-ltz v1, :cond_5

    .line 390
    iget-object v1, p0, Lpager/ViewPager;->g:Lpager/a;

    iget-object v3, p0, Lpager/ViewPager;->j:Landroid/os/Parcelable;

    iget-object v4, p0, Lpager/ViewPager;->k:Ljava/lang/ClassLoader;

    invoke-virtual {v1, v3, v4}, Lpager/a;->a(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    .line 391
    iget v1, p0, Lpager/ViewPager;->i:I

    invoke-virtual {p0, v1, v2, v6}, Lpager/ViewPager;->a(IZZ)V

    .line 392
    const/4 v1, -0x1

    iput v1, p0, Lpager/ViewPager;->i:I

    .line 393
    iput-object v5, p0, Lpager/ViewPager;->j:Landroid/os/Parcelable;

    .line 394
    iput-object v5, p0, Lpager/ViewPager;->k:Ljava/lang/ClassLoader;

    .line 400
    :cond_3
    :goto_1
    iget-object v1, p0, Lpager/ViewPager;->W:Lpager/g;

    if-eqz v1, :cond_4

    if-eq v0, p1, :cond_4

    .line 401
    iget-object v1, p0, Lpager/ViewPager;->W:Lpager/g;

    invoke-interface {v1, v0, p1}, Lpager/g;->a(Lpager/a;Lpager/a;)V

    .line 403
    :cond_4
    return-void

    .line 396
    :cond_5
    invoke-virtual {p0}, Lpager/ViewPager;->b()V

    goto :goto_1
.end method

.method public setCurrentItem(I)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 437
    iput-boolean v1, p0, Lpager/ViewPager;->x:Z

    .line 438
    iget-boolean v0, p0, Lpager/ViewPager;->Q:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, p1, v0, v1}, Lpager/ViewPager;->a(IZZ)V

    .line 439
    return-void

    :cond_0
    move v0, v1

    .line 438
    goto :goto_0
.end method

.method public setOffscreenPageLimit(I)V
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 564
    if-ge p1, v0, :cond_0

    .line 565
    const-string/jumbo v1, "ViewPager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Requested offscreen page limit "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " too small; defaulting to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v0

    .line 569
    :cond_0
    iget v0, p0, Lpager/ViewPager;->y:I

    if-eq p1, v0, :cond_1

    .line 570
    iput p1, p0, Lpager/ViewPager;->y:I

    .line 571
    invoke-virtual {p0}, Lpager/ViewPager;->b()V

    .line 573
    :cond_1
    return-void
.end method

.method setOnAdapterChangeListener(Lpager/g;)V
    .locals 0
    .parameter

    .prologue
    .line 426
    iput-object p1, p0, Lpager/ViewPager;->W:Lpager/g;

    .line 427
    return-void
.end method

.method public setOnPageChangeListener(Lpager/h;)V
    .locals 0
    .parameter

    .prologue
    .line 520
    iput-object p1, p0, Lpager/ViewPager;->U:Lpager/h;

    .line 521
    return-void
.end method

.method public setPageMargin(I)V
    .locals 2
    .parameter

    .prologue
    .line 584
    iget v0, p0, Lpager/ViewPager;->n:I

    .line 585
    iput p1, p0, Lpager/ViewPager;->n:I

    .line 587
    invoke-virtual {p0}, Lpager/ViewPager;->getWidth()I

    move-result v1

    .line 588
    invoke-direct {p0, v1, v1, p1, v0}, Lpager/ViewPager;->a(IIII)V

    .line 590
    invoke-virtual {p0}, Lpager/ViewPager;->requestLayout()V

    .line 591
    return-void
.end method

.method public setPageMarginDrawable(I)V
    .locals 1
    .parameter

    .prologue
    .line 620
    invoke-virtual {p0}, Lpager/ViewPager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lpager/ViewPager;->setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 621
    return-void
.end method

.method public setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter

    .prologue
    .line 608
    iput-object p1, p0, Lpager/ViewPager;->o:Landroid/graphics/drawable/Drawable;

    .line 609
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lpager/ViewPager;->refreshDrawableState()V

    .line 610
    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lpager/ViewPager;->setWillNotDraw(Z)V

    .line 611
    invoke-virtual {p0}, Lpager/ViewPager;->invalidate()V

    .line 612
    return-void

    .line 610
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .parameter

    .prologue
    .line 625
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lpager/ViewPager;->o:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
