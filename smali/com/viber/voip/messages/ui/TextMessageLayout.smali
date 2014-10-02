.class public Lcom/viber/voip/messages/ui/TextMessageLayout;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 19
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 33
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/TextMessageLayout;->getChildCount()I

    move-result v8

    .line 34
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/TextMessageLayout;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/TextMessageLayout;->getPaddingRight()I

    move-result v1

    add-int v6, v0, v1

    move v7, v3

    .line 36
    :goto_0
    if-ge v7, v8, :cond_0

    .line 37
    invoke-virtual {p0, v7}, Lcom/viber/voip/messages/ui/TextMessageLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 39
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_2

    move-object v0, p0

    move v2, p1

    move v4, p2

    move v5, v3

    .line 40
    invoke-virtual/range {v0 .. v5}, Lcom/viber/voip/messages/ui/TextMessageLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 42
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 43
    iget v2, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v1, v2

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v0, v1

    add-int/2addr v0, v6

    .line 36
    :goto_1
    add-int/lit8 v1, v7, 0x1

    move v7, v1

    move v6, v0

    goto :goto_0

    .line 47
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 48
    if-le v6, v0, :cond_1

    const/4 v3, 0x1

    :cond_1
    invoke-virtual {p0, v3}, Lcom/viber/voip/messages/ui/TextMessageLayout;->setOrientation(I)V

    .line 50
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 51
    return-void

    :cond_2
    move v0, v6

    goto :goto_1
.end method
