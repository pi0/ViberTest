.class public Lcom/viber/voip/widget/MaxWidthLinearLayout;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private final a:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 17
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 18
    const/4 v0, 0x0

    iput v0, p0, Lcom/viber/voip/widget/MaxWidthLinearLayout;->a:I

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    invoke-virtual {p0}, Lcom/viber/voip/widget/MaxWidthLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/bb;->MaxWidthLinearLayout:[I

    invoke-virtual {v0, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 24
    const/4 v1, 0x0

    const v2, 0x7fffffff

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/widget/MaxWidthLinearLayout;->a:I

    .line 25
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 30
    iget v1, p0, Lcom/viber/voip/widget/MaxWidthLinearLayout;->a:I

    if-lez v1, :cond_0

    iget v1, p0, Lcom/viber/voip/widget/MaxWidthLinearLayout;->a:I

    if-ge v1, v0, :cond_0

    .line 31
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 32
    iget v1, p0, Lcom/viber/voip/widget/MaxWidthLinearLayout;->a:I

    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 34
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 35
    return-void
.end method
