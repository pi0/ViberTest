.class public Lcom/viber/voip/messages/conversation/publicgroup/ParticipantControlsContainer;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 21
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 41
    .line 42
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    move v1, v0

    .line 43
    :goto_0
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/publicgroup/ParticipantControlsContainer;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 44
    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/conversation/publicgroup/ParticipantControlsContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 45
    invoke-virtual {v3, v2, p2}, Landroid/view/View;->measure(II)V

    .line 46
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {v3}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    add-int/2addr v3, v4

    add-int/2addr v1, v3

    .line 43
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 49
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 50
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 51
    if-nez v2, :cond_2

    .line 52
    iget v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/ParticipantControlsContainer;->a:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 58
    :cond_1
    :goto_1
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 59
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/publicgroup/ParticipantControlsContainer;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/viber/voip/messages/conversation/publicgroup/ParticipantControlsContainer;->setMeasuredDimension(II)V

    .line 60
    return-void

    .line 53
    :cond_2
    const/high16 v3, -0x8000

    if-ne v2, v3, :cond_1

    .line 54
    iget v2, p0, Lcom/viber/voip/messages/conversation/publicgroup/ParticipantControlsContainer;->a:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_1
.end method

.method public setMinimumWidth(I)V
    .locals 0
    .parameter

    .prologue
    .line 33
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setMinimumWidth(I)V

    .line 34
    iput p1, p0, Lcom/viber/voip/messages/conversation/publicgroup/ParticipantControlsContainer;->a:I

    .line 35
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/publicgroup/ParticipantControlsContainer;->requestLayout()V

    .line 36
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/publicgroup/ParticipantControlsContainer;->invalidate()V

    .line 37
    return-void
.end method
