.class public Lcom/viber/voip/messages/extras/map/BalloonLayout;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private a:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 15
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 16
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a00c0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/extras/map/BalloonLayout;->a:F

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a00c0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/extras/map/BalloonLayout;->a:F

    .line 22
    const/high16 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/extras/map/BalloonLayout;->setDescendantFocusability(I)V

    .line 23
    return-void
.end method


# virtual methods
.method protected dispatchSetPressed(Z)V
    .locals 0
    .parameter

    .prologue
    .line 50
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter

    .prologue
    .line 37
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onMeasure(II)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 28
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 29
    iget v2, p0, Lcom/viber/voip/messages/extras/map/BalloonLayout;->a:F

    float-to-int v2, v2

    .line 30
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 31
    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 32
    invoke-super {p0, v0, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 33
    return-void
.end method

.method public setMaxWidth(F)V
    .locals 1
    .parameter

    .prologue
    .line 62
    iget v0, p0, Lcom/viber/voip/messages/extras/map/BalloonLayout;->a:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 63
    iput p1, p0, Lcom/viber/voip/messages/extras/map/BalloonLayout;->a:F

    .line 64
    invoke-virtual {p0}, Lcom/viber/voip/messages/extras/map/BalloonLayout;->requestLayout()V

    .line 66
    :cond_0
    return-void
.end method

.method public setPressed(Z)V
    .locals 1
    .parameter

    .prologue
    .line 55
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/viber/voip/messages/extras/map/BalloonLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    :goto_0
    return-void

    .line 58
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setPressed(Z)V

    goto :goto_0
.end method
