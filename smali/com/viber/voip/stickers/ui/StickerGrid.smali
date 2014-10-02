.class public Lcom/viber/voip/stickers/ui/StickerGrid;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field private a:Lcom/viber/voip/stickers/ui/a;

.field private b:I

.field private c:I

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/view/View;",
            "Lcom/viber/voip/stickers/c/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 27
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 22
    iput v0, p0, Lcom/viber/voip/stickers/ui/StickerGrid;->b:I

    .line 23
    iput v0, p0, Lcom/viber/voip/stickers/ui/StickerGrid;->c:I

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/stickers/ui/StickerGrid;->d:Ljava/util/Map;

    .line 28
    invoke-direct {p0, p1}, Lcom/viber/voip/stickers/ui/StickerGrid;->a(Landroid/content/Context;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    iput v0, p0, Lcom/viber/voip/stickers/ui/StickerGrid;->b:I

    .line 23
    iput v0, p0, Lcom/viber/voip/stickers/ui/StickerGrid;->c:I

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/stickers/ui/StickerGrid;->d:Ljava/util/Map;

    .line 33
    invoke-direct {p0, p1}, Lcom/viber/voip/stickers/ui/StickerGrid;->a(Landroid/content/Context;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    iput v0, p0, Lcom/viber/voip/stickers/ui/StickerGrid;->b:I

    .line 23
    iput v0, p0, Lcom/viber/voip/stickers/ui/StickerGrid;->c:I

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/stickers/ui/StickerGrid;->d:Ljava/util/Map;

    .line 38
    invoke-direct {p0, p1}, Lcom/viber/voip/stickers/ui/StickerGrid;->a(Landroid/content/Context;)V

    .line 39
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 42
    new-instance v0, Lcom/viber/voip/stickers/ui/a;

    invoke-direct {v0, p1}, Lcom/viber/voip/stickers/ui/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/viber/voip/stickers/ui/StickerGrid;->a:Lcom/viber/voip/stickers/ui/a;

    .line 43
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/viber/voip/stickers/ui/StickerGrid;->setLast(Z)V

    .line 44
    return-void
.end method

.method private b(Landroid/view/View;Lcom/viber/voip/stickers/c/a;)I
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/viber/voip/stickers/ui/StickerGrid;->a:Lcom/viber/voip/stickers/ui/a;

    invoke-virtual {v0, p2}, Lcom/viber/voip/stickers/ui/a;->b(Lcom/viber/voip/stickers/c/a;)I

    move-result v1

    .line 63
    iget-object v0, p0, Lcom/viber/voip/stickers/ui/StickerGrid;->a:Lcom/viber/voip/stickers/ui/a;

    invoke-virtual {v0, p2}, Lcom/viber/voip/stickers/ui/a;->a(Lcom/viber/voip/stickers/c/a;)I

    move-result v2

    .line 65
    iget-object v0, p0, Lcom/viber/voip/stickers/ui/StickerGrid;->a:Lcom/viber/voip/stickers/ui/a;

    invoke-virtual {v0, p2}, Lcom/viber/voip/stickers/ui/a;->c(Lcom/viber/voip/stickers/c/a;)I

    move-result v3

    .line 66
    iget-object v0, p0, Lcom/viber/voip/stickers/ui/StickerGrid;->a:Lcom/viber/voip/stickers/ui/a;

    invoke-virtual {v0, p2}, Lcom/viber/voip/stickers/ui/a;->d(Lcom/viber/voip/stickers/c/a;)I

    move-result v4

    .line 68
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 69
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 70
    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 71
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 72
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 73
    const/16 v2, 0x33

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 74
    add-int v0, v1, v3

    return v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/viber/voip/stickers/ui/StickerGrid;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 59
    return-void
.end method

.method public a(Landroid/view/View;Lcom/viber/voip/stickers/c/a;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/viber/voip/stickers/ui/StickerGrid;->d:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/viber/voip/stickers/ui/StickerGrid;->b(Landroid/view/View;Lcom/viber/voip/stickers/c/a;)I

    .line 54
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 55
    return-void
.end method

.method public addView(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 47
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 48
    invoke-virtual {p0, p1, v0}, Lcom/viber/voip/stickers/ui/StickerGrid;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 49
    return-void
.end method

.method public b()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 78
    iput v2, p0, Lcom/viber/voip/stickers/ui/StickerGrid;->b:I

    .line 79
    iget-object v0, p0, Lcom/viber/voip/stickers/ui/StickerGrid;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 80
    iget v4, p0, Lcom/viber/voip/stickers/ui/StickerGrid;->b:I

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/stickers/c/a;

    invoke-direct {p0, v1, v0}, Lcom/viber/voip/stickers/ui/StickerGrid;->b(Landroid/view/View;Lcom/viber/voip/stickers/c/a;)I

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/stickers/ui/StickerGrid;->b:I

    goto :goto_0

    .line 82
    :cond_0
    invoke-virtual {p0}, Lcom/viber/voip/stickers/ui/StickerGrid;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lcom/viber/voip/stickers/ui/StickerGrid;->b:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/viber/voip/stickers/ui/StickerGrid;->c:I

    .line 83
    invoke-virtual {p0}, Lcom/viber/voip/stickers/ui/StickerGrid;->getChildCount()I

    move-result v3

    move v1, v2

    .line 84
    :goto_1
    if-ge v1, v3, :cond_2

    .line 85
    invoke-virtual {p0, v1}, Lcom/viber/voip/stickers/ui/StickerGrid;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 86
    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 87
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 88
    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget v4, p0, Lcom/viber/voip/stickers/ui/StickerGrid;->c:I

    add-int/2addr v2, v4

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 84
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 91
    :cond_2
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/viber/voip/stickers/ui/StickerGrid;->b()V

    .line 97
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 98
    return-void
.end method

.method public setLast(Z)V
    .locals 4
    .parameter

    .prologue
    .line 101
    iget-object v0, p0, Lcom/viber/voip/stickers/ui/StickerGrid;->a:Lcom/viber/voip/stickers/ui/a;

    invoke-virtual {v0}, Lcom/viber/voip/stickers/ui/a;->b()I

    move-result v1

    iget-object v0, p0, Lcom/viber/voip/stickers/ui/StickerGrid;->a:Lcom/viber/voip/stickers/ui/a;

    invoke-virtual {v0}, Lcom/viber/voip/stickers/ui/a;->c()I

    move-result v2

    iget-object v0, p0, Lcom/viber/voip/stickers/ui/StickerGrid;->a:Lcom/viber/voip/stickers/ui/a;

    invoke-virtual {v0}, Lcom/viber/voip/stickers/ui/a;->c()I

    move-result v3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/viber/voip/stickers/ui/StickerGrid;->a:Lcom/viber/voip/stickers/ui/a;

    invoke-virtual {v0}, Lcom/viber/voip/stickers/ui/a;->c()I

    move-result v0

    :goto_0
    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/viber/voip/stickers/ui/StickerGrid;->setPadding(IIII)V

    .line 103
    return-void

    .line 101
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
