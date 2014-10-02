.class public Lcom/viber/voip/widget/l;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:I

.field private final f:I

.field private final g:I

.field private h:I

.field private final i:[Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;IIIIIII)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 33
    iput p2, p0, Lcom/viber/voip/widget/l;->b:I

    .line 34
    iput p3, p0, Lcom/viber/voip/widget/l;->a:I

    .line 36
    iput p6, p0, Lcom/viber/voip/widget/l;->e:I

    .line 37
    iput p7, p0, Lcom/viber/voip/widget/l;->f:I

    .line 38
    iput p4, p0, Lcom/viber/voip/widget/l;->c:I

    .line 39
    iput p5, p0, Lcom/viber/voip/widget/l;->d:I

    .line 41
    iput p8, p0, Lcom/viber/voip/widget/l;->g:I

    .line 42
    new-array v0, p3, [Landroid/view/View;

    iput-object v0, p0, Lcom/viber/voip/widget/l;->i:[Landroid/view/View;

    .line 43
    invoke-direct {p0}, Lcom/viber/voip/widget/l;->a()V

    .line 44
    return-void
.end method

.method private a()V
    .locals 6

    .prologue
    const/4 v5, -0x2

    .line 51
    invoke-virtual {p0}, Lcom/viber/voip/widget/l;->getChildCount()I

    move-result v0

    :goto_0
    iget v1, p0, Lcom/viber/voip/widget/l;->a:I

    if-ge v0, v1, :cond_0

    .line 52
    iget-object v1, p0, Lcom/viber/voip/widget/l;->i:[Landroid/view/View;

    invoke-virtual {p0}, Lcom/viber/voip/widget/l;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/viber/voip/widget/l;->b:I

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/viber/voip/widget/l;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    aput-object v2, v1, v0

    .line 53
    iget-object v1, p0, Lcom/viber/voip/widget/l;->i:[Landroid/view/View;

    aget-object v1, v1, v0

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 54
    iget-object v1, p0, Lcom/viber/voip/widget/l;->i:[Landroid/view/View;

    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/viber/voip/widget/l;->addView(Landroid/view/View;)V

    .line 51
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 56
    :cond_0
    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 59
    invoke-direct {p0}, Lcom/viber/voip/widget/l;->a()V

    .line 61
    iput v0, p0, Lcom/viber/voip/widget/l;->h:I

    move v1, v0

    .line 62
    :goto_0
    iget v0, p0, Lcom/viber/voip/widget/l;->a:I

    if-ge v1, v0, :cond_4

    .line 63
    invoke-virtual {p0, v1}, Lcom/viber/voip/widget/l;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 65
    if-nez p2, :cond_0

    iget v0, p0, Lcom/viber/voip/widget/l;->e:I

    move v5, v0

    .line 66
    :goto_1
    add-int/lit8 v0, p1, -0x1

    if-ne p2, v0, :cond_1

    iget v0, p0, Lcom/viber/voip/widget/l;->f:I

    move v4, v0

    .line 68
    :goto_2
    if-nez v1, :cond_2

    iget v0, p0, Lcom/viber/voip/widget/l;->c:I

    move v2, v0

    .line 69
    :goto_3
    iget v0, p0, Lcom/viber/voip/widget/l;->a:I

    add-int/lit8 v0, v0, -0x1

    if-ne v1, v0, :cond_3

    iget v0, p0, Lcom/viber/voip/widget/l;->d:I

    move v3, v0

    .line 71
    :goto_4
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 72
    invoke-virtual {v0, v2, v5, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 73
    iget v0, p0, Lcom/viber/voip/widget/l;->h:I

    add-int/2addr v2, v3

    add-int/2addr v0, v2

    iput v0, p0, Lcom/viber/voip/widget/l;->h:I

    .line 62
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 65
    :cond_0
    iget v0, p0, Lcom/viber/voip/widget/l;->g:I

    move v5, v0

    goto :goto_1

    .line 66
    :cond_1
    iget v0, p0, Lcom/viber/voip/widget/l;->g:I

    move v4, v0

    goto :goto_2

    .line 68
    :cond_2
    iget v0, p0, Lcom/viber/voip/widget/l;->g:I

    move v2, v0

    goto :goto_3

    .line 69
    :cond_3
    iget v0, p0, Lcom/viber/voip/widget/l;->g:I

    move v3, v0

    goto :goto_4

    .line 75
    :cond_4
    return-void
.end method

.method public getViews()[Landroid/view/View;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/viber/voip/widget/l;->i:[Landroid/view/View;

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 105
    move v1, v0

    move v2, v0

    .line 106
    :goto_0
    invoke-virtual {p0}, Lcom/viber/voip/widget/l;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 107
    invoke-virtual {p0, v1}, Lcom/viber/voip/widget/l;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 108
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 109
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 110
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    .line 111
    iget v6, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v6, v2

    iget v7, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int v8, v2, v4

    iget v9, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v8, v9

    iget v9, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v5, v9

    invoke-virtual {v3, v6, v7, v8, v5}, Landroid/view/View;->layout(IIII)V

    .line 112
    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v3, v4

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int/2addr v0, v3

    add-int/2addr v2, v0

    .line 106
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 114
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 10
    .parameter
    .parameter

    .prologue
    const/high16 v9, 0x4000

    const/4 v1, 0x0

    .line 79
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 81
    invoke-virtual {p0}, Lcom/viber/voip/widget/l;->getChildCount()I

    move-result v4

    .line 82
    if-nez v4, :cond_0

    .line 83
    invoke-virtual {p0, v3, v1}, Lcom/viber/voip/widget/l;->setMeasuredDimension(II)V

    .line 101
    :goto_0
    return-void

    .line 87
    :cond_0
    iget v0, p0, Lcom/viber/voip/widget/l;->h:I

    .line 88
    sub-int v2, v3, v0

    iget v5, p0, Lcom/viber/voip/widget/l;->a:I

    div-int v5, v2, v5

    .line 89
    iget v2, p0, Lcom/viber/voip/widget/l;->a:I

    mul-int/2addr v2, v5

    sub-int v2, v3, v2

    sub-int v6, v2, v0

    move v2, v1

    .line 91
    :goto_1
    if-ge v2, v4, :cond_2

    .line 92
    invoke-virtual {p0, v2}, Lcom/viber/voip/widget/l;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 93
    if-ge v2, v6, :cond_1

    const/4 v0, 0x1

    :goto_2
    add-int/2addr v0, v5

    .line 95
    invoke-static {v0, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-static {v5, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-virtual {v7, v0, v8}, Landroid/view/View;->measure(II)V

    .line 91
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_1
    move v0, v1

    .line 93
    goto :goto_2

    .line 99
    :cond_2
    invoke-virtual {p0, v1}, Lcom/viber/voip/widget/l;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 100
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v5

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v0, v1

    invoke-virtual {p0, v3, v0}, Lcom/viber/voip/widget/l;->setMeasuredDimension(II)V

    goto :goto_0
.end method
