.class public Lcom/viber/voip/gallery/animation/SwipeableHorizontalScrollView;
.super Landroid/widget/HorizontalScrollView;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/gallery/animation/y;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "InlinedApi"
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/view/ViewGroup;

.field private c:Lcom/viber/voip/gallery/animation/s;

.field private d:Lcom/viber/voip/gallery/animation/b;

.field private e:Landroid/graphics/Rect;

.field private f:Landroid/graphics/Rect;

.field private g:Landroid/graphics/Rect;

.field private final h:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/viber/voip/gallery/animation/SwipeableHorizontalScrollView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/gallery/animation/SwipeableHorizontalScrollView;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 50
    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 34
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/gallery/animation/SwipeableHorizontalScrollView;->e:Landroid/graphics/Rect;

    .line 35
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/gallery/animation/SwipeableHorizontalScrollView;->f:Landroid/graphics/Rect;

    .line 36
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/gallery/animation/SwipeableHorizontalScrollView;->g:Landroid/graphics/Rect;

    .line 38
    const v0, 0x7f07006f

    iput v0, p0, Lcom/viber/voip/gallery/animation/SwipeableHorizontalScrollView;->h:I

    .line 51
    invoke-direct {p0}, Lcom/viber/voip/gallery/animation/SwipeableHorizontalScrollView;->c()V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/gallery/animation/SwipeableHorizontalScrollView;->e:Landroid/graphics/Rect;

    .line 35
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/gallery/animation/SwipeableHorizontalScrollView;->f:Landroid/graphics/Rect;

    .line 36
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/gallery/animation/SwipeableHorizontalScrollView;->g:Landroid/graphics/Rect;

    .line 38
    const v0, 0x7f07006f

    iput v0, p0, Lcom/viber/voip/gallery/animation/SwipeableHorizontalScrollView;->h:I

    .line 46
    invoke-direct {p0}, Lcom/viber/voip/gallery/animation/SwipeableHorizontalScrollView;->c()V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/gallery/animation/SwipeableHorizontalScrollView;->e:Landroid/graphics/Rect;

    .line 35
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/gallery/animation/SwipeableHorizontalScrollView;->f:Landroid/graphics/Rect;

    .line 36
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/gallery/animation/SwipeableHorizontalScrollView;->g:Landroid/graphics/Rect;

    .line 38
    const v0, 0x7f07006f

    iput v0, p0, Lcom/viber/voip/gallery/animation/SwipeableHorizontalScrollView;->h:I

    .line 42
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/gallery/animation/SwipeableHorizontalScrollView;)Landroid/view/ViewGroup;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/viber/voip/gallery/animation/SwipeableHorizontalScrollView;->b:Landroid/view/ViewGroup;

    return-object v0
.end method

.method private a(Landroid/view/View;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 324
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "notifyViewRemoved removedViewIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/gallery/animation/SwipeableHorizontalScrollView;->a(Ljava/lang/String;)V

    .line 325
    iget-object v0, p0, Lcom/viber/voip/gallery/animation/SwipeableHorizontalScrollView;->d:Lcom/viber/voip/gallery/animation/b;

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/viber/voip/gallery/animation/SwipeableHorizontalScrollView;->d:Lcom/viber/voip/gallery/animation/b;

    const v1, 0x7f07006f

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, p1, v1, p2}, Lcom/viber/voip/gallery/animation/b;->a(Landroid/view/View;Ljava/lang/Object;I)V

    .line 328
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/gallery/animation/SwipeableHorizontalScrollView;Lcom/viber/voip/gallery/animation/x;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/viber/voip/gallery/animation/SwipeableHorizontalScrollView;->a(Lcom/viber/voip/gallery/animation/x;)V

    return-void
.end method

.method static synthetic a(Lcom/viber/voip/gallery/animation/SwipeableHorizontalScrollView;Lcom/viber/voip/gallery/animation/x;ILandroid/view/View;I[Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 25
    invoke-direct/range {p0 .. p5}, Lcom/viber/voip/gallery/animation/SwipeableHorizontalScrollView;->a(Lcom/viber/voip/gallery/animation/x;ILandroid/view/View;I[Landroid/view/View;)V

    return-void
.end method

.method private a(Lcom/viber/voip/gallery/animation/x;)V
    .locals 1
    .parameter

    .prologue
    .line 317
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/viber/voip/gallery/animation/SwipeableHorizontalScrollView;->setEnabled(Z)V

    .line 318
    if-eqz p1, :cond_0

    .line 319
    invoke-interface {p1}, Lcom/viber/voip/gallery/animation/x;->a()V

    .line 321
    :cond_0
    return-void
.end method

.method private varargs a(Lcom/viber/voip/gallery/animation/x;ILandroid/view/View;I[Landroid/view/View;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 295
    array-length v1, p5

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p5, v0

    .line 296
    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/nineoldandroids/view/ViewHelper;->setTranslationX(Landroid/view/View;F)V

    .line 295
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 298
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/gallery/animation/SwipeableHorizontalScrollView;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 299
    if-lez p2, :cond_1

    .line 300
    invoke-virtual {p0}, Lcom/viber/voip/gallery/animation/SwipeableHorizontalScrollView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/gallery/animation/q;

    invoke-direct {v1, p0, p2, p1}, Lcom/viber/voip/gallery/animation/q;-><init>(Lcom/viber/voip/gallery/animation/SwipeableHorizontalScrollView;ILcom/viber/voip/gallery/animation/x;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 314
    :goto_1
    return-void

    .line 311
    :cond_1
    invoke-direct {p0, p1}, Lcom/viber/voip/gallery/animation/SwipeableHorizontalScrollView;->a(Lcom/viber/voip/gallery/animation/x;)V

    goto :goto_1
.end method

.method private a(Lcom/viber/voip/gallery/animation/x;Landroid/view/View;IIZZ)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, -0x1

    .line 219
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v8, v7

    invoke-direct/range {v0 .. v8}, Lcom/viber/voip/gallery/animation/SwipeableHorizontalScrollView;->a(Lcom/viber/voip/gallery/animation/x;Landroid/view/View;IIZZII)V

    .line 220
    return-void
.end method

.method private a(Lcom/viber/voip/gallery/animation/x;Landroid/view/View;IIZZI)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 224
    const/4 v8, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/viber/voip/gallery/animation/SwipeableHorizontalScrollView;->a(Lcom/viber/voip/gallery/animation/x;Landroid/view/View;IIZZII)V

    .line 225
    return-void
.end method

.method private a(Lcom/viber/voip/gallery/animation/x;Landroid/view/View;IIZZII)V
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 229
    iget-object v0, p0, Lcom/viber/voip/gallery/animation/SwipeableHorizontalScrollView;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v10

    new-instance v0, Lcom/viber/voip/gallery/animation/m;

    move-object v1, p0

    move/from16 v2, p5

    move v3, p4

    move-object v4, p2

    move v5, p3

    move/from16 v6, p6

    move-object v7, p1

    move/from16 v8, p8

    move/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Lcom/viber/voip/gallery/animation/m;-><init>(Lcom/viber/voip/gallery/animation/SwipeableHorizontalScrollView;ZILandroid/view/View;IZLcom/viber/voip/gallery/animation/x;II)V

    invoke-virtual {v10, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 292
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 353
    const/4 v0, 0x3

    sget-object v1, Lcom/viber/voip/gallery/animation/SwipeableHorizontalScrollView;->a:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 354
    return-void
.end method

.method private c()V
    .locals 4

    .prologue
    .line 55
    new-instance v0, Lcom/viber/voip/gallery/animation/s;

    invoke-virtual {p0}, Lcom/viber/voip/gallery/animation/SwipeableHorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/viber/voip/gallery/animation/w;->a:Lcom/viber/voip/gallery/animation/w;

    const/16 v3, 0x32

    invoke-direct {v0, v1, p0, v2, v3}, Lcom/viber/voip/gallery/animation/s;-><init>(Landroid/content/Context;Lcom/viber/voip/gallery/animation/y;Lcom/viber/voip/gallery/animation/w;I)V

    iput-object v0, p0, Lcom/viber/voip/gallery/animation/SwipeableHorizontalScrollView;->c:Lcom/viber/voip/gallery/animation/s;

    .line 56
    return-void
.end method

.method private e(Landroid/view/View;)V
    .locals 2
    .parameter
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 80
    iget-object v0, p0, Lcom/viber/voip/gallery/animation/SwipeableHorizontalScrollView;->c:Lcom/viber/voip/gallery/animation/s;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 81
    invoke-static {}, Lcom/viber/voip/util/gl;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 86
    :goto_0
    return-void

    .line 84
    :cond_0
    const-string/jumbo v0, "no layer type hardware - prehoneycomb"

    invoke-direct {p0, v0}, Lcom/viber/voip/gallery/animation/SwipeableHorizontalScrollView;->a(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public a(I)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 89
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/viber/voip/gallery/animation/SwipeableHorizontalScrollView;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 91
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/viber/voip/gallery/animation/SwipeableHorizontalScrollView;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/viber/voip/gallery/animation/SwipeableHorizontalScrollView;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 127
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 151
    const-string/jumbo v0, "onSwipeStarted"

    invoke-direct {p0, v0}, Lcom/viber/voip/gallery/animation/SwipeableHorizontalScrollView;->a(Ljava/lang/String;)V

    .line 152
    return-void
.end method

.method public a(Landroid/view/View;Ljava/lang/Object;IIIIII)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/viber/voip/gallery/animation/SwipeableHorizontalScrollView;->e(Landroid/view/View;)V

    .line 110
    if-eqz p2, :cond_0

    .line 111
    const v0, 0x7f07006f

    invoke-virtual {p1, v0, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 115
    :cond_0
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, p3, p4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 116
    iput p5, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 117
    iput p6, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 118
    iput p7, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 119
    iput p8, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 121
    iget-object v1, p0, Lcom/viber/voip/gallery/animation/SwipeableHorizontalScrollView;->b:Landroid/view/ViewGroup;

    invoke-virtual {v1, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 122
    invoke-virtual {p0}, Lcom/viber/voip/gallery/animation/SwipeableHorizontalScrollView;->b()V

    .line 123
    return-void
.end method

.method public a(Landroid/view/View;ZLcom/viber/voip/gallery/animation/x;)V
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onSwipeEnded remove="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/gallery/animation/SwipeableHorizontalScrollView;->a(Ljava/lang/String;)V

    .line 172
    if-nez p2, :cond_0

    .line 173
    invoke-interface {p3}, Lcom/viber/voip/gallery/animation/x;->a()V

    .line 216
    :goto_0
    return-void

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/gallery/animation/SwipeableHorizontalScrollView;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v4

    .line 178
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/viber/voip/gallery/animation/SwipeableHorizontalScrollView;->setEnabled(Z)V

    .line 179
    invoke-direct {p0, p1, v4}, Lcom/viber/voip/gallery/animation/SwipeableHorizontalScrollView;->a(Landroid/view/View;I)V

    .line 181
    iget-object v0, p0, Lcom/viber/voip/gallery/animation/SwipeableHorizontalScrollView;->e:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/viber/voip/gallery/animation/SwipeableHorizontalScrollView;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 182
    iget-object v0, p0, Lcom/viber/voip/gallery/animation/SwipeableHorizontalScrollView;->b:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/gallery/animation/SwipeableHorizontalScrollView;->g:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 183
    iget-object v0, p0, Lcom/viber/voip/gallery/animation/SwipeableHorizontalScrollView;->b:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/viber/voip/gallery/animation/SwipeableHorizontalScrollView;->b:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/gallery/animation/SwipeableHorizontalScrollView;->f:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 185
    const/4 v5, 0x0

    .line 186
    iget-object v0, p0, Lcom/viber/voip/gallery/animation/SwipeableHorizontalScrollView;->e:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/viber/voip/gallery/animation/SwipeableHorizontalScrollView;->f:Landroid/graphics/Rect;

    invoke-static {v0, v1}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/viber/voip/gallery/animation/SwipeableHorizontalScrollView;->e:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/viber/voip/gallery/animation/SwipeableHorizontalScrollView;->g:Landroid/graphics/Rect;

    invoke-static {v0, v1}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/viber/voip/gallery/animation/SwipeableHorizontalScrollView;->e:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/viber/voip/gallery/animation/SwipeableHorizontalScrollView;->g:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 187
    :cond_2
    iget-object v0, p0, Lcom/viber/voip/gallery/animation/SwipeableHorizontalScrollView;->e:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/viber/voip/gallery/animation/SwipeableHorizontalScrollView;->g:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 189
    if-nez v4, :cond_3

    .line 190
    iget-object v0, p0, Lcom/viber/voip/gallery/animation/SwipeableHorizontalScrollView;->g:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/viber/voip/gallery/animation/SwipeableHorizontalScrollView;->e:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int v3, v0, v1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p3

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/viber/voip/gallery/animation/SwipeableHorizontalScrollView;->a(Lcom/viber/voip/gallery/animation/x;Landroid/view/View;IIZZ)V

    goto :goto_0

    .line 194
    :cond_3
    const/4 v3, -0x1

    const/4 v6, 0x1

    iget-object v0, p0, Lcom/viber/voip/gallery/animation/SwipeableHorizontalScrollView;->e:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/viber/voip/gallery/animation/SwipeableHorizontalScrollView;->f:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int v7, v0, v1

    move-object v0, p0

    move-object v1, p3

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lcom/viber/voip/gallery/animation/SwipeableHorizontalScrollView;->a(Lcom/viber/voip/gallery/animation/x;Landroid/view/View;IIZZI)V

    goto/16 :goto_0

    .line 199
    :cond_4
    if-nez v4, :cond_5

    .line 200
    iget-object v0, p0, Lcom/viber/voip/gallery/animation/SwipeableHorizontalScrollView;->g:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/viber/voip/gallery/animation/SwipeableHorizontalScrollView;->e:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int v3, v0, v1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p3

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/viber/voip/gallery/animation/SwipeableHorizontalScrollView;->a(Lcom/viber/voip/gallery/animation/x;Landroid/view/View;IIZZ)V

    goto/16 :goto_0

    .line 202
    :cond_5
    iget-object v0, p0, Lcom/viber/voip/gallery/animation/SwipeableHorizontalScrollView;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne v4, v0, :cond_6

    .line 204
    const/4 v3, -0x1

    const/4 v6, 0x1

    iget-object v0, p0, Lcom/viber/voip/gallery/animation/SwipeableHorizontalScrollView;->e:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/viber/voip/gallery/animation/SwipeableHorizontalScrollView;->f:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int v7, v0, v1

    move-object v0, p0

    move-object v1, p3

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lcom/viber/voip/gallery/animation/SwipeableHorizontalScrollView;->a(Lcom/viber/voip/gallery/animation/x;Landroid/view/View;IIZZI)V

    goto/16 :goto_0

    .line 208
    :cond_6
    iget-object v0, p0, Lcom/viber/voip/gallery/animation/SwipeableHorizontalScrollView;->e:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/viber/voip/gallery/animation/SwipeableHorizontalScrollView;->f:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    if-lt v0, v1, :cond_7

    const/4 v5, 0x1

    .line 209
    :goto_1
    if-eqz v5, :cond_8

    iget-object v0, p0, Lcom/viber/voip/gallery/animation/SwipeableHorizontalScrollView;->e:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/viber/voip/gallery/animation/SwipeableHorizontalScrollView;->f:Landroid/graphics/Rect;

    invoke-static {v0, v1}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/viber/voip/gallery/animation/SwipeableHorizontalScrollView;->e:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/viber/voip/gallery/animation/SwipeableHorizontalScrollView;->f:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 210
    const/4 v3, -0x1

    const/4 v6, 0x0

    const/4 v7, -0x1

    iget-object v0, p0, Lcom/viber/voip/gallery/animation/SwipeableHorizontalScrollView;->f:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/viber/voip/gallery/animation/SwipeableHorizontalScrollView;->e:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int v8, v0, v1

    move-object v0, p0

    move-object v1, p3

    move-object v2, p1

    invoke-direct/range {v0 .. v8}, Lcom/viber/voip/gallery/animation/SwipeableHorizontalScrollView;->a(Lcom/viber/voip/gallery/animation/x;Landroid/view/View;IIZZII)V

    goto/16 :goto_0

    .line 208
    :cond_7
    const/4 v5, 0x0

    goto :goto_1

    .line 215
    :cond_8
    const/4 v3, -0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p3

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/viber/voip/gallery/animation/SwipeableHorizontalScrollView;->a(Lcom/viber/voip/gallery/animation/x;Landroid/view/View;IIZZ)V

    goto/16 :goto_0
.end method

.method public a(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 130
    if-nez p1, :cond_1

    .line 141
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v0, v1

    .line 134
    :goto_1
    iget-object v2, p0, Lcom/viber/voip/gallery/animation/SwipeableHorizontalScrollView;->b:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 135
    iget-object v2, p0, Lcom/viber/voip/gallery/animation/SwipeableHorizontalScrollView;->b:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 136
    const v3, 0x7f07006f

    invoke-virtual {v2, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 137
    iget-object v1, p0, Lcom/viber/voip/gallery/animation/SwipeableHorizontalScrollView;->b:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 138
    const/4 v1, 0x1

    goto :goto_0

    .line 134
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method b()V
    .locals 2

    .prologue
    .line 331
    invoke-virtual {p0}, Lcom/viber/voip/gallery/animation/SwipeableHorizontalScrollView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/gallery/animation/r;

    invoke-direct {v1, p0}, Lcom/viber/voip/gallery/animation/r;-><init>(Lcom/viber/voip/gallery/animation/SwipeableHorizontalScrollView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 339
    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 161
    const-string/jumbo v0, "onViewTouched"

    invoke-direct {p0, v0}, Lcom/viber/voip/gallery/animation/SwipeableHorizontalScrollView;->a(Ljava/lang/String;)V

    .line 162
    return-void
.end method

.method public c(Landroid/view/View;)V
    .locals 0
    .parameter

    .prologue
    .line 167
    return-void
.end method

.method public d(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 156
    const-string/jumbo v0, "onViewRestored"

    invoke-direct {p0, v0}, Lcom/viber/voip/gallery/animation/SwipeableHorizontalScrollView;->a(Ljava/lang/String;)V

    .line 157
    return-void
.end method

.method public getFirstChild()Landroid/view/View;
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/viber/voip/gallery/animation/SwipeableHorizontalScrollView;->a(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getLastChild()Landroid/view/View;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/viber/voip/gallery/animation/SwipeableHorizontalScrollView;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/viber/voip/gallery/animation/SwipeableHorizontalScrollView;->a(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 60
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onFinishInflate()V

    .line 62
    invoke-virtual {p0}, Lcom/viber/voip/gallery/animation/SwipeableHorizontalScrollView;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_2

    .line 63
    const v0, 0x7f07006a

    invoke-virtual {p0, v0}, Lcom/viber/voip/gallery/animation/SwipeableHorizontalScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/viber/voip/gallery/animation/SwipeableHorizontalScrollView;->b:Landroid/view/ViewGroup;

    .line 64
    iget-object v0, p0, Lcom/viber/voip/gallery/animation/SwipeableHorizontalScrollView;->b:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 65
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "SwipeableHorizontalScrollView must have a view with id attribute is \'R.id.scroll_content\'"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_0
    invoke-static {}, Lcom/viber/voip/util/gl;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 68
    iget-object v0, p0, Lcom/viber/voip/gallery/animation/SwipeableHorizontalScrollView;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 69
    invoke-virtual {p0, v1}, Lcom/viber/voip/gallery/animation/SwipeableHorizontalScrollView;->setClipChildren(Z)V

    .line 71
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/gallery/animation/SwipeableHorizontalScrollView;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    move v0, v1

    .line 72
    :goto_0
    if-ge v0, v2, :cond_2

    .line 73
    iget-object v1, p0, Lcom/viber/voip/gallery/animation/SwipeableHorizontalScrollView;->b:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/viber/voip/gallery/animation/SwipeableHorizontalScrollView;->e(Landroid/view/View;)V

    .line 72
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 76
    :cond_2
    return-void
.end method

.method public setViewRemoveListener(Lcom/viber/voip/gallery/animation/b;)V
    .locals 1
    .parameter

    .prologue
    .line 145
    const-string/jumbo v0, "setViewRemoveListener"

    invoke-direct {p0, v0}, Lcom/viber/voip/gallery/animation/SwipeableHorizontalScrollView;->a(Ljava/lang/String;)V

    .line 146
    iput-object p1, p0, Lcom/viber/voip/gallery/animation/SwipeableHorizontalScrollView;->d:Lcom/viber/voip/gallery/animation/b;

    .line 147
    return-void
.end method
