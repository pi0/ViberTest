.class public Lcom/viber/voip/widget/ProportionalLayout;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# instance fields
.field private a:Lcom/viber/voip/widget/v;

.field private b:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 62
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 67
    invoke-direct {p0, p1, p2}, Lcom/viber/voip/widget/ProportionalLayout;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 71
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 72
    invoke-direct {p0, p1, p2}, Lcom/viber/voip/widget/ProportionalLayout;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 73
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 76
    sget-object v0, Lcom/viber/voip/bb;->ProportionalLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 78
    invoke-virtual {p0}, Lcom/viber/voip/widget/ProportionalLayout;->isInEditMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 79
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/viber/voip/widget/v;->a(Ljava/lang/String;)Lcom/viber/voip/widget/v;

    move-result-object v1

    iput-object v1, p0, Lcom/viber/voip/widget/ProportionalLayout;->a:Lcom/viber/voip/widget/v;

    .line 83
    :goto_0
    const/4 v1, 0x1

    const/high16 v2, 0x3f80

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/viber/voip/widget/ProportionalLayout;->b:F

    .line 85
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 86
    return-void

    .line 81
    :cond_0
    sget-object v1, Lcom/viber/voip/widget/v;->a:Lcom/viber/voip/widget/v;

    iput-object v1, p0, Lcom/viber/voip/widget/ProportionalLayout;->a:Lcom/viber/voip/widget/v;

    goto :goto_0
.end method


# virtual methods
.method public getDirection()Lcom/viber/voip/widget/v;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/viber/voip/widget/ProportionalLayout;->a:Lcom/viber/voip/widget/v;

    return-object v0
.end method

.method public getRatio()F
    .locals 1

    .prologue
    .line 139
    iget v0, p0, Lcom/viber/voip/widget/ProportionalLayout;->b:F

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 122
    invoke-virtual {p0}, Lcom/viber/voip/widget/ProportionalLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 123
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "ProportionalLayout requires exactly one child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :cond_0
    invoke-virtual {p0, v3}, Lcom/viber/voip/widget/ProportionalLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 127
    sub-int v1, p4, p2

    sub-int v2, p5, p3

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 128
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/high16 v5, 0x4000

    .line 90
    invoke-virtual {p0}, Lcom/viber/voip/widget/ProportionalLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 91
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "ProportionalLayout requires exactly one child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/viber/voip/widget/ProportionalLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 97
    invoke-virtual {p0, v2, p1, p2}, Lcom/viber/voip/widget/ProportionalLayout;->measureChild(Landroid/view/View;II)V

    .line 98
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 99
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 103
    iget-object v3, p0, Lcom/viber/voip/widget/ProportionalLayout;->a:Lcom/viber/voip/widget/v;

    sget-object v4, Lcom/viber/voip/widget/v;->b:Lcom/viber/voip/widget/v;

    if-ne v3, v4, :cond_1

    .line 104
    int-to-float v1, v0

    iget v3, p0, Lcom/viber/voip/widget/ProportionalLayout;->b:F

    mul-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 112
    :goto_0
    invoke-static {v1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {p0, v2, v3, v4}, Lcom/viber/voip/widget/ProportionalLayout;->measureChild(Landroid/view/View;II)V

    .line 116
    invoke-static {v1, p1}, Lcom/viber/voip/widget/ProportionalLayout;->resolveSize(II)I

    move-result v1

    invoke-static {v0, p2}, Lcom/viber/voip/widget/ProportionalLayout;->resolveSize(II)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/viber/voip/widget/ProportionalLayout;->setMeasuredDimension(II)V

    .line 118
    return-void

    .line 108
    :cond_1
    int-to-float v0, v1

    iget v3, p0, Lcom/viber/voip/widget/ProportionalLayout;->b:F

    mul-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_0
.end method

.method public setDirection(Lcom/viber/voip/widget/v;)V
    .locals 0
    .parameter

    .prologue
    .line 135
    iput-object p1, p0, Lcom/viber/voip/widget/ProportionalLayout;->a:Lcom/viber/voip/widget/v;

    .line 136
    return-void
.end method

.method public setRatio(F)V
    .locals 0
    .parameter

    .prologue
    .line 143
    iput p1, p0, Lcom/viber/voip/widget/ProportionalLayout;->b:F

    .line 144
    return-void
.end method
